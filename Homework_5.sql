USE shop;

-- HW#1.1
ALTER TABLE users MODIFY COLUMN create_date DATETIME NULL;
ALTER TABLE users MODIFY COLUMN update_date DATETIME NULL;

UPDATE users SET create_date = NOW();
UPDATE users SET update_date = NOW();

-- HW#1.2

ALTER TABLE users MODIFY COLUMN create_date varchar(255) null;
ALTER TABLE users MODIFY COLUMN update_date varchar(255) null;
UPDATE users SET create_date = '20.10.2017 8:10';
UPDATE users SET update_date = '20.10.2017 8:10';

ALTER TABLE users add create_date_x datetime;
ALTER TABLE users add update_date_x datetime;

UPDATE users SET create_date_x = STR_TO_DATE(create_date, '%d.%m.%Y %h:%i');
UPDATE users SET update_date_x = STR_TO_DATE(update_date, '%d.%m.%Y %h:%i');

ALTER TABLE users drop create_date;
ALTER TABLE users drop update_date;

ALTER TABLE users RENAME COLUMN create_date_x TO create_date;
ALTER TABLE users RENAME COLUMN update_date_x TO update_date;

-- HW#1.3

SELECT id, value
FROM storehouses_products
ORDER BY
	CASE 
		WHEN value = '0' THEN 1 ELSE 0
	END, value;

-- HW#1.4

ALTER TABLE users ADD COLUMN birth_month varchar(255) AFTER birthday_date;

update users set birth_month = 'April' WHERE id = 1;
update users set birth_month = 'October' WHERE id = 2;
update users set birth_month = 'August' WHERE id = 3;
update users set birth_month = 'October' WHERE id = 4;
update users set birth_month = 'February' WHERE id = 5;
update users set birth_month = 'May' WHERE id = 6;
update users set birth_month = 'September' WHERE id = 7;
       
-- DELETE FROM users WHERE id > 7;

SELECT * FROM users WHERE birth_month = 'August' OR birth_month = 'May';

-- HW1.5

SELECT id, name FROM users WHERE id IN (5, 1, 2) ORDER BY field(id, 5, 1, 2);

-- HW2.1

SELECT name, birthday_date, (YEAR(current_date) - YEAR(birthday_date))-(right(current_date,5)<right(birthday_date,5)) AS age FROM users;
SELECT round(avg(YEAR(current_date) - YEAR(birthday_date))-(right(current_date,5)<right(birthday_date,5)),0) AS age FROM users;

-- HW2.2

ALTER TABLE users ADD COLUMN birth_now date AFTER birth_month;
-- ALTER TABLE users DROP COLUMN birth_now;
UPDATE users SET birth_now = date_format(birthday_date, '2021-%m-%d') ;
SELECT dayofweek(birth_now) FROM users;
SELECT COUNT(*), dayofweek(birth_now) AS week_day FROM users GROUP BY week_day;

-- HW2.3

ALTER TABLE users ADD COLUMN value int;
SELECT exp(sum(log(value))) FROM users;


