CREATE TABLE `user`
(
    `id`         int(11) NOT NULL AUTO_INCREMENT,
    `first_name` varchar(255) NOT NULL,
    `last_name`  varchar(255) NOT NULL,
    `email`      varchar(255) NOT NULL,
    `role_id`    int(11) DEFAULT NULL,
    `address_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
    FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB;