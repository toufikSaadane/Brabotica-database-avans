CREATE TABLE `address`
(
    `id`           int(11) NOT NULL AUTO_INCREMENT,
    `house_number` varchar(255) NOT NULL,
    `street`       varchar(255) NOT NULL,
    `city`         varchar(255) NOT NULL,
    `country`      varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;