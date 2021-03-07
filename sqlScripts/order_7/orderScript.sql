/**
  the insert statememt
 */

INSERT INTO order (user_id, payment_method, total_price, status, order_date, shipment_date) VALUES (8, 'paypall', 40, payed,  2018-10-20, 2018-10-20)

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