<?php

declare(strict_types=1);

namespace Thiiagoms\DIP;

class ContainerDI
{
    private array $dependencies = [];

    public function set(string $class, callable $callback): void
    {
        $this->dependencies[$class] = $callback;
    }

    /**
     * @throws \Exception
     */
    public function get(string $class): mixed
    {
        if (! array_key_exists($class, $this->dependencies)) {
            throw new \Exception("Error: class {$class} not found");
        }

        $handler = $this->dependencies[$class];

        return $handler($this);
    }
}
