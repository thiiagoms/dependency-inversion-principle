<?php

declare(strict_types=1);

use Thiiagoms\DIP\Commands\OrderProcessingCommand;
use Thiiagoms\DIP\ContainerDI;
use Thiiagoms\DIP\Contracts\DiscountContract;
use Thiiagoms\DIP\Contracts\StripePaymentContract;
use Thiiagoms\DIP\Infra\Database\DatabaseConnectionContract;
use Thiiagoms\DIP\Infra\Database\MySQLConnection;
use Thiiagoms\DIP\Repositories\Product\ProductContract;
use Thiiagoms\DIP\Repositories\Product\ProductRepository;
use Thiiagoms\DIP\Repositories\Stock\StockContract;
use Thiiagoms\DIP\Repositories\Stock\StockRepository;
use Thiiagoms\DIP\Services\DiscountService;
use Thiiagoms\DIP\Services\OrderProcessingService;
use Thiiagoms\DIP\Services\StripePaymentService;

if (php_sapi_name() !== 'cli') {
    echo '<h1>Only in CLI mode</h1>';
    exit;
}

require __DIR__ . '/vendor/autoload.php';

$containerDI = new ContainerDI;

$containerDI->set(DatabaseConnectionContract::class, fn(): MySQLConnection => new MySQLConnection(
    dbHost: 'db',
    dbName: 'solid',
    dbPort: 3306,
    dbUser: 'root',
    dbPass: 'root',
));

$containerDI->set(
    StockRepository::class,
    fn(ContainerDI $container): StockRepository => new StockRepository(
        $container->get(DatabaseConnectionContract::class)
    )
);

$containerDI->set(
    StockContract::class,
    fn(ContainerDI $container): StockRepository => $container->get(StockRepository::class)
);

$containerDI->set(
    ProductRepository::class,
    fn(ContainerDI $container): ProductRepository => new ProductRepository(
        $container->get(DatabaseConnectionContract::class)
    )
);

$containerDI->set(
    ProductContract::class,
    fn(ContainerDI $container): ProductRepository => $container->get(ProductRepository::class)
);

$containerDI->set(DiscountService::class, fn(): DiscountService => new DiscountService);

$containerDI->set(
    DiscountContract::class,
    fn(ContainerDI $container): DiscountService => $container->get(DiscountService::class)
);

$containerDI->set(StripePaymentService::class, fn(): StripePaymentService => new StripePaymentService);

$containerDI->set(StripePaymentContract::class, fn (ContainerDI $container): StripePaymentService => 
    $container->get(StripePaymentService::class)
);

$containerDI->set(
    OrderProcessingService::class,
    fn(ContainerDI $container): OrderProcessingService => new OrderProcessingService(
        $container->get(ProductContract::class),
        $container->get(StockContract::class),
        $container->get(DiscountContract::class),
        $container->get(StripePaymentContract::class)
    )
);

$containerDI->set(
    OrderProcessingCommand::class,
    fn(ContainerDI $container): OrderProcessingCommand => new OrderProcessingCommand(
        $container->get(OrderProcessingService::class)
    )
);

/** @var OrderProcessingCommand $orderProcessingCommand */
$orderProcessingCommand = $containerDI->get(OrderProcessingCommand::class);
