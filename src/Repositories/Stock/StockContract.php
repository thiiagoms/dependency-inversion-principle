<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Repositories\Stock;

use Thiiagoms\DIP\Entities\Stock;

interface StockContract
{
    public function forProduct(string $productId): Stock;

    public function record(string $productId, int $quantity): void;
}
