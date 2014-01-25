<?php

namespace Grub\PronosticsBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Validator\ErrorElement;
use Sonata\AdminBundle\Form\FormMapper;

class GameAdmin extends Admin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('title')
            ->add('date')
            ->add('location')
            ->add('teamA')
            ->add('teamB')
            ->add('scoreA')
            ->add('scoreB')
            ->add('risquette')
            ->add('risquetteValidee')
            ->add('channel');
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('title')
            ->add('teamA')
            ->add('teamB');
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('title')
            ->add('date')
            ->add('teamA')
            ->add('scoreA')
            ->add('teamB')
            ->add('scoreB')
            ->add('risquette')
            ->add('risquetteValidee')
            ->add('channel');
    }
}