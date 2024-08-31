<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Types;

class OrderProcessResponse
{
    public function __construct(
        public string $payment_message,
        public string $discount_message,
        public string $original_price,
        public string $message,
    ) {}

    public function toArray(): array
    {
        return get_object_vars($this);
    }
}
