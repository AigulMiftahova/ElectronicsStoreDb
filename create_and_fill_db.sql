DROP DATABASE IF EXISTS `dnsss`;
CREATE DATABASE `dnsss`;
USE `dnsss`;



drop table if exists categories;
CREATE TABLE categories (
id_category INT PRIMARY key,
name_category VARCHAR(255) not null
);
INSERT INTO categories VALUES (1, 'phones');
INSERT INTO categories VALUES (2, 'laptops');
INSERT INTO categories VALUES (3, 'tablets');
INSERT INTO categories VALUES (4, 'e-books');
INSERT INTO categories VALUES (5, 'graphics tablets');



drop table if exists providers;
CREATE TABLE providers (
id_provider INT PRIMARY KEY,
name_provider VARCHAR(255) not null
);
INSERT INTO providers VALUES (1, 'ООО "МИНОПТ"');
INSERT INTO providers VALUES (2, 'ООО "Бикомпакт МСК"');
INSERT INTO providers VALUES (3, 'ООО "Флексмар"');
INSERT INTO providers VALUES (4, 'ООО «ОПТИТРЕЙД»');
INSERT INTO providers VALUES (5, 'ИП Шлыков А.А.');



drop table if exists tovars;
CREATE TABLE tovars (
id_tovar INT PRIMARY KEY,
id_category INT not null,
id_provider INT not null,
name_tovar VARCHAR(255) not null,
price INT not null,
FOREIGN KEY (id_category) REFERENCES categories (id_category),
FOREIGN KEY (id_provider) REFERENCES providers (id_provider)
);
INSERT INTO tovars VALUES (1, 1, 3, 'iPhone 13', 65000);
INSERT INTO tovars VALUES (2, 1, 2, 'iPhone 13 mini', 60000);
INSERT INTO tovars VALUES (3, 1, 1, 'Samsung Galaxy S23 Ultra', 100000);
INSERT INTO tovars VALUES (4, 1, 4, 'Samsung Galaxy A71', 30000);
INSERT INTO tovars VALUES (5, 1, 3, 'Xiaomi 11T', 35000);
INSERT INTO tovars VALUES (6, 2, 5, 'Apple MacBook Air 13', 180000);
INSERT INTO tovars VALUES (7, 2, 4, 'Apple MacBook Pro 14', 200000);
INSERT INTO tovars VALUES (8, 3, 1, 'iPad 10.2', 50000);
INSERT INTO tovars VALUES (9, 3, 5, 'iPad 10.9 13', 65000);
INSERT INTO tovars VALUES (10, 4, 2, 'DEXP S4 Symbol', 5000);
INSERT INTO tovars VALUES (11, 4, 1, 'DEXP S3.1 Symbol', 5000);
INSERT INTO tovars VALUES (12, 5, 3, 'VEIKK VK430', 3000);
INSERT INTO tovars VALUES (13, 5, 4, 'VEIKK VK640', 3500);



drop table if exists positions;
CREATE TABLE positions (
id_position INT PRIMARY KEY,
name_position VARCHAR(255) not NULL
);
INSERT INTO positions VALUES (1, 'salesman');
INSERT INTO positions VALUES (2, 'security guard');
INSERT INTO positions VALUES (3, 'cleaner');
INSERT INTO positions VALUES (4, 'manager');
INSERT INTO positions VALUES (5, 'director');



drop table if exists shops;
CREATE TABLE shops (
id_shop INT PRIMARY KEY,
adress VARCHAR(255) not null,
work_time VARCHAR(255) not null
);
INSERT INTO shops VALUES (1, 'Flat 86 Williams Loaf Powellshire NG5 1HT', '8.00-21.00');
INSERT INTO shops VALUES (2, '25 Paula Valley North Rebeccaport WA7 1EN', '8.00-21.00');
INSERT INTO shops VALUES (3, '057 Cox Circle Michaelstad TN23 5PR', '9.00-22.00');
INSERT INTO shops VALUES (4, '64 George Mill Rowenaside PO4 8NU', '8.00-21.00');
INSERT INTO shops VALUES (5, '31 Ethan Lights Harrisonberg RM14 2LD', '9.00-22.00');



drop table if exists employees;
CREATE TABLE employees (
id_employee INT PRIMARY KEY,
name VARCHAR(255) not null,
surname VARCHAR(255) not null,
date_of_birdth DATE not NULL,
id_position INT not null,
id_shop INT not null,
salary VARCHAR(50) not null,
FOREIGN KEY (id_shop) REFERENCES shops (id_shop)
);
INSERT INTO employees VALUES (1, 'Oscar', 'Phillips', '1981-12-03', 1, 1, '30000');
INSERT INTO employees VALUES (2, 'Jeffrey', 'Anderson', '1970-04-27', 1, 2, '30000');
INSERT INTO employees VALUES (3, 'Jason', 'Strickland', '1999-11-08', 1, 3, '30000');
INSERT INTO employees VALUES (4, 'Tracy', 'Young', '1990-10-22', 1, 4, '30000');
INSERT INTO employees VALUES (5, 'Adam', 'Fletcher', '1986-07-06', 1, 5, '30000');
INSERT INTO employees VALUES (6, 'Adam', 'Fletcher', '1986-12-28', 2, 1, '35000');
INSERT INTO employees VALUES (7, 'Adam', 'Fletcher', '1986-02-18', 2, 3, '35000');
INSERT INTO employees VALUES (8, 'Florence', 'Perry', '1970-04-27', 2, 5, '35000');
INSERT INTO employees VALUES (9, 'Armando', 'Mitchell', '1999-10-30', 4, 1, '40000');
INSERT INTO employees VALUES (10, 'Karen', 'Castro', '1977-03-17', 4, 2, '40000');
INSERT INTO employees VALUES (11, 'Dorothy', 'Carter', '1989-11-02', 4, 3, '40000');
INSERT INTO employees VALUES (12, 'Robert', 'Brown', '1993-01-27', 4, 4, '40000');
INSERT INTO employees VALUES (13, 'Sheila', 'Jenkins', '1988-05-15', 4, 5, '40000');
INSERT INTO employees VALUES (14, 'Naomi', 'Roberson', '1975-10-09', 5, 1, '65000');



drop table if exists tovars_shops;
CREATE TABLE tovars_shops (
id_tovar INT not null,
id_shop INT not null,
FOREIGN KEY (id_shop) REFERENCES shops (id_shop),
FOREIGN KEY (id_tovar) REFERENCES tovars (id_tovar)
);
INSERT INTO tovars_shops VALUES (1, 1);
INSERT INTO tovars_shops VALUES (2, 1);
INSERT INTO tovars_shops VALUES (3, 2);
INSERT INTO tovars_shops VALUES (4, 2);
INSERT INTO tovars_shops VALUES (5, 3);
INSERT INTO tovars_shops VALUES (6, 3);
INSERT INTO tovars_shops VALUES (7, 3);
INSERT INTO tovars_shops VALUES (8, 4);
INSERT INTO tovars_shops VALUES (9, 4);
INSERT INTO tovars_shops VALUES (10, 4);
INSERT INTO tovars_shops VALUES (11, 5);
INSERT INTO tovars_shops VALUES (12, 5);
INSERT INTO tovars_shops VALUES (13, 1);


drop table if exists discond_cards;
CREATE TABLE discond_cards (
id_discond_card INT PRIMARY KEY,
start_date DATE not NULL
);
INSERT INTO discond_cards VALUES (1, '2022-12-26');
INSERT INTO discond_cards VALUES (2, '2021-10-19');
INSERT INTO discond_cards VALUES (3, '2021-10-09');
INSERT INTO discond_cards VALUES (4, '2020-05-27');
INSERT INTO discond_cards VALUES (5, '2021-11-16');
INSERT INTO discond_cards VALUES (6, '2021-11-09');
INSERT INTO discond_cards VALUES (7, '2023-03-01');
INSERT INTO discond_cards VALUES (8, '2022-01-26');
INSERT INTO discond_cards VALUES (9, '2022-03-14');
INSERT INTO discond_cards VALUES (10, '2020-10-07');



drop table if exists buyers;
CREATE TABLE buyers (
id_buyer INT PRIMARY KEY,
name VARCHAR(255) not null,
surname VARCHAR(255) not null,
phone VARCHAR(255) not null,
id_discond_card INT,
FOREIGN KEY (id_discond_card) REFERENCES discond_cards (id_discond_card)
);
INSERT INTO buyers VALUES (1, 'Kallistrat', 'Mavrin ', '89667635683', 1);
INSERT INTO buyers VALUES (2, 'Akindin', 'Begtabekov ', '89639073003', 2);
INSERT INTO buyers VALUES (3, 'Fyodor', 'Divov', '89644054984', 3);
INSERT INTO buyers VALUES (4, 'Akinfiy', 'Vorotynskiy ', '89649683090', 4);
INSERT INTO buyers VALUES (5, 'Osip', 'Spechinskiy ', '89613940499', 5);
INSERT INTO buyers VALUES (6, 'Foka', 'Dyachkov ', '89649047614', 6);
INSERT INTO buyers VALUES (7, 'Ahramey', 'Burczov ', '89685299268', 7);
INSERT INTO buyers VALUES (8, 'Isaak', 'Losev', '89667679074', 8);
INSERT INTO buyers VALUES (9, 'Florentiy', 'Dovgolevskiy ', '89624098002', 9);
INSERT INTO buyers VALUES (10, 'Ruf', 'Vavilov ', '89674212842', 10);


drop table if exists tovars_buyers;

CREATE TABLE tovars_buyers (
id_tovar INT not null,
id_buyer INT not null,

FOREIGN KEY (id_buyer) REFERENCES buyers (id_buyer),
FOREIGN KEY (id_tovar) REFERENCES tovars (id_tovar)
);
