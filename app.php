<?php

declare(strict_types=1);

require_once __DIR__.'/bootstrap.php';

$response = $orderProcessingCommand->execute('9cd0e8e7-7b2d-47de-b587-6907c574c7ba');

print_r($response);
