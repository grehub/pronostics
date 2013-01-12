<?php

/* GrubKikadiBundle:Default:home.html.twig */
class __TwigTemplate_1800d9d2880002dfefbb3ba02c602944 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("GrubKikadiBundle::layout.html.twig");

        $this->blocks = array(
            'stylesheet' => array($this, 'block_stylesheet'),
            'content' => array($this, 'block_content'),
            'javascript' => array($this, 'block_javascript'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "GrubKikadiBundle::layout.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_stylesheet($context, array $blocks = array())
    {
        // line 4
        echo "
";
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "
<h1>Kikadiça</h1>
\t
  ";
        // line 11
        if ((twig_length_filter($this->env, $this->getContext($context, "quotes")) > 0)) {
            // line 12
            echo "\t<table id=\"quoteTable\" class=\"table table-striped table-bordered table-condensed\">
\t  <thead>
\t\t<tr>
                        <th style=\"width:4%;\">Score</th>
\t\t\t<th style=\"width:56%;\">Citation</th>
\t\t\t<th style=\"width:15%;\">Auteur</th>
\t\t\t<th style=\"width:15%;\">Ajoutée par</th>
\t\t\t<th style=\"width:10%;\">Date</th>
\t\t</tr>
\t  </thead>\t  
\t  <tbody>\t  
\t\t  ";
            // line 23
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getContext($context, "quotes"));
            foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
                // line 24
                echo "\t\t\t<tr>
                                <td class=\"score\">
                                  ";
                // line 26
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "item"), "score"), "html", null, true);
                echo "<br />
                                  <a href=\"#\" id=\"votePlus\" rel=\"";
                // line 27
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "item"), "id"), "html", null, true);
                echo "\">+1</a>
                                  <a href=\"#\" id=\"voteMinus\" rel=\"";
                // line 28
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "item"), "id"), "html", null, true);
                echo "\">-1</a>
                                </td>
\t\t\t\t<td>";
                // line 30
                echo $this->getAttribute($this->getContext($context, "item"), "quote");
                echo "</td>
\t\t\t\t<td>";
                // line 31
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "item"), "saidby"), "html", null, true);
                echo "</td>
\t\t\t\t<td>";
                // line 32
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "item"), "addedBy"), "html", null, true);
                echo "</td>
\t\t\t\t<td>";
                // line 33
                echo twig_escape_filter($this->env, $this->getAttribute($this->getContext($context, "item"), "date"), "html", null, true);
                echo "</td>
\t\t\t</tr>
\t\t  ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
            $context = array_merge($_parent, array_intersect_key($context, $_parent));
            // line 36
            echo "\t  </tbody>
  ";
        } else {
            // line 38
            echo "\tAucune citation à afficher. C'est pas normal, Houston, on a un problème.
  ";
        }
        // line 40
        echo "

";
    }

    // line 45
    public function block_javascript($context, array $blocks = array())
    {
        // line 46
        echo "<script src=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/grubkikadi/js/libs/jquery-1.7.2.min.js"), "html", null, true);
        echo "\"></script>
<script src=\"";
        // line 47
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/grubkikadi/js/libs/jquery.dataTables.min.js"), "html", null, true);
        echo "\"></script>
<script src=\"";
        // line 48
        echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/grubkikadi/js/libs/FixedHeader.min.js"), "html", null, true);
        echo "\"></script>
";
        // line 49
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "4f9e3db_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('routing')->getPath("_assetic_4f9e3db_0") : $this->env->getExtension('assets')->getAssetUrl("_controller/js/4f9e3db_quote_1.js");
            echo " <script src=\"";
            echo twig_escape_filter($this->env, $this->getContext($context, "asset_url"), "html", null, true);
            echo "\"></script>";
        } else {
            // asset "4f9e3db"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('routing')->getPath("_assetic_4f9e3db") : $this->env->getExtension('assets')->getAssetUrl("_controller/js/4f9e3db.js");
            echo " <script src=\"";
            echo twig_escape_filter($this->env, $this->getContext($context, "asset_url"), "html", null, true);
            echo "\"></script>";
        }
        unset($context["asset_url"]);
    }

    public function getTemplateName()
    {
        return "GrubKikadiBundle:Default:home.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  131 => 49,  127 => 48,  123 => 47,  118 => 46,  115 => 45,  109 => 40,  105 => 38,  101 => 36,  92 => 33,  88 => 32,  84 => 31,  80 => 30,  75 => 28,  71 => 27,  67 => 26,  63 => 24,  59 => 23,  46 => 12,  44 => 11,  39 => 8,  36 => 7,  31 => 4,  28 => 3,);
    }
}
