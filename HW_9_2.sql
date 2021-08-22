-- 3.1

USE shop;

DROP FUNCTION IF EXISTS hello;

delimiter //

CREATE FUNCTION hello() RETURNS varchar(255) DETERMINISTIC
BEGIN
	DECLARE answ varchar(255);
		SET answ = 'xxx';
	IF current_time BETWEEN '06:00:00' AND '12:00:00' THEN
		SET answ = 'Доброе утро';
	END IF;
	IF current_time BETWEEN '12:00:00' AND '18:00:00' THEN
		SET answ = 'Добрый день';
	END IF;
	IF current_time BETWEEN '18:00:00' AND '23:59:59' THEN
		SET answ = 'Добрый вечер';
	END IF;
	IF current_time BETWEEN '00:00:00' AND '06:00:00' THEN
		SET answ = 'Доброй ночи';
	END IF;
		RETURN answ;
END

//

delimiter ;

SELECT hello();
