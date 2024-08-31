<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Repositories\Product;

use Thiiagoms\DIP\Entities\Product;

interface ProductContract
{
    public function findById(string $id): Product;
}
