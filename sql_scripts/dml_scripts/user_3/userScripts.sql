/**
  the insert statememt
 */
INSERT INTO user (first_name, last_name, email, role_roleNumber, address_addressNumber)
VALUES ('Ilias', 'Saadane', 'IliasSaadane@IliasSaadane.me', 3, 1),
       ('Taoufik', 'Saadane', 'Taoufik@saadane.me', 3, 1),
       ('Esther', 'venrooy', 'Esther@gmail.com', 2, 2),
       ('Thijs', 'deRooij', 'Thijs@gmail.com', 2, 3),
       ('Noah', 'Visser', 'Noah@gmail.com', 1, 4),
       ('Sem', 'Lucas', 'Sem@gmail.com', 1, 5),
       ('Daan', 'Jansen', 'Daan@gmail.com', 1, 6),
       ('Sophie', 'Van Dijk', 'Sophie@gmail.com', 2, 5),
       ('Sara', 'De Vries', 'Sara@gmail.com', 1, 7),
       ('Eva', 'Bakker', 'Eva@gmail.com', 1, 8),
       ('Finn', 'De Vries', 'Finn@gmail.com', 1, 10);
/**
  the uodate statememt
 */
UPDATE user
SET first_name = "IliasSaadane"
WHERE id = 1;
/**
  the delete statememt
 */
DELETE FROM user  WHERE first_name = "IliasSaadane";







