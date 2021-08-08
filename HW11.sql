USE shop;

DROP TABLE IF EXISTS logs; -- создание таблицы
CREATE TABLE logs (
  log_date datetime, 
  table_name VARCHAR(255),
  value_id VARCHAR(255),
  table_object VARCHAR(255)
  )ENGINE=ARCHIVE; 

-- ----------------------------------------------------------

DROP TRIGGER IF EXISTS log_save; -- триггер на ввод в таблицу users
 
DELIMITER //
 
CREATE TRIGGER log_save AFTER INSERT ON users
FOR EACH ROW 
BEGIN
	
	INSERT INTO logs VALUES (current_timestamp, 'users', (SELECT max(id) FROM users), (SELECT name FROM users WHERE users.id = (SELECT max(id) FROM users)));


END //
 	
DELIMITER ;
 
INSERT INTO users (name, birthday_at) VALUES ('Anton', '1994-12-29');

-- -------------------------------------------------------

DROP TRIGGER IF EXISTS log_save_c; -- триггер на ввод в таблицу catalogs
 
DELIMITER //
 
CREATE TRIGGER log_save_c AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN
	
	INSERT INTO logs VALUES (current_timestamp, 'catalogs', (SELECT max(id) FROM catalogs), (SELECT name FROM catalogs WHERE catalogs.id = (SELECT max(id) FROM catalogs)));


END //
 	
DELIMITER ;

INSERT INTO catalogs (name) VALUES ('Gamepads');

-- -----------------------------------------------------------

DROP TRIGGER IF EXISTS log_save_p; -- триггер на ввод в таблицу products
 
DELIMITER //
 
CREATE TRIGGER log_save_p AFTER INSERT ON products
FOR EACH ROW 
BEGIN
	
	INSERT INTO logs VALUES (current_timestamp, 'products', (SELECT max(id) FROM products), (SELECT name FROM products WHERE products.id = (SELECT max(id) FROM products)));


END //
 	
DELIMITER ;

INSERT INTO products (name) VALUES ('Genius xl2000');