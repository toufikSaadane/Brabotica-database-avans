INSERT INTO role (title, description)
VALUES ('medewerker', 'de medewerker moet geristreerd zijn om zijn werkzaamheiden te kunnen uitvoeren'),
       ('klant', 'klant moet zich registreren om de bestelling te kunnen maken, als de klant is al geregistreed dan moet hij inloggen om de bestelling voltooien'),
       ('admin', 'admin is de database te organiseren en in elkaar te zetten dat de bedrijfsprocessen kunnen vlot lopen');
/******/
INSERT INTO address (house_number, street, city, country, postal_code)
VALUES (60, 'verdaasdonkstraat', 'Teteringen', 'Nederland', '4847GD'),
       (76, 'Hooftlaantje', 'Hendrik-Ido-Ambacht', 'Nederland', '2837HY'),
       (15, 'tienhondstraat', 'Zaltbommel', 'Nederland', '9827Hk'),
       (24, 'Stationsweg', '\'s-Hertogenbosch','Nederland', '2897DJ'),
        (102, 'Claudius Prinsenlaan', 'Breda','Nederland', '2327PY'),
        (2, 'Plein', 'Den Haag','Nederland', '2317PB'),
        (204, 'Lovensdijkstraat', 'Breda','Nederland','1237PE'),
        (98, 'Mill Hillplein ', 'Den Haag','Nederland', '3344EL'),
        (8, 'Veemarktkade', '\'s-Hertogenbosch', 'Nederland', '4814 DC'),
       (22, 'Reduitlaan', 'Breda', 'Nederland', '4844KL');
/*****/
INSERT INTO user (first_name, last_name, email, role_roleNumber, address_addressNumber)
VALUES ('Ilias', 'Saadane', 'IliasSaadane@IliasSaadane.me', 3, 1),
       ('Taoufik', 'Saadane', 'Taoufik@saadane.me', 3, 1),
       ('Esther', 'venrooy', 'Esther@gmail.com', 2, 2),
       ('Thijs', 'deRooij', 'Thijs@gmail.com', 2, 3),
       ('Noah', 'Visser', 'Noah@gmail.com', 1, 4),
       ('Sem', 'Lucas', 'Sem@gmail.com', 1, 5),
       ('Daan', 'Jansen', 'Daan@gmail.com', 1, 6),
       ('Sophie', 'Van Dijk', 'Sophie@gmail.com', 2, 5),
       ('Sara', 'De Vries', 'Sara@gmail.com', 1, 7),
       ('Eva', 'Bakker', 'Eva@gmail.com', 1, 8),
       ('Finn', 'De Vries', 'Finn@gmail.com', 1, 10);
/*****/
INSERT INTO category (name, description)
VALUES ('educatieve','helpt kinderen met de ontwikkeling van het logisch denkvermogen en probleemoplossende vaardigheden'),
       ('ontwikkeling','spelenderwijs leren programmeren'),
       ('intrudctie tot programmeren','helpen om eerste stappen in het codeeruniversum te zetten'),
       ('meetkunde','helpt kinderen met de ontwikkeling van de rekenkunde vaardigheden'),
       ('rekenkunde','helpt kinderen met de ontwikkeling van de meetkunde vaardigheden');
/*****/
INSERT INTO discount (type, value)
VALUES ('commercieel',25),
       ('commercieel',50),
       ('commercieel',75),
       ('financieel',25),
       ('financieel',50),
       ('financieel',75);
/*****/
INSERT INTO product (name, price, stock, discount_discountNumber)
VALUES
('Velleman KSR18 entertainment robot', 500, 40, 2),
('Velleman KSR17 entertainment robot', 500, 40, 1),
('Velleman KSR16 entertainment robot', 500, 40, 3),
('Velleman KSR15 entertainment robot', 500, 40, 4),
('TOBBIE II intelligente robor MICRO:BIT KIT', 500, 40, 3),
('TOBBIE II intelligente robor MICRO:SUPER BIT KIT', 500, 40, 2),
('TOBBIE III intelligente robor MICRO:SUPER BIT KIT', 500, 40, 6),
('Silverlit Robot Mazebreaker wit', 500, 40, 6),
('Silverlit Robot Macrobot', 500, 40, 4),
('Silverlit Robo Kombat Gevechtsrobots - Duo Set', 500, 40, 4),
('Silverlit Robo Kombat Gevechtsrobots - Trio Set', 500, 40, 1);
/*****/
INSERT INTO `order` (user_userNumber, payment_method, total_price, `status`, order_date, shipment_date)
VALUES (1, 'paypall', 40, 'payed',  NOW(), NOW() + INTERVAL 86 HOUR),
       (8, 'paypall', 987, 'payed',  NOW(), NOW() + INTERVAL 24 HOUR),
       (3, 'paypall', 234, 'payed',  NOW(), NOW() + INTERVAL 48 HOUR),
       (5, 'paypall', 423, 'payed',  NOW(), NOW() + INTERVAL 86 HOUR),
       (7, 'paypall', 149, 'payed',  NOW(), NOW() + INTERVAL 60 HOUR),
       (2, 'paypall', 56, 'payed',  NOW(), NOW() + INTERVAL 80 HOUR),
       (4, 'paypall', 423, 'payed',  NOW(), NOW() + INTERVAL 85 HOUR);
/*****/
INSERT INTO `order_product` (order_orderNumber, product_productNumber)
VALUES (1, 3),(4, 5),(7, 4),(3, 3),(6, 2),(7, 1);
/*****/
INSERT INTO `product_category` (product_productNumber, category_categoryNumber)
VALUES (1, 3),(4, 5),(1, 4),(8, 3),(9, 2),(10, 1);