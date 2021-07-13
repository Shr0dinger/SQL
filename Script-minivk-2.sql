-- ����������� miniVK
-- ������ �� ������ ������ ����.

USE minivk;

ALTER TABLE friend_requests 
ADD CONSTRAINT send_not_reciever_check
CHECK (from_user_id != to_user_id);

SELECT * FROM friend_requests;

ALTER TABLE users 
ADD CONSTRAINT phone_check
CHECK (REGEXP_LIKE(phone, '^[0-9]{11}$'));

-- ���� � ����������� ����������� regex101.com

-- foreign key ��� media

ALTER TABLE profiles 
ADD CONSTRAINT fk_profiles_media
FOREIGN KEY (photo_id) REFERENCES media (id);

-- ��������� ������������

INSERT INTO users (id, first_name, last_name, email, phone, password_hash)
VALUES (DEFAULT, 'Alex', 'Stepanov', 'alex@mail.ru', '89163305832', 'aaa');

SELECT *FROM users;

-- ��������� �������� ������������ �.�.  �� ������� ��� �� �� ����� IGNORE

INSERT IGNORE INTO users (id, first_name, last_name, email, phone, password_hash)
VALUES (DEFAULT, 'Alex', 'Stepanov', 'alex@mail.ru', '89163305832', 'aaa');

-- DEFAULT ��������

INSERT users (first_name, last_name, email, phone)
VALUES ('Elena', 'Stepanov', 'lena@mail.ru', '89163305832');

-- �� �������� �������� �������

INSERT users 
VALUES (DEFAULT, 'Nick', 'Kalashnikov', 'Nick@mail.ru', '89456785832', DEFAULT, DEFAULT)

-- ������ ID

INSERT INTO users (id, first_name, last_name, email, phone)
VALUES (55, 'Jane', 'Steklova', 'stek@mail.ru', '88163305532');

INSERT INTO users (id, first_name, last_name, email, phone)
VALUES (45, 'Jane', 'Stoklova', 'stok@mail.ru', '88163328542');

-- ��������� ������� �����

INSERT INTO users (first_name, last_name, email, phone)
VALUES ('Zakhar', 'Oblomov', 'zakh@mail.ru', '88398956532'),
       ('Marya', 'Oblomova', 'mar@mail.ru', '89386211132');
      
-- ���������� � ������ �����
      
INSERT INTO users 
SET first_name = 'Iren',
    last_name = 'Sidorova',
    email = 'sid@mail.ru',
    phone = '89263048123';

-- ���������� �� ������ �������
   
-- INSERT users (first_name, last_name, email, phone)
-- SELECT first_name, last_name, email, phone FROM testbase.users;
   
-- ������� select 
   
SELECT * FROM users;
SELECT last_name FROM users;
SELECT DISTINCTROW last_name FROM users;
 
SELECT * FROM users WHERE last_name = 'Stepanov';
SELECT * FROM users WHERE id <= 10;
SELECT * FROM users WHERE id BETWEEN 3 AND 10;
SELECT NULL=NULL;
SELECT * FROM users WHERE password_hash IS NULL;
SELECT * FROM users WHERE password_hash IS NOT NULL;
SELECT * FROM users LIMIT 4;
SELECT * FROM users ORDER BY id LIMIT 4;
SELECT * FROM users ORDER BY id DESC LIMIT 4;
SELECT * FROM users ORDER BY id ASC LIMIT 5;
SELECT * FROM users ORDER BY id LIMIT 1 offset 3;
SELECT * FROM users ORDER BY id LIMIT 3, 1;

-- ������� update

INSERT INTO messages (from_user_id, to_user_id, text)
VALUES (45, 55,'Hi!');
INSERT INTO messages (from_user_id, to_user_id, text)
VALUES (45, 55, 'I see you!');

SELECT * FROM messages;

-- ������ ������� ���� ���������

UPDATE messages 
SET is_delivered = TRUE;

-- ������ ����� ���������

UPDATE messages 
SET text = 'i love you!'
WHERE id = 5;

-- ��������

DELETE FROM users WHERE last_name = 'Stepanov';
SELECT * FROM users;
DELETE FROM messages; -- �������� ����� �� �������

-- ��������� ���� ��������� � ����� ��������
-- ������ ������������ ��� ������� ������� ������
TRUNCATE TABLE messages;

-- ���������� �������� ������� ������ ��� ������������� TRUNKATE
-- ����� �������� � ����� 
SET FOREIGN_KEY_CHECKS = 0;

-- filldb.info ; mockaroo.com
