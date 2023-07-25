--SQL_HW_2_DDL

-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name varchar(50) not null
)

--Проверить
select * from employees;

--Наполнить таблицу employee 70 строками.

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

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
)

--Проверить
select * from salary;

--Наполнить таблицу salary 15 строками:
--- 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 
--2000, 2100, 2200, 2300, 2400, 2500

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

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null


create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	)

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

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


--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
)

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

---Наполнить таблицу roles 20 строками:
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
	
--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees (id),
	foreign key(role_id)
		references roles (id)
);

-- Наполнить таблицу roles_employee 40 строками
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