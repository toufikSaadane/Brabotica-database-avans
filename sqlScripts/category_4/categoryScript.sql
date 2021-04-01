/**
  the insert statememt
 */

INSERT INTO category (name, description)
VALUES ('educatieve','helpt kinderen met de ontwikkeling van het logisch denkvermogen en probleemoplossende vaardigheden'),
       ('ontwikkeling','spelenderwijs leren programmeren'),
       ('intrudctie tot programmeren','helpen om eerste stappen in het codeeruniversum te zetten'),
       ('meetkunde','helpt kinderen met de ontwikkeling van de rekenkunde vaardigheden'),
       ('rekenkunde','helpt kinderen met de ontwikkeling van de meetkunde vaardigheden');

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