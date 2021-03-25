CREATE DATABASE IF NOT EXISTS `brabotica`;
USE `brabotica`;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `role`;
DROP TABLE IF EXISTS `address`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `category`;
DROP TABLE IF EXISTS `discount`;
DROP TABLE IF EXISTS `product_category`;
DROP TABLE IF EXISTS `product`;
DROP TABLE IF EXISTS `order_product`;
DROP TABLE IF EXISTS `order`;

CREATE TABLE `role`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `title`       varchar(255) NOT NULL,
    `description` longtext,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `address`
(
    `id`           int(11) NOT NULL AUTO_INCREMENT,
    `street`       varchar(255) NOT NULL,
    `postal_code`  varchar(255) NOT NULL,
    `house_number` varchar(5)   NOT NULL,
    `city`         varchar(25)  NOT NULL,
    `country`      varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `user`
(
    `id`         int(11) NOT NULL AUTO_INCREMENT,
    `role_id`    int(11) DEFAULT NULL,
    `address_id` int(11) DEFAULT NULL,
    `first_name` varchar(255) NOT NULL,
    `last_name`  varchar(255) NOT NULL,
    `email`      varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
    FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB;

CREATE TABLE `category`
(
    `id`         int(11) NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) NOT NULL,
    `desciption` longtext     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `discount`
(
    `id`    int(11) NOT NULL AUTO_INCREMENT,
    `type`  varchar(10)   NOT NULL,
    `value` decimal(5, 2) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `product_category`
(
    `product_id`  int(11) NOT NULL,
    `category_id` int(11) NOT NULL,
    PRIMARY KEY (`product_id`, `category_id`),

    FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
    FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE `product`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `discount_id` int(11) DEFAULT NULL,
    `name`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `price`       decimal(10, 0)                          NOT NULL,
    `stock`       int(11) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`)
) ENGINE=InnoDB;

CREATE TABLE `order_product`
(
    `order_id`   int(11) NOT NULL,
    `product_id` int(11) NOT NULL,
    PRIMARY KEY (`order_id`, `product_id`),
    FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
    FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE `order`
(
    `id`             int(11) NOT NULL AUTO_INCREMENT,
    `payment_method` varchar(255)   NOT NULL,
    `user_id`        int(11) NOT NULL,
    `total_price`    decimal(10, 2) NOT NULL,
    `status`         varchar(255)   NOT NULL,
    `order_date`     date           NOT NULL,
    `shipment_date`  date DEFAULT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB;

SET FOREIGN_KEY_CHECKS=1;