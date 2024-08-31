USE solid;

CREATE TABLE `products` (
    `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
    `sku` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
    `price` decimal(5, 2) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-770e-473a-a07b-e6b04fd1478a',
        'BP063-0002',
        'Ben Sherman',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-7b2d-47de-b587-6907c574c7ba',
        'BP063-0001',
        'Kangol',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-7bcf-4c7a-82d7-e4dd8706ac2c',
        'BP063-0002',
        'Ben Sherman',
        156.99,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-7c70-48f6-af09-2d21d224b7eb',
        'BP063-0001',
        'Kangol',
        156.99,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-7d22-4352-a57d-a283cd964d14',
        'BP063-0002',
        'Ben Sherman',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-7dca-43ee-baa9-d5ea72f84394',
        'BP063-0002',
        'Kangol',
        156.99,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-7e68-4f5e-9c5b-e888b239eb79',
        'BP063-0002',
        'Giorgio',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-7f04-4267-9264-54a0c9eae021',
        'BP063-0001',
        'Giorgio',
        156.99,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-7f99-42b3-8b38-906cc5fc9172',
        'BP063-0003',
        'Ben Sherman',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-802a-4fd4-a397-a9c9831cabbe',
        'BP063-0003',
        'Firetrap',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-80c0-4e71-ac75-785da8de6d0b',
        'UA064-0002',
        'Kangol',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-8156-481b-a203-3565541b9a18',
        'BP063-0001',
        'Ben Sherman',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-81e5-400a-927c-0c0d08b5d915',
        'BP063-0003',
        'Giorgio',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-827e-4d12-a1fc-d3acfdc71394',
        'BP063-0002',
        'Ben Sherman',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-8310-4d16-a75b-2b87d788a95d',
        'BP063-0001',
        'Ben Sherman',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-83b9-4a4e-92e8-a7a473a52b6a',
        'UA064-0002',
        'Ben Sherman',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-844a-4a14-b304-d61db2b330bf',
        'BP063-0002',
        'Giorgio',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-84dc-48fa-bcd7-da0df43c604e',
        'BP063-0003',
        'Firetrap',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-856e-422e-a59d-8b2bed0f9f59',
        'BP063-0002',
        'Ben Sherman',
        156.99,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-85fb-4ac2-a062-da45ea6fada7',
        'UA064-0002',
        'Giorgio',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-867e-4688-9a80-0ade3e84d3e2',
        'UA064-0002',
        'Kangol',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-86fe-49cf-9311-d4bab130d4c7',
        'BP063-0003',
        'Firetrap',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-8788-416e-bc30-3a867b5e0371',
        'BP063-0002',
        'Giorgio',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-8802-499a-8ac8-78195cc33ba3',
        'BP063-0001',
        'Ben Sherman',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-887c-46a1-ad48-796e8c1b3427',
        'BP063-0002',
        'Firetrap',
        140.35,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-88ec-49ca-bc12-eeb9b884bc8f',
        'BP063-0003',
        'Firetrap',
        156.99,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-8958-4993-9b72-94a40e879c8e',
        'UA064-0002',
        'Giorgio',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-89cf-42bb-b649-5a715530a6a2',
        'UA064-0002',
        'Giorgio',
        120.25,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-8a3e-4eca-a96c-08002bf12fa0',
        'BP063-0001',
        'Kangol',
        156.99,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.products (id, sku, name, price, created_at, updated_at)
VALUES
    (
        '9cd0e8e7-8aad-4ed1-99ea-3a13602cd1cd',
        'BP063-0002',
        'Kangol',
        156.99,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

CREATE TABLE `stocks` (
    `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
    `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
    `quantity` bigint NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `stocks_product_id_foreign` (`product_id`),
    CONSTRAINT `stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-8d8f-40d4-a6a4-bbf4f1c24668',
        '9cd0e8e7-770e-473a-a07b-e6b04fd1478a',
        44,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-8e55-4e3a-a6dd-e10ca9931401',
        '9cd0e8e7-7b2d-47de-b587-6907c574c7ba',
        28,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-8f19-4431-9351-b32a8dd357a9',
        '9cd0e8e7-7bcf-4c7a-82d7-e4dd8706ac2c',
        40,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-8fc9-407f-b0ff-cdea01f21be8',
        '9cd0e8e7-7c70-48f6-af09-2d21d224b7eb',
        45,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9073-4ab3-bec5-20dfdb4a84ec',
        '9cd0e8e7-7d22-4352-a57d-a283cd964d14',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-911b-4e28-8b2d-29f8bebea6ff',
        '9cd0e8e7-7dca-43ee-baa9-d5ea72f84394',
        45,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-91c0-494f-9d8b-c6117c6c329a',
        '9cd0e8e7-7e68-4f5e-9c5b-e888b239eb79',
        40,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9262-4a7f-9288-932bdc548cd9',
        '9cd0e8e7-7f04-4267-9264-54a0c9eae021',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9305-4ead-96c9-ba6235077cd6',
        '9cd0e8e7-7f99-42b3-8b38-906cc5fc9172',
        20,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-93ab-45a4-a444-6795e1bf6f63',
        '9cd0e8e7-802a-4fd4-a397-a9c9831cabbe',
        45,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9445-416c-977e-828dba25494b',
        '9cd0e8e7-80c0-4e71-ac75-785da8de6d0b',
        20,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-94e5-4285-b314-8f58f29b2fef',
        '9cd0e8e7-8156-481b-a203-3565541b9a18',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9583-48d1-a599-bdbd42287b85',
        '9cd0e8e7-81e5-400a-927c-0c0d08b5d915',
        45,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9628-4d78-9b0e-c82b09356c33',
        '9cd0e8e7-827e-4d12-a1fc-d3acfdc71394',
        40,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-96c9-4bc8-9b7e-f046cfb0fb69',
        '9cd0e8e7-8310-4d16-a75b-2b87d788a95d',
        20,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9777-485d-ac17-33508b0bad84',
        '9cd0e8e7-83b9-4a4e-92e8-a7a473a52b6a',
        45,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9829-42a0-bc6d-70856d0e525d',
        '9cd0e8e7-844a-4a14-b304-d61db2b330bf',
        20,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-98ef-48dc-9719-24dbe297abbd',
        '9cd0e8e7-84dc-48fa-bcd7-da0df43c604e',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-999a-4619-acfe-43af02b7ef2a',
        '9cd0e8e7-856e-422e-a59d-8b2bed0f9f59',
        40,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9a3d-426a-ae73-29e476ec3006',
        '9cd0e8e7-85fb-4ac2-a062-da45ea6fada7',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9ae3-48d8-bf08-48735987bcc7',
        '9cd0e8e7-867e-4688-9a80-0ade3e84d3e2',
        20,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9b7d-4f61-917b-d87c35c89e80',
        '9cd0e8e7-86fe-49cf-9311-d4bab130d4c7',
        45,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9c19-4e8a-a56f-1ee1d48af55c',
        '9cd0e8e7-8788-416e-bc30-3a867b5e0371',
        45,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9caa-45dc-af9d-f7347bda639b',
        '9cd0e8e7-8802-499a-8ac8-78195cc33ba3',
        40,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9d3e-4cfd-a396-f5288dddbb5c',
        '9cd0e8e7-887c-46a1-ad48-796e8c1b3427',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9deb-4975-8259-ad34a98dde7b',
        '9cd0e8e7-88ec-49ca-bc12-eeb9b884bc8f',
        40,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9e8f-4a5e-827b-7c1611d4ecaf',
        '9cd0e8e7-8958-4993-9b72-94a40e879c8e',
        40,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9f36-46a4-9c2c-7113ff175bf1',
        '9cd0e8e7-89cf-42bb-b649-5a715530a6a2',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-9fca-436f-9883-1fe2f9a74dc5',
        '9cd0e8e7-8a3e-4eca-a96c-08002bf12fa0',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );

INSERT INTO
    solid.stocks (id, product_id, quantity, created_at, updated_at)
VALUES
(
        '9cd0e8e7-a06f-46b6-a013-b49ae0a03511',
        '9cd0e8e7-8aad-4ed1-99ea-3a13602cd1cd',
        30,
        '2024-08-21 03:25:46',
        '2024-08-21 03:25:46'
    );