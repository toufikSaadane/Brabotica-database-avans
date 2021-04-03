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
    `roleNumber`          int(11) NOT NULL AUTO_INCREMENT,
    `title`       varchar(255) NOT NULL,
    `description` longtext,
    PRIMARY KEY (`roleNumber`)
) ENGINE=InnoDB;

CREATE TABLE `address`
(
    `addressNumber`           int(11) NOT NULL AUTO_INCREMENT,
    `street`       varchar(255) NOT NULL,
    `postal_code`  varchar(255) NOT NULL,
    `house_number` varchar(5)   NOT NULL,
    `city`         varchar(25)  NOT NULL,
    `country`      varchar(255) NOT NULL,
    PRIMARY KEY (`addressNumber`)
) ENGINE=InnoDB;

CREATE TABLE `user`
(
    `userNumber`         int(11) NOT NULL AUTO_INCREMENT,
    `role_roleNumber`    int(11) DEFAULT NULL,
    `address_addressNumber` int(11) DEFAULT NULL,
    `first_name` varchar(255) NOT NULL,
    `last_name`  varchar(255) NOT NULL,
    `email`      varchar(255) NOT NULL,
    PRIMARY KEY (`userNumber`),
    FOREIGN KEY (`role_roleNumber`) REFERENCES `role` (`roleNumber`),
    FOREIGN KEY (`address_addressNumber`) REFERENCES `address` (`addressNumber`)
) ENGINE=InnoDB;

CREATE TABLE `category`
(
    `categoryNumber`         int(11) NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) NOT NULL,
    `description` longtext     NOT NULL,
    PRIMARY KEY (`categoryNumber`)
) ENGINE=InnoDB;

CREATE TABLE `discount`
(
    `discountNumber`    int(11) NOT NULL AUTO_INCREMENT,
    `type`  varchar(50)   NOT NULL,
    `value` decimal(5, 2) NOT NULL,
    PRIMARY KEY (`discountNumber`)
) ENGINE=InnoDB;

CREATE TABLE `product_category`
(
    `product_productNumber`  int(11) NOT NULL,
    `category_categoryNumber` int(11) NOT NULL,
    PRIMARY KEY (`product_productNumber`, `category_categoryNumber`),

    FOREIGN KEY (`category_categoryNumber`) REFERENCES `category` (`categoryNumber`) ON DELETE CASCADE,
    FOREIGN KEY (`product_productNumber`) REFERENCES `product` (`productNumber`) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE `product`
(
    `productNumber`          int(11) NOT NULL AUTO_INCREMENT,
    `discount_discountNumber` int(11) DEFAULT NULL,
    `name`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `price`       decimal(10, 0)                          NOT NULL,
    `stock`       int(11) NOT NULL,
    PRIMARY KEY (`productNumber`),
    FOREIGN KEY (`discount_discountNumber`) REFERENCES `discount` (`discountNumber`)
) ENGINE=InnoDB;

CREATE TABLE `order_product`
(
    `order_orderNumber`   int(11) NOT NULL,
    `product_productNumber` int(11) NOT NULL,
    PRIMARY KEY (`order_orderNumber`, `product_productNumber`),
    FOREIGN KEY (`product_productNumber`) REFERENCES `product` (`productNumber`) ON DELETE CASCADE,
    FOREIGN KEY (`order_orderNumber`) REFERENCES `order` (`orderNumber`) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE `order`
(
    `orderNumber`             int(11) NOT NULL AUTO_INCREMENT,
    `payment_method` varchar(255)   NOT NULL,
    `user_userNumber`        int(11) NOT NULL,
    `total_price`    decimal(10, 2) NOT NULL,
    `status`         varchar(255)   NOT NULL,
    `order_date`     date           NOT NULL,
    `shipment_date`  date DEFAULT NULL,
    PRIMARY KEY (`orderNumber`),
    FOREIGN KEY (`user_userNumber`) REFERENCES `user` (`userNumber`)
) ENGINE=InnoDB;

SET FOREIGN_KEY_CHECKS=1;