DROP DATABASE IF EXISTS autoshop;
CREATE DATABASE autoshop;
USE autoshop;

DROP TABLE IF EXISTS countries; -- таблица стран-производителей
CREATE TABLE countries(
	id TINYINT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name char(30) NOT NULL
);

DROP TABLE IF EXISTS brands; -- таблица марок автомобилей
CREATE TABLE brands(
	id TINYINT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name char(30) NOT NULL,
	country_id TINYINT UNSIGNED NOT NULL,
	CONSTRAINT from_country_id FOREIGN KEY (country_id) REFERENCES countries (id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS models; -- таблица моделей автомобилей 
CREATE TABLE models(
	id TINYINT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name char(30) NOT NULL,
	brand_id TINYINT UNSIGNED NOT NULL,
	CONSTRAINT from_brand_id FOREIGN KEY (brand_id) REFERENCES brands (id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS options_nm; -- таблица дополнительных опций
CREATE TABLE options_nm(
	id TINYINT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(255) NOT NULL,
	price decimal(8,2) NOT NULL
);

DROP TABLE IF EXISTS cars; -- таблица автомобилей и их данные
CREATE TABLE cars(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	country_id TINYINT UNSIGNED NOT NULL,
	brand_id TINYINT UNSIGNED NOT NULL,
	model_id TINYINT UNSIGNED NOT NULL,
	VIN char(17) NOT NULL UNIQUE,
	production_year date NOT NULL,
	purchase_price decimal(10,2) NOT NULL,
	recommended_sell_price decimal(10,2) NOT NULL,
	note varchar(255) DEFAULT null,
	INDEX car_country_id (country_id),
	INDEX car_brand_id (brand_id),
	INDEX car_model_id (model_id),
	INDEX car_VIN (VIN),
	INDEX car_year (production_year),
	INDEX car_p_price (purchase_price),
	CONSTRAINT cars_from_country_id FOREIGN KEY (country_id) REFERENCES countries (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT cars_from_brand_id FOREIGN KEY (brand_id) REFERENCES brands (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT cars_from_model_id FOREIGN KEY (model_id) REFERENCES models (id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS cars_profiles; -- таблица технических характеристик автомобилей
CREATE TABLE cars_profiles(
	car_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	body_type ENUM ('Sedan', 'SUV', 'Coupe', 'Convertible', 'Hatchback', 'Minivan', 'Pickup') NOT NULL,
	class ENUM ('A', 'B', 'C', 'D', 'E', 'F', 'J', 'S', 'M', 'Pickup') NOT NULL,
	engine_type ENUM ('Rotor','V6', 'V8', 'Oposide', 'Straight') NOT NULL,
	transmission_manual ENUM ('True', 'False') NOT NULL,
	drivetrain_type ENUM ('FWD', 'RWD', 'AWD') NOT NULL,
	color ENUM ('White', 'Black', 'Grey', 'Red', 'Blue', 'Green', 'Yellow', 'Brown', 'Two tone') NOT NULL,
	right_hand BOOLEAN DEFAULT FALSE,
	diesel BOOLEAN DEFAULT FALSE,
	engine_capacity decimal(3,1) UNSIGNED NOT NULL ,
	engine_power INT UNSIGNED NOT NULL ,
	INDEX profile_car_id (car_id),
	INDEX profile_car_class (class),
	INDEX profile_car_power (engine_power),
	CONSTRAINT cars_profile_id FOREIGN KEY (car_id) REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE
);	

DROP TABLE IF EXISTS managers; -- таблица менеджеров организации
CREATE TABLE managers(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR (145) NOT NULL,
	last_name VARCHAR (145) NOT NULL,
	company_position VARCHAR (145) NOT NULL,
	gender ENUM ('f', 'm', 'x') NOT NULL,
	birthday DATE NOT NULL,
	company_id char(10) NOT NULL UNIQUE,
	INDEX com_id (company_id)
);

DROP TABLE IF EXISTS masters; -- таблица механиков сервисного центра
CREATE TABLE masters(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR (145) NOT NULL,
	last_name VARCHAR (145) NOT NULL,
	company_position VARCHAR (145) NOT NULL,
	gender ENUM ('f', 'm', 'x') NOT NULL,
	birthday DATE NOT NULL,
	company_id char(10) NOT NULL UNIQUE,
	INDEX com_id (company_id)
);

DROP TABLE IF EXISTS clients; -- таблица клиентов автосалона
CREATE TABLE clients(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR (145) NOT NULL,
	last_name VARCHAR (145) NOT NULL,
	gender ENUM ('f', 'm', 'x') NOT NULL,
	birthday DATE NOT NULL,
	email VARCHAR (145) NOT NULL UNIQUE,
	phone CHAR (11) NOT NULL,
	SSN char (11) NOT NULL unique,
	INDEX client_ssn (SSN)
);

DROP TABLE IF EXISTS managers_sales; -- таблица продаж
CREATE TABLE managers_sales(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	manager_id BIGINT UNSIGNED NOT NULL ,
	car_id BIGINT UNSIGNED UNIQUE NOT NULL ,
	client_id BIGINT UNSIGNED NOT NULL ,
	option1_id TINYINT UNSIGNED,
	option2_id TINYINT UNSIGNED,
	option3_id TINYINT UNSIGNED,
	option4_id TINYINT UNSIGNED,
	option5_id TINYINT UNSIGNED,
	option6_id TINYINT UNSIGNED,
	sell_price decimal(10,2) NOT NULL,
	sell_date date NOT NULL,
	INDEX sales_m_id (manager_id),
	INDEX sales_car_id (car_id),
	INDEX sales_cl_id (client_id),
	INDEX sl_price (sell_price),
	INDEX sl_date (sell_date),
	CONSTRAINT manager_id FOREIGN KEY (manager_id) REFERENCES managers (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT car_id FOREIGN KEY (car_id) REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT client_id FOREIGN KEY (client_id) REFERENCES clients (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT opt1_id FOREIGN KEY (option1_id) REFERENCES options_nm (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT opt2_id FOREIGN KEY (option2_id) REFERENCES options_nm (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT opt3_id FOREIGN KEY (option3_id) REFERENCES options_nm (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT opt4_id FOREIGN KEY (option4_id) REFERENCES options_nm (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT opt5_id FOREIGN KEY (option5_id) REFERENCES options_nm (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT opt6_id FOREIGN KEY (option6_id) REFERENCES options_nm (id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS master_service; -- таблица ремонтов и техобслуживания
CREATE TABLE master_service(
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	master_id BIGINT UNSIGNED NOT NULL ,
	car_id BIGINT UNSIGNED NOT NULL ,
	client_id BIGINT UNSIGNED NOT NULL ,
	date_in date NOT NULL,
	date_out date NOT NULL,
	repaired BOOLEAN DEFAULT FALSE,
	service_price decimal(10,2) NOT NULL,
	INDEX srv_mast_id (master_id),
	INDEX srv_car_id (car_id),
	INDEX srv_cl_id (client_id),
	INDEX srv_price (service_price),
	CONSTRAINT srv_master_id FOREIGN KEY (master_id) REFERENCES masters (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT srv_car_id FOREIGN KEY (car_id) REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT srv_client_id FOREIGN KEY (client_id) REFERENCES clients (id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS cars_in_stock; -- таблица автомобилей в наличии
CREATE TABLE cars_in_stock(
	car_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	date_in date NOT NULL,
	CONSTRAINT stock_id FOREIGN KEY (car_id) REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS cars_on_the_way; -- таблица автомобилей, находящихся в пути от завода в салон
CREATE TABLE cars_on_the_way(
	car_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	date_out date NOT NULL,
	date_arrival date NOT NULL,
	INDEX car_out (date_out),
	INDEX car_arrival (date_arrival),
	CONSTRAINT way_id FOREIGN KEY (car_id) REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS cars_in_service; -- таблица автомобилей, проходящих обслуживание или ремонт
CREATE TABLE cars_in_service(
	car_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	date_in date NOT NULL,
	date_out date,
	master_id bigINT UNSIGNED NOT NULL,
	client_id bigint UNSIGNED NOT NULL,
	service_price decimal(10,2) NOT NULL,
	note varchar(255) DEFAULT null,
	INDEX serv_in (date_in),
	INDEX serv_out (date_out),
	INDEX master_serv (master_id),
	INDEX client_serv (client_id),
	CONSTRAINT client_service_id FOREIGN KEY (client_id) REFERENCES clients (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT master_service_id FOREIGN KEY (master_id) REFERENCES masters (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT service_id FOREIGN KEY (car_id) REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE
);

