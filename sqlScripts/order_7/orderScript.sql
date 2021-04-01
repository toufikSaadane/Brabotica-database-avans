/**
  the insert statememt
 */
INSERT INTO `order` (user_userNumber, payment_method, total_price, `status`, order_date, shipment_date)
VALUES (1, 'paypall', 40, 'payed',  NOW(), NOW() + INTERVAL 86 HOUR),
       (8, 'paypall', 987, 'payed',  NOW(), NOW() + INTERVAL 24 HOUR),
       (3, 'paypall', 234, 'payed',  NOW(), NOW() + INTERVAL 48 HOUR),
       (5, 'paypall', 423, 'payed',  NOW(), NOW() + INTERVAL 86 HOUR),
       (7, 'paypall', 149, 'payed',  NOW(), NOW() + INTERVAL 60 HOUR),
       (2, 'paypall', 56, 'payed',  NOW(), NOW() + INTERVAL 80 HOUR),
       (4, 'paypall', 423, 'payed',  NOW(), NOW() + INTERVAL 85 HOUR);

/**
  the uodate statememt
 */
UPDATE order
SET total_price = 70
WHERE id = 1;
/**
  the delete statememt
 */
DELETE FROM order  WHERE id = 1;