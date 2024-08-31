<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Repositories\Stock;

use Thiiagoms\DIP\Entities\Stock;
use Thiiagoms\DIP\Infra\Database\DatabaseConnectionContract;

class StockRepository implements StockContract
{
    public function __construct(private readonly DatabaseConnectionContract $connection) {}

    public function forProduct(string $productId): Stock
    {
        $query = 'SELECT * FROM stocks WHERE product_id = :product_id LIMIT 1';

        $stmt = $this->connection->getConnection()->prepare($query);
        $stmt->bindParam(':product_id', $productId);
        $stmt->execute();

        return Stock::from($stmt->fetch());
    }

    public function record(string $productId, int $quantity): void
    {
        $query = 'UPDATE stocks SET quantity = :quantity WHERE product_id = :product_id';

        $stmt = $this->connection->getConnection()->prepare($query);
        $stmt->bindParam(':product_id', $productId);
        $stmt->bindParam(':quantity', $quantity);
    }
}
