/**
  the insert statememt
 */
INSERT INTO product (name, price, stock, discount_id)
VALUES ('super robot', 500, 40, 2);

/**
  the uodate statememt
 */
UPDATE product
SET stock = 70
WHERE id = 1;


/**
  the delete statememt
 */
DELETE FROM product  WHERE id = 1;