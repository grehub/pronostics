<?php

namespace Grub\PronosticsBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class BetType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder->add('scoreA');
        $builder->add('scoreB');
        $builder->add('risquette');
    }

    public function getDefaultOptions(array $options)
    {
        return array(
            'data_class' => 'Grub\PronosticsBundle\Entity\Bet',
            'csrf_protection' => false
        );
    }

    public function getName()
    {
        return 'bet';
    }
}