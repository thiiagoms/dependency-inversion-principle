<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Contracts;

use Thiiagoms\DIP\Entities\Product;

interface DiscountContract
{
    public function with(Product $product): self;

    public function applySpecialDiscount(): string;
}
