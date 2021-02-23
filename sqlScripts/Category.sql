CREATE TABLE `category`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `name`        varchar(255) NOT NULL,
    `description` longtext,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;