CREATE TABLE `discount`
(
    `id`    int(11) NOT NULL AUTO_INCREMENT,
    `type`  varchar(255)   NOT NULL,
    `value` decimal(10, 0) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;