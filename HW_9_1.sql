-- 1.1

DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
USE sample;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

START TRANSACTION;
INSERT INTO sample.users
SELECT * FROM shop.users WHERE users.id = 1;
DELETE FROM shop.users WHERE users.id = 1;
COMMIT;

-- 1.2

USE shop;

CREATE OR REPLACE VIEW shop_view
AS
SELECT pr.name AS Name, ct.name AS Catalog_name 
FROM products AS pr
JOIN catalogs AS ct ON ct.id = pr.catalog_id;

SELECT * FROM shop_view;
