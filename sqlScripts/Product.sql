CREATE TABLE `product`
(
    `id`    int(11) NOT NULL AUTO_INCREMENT,
    `name`  varchar(255)   NOT NULL,
    `price` decimal(10, 0) NOT NULL,
    `stock` int(11) NOT NULL,
    PRIMARY KEY (`id`)
    FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`)
) ENGINE=InnoDB;
