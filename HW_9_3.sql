-- 3.2

USE shop;

DROP TRIGGER IF EXISTS alert;

DELIMITER //

CREATE TRIGGER alert before INSERT ON products
FOR EACH ROW 
BEGIN 
	IF NEW.name is NULL AND NEW.description IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Name or Description must be NOT NULL!';
	END IF;
END //
	
DELIMITER ;

INSERT INTO products (name, price, catalog_id) VALUES ('name', 123, 2);
INSERT INTO products (price, catalog_id) VALUES (123, 2);