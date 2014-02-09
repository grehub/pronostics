<?php

namespace Grub\PronosticsBundle\Controller;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Form\FormError;
use Grub\PronosticsBundle\Form\BetType;
use Grub\PronosticsBundle\Entity\Game;
use Grub\PronosticsBundle\Entity\Bet;


class DefaultController extends Controller
{

    public function accueilAction(Request $request)
    {
        return $this->render('GrubPronosticsBundle:Default:accueil.html.twig');
    }

    public function pronostiquerAction(Request $request)
    {
        $user = $this->getUser();

        $em = $this->get('doctrine.orm.entity_manager');
        $games = $em->getRepository('GrubPronosticsBundle:Game')->findJoinedToTeamAndBetByUser($user->getId());

        return $this->render('GrubPronosticsBundle:Default:pronostiquer.html.twig',
            array('games' => $games));
    }

    public function envoyerPronostiqueAction(Request $request, $gameId)
    {
        $user = $this->getUser();

        $em = $this->get('doctrine.orm.entity_manager');
        $game = $em->getRepository('GrubPronosticsBundle:Game')->findOneJoinedToTeamAndBetByUser($gameId, $user->getId());

        if (!$game) {
            throw $this->createNotFoundException('Impossible de trouver le match');
        }

        if ($game->getBets()->count() === 1) {
            $bet = $game->getBets()->first();
        } else {
            $bet = new Bet();
            $bet->setGame($game);
            $bet->setUser($user);
        }

        $form = $this->createForm(new BetType(), $bet);

        $form->bindRequest($request);

        $this->get('session')->removeFlash('message-ok');
        if ($game->getStatus() == Game::IN_PROGRESS) {
            $form->addError(new FormError('Désolé, le match est déjà commencé :-('));
        } else if ($game->getStatus() == Game::FINISHED) {
            $form->addError(new FormError('Désolé, le match est terminé :-('));
        } else {
            if ($form->isValid()) {
                $em->persist($bet);
                $em->flush();
                $this->get('session')->setFlash('message-ok', 'Pronostique enregistré :-)');
            }
        }

        return $this->render('GrubPronosticsBundle:Default:game.html.twig',
            array('game' => $game, 'bet' => $bet, 'form' => $form->createView()));
    }

    public function classementAction(Request $request)
    {
        if (!is_object($this->getUser())) {
            throw new AccessDeniedException('interdit');
        }

        $em = $this->get('doctrine.orm.entity_manager');
        $users = $em->getRepository('GrubUserBundle:User')->findAllJoinedToBet($this->getUser()->getGroup()->getId());

        foreach ($users as $user) {
            $classement[$user->getId()] = $user->getRankingInfos();
        }

        uasort($classement, array($this, "cmpGlobal"));
        $this->applyClassement($classement, 'global', 'class');

        uasort($classement, array($this, "cmpGlobalRisq"));
        $this->applyClassement($classement, 'globalrisq', 'classrisq');

        uasort($classement, array($this, "cmpGlobalSansRisq"));
        $this->applyClassement($classement, 'globalsansrisq', 'classsansrisq');

        return $this->render('GrubPronosticsBundle:Default:classement.html.twig',
            array('classement' => $classement));
    }

    static function cmpGlobal($a, $b)
    {
        if ($a['global'] == $b['global']) {
            return 0;
        }
        return ($a['global'] > $b['global']) ? -1 : 1;
    }

    static function cmpGlobalRisq($a, $b)
    {
        if ($a['globalrisq'] == $b['globalrisq']) {
            return 0;
        }
        return ($a['globalrisq'] > $b['globalrisq']) ? -1 : 1;
    }

    static function cmpGlobalSansRisq($a, $b)
    {
        if ($a['globalsansrisq'] == $b['globalsansrisq']) {
            return 0;
        }
        return ($a['globalsansrisq'] > $b['globalsansrisq']) ? -1 : 1;
    }

    public function applyClassement(&$classement, $scoreKey, $classementKey)
    {
        $i = 0;
        $ii = 0;
        $lastScore = null;
        foreach ($classement as &$classementUser) {
            if ($lastScore != $classementUser[$scoreKey]) {
                $i += 1 + $ii;
                $ii = 0;
            } else {
                $ii += 1;
            }
            $lastScore = $classementUser[$scoreKey];
            $classementUser[$classementKey] = $i;

        }
    }

    public function groupesAction(Request $request)
    {
//        $em = $this->container->get('doctrine.orm.entity_manager');
//        $games = $em->getRepository('GrubPronosticsBundle:Game')->findAllFinishedGroupPhase();
//
//        $groups = array();
//
//        foreach ($games as $game) {
//            $scoreA = $game->getScoreA();
//            $teamA = $game->getTeamA();
//            $teamAId = $teamA->getId();
//
//            $scoreB = $game->getScoreB();
//            $teamB = $game->getTeamB();
//            $teamBId = $teamB->getId();
//
//            $grp = $teamA->getGroup();
//            $grpId = $grp->getId();
//
//            if (!array_key_exists($grpId, $groups)) {
//                $groups[$grpId] = array(
//                    'name' => $grp->getName(),
//                    'teams' => array()
//                );
//            }
//
//            $teams = &$groups[$grpId]['teams'];
//
//            if (!array_key_exists($teamAId, $teams)) {
//                $teams[$teamAId] = $this->createEmptyGroupTeamScoreBoard($teamA);
//            }
//            $this->computeGroupTeamScoreBoard($teams[$teamAId], $scoreA, $scoreB);
//
//            if (!array_key_exists($teamBId, $teams)) {
//                $teams[$teamBId] = $this->createEmptyGroupTeamScoreBoard($teamB);
//            }
//            $this->computeGroupTeamScoreBoard($teams[$teamBId], $scoreB, $scoreA);
//        }
//
//        foreach ($groups as &$grp) {
//            $grp['teams'] = array_values($grp['teams']);
//            uasort($grp['teams'], array($this, 'cmpScoreBoard'));
//        }

//        return $this->container->get('templating')->renderResponse('GrubPronosticsBundle:Default:groupes.html.twig',
//            array('groups' => $groups));

        return $this->render('GrubPronosticsBundle:Default:groupes.html.twig');
    }

    private function createEmptyGroupTeamScoreBoard($team)
    {
        return array('name' => $team->getName(),
            'pts' => 0, 'j' => 0, 'v' => 0, 'n' => 0, 'd' => 0, 'bp' => 0, 'bc' => 0, 'diff' => 0);
    }

    private function computeGroupTeamScoreBoard(&$scoreBoard, $score, $otherScore)
    {
        $scoreBoard['j']++;

        if ($score > $otherScore) {
            $scoreBoard['v']++;
        }

        if ($score === $otherScore) {
            $scoreBoard['n']++;
        }

        if ($score < $otherScore) {
            $scoreBoard['d']++;
        }

        $scoreBoard['bp']+= $score;
        $scoreBoard['bc']+= $otherScore;
        $scoreBoard['diff'] = $scoreBoard['bp'] - $scoreBoard['bc'];
        $scoreBoard['pts'] = $scoreBoard['v'] * 3 + $scoreBoard['n'];
    }

    private static function cmpScoreBoard($a, $b)
    {
        if ($a['pts'] == $b['pts']) {
            if ($a['diff'] == $b['diff']) {
                return 0;
            } else {
                return ($a['diff'] > $b['diff']) ? -1 : 1;
            }
        }
        return ($a['pts'] > $b['pts']) ? -1 : 1;
    }
}
