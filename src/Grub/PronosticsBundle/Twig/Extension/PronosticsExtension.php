<?php

namespace Grub\PronosticsBundle\Twig\Extension;

use Symfony\Component\HttpKernel\KernelInterface;
use Symfony\Bundle\TwigBundle\Loader\FilesystemLoader;

class PronosticsExtension extends \Twig_Extension
{
    public function getName()
    {
        return 'pronostics';
    }

    public function getFilters()
    {
        return array(
            'slug' => new \Twig_Filter_Method($this, 'slug'),
            'trunc' => new \Twig_Filter_Method($this, 'trunc'),
        );
    }

    public function slug($text)
    {
        // replace non letter or digits by -
        $text = preg_replace('#[^\\pL\d]+#u', '-', $text);

        // trim
        $text = trim($text, '-');

        // transliterate
        if (function_exists('iconv')) {
            setlocale(LC_CTYPE, 'fr_FR.utf8');
            $text = iconv('UTF-8', 'us-ascii//TRANSLIT', $text);
        }

        // lowercase
        $text = strtolower($text);

        // remove unwanted characters
        $text = preg_replace('#[^-\w]+#', '', $text);

        if (empty($text)) {
            return 'n-a';
        }

        return $text;
    }

    public function trunc($text)
    {
        return substr($text, 0, 3);
    }

}