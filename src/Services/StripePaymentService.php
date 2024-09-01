<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Services;

use Thiiagoms\DIP\Contracts\StripePaymentContract;

class StripePaymentService implements StripePaymentContract
{
    public function process(string $total): string
    {
        return "Processing payment of £{$total} through Stripe";
    }
}
