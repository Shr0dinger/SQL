USE autoshop;
DROP PROCEDURE IF EXISTS brand_add;

DELIMITER //

CREATE PROCEDURE brand_add(name_1 CHAR(30), name_2 CHAR(30), name_3 CHAR(30)) -- процедура создания новой марки через транзакцию
BEGIN 
	START TRANSACTION; 
	INSERT INTO countries (name)
	VALUES (name_1);
	INSERT INTO brands (name, country_id)
	VALUES (name_2, last_insert_id());
	INSERT INTO models (name, brand_id)
	VALUES (name_3, last_insert_id());
	COMMIT;
END //
DELIMITER ;

CALL brand_add('Italy', 'Ferrari', '360 Modena');


-- -------------------------------------------------

USE autoshop;
DROP PROCEDURE IF EXISTS manager_profit;

DELIMITER //

CREATE PROCEDURE manager_profit(id TINYINT) -- процедура вычисления суммы всех продаж менеджера по ID
BEGIN 
	SELECT sum(sell_price) AS Manager_sales_summ FROM managers_sales WHERE manager_id = id;
END //
DELIMITER ;

CALL manager_profit(3);

-- -------------------------------------------------
 
 
USE autoshop;

DROP TRIGGER IF EXISTS alert_in_stock;
 
DELIMITER //
 
CREATE TRIGGER alert_in_stock before INSERT ON cars_in_stock -- триггер отсутствия значения даты прибытия автомобиля на склад
FOR EACH ROW 
BEGIN 
	IF NEW.date_in IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '"Date in" must be NOT NULL!';
	END IF;
END //
 	
DELIMITER ;

INSERT INTO cars VALUES (DEFAULT, 1, 1, 1, 'H67D37GNDSDFH67D3', '2021-01-12', 2591600.45, 2720000, 'test');
INSERT INTO cars_profiles VALUES (48, 'Hatchback', 'A', 'Straight', 'False', 'FWD', 'Red', DEFAULT, DEFAULT, 1.3, 150);
INSERT INTO cars_in_stock (car_id) VALUES (48);
