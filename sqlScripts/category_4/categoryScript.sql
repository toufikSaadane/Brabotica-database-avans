/**
  the insert statememt
 */
INSERT INTO category (name, description)
VALUES ('somewhere','nogsomewhere');

/**
  the uodate statememt
 */
UPDATE category
SET name = 'this a category name'
WHERE id = 1;


/**
  the delete statememt
 */
DELETE FROM category  WHERE id = 1;