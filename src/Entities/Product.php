<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Entities;

use DateTime;
use stdClass;

class Product
{
    public function __construct(
        public readonly string $id,
        public string $sku,
        public string $name,
        public string $price,
        public DateTime $created_at,
        public DateTime $updated_at
    ) {}

    public static function from(stdClass $payload): self
    {
        return new self(
            id: $payload->id,
            sku: $payload->sku,
            name: $payload->name,
            price: $payload->price,
            created_at: new DateTime($payload->created_at),
            updated_at: new DateTime($payload->updated_at),
        );
    }
}
