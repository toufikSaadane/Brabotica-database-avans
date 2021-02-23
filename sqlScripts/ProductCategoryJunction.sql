CREATE TABLE `product_category_junction`
(
    `product_id`  int(11) NOT NULL,
    `category_id` int(11) NOT NULL,
    PRIMARY KEY (`product_id`, `category_id`),
    FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
    FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB;