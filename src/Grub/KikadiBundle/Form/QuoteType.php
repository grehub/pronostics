<?php

namespace Grub\KikadiBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class QuoteType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder->add('saidby');
        $builder->add('addedby');
        $builder->add('quote');
        $builder->add('comment',null,array('required'=>false));
    }

    public function getName()
    {
        return 'quote';
    }
}