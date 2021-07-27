USE shop;

-- #1

INSERT INTO orders VALUES
(DEFAULT, 4, DEFAULT,default),
(DEFAULT, 3, DEFAULT,default),
(DEFAULT, 2, DEFAULT,default),
(DEFAULT, 4, DEFAULT,default),
(DEFAULT, 5, DEFAULT,default),
(DEFAULT, 2, DEFAULT,default);

SELECT users.id, users.name, orders.id, orders.created_at 
FROM users
-- left join orders
JOIN orders
ON users.id = orders.user_id
ORDER BY orders.id;

-- #2

INSERT INTO products (name, description, price) VALUES ('Headphones', 'made in china', 100);
INSERT INTO products (name, description, price) VALUES ('SD card', 'NONAME china', 100);

SELECT products.name, products.catalog_id, catalogs.name
FROM products
-- left join products
JOIN catalogs
ON products.catalog_id = catalogs.id;

-- #3

CREATE TABLE flights (
	id serial PRIMARY KEY,
	FROM_txt varchar (255),
	to_txt varchar (255) 
);

CREATE TABLE cities (
	label varchar (255) PRIMARY KEY,
	name varchar (255) 
);

INSERT INTO flights VALUES
(DEFAULT, 'moscow', 'omsk'),
(DEFAULT, 'novgorod', 'kazan'),
(DEFAULT, 'irkutsk', 'moscow'),
(DEFAULT, 'omsk', 'irkutsk'),
(DEFAULT, 'moscow', 'kazan');

INSERT INTO cities VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');

SELECT frm.name AS FL_FROM, tto.name AS FL_TO 
FROM flights   
JOIN cities frm ON frm.label = flights.FROM_txt
JOIN cities tto ON tto.label = flights.to_txt;
