CREATE TABLE `order`
(
    `id`             int(11) NOT NULL AUTO_INCREMENT,
    `user_id`        int(11) NOT NULL,
    `payment_method` varchar(255)   NOT NULL,
    `total_price`    decimal(10, 0) NOT NULL,
    `status`         varchar(255)   NOT NULL,
    `order_date`     date           NOT NULL,
    `shipment_date`  date DEFAULT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB;