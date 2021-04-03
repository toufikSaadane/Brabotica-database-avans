CREATE USER 'Admin' IDENTIFIED BY 'AdminPassword';
GRANT ALL PRIVILEGES ON brabotica.`*` TO 'Admin';

CREATE USER 'Customer' IDENTIFIED BY 'CustomerPassword';
GRANT SELECT, INSERT, UPDATE ON brabotica.`order` TO 'Customer';
GRANT SELECT, UPDATE, DROP ON brabotica.`user` TO 'Customer';
GRANT SELECT, UPDATE ON brabotica.`address` TO 'Customer';
GRANT SELECT, UPDATE ON brabotica.`product` TO 'Customer';
GRANT SELECT ON brabotica.`category` TO 'Customer';

CREATE USER 'Guest' IDENTIFIED BY 'GuestPassword';
GRANT INSERT ON brabotica.`user` TO 'Guest';
GRANT SELECT ON brabotica.`product` TO 'Guest';
GRANT SELECT ON brabotica.`category` TO 'Guest';

FLUSH PRIVILEGES;
