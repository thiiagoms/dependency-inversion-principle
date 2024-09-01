<?php

declare(strict_types=1);

namespace Thiiagoms\DIP\Services;

use Thiiagoms\DIP\Contracts\DiscountContract;
use Thiiagoms\DIP\Contracts\StripePaymentContract;
use Thiiagoms\DIP\Exception\NotFoundException;
use Thiiagoms\DIP\Repositories\Product\ProductContract;
use Thiiagoms\DIP\Repositories\Stock\StockContract;
use Thiiagoms\DIP\Types\OrderProcessResponse;

class OrderProcessingService
{
    private const int MINIMUM_STOCK_LEVEL = 1;

    public function __construct(
        private readonly ProductContract $productRepository,
        private readonly StockContract $stockRepository,
        private readonly DiscountContract $discountContract,
        private readonly StripePaymentContract $stripePaymentContract
    ) {}

    private function checkAvailability(int $quantity): void
    {
        if ($quantity < self::MINIMUM_STOCK_LEVEL) {
            throw new NotFoundException('we are out of stock');
        }
    }

    public function execute(string $productId): OrderProcessResponse
    {
        $product = $this->productRepository->findById($productId);

        $stock = $this->stockRepository->forProduct($productId);

        $this->checkAvailability($stock->quantity);

        $total = $this->discountContract->with($product)->applySpecialDiscount();

        $paymentSuccessMessage = $this->stripePaymentContract->process($total);

        $this->stockRepository->record($product->id, $stock->quantity - 1);

        return new OrderProcessResponse(
            payment_message: $paymentSuccessMessage,
            discount_message: $total,
            original_price: $product->price,
            message: 'Thank you, your order is being processed',
        );
    }
}
