/**
  the insert statememt
 */
INSERT INTO address (house_number, street, city, country)
VALUES (60, 'somewhere', 'somewhere','somewhere');

/**
  the uodate statememt
 */
UPDATE address
SET house_number = 903
WHERE city = 'somewhere';


/**
  the delete statememt
 */
DELETE FROM address  WHERE house_number = 903;












