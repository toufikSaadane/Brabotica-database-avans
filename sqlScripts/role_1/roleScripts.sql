/**
  the insert statememt
 */
INSERT INTO role (title, description)
VALUES ('medewerker', 'de medewerker moet geristreerd zijn om zijn werkzaamheiden te kunnen uitvoeren'),
       ('klant', 'klant moet zich registreren om de bestelling te kunnen maken, als de klant is al geregistreed dan moet hij inloggen om de bestelling voltooien'),
       ('admin', 'admin is de database te organiseren en in elkaar te zetten dat de bedrijfsprocessen kunnen vlot lopen');
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










