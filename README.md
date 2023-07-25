__SQL_HomeWork__ - [SQL_HomeWork_1](https://github.com/AleksandrYakubouski/SQL/blob/main/SQL_HW_1.sql)

__SQL_HomeWork__ - [SQL_HomeWork_2](https://github.com/AleksandrYakubouski/SQL/blob/main/SQL_HW_2_DDL.sql)

__SQL_HomeWork__ - [SQL_HomeWork_3](https://github.com/AleksandrYakubouski/SQL/blob/main/SQL_HW_2_Joins.sql)

___

__SQL_HomeWork_1__

1. Вывести все поля и все строки.

 ```select * from students;```

2. Вывести всех студентов в таблице

``select name from students;``

3. Вывести только Id пользователей

 ```select id from students;``` 

4. Вывести только имя пользователей

 ```select name from students;```

5. Вывести только email пользователей

```select email from students;```

6. Вывести имя и email пользователей

```select name,email from students;```

7. Вывести id, имя, email и дату создания пользователей

```select id,name,email,created_on from students;```

8. Вывести пользователей где password 12333
```
select * from students 
where password = '12333';
```
9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
```
select * from students 
where created_on = '2021-03-26 00:00:00';
```
10. Вывести пользователей где в имени есть слово Анна
```
select * from students 
where name like '%Anna%';
```
11. Вывести пользователей где в имени в конце есть 8
 ```
select * from students 
where name like '%8';
 ```
12. Вывести пользователей где в имени в есть буква а
 ```
select * from students 
where name like '%a%';
 ```
13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
 ```
select * from students 
where created_on = '2021-07-12 00:00:00';
 ```
14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
 ```
select * from students 
where created_on = '2021-07-12 00:00:00' and "password" = '1m313';
```
15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
 ```
select * from students
where created_on = '2021-07-12 00:00:00' and name like 'Andrey%';
 ```
16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
 ```
select * from students 
where created_on = '2021-07-12 00:00:00' and name like '%8%';
 ```
17. Вывести пользователя у которых id равен 110
 
```select * from students where id = 110;``` 
 
18. Вывести пользователя у которых id равен 153
 
```select * from students where id = 153;```
 
19. Вывести пользователя у которых id больше 140
 
 ```select * from students where id > 140;```
 
20. Вывести пользователя у которых id меньше 130
 
 ```select * from students where id < 130;```
 
21. Вывести пользователя у которых id меньше 127 или больше 188
 
```select * from students where id < 127 or id > 188;```
 
22. Вывести пользователя у которых id меньше либо равно 137
 
 ```select * from students where id <= 137;```
 
23. Вывести пользователя у которых id больше либо равно 137
 
 ```select * from students where id >= 137;```
 
24. Вывести пользователя у которых id больше 180 но меньше 190
 
 ```select * from students where id > 180 and id < 190;```
 
25. Вывести пользователя у которых id между 180 и 190
 
 ```select * from students where id between 180 and 190;```
 
26. Вывести пользователей где password равен 12333, 1m313, 123313
 ```
select * from students
where "password" in ('12333', '1m313', '123313');
```
27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 ```
 select * from students 
 where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')
 ```
28. Вывести минимальный id 
 
```select min(id) from students;```
 
29. Вывести максимальный.
 
```select max(id) from students;```

30. Вывести количество пользователей
 
```select count(id) from students;```
 
31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 ```
select id,name,created_on from students 
order by created_on;
```
32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
```
select id,name,created_on from students 
order by created_on desc;
```
___
___

__SQL_HomeWork_2__

--SQL_HW_2_DDL

1. Создать таблицу employees

    id. serial,  primary key,

    employee_name. Varchar(50), not null
```
create table employees(
id serial primary key,
employee_name varchar(50) not null
)
```
1.1 Проверить

```select * from employees;```

2. Наполнить таблицу employee 70 строками.
```
insert into employees(employee_name)
values('Andrei');
	('Marta');
	('Natalia');
	('Dima');
	('Oleg');
	('Alena');
	('Kriss');
	('Vova');
	('Sveta');
	('Vadim');
	('Sasha');
	('Dasha');
	('Kira');
	('Kim');
	('Sergei');
	('Vasja');
	('Denis');
	('Andrik');
	('Jul');
	('Sokol');
    ('Kolina');
	('Diego');
	('Kate');
	('Ferra');
	('Jak');
	('Soroka');
	('Wolf');
	('Pythone');
	('Java');
	('JavaScript');
	('Dbeaver');
	('Iphone');
	('Rich');
	('Juci');
	('Slaer');
	('Doom');
	('Potato');
	('Zhorik');
	('Pokemon');
	('Enigma');
	('Peplomot');
    ('Dell');
	('Helena');
	('Pavel');
	('Zuev');
	('lebovski');
	('Unicon');
	('Feja');
	('Kloun');
	('Beat');
	('Gnom');
	('Zhenja');
	('Koljaz');
	('Key');
	('Value');
	('Wiqur');
	('Sql');
	('Server');
	('Amol');
	('Bora');
	('Fender');
	('Vinyl');
	('Korka');
	('Erik');
	('Ergn');
	('Arina');
	('Anton');
	('Clash');
	('Bulat');
	('Escobar');
	('Machno');
```
3. Создать таблицу salary
    
    id. Serial  primary key,
    
    monthly_salary. Int, not null
```
create table salary(
	id serial primary key,
	monthly_salary int not null
)
```
3.3 Проверить

```select * from salary;```

4. Наполнить таблицу salary 15 строками:
    1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 
    2000, 2100, 2200, 2300, 2400, 2500
```
insert into salary(monthly_salary) 
values(1000), 
(1100), 
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);
```
5. Создать таблицу employee_salary
    
    id Serial  primary key,
    
    employee_id. Int, not null, unique
    
    salary_id. Int, not null

```
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	)
```
6. Наполнить таблицу employee_salary 40 строками:
    
    в 10 строк из 40 вставить несуществующие employee_id
```
insert into employee_salary(employee_id, salary_id)
values(3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(42, 12),
(17, 13),
(18, 14),
(19, 15),
(20, 2),
(21, 5),
(22, 2),
(51, 13),
(24, 14),
(25, 1),
(38, 9),
(27, 7),
(28, 15),
(29, 11),
(30, 9),
(31, 3),
(32, 12),
(39, 7),
(34, 5),
(100, 10),
(105, 8),
(150, 15),
(195, 6),
(220, 6),
(259, 4),
(146, 14),
(132, 7),
(193, 3),
(101, 8);
```
7. Создать таблицу roles
    
    id. Serial  primary key,
    
    role_name. int, not null, unique
```
create table roles(
	id serial primary key,
	role_name int not null unique
)
```
8. Поменять тип столба role_name с int на varchar(30)
```
alter table roles
alter column role_name type varchar(30);
```
9. Наполнить таблицу roles 20 строками:
```
insert into roles(role_name)
values('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');
```
10. Создать таблицу roles_employee
    
    id. Serial  primary key,
    
    employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
    
    role_id. Int, not null (внешний ключ для таблицы roles, поле id)
```
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees (id),
	foreign key(role_id)
		references roles (id)
);
```
11. Наполнить таблицу roles_employee 40 строками
```
insert into roles_employee(employee_id, role_id)
values(7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(31, 20),
(37, 1),
(16, 10),
(2, 2),
(1, 19),
(40, 3),
(70, 17),
(18, 18),
(19, 1),
(33, 5),
(27, 15),
(15, 9),
(43, 10),
(4, 2),
(51, 4),
(52, 1),
(8, 16),
(45, 5),
(48, 13),
(61, 2),
(13, 2),
(39, 9),
(9, 11),
(44, 8),
(47, 3),
(54, 12),
(38, 4),
(69, 19),
(12, 1);
```
___
___

__SQL HW_3__

1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
```
select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id;
```
2. Вывести всех работников у которых ЗП меньше 2000.
```
select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;
```
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```
select monthly_salary from salary
left join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null;
```
4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```
select monthly_salary from salary 
left join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null and employee_salary.id < 2000;
```
5. Найти всех работников кому не начислена ЗП.
```
select employee_name, monthly_salary from employees 
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is null;
```
6. Вывести всех работников с названиями их должности.
```
select employee_name, role_name from roles_employee 
inner join employees on roles_employee.employee_id = employees.id 
inner join roles on roles_employee.role_id = roles.id;
```
7. Вывести имена и должность только Java разработчиков.
```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java developer';
```
8. Вывести имена и должность только Python разработчиков.
```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Python developer';
```
9. Вывести имена и должность всех QA инженеров.
```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';
```
10. Вывести имена и должность ручных QA инженеров.
```
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%' and roles.role_name not like '%Automation%';
```
11. Вывести имена и должность автоматизаторов QA
```
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Automation%';
```
12. Вывести имена и зарплаты Junior специалистов
```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior%';
```
13. Вывести имена и зарплаты Middle специалистов
```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Middle%';
```
14. Вывести имена и зарплаты Senior специалистов
```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Senior%';
```
15. Вывести зарплаты Java разработчиков
```
select role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Java%';
```
16. Вывести зарплаты Python разработчиков
```
select role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Python%';
```
17. Вывести имена и зарплаты Junior Python разработчиков
```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior Python%';
```
18. Вывести имена и зарплаты Middle JS разработчиков
```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Middle JS%';
```
 19. Вывести имена и зарплаты Senior Java разработчиков
 ```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Java%';
```
 20. Вывести зарплаты Junior QA инженеров
 ```
select role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Junior%QA%';
```
21. Вывести среднюю зарплату всех Junior специалистов
```
select avg(salary.monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior%';
```
22. Вывести сумму зарплат JS разработчиков
```
select sum(salary.monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%JS%';
```
23. Вывести минимальную ЗП QA инженеров
```
select min(salary.monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';
```
24. Вывести максимальную ЗП QA инженеров
```
select max(monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';
```
25. Вывести количество QA инженеров
```
select count(roles.role_name) from roles_employee 
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';
```
26. Вывести количество Middle специалистов.
```
select count(roles.role_name) from roles_employee 
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Middle%';
```
27. Вывести количество разработчиков
```
select count(roles.role_name) from roles_employee 
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%developer';
```
28. Вывести фонд (сумму) зарплаты разработчиков.
```
select sum(salary.monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%developer';
```
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 ```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
order by monthly_salary asc 
```
30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where monthly_salary between 1700 and 2300
order by monthly_salary asc 
```
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 ```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by monthly_salary asc 
```
32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
```
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where monthly_salary in(1100, 1500, 2000)
order by monthly_salary asc 
```
