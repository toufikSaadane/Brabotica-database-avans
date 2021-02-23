CREATE TABLE `order_product`
(
    `order_id`   int(11) NOT NULL,
    `product_id` int(11) NOT NULL,
    PRIMARY KEY (`order_id`, `product_id`),
    FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
    FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB;