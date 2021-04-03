/**
  the insert statememt
 */
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

/**
  the uodate statememt
 */
UPDATE address
SET house_number = 903
WHERE city = 'somewhere';


/**
  the delete statememt
 */
DELETE
FROM address
WHERE house_number = 903;












