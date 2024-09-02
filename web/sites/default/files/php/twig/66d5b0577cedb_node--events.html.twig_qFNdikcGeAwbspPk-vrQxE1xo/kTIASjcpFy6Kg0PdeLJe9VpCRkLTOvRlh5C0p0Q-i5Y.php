<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\CoreExtension;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* themes/contrib/gin/templates/node/node--events.html.twig */
class __TwigTemplate_e02513793b42f32a6a760f10d024fffd extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
        $this->sandbox = $this->env->getExtension(SandboxExtension::class);
        $this->checkSecurity();
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        yield "<article>
  <h1>";
        // line 2
        yield $this->extensions['Drupal\Core\Template\TwigExtension']->escapeFilter($this->env, $this->sandbox->ensureToStringAllowed(CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source, ($context["node"] ?? null), "field_name", [], "any", false, false, true, 2), "value", [], "any", false, false, true, 2), 2, $this->source), "html", null, true);
        yield "</h1>
  <h4>";
        // line 3
        yield $this->extensions['Drupal\Core\Template\TwigExtension']->escapeFilter($this->env, $this->sandbox->ensureToStringAllowed(CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source, ($context["node"] ?? null), "field_description", [], "any", false, false, true, 3), "value", [], "any", false, false, true, 3), 3, $this->source), "html", null, true);
        yield "</h4>
  <pre>";
        // line 4
        yield $this->extensions['Drupal\Core\Template\TwigExtension']->escapeFilter($this->env, $this->extensions['Twig\Extension\CoreExtension']->formatDate($this->sandbox->ensureToStringAllowed(CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source, ($context["node"] ?? null), "field_date", [], "any", false, false, true, 4), "value", [], "any", false, false, true, 4), 4, $this->source), "m/d/Y H:i:s"), "html", null, true);
        yield "</pre>
  ";
        // line 5
        if (( !Twig\Extension\CoreExtension::testEmpty(CoreExtension::getAttribute($this->env, $this->source, ($context["node"] ?? null), "field_vacancies", [], "any", false, false, true, 5)) && (CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source, ($context["node"] ?? null), "field_vacancies", [], "any", false, false, true, 5), "value", [], "any", false, false, true, 5) != 0))) {
            // line 6
            yield "    <h1>";
            yield $this->extensions['Drupal\Core\Template\TwigExtension']->escapeFilter($this->env, $this->sandbox->ensureToStringAllowed(CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source, ($context["node"] ?? null), "field_vacancies", [], "any", false, false, true, 6), "value", [], "any", false, false, true, 6), 6, $this->source), "html", null, true);
            yield "</h1>
  ";
        } else {
            // line 8
            yield "    <p style=\"color: red;\"> There is not vacancies available!</p>
  ";
        }
        // line 10
        yield "</article>";
        $this->env->getExtension('\Drupal\Core\Template\TwigExtension')
            ->checkDeprecations($context, ["node"]);        return; yield '';
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName()
    {
        return "themes/contrib/gin/templates/node/node--events.html.twig";
    }

    /**
     * @codeCoverageIgnore
     */
    public function isTraitable()
    {
        return false;
    }

    /**
     * @codeCoverageIgnore
     */
    public function getDebugInfo()
    {
        return array (  67 => 10,  63 => 8,  57 => 6,  55 => 5,  51 => 4,  47 => 3,  43 => 2,  40 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "themes/contrib/gin/templates/node/node--events.html.twig", "C:\\Users\\jcalbuquerque\\OneDrive - Stefanini\\Área de Trabalho\\challenge\\web\\themes\\contrib\\gin\\templates\\node\\node--events.html.twig");
    }
    
    public function checkSecurity()
    {
        static $tags = array("if" => 5);
        static $filters = array("escape" => 2, "date" => 4);
        static $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['if'],
                ['escape', 'date'],
                [],
                $this->source
            );
        } catch (SecurityError $e) {
            $e->setSourceContext($this->source);

            if ($e instanceof SecurityNotAllowedTagError && isset($tags[$e->getTagName()])) {
                $e->setTemplateLine($tags[$e->getTagName()]);
            } elseif ($e instanceof SecurityNotAllowedFilterError && isset($filters[$e->getFilterName()])) {
                $e->setTemplateLine($filters[$e->getFilterName()]);
            } elseif ($e instanceof SecurityNotAllowedFunctionError && isset($functions[$e->getFunctionName()])) {
                $e->setTemplateLine($functions[$e->getFunctionName()]);
            }

            throw $e;
        }

    }
}
