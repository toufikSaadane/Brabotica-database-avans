/**
  the insert statememt
 */
INSERT INTO discount (type, value)
VALUES ('commercieel',25),
       ('commercieel',50),
       ('commercieel',75),
       ('financieel',25),
       ('financieel',50),
       ('financieel',75);

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