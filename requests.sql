use dnsss;

# №1.Простые запросы

#Выводит объединенные в один столбец имена и фамилии работников
select concat(name, ' ', surname) as name from employees;
#Выводит зарплату работников по возрастанию
select name, surname, salary from employees order by salary asc;

# №2.Запросы с агрегациями

#Подсчитывает количество товаров от поставщика с индексом 3
select count(*) from tovars where id_provider = 3;
#Находит максимальную цену среди всех товаров
select max(price) from tovars;

# №3.Сложные запросы с объединением 2 таблиц с помощью Join

#Выводит имена и фамилии покупателей и даты активации их дисконтных карт
select buyers.name, buyers.surname, discond_cards.start_date as card_start_date 
from buyers inner join discond_cards 
on buyers.id_discond_card = discond_cards.id_discond_card;
#Выводит имена, фамилии, зарплаты и должности работников
select employees.name, employees.surname, employees.salary, name_position 
from employees inner join positions
on employees.id_position = positions.id_position;

# №4.Сложные запросы с объединениями 2-3 таблиц подзапросами

#Выводит имена и фамилии продавцов
select name, surname from employees where id_position in 
(select id_position from positions where name_position = 'salesman');
#Выводит товары от поставщика ООО "МИНОПТ"
select name_tovar from tovars where id_provider in 
(select id_provider from providers where name_provider = 'ООО "МИНОПТ"');

