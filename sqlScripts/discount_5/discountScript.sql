/**
  the insert statememt
 */
INSERT INTO discount (type, value)
VALUES ('commercial',50);

/**
  the uodate statememt
 */
UPDATE discount
SET value = 70
WHERE id = 1;


/**
  the delete statememt
 */
DELETE FROM discount  WHERE id = 1;