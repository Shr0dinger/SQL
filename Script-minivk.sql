DROP DATABASE IF EXISTS miniVK;

CREATE DATABASE miniVK;

USE miniVK;


CREATE TABLE users(
	id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR (145) NOT NULL,
	last_name VARCHAR (145) NOT NULL,
	email VARCHAR (145) NOT NULL UNIQUE,
	phone CHAR (11) NOT NULL,
	password_hash CHAR (65) DEFAULT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	INDEX (phone),
	INDEX (email)
);

INSERT INTO users VALUES (DEFAULT, 'Gosha', 'Galoshin', 'gosh@mail.ru', '89904562321', DEFAULT, DEFAULT);
INSERT INTO users VALUES (DEFAULT, 'Posha', 'Paloshina', 'posh@mail.ru', '89994562321', DEFAULT, DEFAULT);

SELECT * FROM users;

CREATE TABLE profiles(
	user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	gender ENUM ('f', 'm', 'x') NOT NULL,
	birthday DATE NOT NULL,
	photo_id INT UNSIGNED,
	country VARCHAR (130),
	city VARCHAR (130),
	FOREIGN KEY (user_id) REFERENCES users (id)
);

ALTER TABLE profiles MODIFY COLUMN photo_id BIGINT UNSIGNED;
ALTER TABLE profiles ADD COLUMN passport_number VARCHAR(10);
ALTER TABLE profiles MODIFY COLUMN passport_number VARCHAR(20);
ALTER TABLE profiles RENAME COLUMN passport_number TO passport;
ALTER TABLE profiles ADD KEY passport_idx (passport);
ALTER TABLE profiles DROP INDEX passport_idx;
ALTER TABLE profiles DROP COLUMN passport;


INSERT INTO profiles VALUES (1, 'm', '1977-12-01', NULL, 'Russia', 'Omsk');
INSERT INTO profiles VALUES (2, 'f', '1987-12-01', NULL, 'USA', 'LA');

SELECT * FROM profiles;

CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	text TEXT NOT NULL,
	is_delivered BOOL DEFAULT FALSE,
	created_at DATETIME NOT NULL DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строк",
	INDEX messages_from_user_id_idx (from_user_id),
	INDEX messages_to_user_id_idx (to_user_id),
	CONSTRAINT fk_messages_from_user_id FOREIGN KEY (from_user_id) REFERENCES users (id),
	CONSTRAINT fk_messages_to_user_id FOREIGN KEY (to_user_id) REFERENCES users (id)
	
);

DESCRIBE messages;

INSERT INTO messages VALUES (DEFAULT, 1, 2, '123', 1, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 1, 2, '321', 1, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 2, 1, '777', 1, DEFAULT, DEFAULT);

SELECT * FROM messages;

CREATE TABLE friend_requests(
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	accepted BOOLEAN DEFAULT FALSE,
	PRIMARY KEY (from_user_id, to_user_id),
	INDEX friend_requests_from_user_id_idx (from_user_id),
	INDEX friend_requests_to_user_id_idx (from_user_id),
	CONSTRAINT fk_friend_requests_from_user_id FOREIGN KEY (from_user_id) REFERENCES users (id),
	CONSTRAINT fk_friend_requests_to_user_id FOREIGN KEY (to_user_id) REFERENCES users (id)
);

INSERT INTO friend_requests VALUES (1, 2, 1);


SELECT * FROM friend_requests;

CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	description VARCHAR(255),
	admin_id BIGINT UNSIGNED NOT NULL,
	KEY (admin_id),
	FOREIGN KEY (admin_id) REFERENCES users(id)
);

INSERT INTO communities VALUES (DEFAULT, 'Com1', ' Iam under one', 1);
INSERT INTO communities VALUES (DEFAULT, 'Com2', ' Iam under two', 2);

SELECT * FROM communities;

CREATE TABLE communities_users(
	community_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (community_id, user_id),
	KEY (community_id),
	KEY (user_id),
	FOREIGN KEY (community_id) REFERENCES communities (id),
	FOREIGN KEY (user_id) REFERENCES users (id)
	
);

INSERT INTO communities_users VALUES (1, 2, DEFAULT);
SELECT * FROM communities_users;

CREATE TABLE media_types(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO media_types VALUES (DEFAULT, 'Фото');
INSERT INTO media_types VALUES (DEFAULT, 'видео');
INSERT INTO media_types VALUES (DEFAULT, 'документ');

SELECT * FROM media_types;

CREATE TABLE media(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	media_types_id INT UNSIGNED NOT NULL,
	file_name VARCHAR(255) COMMENT 'C:\files\...',
	file_size BIGINT UNSIGNED,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	KEY (media_types_id),
	KEY (user_id),
	FOREIGN KEY (media_types_id) REFERENCES media_types(id),
	FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO media VALUES (DEFAULT,1,1, 'Фото.jpeg',120,DEFAULT);
INSERT INTO media VALUES (DEFAULT,1,2, 'видео.avi',4410,DEFAULT);
INSERT INTO media VALUES (DEFAULT,2,3, 'документ.doc',741,DEFAULT);

SELECT * FROM media;

DESCRIBE media;

-- ДЗ
-- |
-- V

-- Задание №2
-- Создаем таблицу постов

CREATE TABLE posts (
	id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	post_text TEXT NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX (user_id),
	FOREIGN KEY (user_id) REFERENCES users (id)
	
);

INSERT INTO posts VALUES (DEFAULT, 1, "Cool photo", DEFAULT, DEFAULT);
INSERT INTO posts VALUES (DEFAULT, 2, "It's about time", DEFAULT, DEFAULT);
INSERT INTO posts VALUES (DEFAULT, 1, "Big story", DEFAULT, DEFAULT);


SELECT * FROM posts;

-- Создаем таблицу обработки лайков постов

CREATE TABLE post_like(
	post_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	is_like BOOLEAN DEFAULT TRUE,
	PRIMARY KEY (post_id, user_id),
	INDEX (post_id),
	INDEX (user_id),
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (post_id) REFERENCES posts (id)
	
);

INSERT INTO post_like VALUES (1, 2, DEFAULT);
INSERT INTO post_like VALUES (3, 2, DEFAULT);
INSERT INTO post_like VALUES (2, 1, DEFAULT);


SELECT * FROM post_like;

-- Создаем таблицу обработки лайков медиафайлов

CREATE TABLE media_like(
	media_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	is_like BOOLEAN DEFAULT TRUE,
	PRIMARY KEY (media_id, user_id),
	INDEX (media_id),
	INDEX (user_id),
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (media_id) REFERENCES media (id)
	
);

INSERT INTO media_like VALUES (1, 2, DEFAULT);
INSERT INTO media_like VALUES (2, 2, DEFAULT);
INSERT INTO media_like VALUES (3, 1, DEFAULT);


SELECT * FROM media_like;

-- Создаем таблицу обработки лайков пользователей

CREATE TABLE user_like(
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	is_like BOOLEAN DEFAULT TRUE,
	PRIMARY KEY (from_user_id, to_user_id),
	INDEX (from_user_id),
	INDEX (to_user_id),
	FOREIGN KEY (from_user_id) REFERENCES users (id),
	FOREIGN KEY (to_user_id) REFERENCES users (id)
	
);

INSERT INTO user_like VALUES (1, 2, DEFAULT);
INSERT INTO user_like VALUES (2, 1, DEFAULT);



SELECT * FROM user_like;
