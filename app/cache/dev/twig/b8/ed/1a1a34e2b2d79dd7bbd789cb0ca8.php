<?php

/* GrubKikadiBundle::layout.html.twig */
class __TwigTemplate_b8ed1a1a34e2b2d79dd7bbd789cb0ca8 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'stylesheet' => array($this, 'block_stylesheet'),
            'content' => array($this, 'block_content'),
            'javascript' => array($this, 'block_javascript'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!doctype html>
<!--[if lt IE 7]>
<html class=\"no-js lt-ie9 lt-ie8 lt-ie7\" lang=\"en\"> <![endif]-->
<!--[if IE 7]>
<html class=\"no-js lt-ie9 lt-ie8\" lang=\"en\"> <![endif]-->
<!--[if IE 8]>
<html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class=\"no-js\" lang=\"en\"> <!--<![endif]-->
<head>
  <meta charset=\"utf-8\">
  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">

  <title>";
        // line 14
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
  <meta name=\"description\" content=\"\">
  <meta name=\"author\" content=\"\">

  <meta name=\"viewport\" content=\"width=device-width\">

  <link rel=\"shortcut icon\" href=\"";
        // line 20
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/grubkikadi/images/favicon.ico"), "html", null, true);
        echo "\"/>
  <link rel=\"stylesheet\" href=\"";
        // line 21
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/grubkikadi/css/bootstrap.min.css"), "html", null, true);
        echo "\">
  <link rel=\"stylesheet\" href=\"";
        // line 22
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/grubkikadi/css/main.css"), "html", null, true);
        echo "\">
  
  ";
        // line 24
        $this->displayBlock('stylesheet', $context, $blocks);
        // line 25
        echo "
</head>
<body>
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href=\"http://browsehappy.com/\">Upgrade to a
  different browser</a> or <a href=\"http://www.google.com/chromeframe/?redirect=true\">install Google Chrome Frame</a> to
  experience this site.</p><![endif]-->


<div class=\"navbar navbar-fixed-top\">
  <div class=\"navbar-inner\">
    <div class=\"container\">
      <a class=\"brand\" href=\"";
        // line 36
        echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("GrubKikadiBundle_home"), "html", null, true);
        echo "\">Kikadiça</a>

      <div class=\"nav-collapse\">
        ";
        // line 39
        if ($this->env->getExtension('security')->isGranted("IS_AUTHENTICATED_REMEMBERED")) {
            // line 40
            echo "          <ul class=\"nav\">
            <li><a href=\"";
            // line 41
            echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("GrubKikadiBundle_new_quote"), "html", null, true);
            echo "\">Ajouter</a></li>
          </ul>

          <ul class=\"nav pull-right\">
          
            <li><a href=\"";
            // line 46
            echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("fos_user_change_password"), "html", null, true);
            echo "\">Changer le mot de passe</a></li>
            <li><a href=\"";
            // line 47
            echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("fos_user_security_logout"), "html", null, true);
            echo "\">Déconnexion (";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getContext($context, "app"), "user"), "username"), "html", null, true);
            echo ")</a></li>
          </ul>
        ";
        } else {
            // line 50
            echo "          <ul class=\"nav pull-right\">          
            <li><a href=\"";
            // line 51
            echo twig_escape_filter($this->env, $this->env->getExtension('routing')->getPath("fos_user_security_login"), "html", null, true);
            echo "\">Connexion</a></li>
          </ul>
        ";
        }
        // line 54
        echo "      </div>
    </div>
  </div>
</div>

<div class=\"main\">
  ";
        // line 60
        $this->displayBlock('content', $context, $blocks);
        // line 61
        echo "</div>
";
        // line 62
        $this->displayBlock('javascript', $context, $blocks);
        // line 63
        echo "</body>
</html>
";
    }

    // line 14
    public function block_title($context, array $blocks = array())
    {
        echo "Kikadiça";
    }

    // line 24
    public function block_stylesheet($context, array $blocks = array())
    {
    }

    // line 60
    public function block_content($context, array $blocks = array())
    {
    }

    // line 62
    public function block_javascript($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "GrubKikadiBundle::layout.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  150 => 62,  145 => 60,  140 => 24,  134 => 14,  128 => 63,  126 => 62,  121 => 60,  113 => 54,  107 => 51,  104 => 50,  96 => 47,  81 => 40,  79 => 39,  73 => 36,  60 => 25,  58 => 24,  53 => 22,  49 => 21,  45 => 20,  21 => 1,  131 => 49,  127 => 48,  123 => 61,  118 => 46,  115 => 45,  109 => 40,  105 => 38,  101 => 36,  92 => 46,  88 => 32,  84 => 41,  80 => 30,  75 => 28,  71 => 27,  67 => 26,  63 => 24,  59 => 23,  46 => 12,  44 => 11,  39 => 8,  36 => 14,  31 => 4,  28 => 3,);
    }
}
