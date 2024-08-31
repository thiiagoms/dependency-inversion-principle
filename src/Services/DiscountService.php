<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Services;

use Thiiagoms\DIP\Entities\Product;

class DiscountService
{
    protected Product $product;

    public function with(Product $product): self
    {
        $this->product = $product;

        return $this;
    }

    public function applySpecialDiscount(): string
    {
        $discount = 0.28 * $this->product->price;

        return number_format($this->product->price - $discount, 2);
    }
}
