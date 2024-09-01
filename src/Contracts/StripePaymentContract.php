<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Contracts;

interface StripePaymentContract
{
    public function process(string $total): string;
}
