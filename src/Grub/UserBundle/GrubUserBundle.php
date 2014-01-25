<?php

namespace Grub\UserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class GrubUserBundle extends Bundle
{
    public function getParent()
    {
        return 'FOSUserBundle';
    }
}