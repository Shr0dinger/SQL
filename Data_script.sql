USE autoshop;

-- Скрипт заполнения таблиц данными.

INSERT INTO countries VALUES 
(DEFAULT, 'Germany'),
(DEFAULT, 'UK'),
(DEFAULT, 'Japan'),
(DEFAULT, 'USA'),
(DEFAULT, 'Russia');

INSERT INTO brands VALUES 
(DEFAULT, 'Mercedes', 1),
(DEFAULT, 'Volkswagen', 1),
(DEFAULT, 'Toyota', 3),
(DEFAULT, 'Mazda', 3),
(DEFAULT, 'Land Rover', 2),
(DEFAULT, 'Jaguar', 2),
(DEFAULT, 'Cadillac', 4),
(DEFAULT, 'Ford', 4),
(DEFAULT, 'Lada', 5),
(DEFAULT, 'Aurus', 5);

INSERT INTO models VALUES 
(DEFAULT, 'A-class', 1),
(DEFAULT, 'GLS', 1),
(DEFAULT, 'E-class', 1),
(DEFAULT, 'Passat', 2),
(DEFAULT, 'Golf', 2),
(DEFAULT, 'Touareg', 2),
(DEFAULT, 'Land Cruiser', 3),
(DEFAULT, 'Camry', 3),
(DEFAULT, 'Corolla', 3),
(DEFAULT, 'RX-8', 4),
(DEFAULT, '6', 4),
(DEFAULT, 'CX-5', 4),
(DEFAULT, 'Discovery', 5),
(DEFAULT, 'Range Rover', 5),
(DEFAULT, 'Velar', 5),
(DEFAULT, 'XF', 6),
(DEFAULT, 'XJ', 6),
(DEFAULT, 'F-type', 6),
(DEFAULT, 'Escalade', 7),
(DEFAULT, 'Fiesta', 8),
(DEFAULT, 'Focus', 8),
(DEFAULT, 'Mondeo', 8),
(DEFAULT, 'Granta', 9),
(DEFAULT, 'Vesta', 9),
(DEFAULT, 'Xray', 9),
(DEFAULT, 'Senat', 10);

INSERT INTO options_nm VALUES 
(DEFAULT, 'Alarm system', 84800.33 ),
(DEFAULT, 'Tires', 58100.50 ),
(DEFAULT, 'Rims', 72700.41 ),
(DEFAULT, 'Carpets', 16900.06 ),
(DEFAULT, 'Engine protection', 29100.99 ),
(DEFAULT, 'Anti-corrosion coating', 12690.99 ),
(DEFAULT, 'None', 0.00);

INSERT INTO managers VALUES
(DEFAULT, 'Slavik', 'Rotss', 'Manager', 'm', '1990-04-12', '3496'),
(DEFAULT, 'Wera', 'Corot', 'Manager', 'f', '1999-10-23', '3937'),
(DEFAULT, 'Mona', 'Apok', 'Manager', 'f', '1995-07-15', '3136'),
(DEFAULT, 'Markos', 'Surto', 'Senior manager', 'm', '1980-02-22', '2682'),
(DEFAULT, 'Lora', 'Vasilkova', 'Head of department', 'f', '1987-08-13', '1213');


INSERT INTO masters VALUES
(DEFAULT, 'Tony', 'Polok', 'Master', 'm', '1985-05-26', '3174'),
(DEFAULT, 'Bono', 'Zaaro', 'Master', 'm', '1998-09-16', '3802'),
(DEFAULT, 'Klaudia', 'Vosek', 'Master', 'f', '1996-04-19', '3282'),
(DEFAULT, 'Grido', 'Nutt', 'Senior master', 'x', '1999-06-17', '2983'),
(DEFAULT, 'Geroge', 'Duff', 'Head of department', 'm', '1979-11-21', '1302');


INSERT INTO clients VALUES
(DEFAULT, 'Sarah', 'Wertu', 'f', '1992-12-19', 'sw@gmail.com', '34(43-58-3)', '954-45-2365'),
(DEFAULT, 'Michelle', 'Jefferson', 'm', '1989-02-23', 'mj@gmail.com', '45(43-47-7)', '457-23-2365'),
(DEFAULT, 'Vincent', 'Mack', 'm', '1984-05-07', 'vm@gmail.com', '87(83-58-3)', '954-09-2365'),
(DEFAULT, 'Amy', 'Smith', 'f', '1979-07-03', 'as@gmail.com', '47(43-58-3)', '936-45-1165'),
(DEFAULT, 'Fernando', 'Briggs', 'm', '1953-12-01', 'fb@gmail.com', '05(43-58-3)', '368-22-2345'),
(DEFAULT, 'Andrew', 'Francis', 'x', '1962-10-10', 'af@gmail.com', '44(33-93-3)', '786-93-2365'),
(DEFAULT, 'Cynthia', 'Roberts', 'f', '1975-06-13', 'cr@gmail.com', '38(43-34-3)', '825-44-8642'),
(DEFAULT, 'Sam', 'Taylor', 'm', '1988-03-11', 'st@gmail.com', '08(67-08-9)', '683-97-2365'),
(DEFAULT, 'Fred', 'Morales', 'm', '1981-11-23', 'fm@gmail.com', '67(43-58-5)', '037-86-4771'),
(DEFAULT, 'Howard', 'Aguilar', 'm', '1991-08-27', 'ha@gmail.com', '04(93-23-3)', '664-58-2234'),
(DEFAULT, 'Constance', 'Williams', 'x', '1981-12-03', 'cw@gmail.com', '56(34-76-3)', '335-12-0637'),
(DEFAULT, 'Eva', 'Nichols', 'f', '1993-12-14', 'en@gmail.com', '07(64-74-3)', '275-83-6178'),
(DEFAULT, 'Megan', 'Vasques', 'f', '1985-05-13', 'mv@gmail.com', '35(44-87-2)', '745-66-2365'),
(DEFAULT, 'Denise', 'Alvado', 'f', '1977-01-12', 'da@gmail.com', '08(43-23-3)', '954-95-8462'),
(DEFAULT, 'Midred', 'Silva', 'x', '1967-10-25', 'ms@gmail.com', '45(33-65-1)', '974-97-2365');


INSERT INTO cars VALUES 
(DEFAULT, 1, 1, 1, 'WJG857GNDSDFH67D3', '2021-01-12', 2591600.45, 2720000, 'total'),
(DEFAULT, 1, 1, 1, 'BG56D4GNDSLKN5855', '2020-05-03', 2310432.52, 2590000, '---'),
(DEFAULT, 1, 1, 1, 'WJG857GND456TJI55', '2021-01-11', 2592450.97, 2699000, 'discount'),
(DEFAULT, 1, 1, 2, 'S89KL7GNDSLOYTN98', '2021-03-14', 9880330.78, 10240000, '---'),
(DEFAULT, 1, 1, 2, 'WJG857GN56JNf5855', '2021-03-08', 9210289.41, 9580000, '---'),
(DEFAULT, 1, 1, 3, 'WJSX56GNDSLKN5855', '2021-04-03', 4050000.43, 4350000, '---'),
(DEFAULT, 1, 1, 3, 'WJG857GNDSL789GKU', '2021-04-07', 5990120.66, 6220000, '---'),
(DEFAULT, 1, 1, 3, '78JRTB67DSLKN5855', '2021-02-03', 4512065.83, 4950000, '---'),
(DEFAULT, 1, 2, 4, 'RH6787GNDI89SOTR8', '2020-09-15', 1975223.86, 2147000, 'last sale'),
(DEFAULT, 1, 2, 4, 'WJTJ754EG9LKN5855', '2021-06-03', 1999000.48, 2100000, '---'),
(DEFAULT, 1, 2, 4, 'WJG857GN78KSDU67J', '2021-04-09', 2612301.32, 2827000, '---'),
(DEFAULT, 1, 2, 5, 'GHJ8956GH9LKN5855', '2019-08-03', 2130650.66, 2558000, '---'),
(DEFAULT, 1, 2, 6, 'KEB857GN78FG3267J', '2021-01-19', 4619853.32, 4965000, '---'),
(DEFAULT, 3, 3, 7, 'G5E857GN56JN87TC8', '2020-12-11', 5415320.21, 5613000, 'discount'),
(DEFAULT, 3, 3, 8, 'S89KRT75ESLOYTN98', '2021-03-25', 1789300.90, 1896000, '---'),
(DEFAULT, 3, 3, 8, 'OP45NU6GN56JNf585', '2021-04-28', 2699450.55, 2954000, '---'),
(DEFAULT, 3, 3, 9, 'GNDSLOYGNDSLOYTN9', '2020-11-17', 1399802.78, 1534000, '---'),
(DEFAULT, 3, 3, 9, '6YHKN64K96JNf5855', '2020-12-14', 1580500.41, 1667000, '---'),
(DEFAULT, 3, 4, 10, 'KSDU67JEG&LKWJG8B', '2021-03-03', 900000.11, 1100000, 'used'),
(DEFAULT, 3, 4, 10, '8KSDU6GN78KSDU67J', '2021-02-24', 1299000.86, 1500000, 'used'),
(DEFAULT, 3, 4, 11, 'DSLKN584EGLKN5855', '2019-11-03', 1599520.99, 1765000, 'last sale'),
(DEFAULT, 3, 4, 11, 'WJG857GN78GHJ8956', '2019-09-21', 2489230.33, 2640000, 'discount'),
(DEFAULT, 3, 4, 12, 'GHJ8956GH9LER76KH', '2020-10-03', 1990560.89, 2134000, '---'),
(DEFAULT, 3, 4, 12, 'KEB857857GN7D267J', '2020-12-11', 2496780.50, 2645000, '---'),
(DEFAULT, 2, 5, 13, 'WJG8DU7GN79789GKU', '2021-02-17', 5380450.66, 5599000, '---'),
(DEFAULT, 2, 5, 13, '78956GH9JGNSD5855', '2021-04-03', 6113280.83, 6249000, '---'),
(DEFAULT, 2, 5, 14, 'RH6787GN54EG9LKN5', '2020-11-22', 7789450.86, 7925000, '---'),
(DEFAULT, 2, 5, 14, 'WJ956GH9JG9LKN583', '2020-10-03', 9596500.48, 9977000, '---'),
(DEFAULT, 2, 5, 15, '78KSDU7GN7956GH91', '2021-03-23', 3998700.32, 4286000, '---'),
(DEFAULT, 2, 5, 15, 'GHJ8956GHJG7JNDSL', '2019-09-06', 4701000.66, 4866000, '---'),
(DEFAULT, 2, 6, 16, 'S89KL7GB67DSKNN98', '2020-11-03', 2910200.78, 3000000, 'last sale'),
(DEFAULT, 2, 6, 16, 'KL7GNDSLO56JNf555', '2020-12-31', 3389780.41, 3650000, 'last sale'),
(DEFAULT, 2, 6, 17, '6GNDSLKNDSLKN5415', '2019-05-03', 4299800.43, 4399000, 'discount'),
(DEFAULT, 2, 6, 17, 'SLKN5855DSL789GKU', '2019-07-28', 5743120.66, 5990000, 'discount'),
(DEFAULT, 2, 6, 18, '78DSL789KUDO56JNf', '2020-08-03', 9950780.83, 10172000, '---'),
(DEFAULT, 4, 7, 19, 'DSLOYTYGNDSLOYTN9', '2021-04-25', 8256040.78, 8449000, '---'),
(DEFAULT, 4, 8, 20, '6GHJG7JN56JN87TC8', '2021-01-03', 915400.21, 1020000, '---'),
(DEFAULT, 4, 8, 20, 'S89KRT75ESDU7GN79', '2021-02-17', 895620.90, 980000, '---'),
(DEFAULT, 4, 8, 21, '56JNf58GN56JNf585', '2021-04-03', 1186520.55, 1400000, '---'),
(DEFAULT, 4, 8, 21, 'Nf58GN56JDSLOYTN9', '2021-01-18', 999820.78, 1200000, '---'),
(DEFAULT, 4, 8, 22, '5855DSL786JNf5855', '2020-07-03', 1239605.41, 1490000, '---'),
(DEFAULT, 5, 9, 23, 'GHRGH9JGNS9LER76K', '2020-11-29', 499850.89, 531900, '---'),
(DEFAULT, 5, 9, 23, 'KEBJLR778CVOP5GH9', '2020-10-19', 578410.50, 698000, '---'),
(DEFAULT, 5, 9, 24, '7N7D26787GGERG9GK', '2020-09-03', 720569.66, 788900, '---'),
(DEFAULT, 5, 9, 24, 'WGD05G9LKNJGNSD58', '2020-12-30', 945023.83, 1098000, '---'),
(DEFAULT, 5, 9, 25, 'RH6787GDSLK8NEHKN', '2020-09-03', 879320.86, 949900, '---'),
(DEFAULT, 5, 10, 26, 'KRT75ED05G19LKN58', '2021-01-03', 23245000.48, 24000000, '---'); 
 
INSERT INTO cars_profiles VALUES
(1, 'Hatchback', 'A', 'Straight', 'False', 'FWD', 'White', DEFAULT, DEFAULT, 1.3, 150),
(2, 'Sedan', 'A', 'Straight', 'False', 'FWD', 'Brown', DEFAULT, DEFAULT, 1.3, 150),
(3, 'Hatchback', 'A', 'Straight', 'True', 'FWD', 'Red', DEFAULT, True, 2.0, 116),
(4, 'SUV', 'J', 'Straight', 'False', 'AWD', 'Black', DEFAULT, DEFAULT, 3.0, 367),
(5, 'SUV', 'J', 'Straight', 'False', 'AWD', 'White', DEFAULT, True, 2.9, 330),
(6, 'Sedan', 'E', 'Straight', 'False', 'FWD', 'White', DEFAULT, DEFAULT, 2.0, 197),
(7, 'Coupe', 'E', 'Straight', 'False', 'FWD', 'Black', DEFAULT, DEFAULT, 2.0, 249),
(8, 'Sedan', 'E', 'Straight', 'False', 'AWD', 'Grey', DEFAULT, True, 2.0, 194),
(9, 'Sedan', 'D', 'Straight', 'False', 'FWD', 'Blue', DEFAULT, DEFAULT, 1.4, 150),
(10, 'Sedan', 'D', 'Straight', 'True', 'FWD', 'Black', DEFAULT, DEFAULT, 1.4, 150),
(11, 'Sedan', 'D', 'Straight', 'False', 'FWD', 'Grey', DEFAULT, DEFAULT, 2.0, 190),
(12, 'Hatchback', 'C', 'Straight', 'False', 'FWD', 'Blue', DEFAULT, DEFAULT, 1.4, 150),
(13, 'SUV', 'J', 'V6', 'False', 'AWD', 'Green', DEFAULT, DEFAULT, 3.0, 249),
(14, 'SUV', 'J', 'V6', 'False', 'AWD', 'Black', DEFAULT, DEFAULT, 3.0, 415),
(15, 'Sedan', 'E', 'Straight', 'False', 'FWD', 'Black', DEFAULT, DEFAULT, 2.0, 150),
(16, 'Sedan', 'E', 'V6', 'False', 'FWD', 'Black', DEFAULT, DEFAULT, 3.5, 249),
(17, 'Sedan', 'C', 'Straight', 'True', 'FWD', 'Red', DEFAULT, DEFAULT, 1.6, 122),
(18, 'Sedan', 'C', 'Straight', 'False', 'FWD', 'White', DEFAULT, DEFAULT, 1.6, 122),
(19, 'Coupe', 'S', 'Rotor', 'False', 'RWD', 'Red', DEFAULT, DEFAULT, 1.3, 192),
(20, 'Coupe', 'S', 'Rotor', 'True', 'RWD', 'Yellow', True, DEFAULT, 1.3, 250),
(21, 'Sedan', 'D', 'Straight', 'False', 'FWD', 'Red', DEFAULT, DEFAULT, 2.0, 150),
(22, 'Sedan', 'D', 'Straight', 'False', 'FWD', 'White', DEFAULT, DEFAULT, 2.5, 231),
(23, 'SUV', 'J', 'Straight', 'True', 'FWD', 'Red', DEFAULT, DEFAULT, 2.0, 150),
(24, 'SUV', 'J', 'Straight', 'False', 'AWD', 'Blue', DEFAULT, DEFAULT, 2.5, 194),
(25, 'SUV', 'J', 'Straight', 'False', 'AWD', 'Green', DEFAULT, True, 3.0, 249),
(26, 'SUV', 'J', 'Straight', 'False', 'AWD', 'Black', DEFAULT, DEFAULT, 3.0, 360),
(27, 'SUV', 'J', 'V6', 'False', 'AWD', 'Green', DEFAULT, True, 3.0, 249),
(28, 'SUV', 'J', 'V8', 'False', 'AWD', 'Black', DEFAULT, DEFAULT, 5.0, 525),
(29, 'SUV', 'J', 'Straight', 'False', 'AWD', 'Blue', DEFAULT, DEFAULT, 2.0, 249),
(30, 'SUV', 'J', 'V6', 'False', 'AWD', 'White', DEFAULT, True, 3.0, 300),
(31, 'Sedan', 'E', 'Straight', 'False', 'RWD', 'Black', DEFAULT, True, 2.0, 204),
(32, 'Sedan', 'E', 'Straight', 'False', 'AWD', 'Black', DEFAULT, DEFAULT, 2.0, 300),
(33, 'Sedan', 'F', 'V6', 'False', 'RWD', 'Two tone', True, DEFAULT, 3.0, 300),
(34, 'Sedan', 'F', 'V8', 'False', 'RWD', 'White', DEFAULT, DEFAULT, 5.0, 510),
(35, 'Coupe', 'S', 'V8', 'False', 'AWD', 'Red', DEFAULT, DEFAULT, 5.0, 575),
(36, 'SUV', 'J', 'V8', 'False', 'AWD', 'Black', DEFAULT, DEFAULT, 6.2, 416),
(37, 'Hatchback', 'A', 'Straight', 'True', 'FWD', 'Red', DEFAULT, DEFAULT, 1.0, 100),
(38, 'Hatchback', 'A', 'Straight', 'True', 'FWD', 'Black', DEFAULT, True, 1.5, 120),
(39, 'Sedan', 'C', 'Straight', 'False', 'FWD', 'White', DEFAULT, DEFAULT, 1.5, 150),
(40, 'Sedan', 'C', 'Straight', 'True', 'FWD', 'Blue', DEFAULT, True, 1.5, 95),
(41, 'Sedan', 'D', 'Straight', 'False', 'FWD', 'Grey', DEFAULT, DEFAULT, 2.0, 187),
(42, 'Sedan', 'B', 'Straight', 'True', 'FWD', 'Green', Default, DEFAULT, 1.6, 90),
(43, 'Sedan', 'B', 'Straight', 'True', 'FWD', 'Red', DEFAULT, DEFAULT, 1.6, 106),
(44, 'Sedan', 'B', 'Straight', 'True', 'FWD', 'White', DEFAULT, DEFAULT, 1.6, 106),
(45, 'Sedan', 'B', 'Straight', 'False', 'FWD', 'Red', DEFAULT, DEFAULT, 1.6, 113),
(46, 'SUV', 'J', 'Straight', 'False', 'FWD', 'Blue', DEFAULT, DEFAULT, 1.6, 106),
(47, 'Sedan', 'F', 'V8', 'False', 'AWD', 'Black', DEFAULT, Default, 4.4, 598);

INSERT INTO cars_in_stock VALUES
(2,'2020-06-03'),
(4,'2021-04-14'),
(7,'2021-05-07'),
(8,'2021-03-03'),
(10,'2021-07-03'),
(14,'2021-01-11' ),
(15,'2021-04-25'),
(16,'2021-05-28'),
(18,'2021-01-14' ),
(20,'2021-03-24'),
(22,'2019-10-21'),
(26,'2021-05-03' ),
(28,'2020-11-03'),
(31,'2020-12-03'),
(32,'2021-01-31'),
(34,'2019-08-28'),
(36,'2021-05-25' ),
(38,'2021-03-17' ),
(41,'2020-08-03' ),
(42,'2020-12-29'),
(43,'2020-11-19' ),
(45,'2021-01-30'),
(46,'2020-10-03');

INSERT INTO cars_on_the_way VALUES 
(5, '2021-07-14','2021-08-31'),
(11, '2021-07-15','2021-08-30'),
(12, '2021-07-21','2021-08-28'),
(23, '2021-07-09','2021-08-30'),
(24, '2021-07-03','2021-08-25'),
(29, '2021-07-15','2021-08-31'),
(35, '2021-07-12','2021-08-29'),
(39, '2021-07-15','2021-08-30'),
(47, '2021-07-20','2021-08-31');

INSERT INTO managers_sales VALUES
(DEFAULT, 1, 3, 1, 1, 2, 7, 7, 5, 6, 2750000, '2021-02-12'),
(DEFAULT, 4, 13, 2, 7, 2, 7, 4, 7, 7, 5020500, '2021-02-22'),
(DEFAULT, 2, 21, 3, 1, 2, 3, 7, 7, 6, 1812000, '2020-03-02'),
(DEFAULT, 1, 30, 4, 7, 2, 7, 4, 7, 6, 4999200, '2019-11-30'),
(DEFAULT, 3, 37, 5, 1, 2, 3, 4, 5, 7, 1190000, '2021-03-28'),

(DEFAULT, 1, 1, 6, 1, 2, 7, 4, 5, 6, 2895460.00, '2021-02-12'),
(DEFAULT, 2, 6, 7, 7, 2, 7, 4, 5, 6, 4513207.00, '2021-05-03'),
(DEFAULT, 1, 9, 8, 1, 2, 3, 4, 7, 6, 2377912.00, '2020-12-15'),
(DEFAULT, 3, 17, 9, 7, 2, 3, 4, 7, 6, 1618733.00, '2020-12-17'),
(DEFAULT, 1, 19, 10, 7, 2, 7, 4, 7, 6, 1219863.00, '2021-04-03'),
(DEFAULT, 2, 25, 11, 1, 2, 3, 4, 5, 6, 5789981.00, '2021-03-17'),
(DEFAULT, 4, 27, 12, 7, 2, 7, 4, 7, 6, 8266300.00, '2020-12-22'),
(DEFAULT, 1, 33, 13, 1, 2, 7, 4, 5, 6, 4541230.00, '2019-09-03'),
(DEFAULT, 4, 40, 14, 7, 2, 3, 4, 5, 6, 1411690.00, '2021-02-18'),
(DEFAULT, 3, 44, 15, 7, 2, 3, 4, 7, 6, 820549.00, '2020-10-03');

INSERT INTO cars_in_service VALUES
(3, '2021-07-23', '2021-07-25', 1, 1, 35000, 'scheduled maintenance'),
(13, '2021-07-20', '0000-00-00', 3, 2, 53000, 'engine malfunction'),
(21, '2021-07-25', '2021-08-15', 2, 3, 47000, 'gearbox malfunction'),
(30, '2021-07-29', '2021-08-01', 2, 4, 35000, 'scheduled maintenance'),
(37, '2021-07-28', '2021-08-09', 1, 5, 20000, 'computer malfunction');

INSERT INTO master_service VALUES 
(DEFAULT, 2, 9, 8, '2021-05-25', '2021-05-26', DEFAULT, 35000),
(DEFAULT, 2, 17, 9, '2021-05-29', '2021-05-30', DEFAULT, 35000),
(DEFAULT, 3, 27, 12, '2021-06-01', '2021-06-02', DEFAULT, 35000),
(DEFAULT, 1, 33, 13, '2020-04-12', '2020-04-14', DEFAULT, 35000),
(DEFAULT, 4, 44, 15, '2021-03-16', '2021-03-17', DEFAULT, 35000);
