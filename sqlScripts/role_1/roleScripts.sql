/**
  the insert statememt
 */
INSERT INTO role (title, description)
VALUES ('medewerker', 'the klant kan deze role gebruiken om zijn shoping te kunnen voltooien');

INSERT INTO role (title, description)
VALUES ('klant', 'de medewerker kan producten teovoegen, deleten, en veranderen');

/**
  the uodate statememt
 */
UPDATE role
SET title = 'updated klant'
WHERE title = 'klant';

/**
  the delete statememt
 */

DELETE
FROM role
WHERE title = 'updated klant';










