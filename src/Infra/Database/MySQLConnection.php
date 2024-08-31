<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Infra\Database;

use PDO;
use PDOException;
use RuntimeException;

class MySQLConnection implements DatabaseConnectionContract
{
    private PDO $connection;

    public function __construct(
        private readonly string $dbHost,
        private readonly string $dbName,
        private readonly int $dbPort,
        private readonly string $dbUser,
        private readonly string $dbPass,
    ) {}

    public function connect(): void
    {
        try {

            if (! isset($this->connection)) {

                $this->connection = new PDO(
                    "mysql:host={$this->dbHost};port={$this->dbPort};dbname={$this->dbName}",
                    $this->dbUser,
                    $this->dbPass
                );

                $this->connection->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
                $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }
        } catch (PDOException $e) {
            throw new RuntimeException("Error: {$e->getMessage()}");
        }
    }

    public function disconnect(): void
    {
        $this->connection = null;
    }

    public function getConnection(): PDO
    {
        if (! isset($this->connection)) {
            $this->connect();
        }

        return $this->connection;
    }
}
