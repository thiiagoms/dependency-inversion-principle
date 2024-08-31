<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Entities;

use DateTime;
use stdClass;

class Stock
{
    public function __construct(
        public readonly string $id,
        public readonly string $product_id,
        public int $quantity,
        public DateTime $created_at,
        public DateTime $updated_at
    ) {}

    public static function from(stdClass $payload): self
    {
        return new self(
            id: $payload->id,
            product_id: $payload->product_id,
            quantity: $payload->quantity,
            created_at: new DateTime($payload->created_at),
            updated_at: new DateTime($payload->updated_at),
        );
    }
}
