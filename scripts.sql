USE autoshop;

-- Запросы

SELECT -- запрос моделей с сортировкой по маркам с датой производства в наличии
(SELECT name FROM brands WHERE id = (SELECT brand_id FROM models WHERE id = (SELECT model_id FROM cars WHERE cars.id = cars_in_stock.car_id))) AS brand,
(SELECT name FROM models WHERE id = (SELECT model_id FROM cars WHERE cars.id = cars_in_stock.car_id)) AS model,
(SELECT production_year FROM cars WHERE cars.id = cars_in_stock.car_id) AS production_year
FROM cars_in_stock
ORDER BY brand;

SELECT date_arrival, -- запрос моделей и марок с датой производства в пути с сортировкой по дате прибытия
(SELECT name FROM brands WHERE id = (SELECT brand_id FROM models WHERE id = (SELECT model_id FROM cars WHERE cars.id = cars_on_the_way.car_id))) AS brand,
(SELECT name FROM models WHERE id = (SELECT model_id FROM cars WHERE cars.id = cars_on_the_way.car_id)) AS model,
(SELECT production_year FROM cars WHERE cars.id = cars_on_the_way.car_id) AS production_year
FROM cars_on_the_way
ORDER BY date_arrival;

SELECT -- группировка по примечанию "скидка" с ценой более 3000000 по убыванию цены
(SELECT name FROM brands WHERE id = cars.brand_id) AS brand,
(SELECT name FROM models WHERE id = cars.model_id) AS model, VIN, note, cars.recommended_sell_price 
FROM cars
WHERE note != '---' AND note = 'discount' AND recommended_sell_price > 3000000
ORDER BY recommended_sell_price DESC;

SELECT date_in, -- выборка по дате поступления автомобилей в 2020 году 
(SELECT name FROM brands WHERE id = (SELECT brand_id FROM models WHERE id = (SELECT model_id FROM cars WHERE cars.id = cars_in_stock.car_id))) AS brand,
(SELECT name FROM models WHERE id = (SELECT model_id FROM cars WHERE cars.id = cars_in_stock.car_id)) AS model 
FROM cars_in_stock
WHERE date_in BETWEEN '2020-01-01' and '2021-01-01';

SELECT -- джоины по странам, брендам и моделям всех автомобилей в базе данных 
c.name AS Country, b.name AS Brand, m.name AS Model 
FROM countries AS c 
JOIN brands AS b ON c.id = b.country_id
JOIN models AS m ON b.id = m.brand_id;

SELECT -- джоин по всем купленным дизельным машинам за весь период работы с именами клиентов 
md.name, ms.sell_date, concat (cl.first_name, ' ', cl.last_name) AS client_name 
FROM managers_sales AS ms
JOIN cars AS c ON c.id = ms.car_id
JOIN cars_profiles AS cp ON cp.car_id = ms.car_id
JOIN models AS md ON md.id = c.brand_id
JOIN clients AS cl ON ms.client_id = cl.id 
WHERE cp.diesel > 0
ORDER BY sell_date DESC;

-- Представления

CREATE OR REPLACE VIEW cars_specifications -- все автомобили с техническими характеристиками
AS
SELECT cp.car_id AS ID, br.name AS Brand, md.name AS Model, cp.body_type AS Body, cp.color AS Color, 
cp.drivetrain_type AS Drivertrain, cp.engine_capacity AS Volume_L, cp.engine_power AS H_P, 
cp.engine_type AS Eng_Type ,cp.transmission_manual AS Manual_gearbox 
FROM cars_profiles AS cp
JOIN cars AS c ON c.id = cp.car_id
JOIN brands AS br ON br.id = c.brand_id 
JOIN models AS md ON md.id = c.model_id;

SELECT * FROM cars_specifications;
SELECT * FROM cars_specifications WHERE Drivertrain = 'AWD'; -- только полноприводные автомобили


CREATE OR REPLACE VIEW cars_sales_profit -- продажи с ценами опций и расчетом прибыли
AS 
SELECT 
car_id, opt1.price AS Alarm_system, 
opt2.price AS Tires, opt3.price AS Rims, 
opt4.price AS Carpets, opt5.price AS Engine_protection, 
opt6.price AS Anti_corrosion, crs.purchase_price AS Purchase_price, ms.sell_price AS Sell_price,
(SELECT opt1.price + opt2.price + opt3.price + opt4.price + opt5.price + opt6.price) AS Total_options_price,
(SELECT ms.sell_price + opt1.price + opt2.price + opt3.price + opt4.price + opt5.price + opt6.price) AS Total_sell_price,
(SELECT Total_sell_price - Purchase_price) AS Profit
FROM managers_sales AS ms
JOIN options_nm AS opt1 ON opt1.id = ms.option1_id
JOIN options_nm AS opt2 ON opt2.id = ms.option2_id 
JOIN options_nm AS opt3 ON opt3.id = ms.option3_id 
JOIN options_nm AS opt4 ON opt4.id = ms.option4_id 
JOIN options_nm AS opt5 ON opt5.id = ms.option5_id 
JOIN options_nm AS opt6 ON opt6.id = ms.option6_id
JOIN cars AS crs ON crs.id = ms.car_id 
ORDER BY Profit DESC; 

SELECT * FROM cars_sales_profit;
SELECT * FROM cars_sales_profit 
WHERE Alarm_system > 0 AND Tires > 0 AND Rims > 0 AND Carpets > 0 AND Engine_protection > 0 AND Anti_corrosion > 0; -- автомобили, проданные со всеми опциями
