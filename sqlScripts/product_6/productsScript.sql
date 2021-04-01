/**
  the insert statememt
 */
INSERT INTO product (name, price, stock, discount_id)
VALUES
       ('Velleman KSR18 entertainment robot', 500, 40, 2),
       ('Velleman KSR17 entertainment robot', 500, 40, 2),
       ('Velleman KSR16 entertainment robot', 500, 40, 2),
       ('Velleman KSR15 entertainment robot', 500, 40, 2),
       ('TOBBIE II intelligente robor MICRO:BIT KIT', 500, 40, 2),
       ('TOBBIE II intelligente robor MICRO:SUPER BIT KIT', 500, 40, 2),
       ('TOBBIE III intelligente robor MICRO:SUPER BIT KIT', 500, 40, 2),
       ('Silverlit Robot Mazebreaker wit', 500, 40, 2),
       ('Silverlit Robot Macrobot', 500, 40, 2),
       ('Silverlit Robo Kombat Gevechtsrobots - Duo Set', 500, 40, 2),
       ('Silverlit Robo Kombat Gevechtsrobots - Trio Set', 500, 40, 2);

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