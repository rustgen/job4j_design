--1. Создать таблицы и заполнить их начальными данными
create table departments (
    id serial primary key,
	name VARCHAR(50)
);

create table employees (
    id serial primary key,
	name VARCHAR(50),
	type_id INT references departments(id)
);

insert into departments (name) values ('Accounting');
insert into departments (name) values ('Training');
insert into departments (name) values ('Product Management');
insert into departments (name) values ('Legal');
insert into departments (name) values ('Engineering');
insert into departments (name) values ('Product Management');
insert into departments (name) values ('Research and Development');
insert into departments (name) values ('Product Management');
insert into departments (name) values ('Legal');
insert into departments (name) values ('Sales');
insert into departments (name) values ('Services');
insert into departments (name) values ('Services');
insert into departments (name) values ('Support');
insert into departments (name) values ('Human Resources');
insert into departments (name) values ('Marketing');
insert into departments (name) values ('Legal');
insert into departments (name) values ('Product Management');
insert into departments (name) values ('Legal');
insert into departments (name) values ('Support');
insert into departments (name) values ('Engineering');
insert into departments (name) values ('Research and Development');
insert into departments (name) values ('Support');
insert into departments (name) values ('Support');
insert into departments (name) values ('Sales');
insert into departments (name) values ('Support');
insert into departments (name) values ('Accounting');
insert into departments (name) values ('Accounting');
insert into departments (name) values ('Services');
insert into departments (name) values ('Training');
insert into departments (name) values ('Engineering');

insert into employees (name, type_id) values ('Derby', 21);
insert into employees (name, type_id) values ('Ibrahim', null);
insert into employees (name, type_id) values ('Margalit', 26);
insert into employees (name, type_id) values ('Tawnya', 7);
insert into employees (name, type_id) values ('Tobey', 7);
insert into employees (name, type_id) values ('Aimee', null);
insert into employees (name, type_id) values ('Ardyce', 30);
insert into employees (name, type_id) values ('Sheeree', 5);
insert into employees (name, type_id) values ('Dugald', 17);
insert into employees (name, type_id) values ('Cori', 5);
insert into employees (name, type_id) values ('Rhetta', 13);
insert into employees (name, type_id) values ('Veradis', 3);
insert into employees (name, type_id) values ('Wiatt', 11);
insert into employees (name, type_id) values ('Alla', 22);
insert into employees (name, type_id) values ('Antonius', 1);
insert into employees (name, type_id) values ('Gladys', 22);
insert into employees (name, type_id) values ('Michaella', 22);
insert into employees (name, type_id) values ('Nels', 1);
insert into employees (name, type_id) values ('Antonietta', 28);
insert into employees (name, type_id) values ('Galvin', 6);
insert into employees (name, type_id) values ('Damian', 7);
insert into employees (name, type_id) values ('Marietta', 15);
insert into employees (name, type_id) values ('Sunny', 13);
insert into employees (name, type_id) values ('Forest', 7);
insert into employees (name, type_id) values ('Violette', 9);
insert into employees (name, type_id) values ('Jud', null);
insert into employees (name, type_id) values ('Josee', 23);
insert into employees (name, type_id) values ('Nana', 18);
insert into employees (name, type_id) values ('Taddeusz', 21);
insert into employees (name, type_id) values ('Venita', 10);
insert into employees (name, type_id) values ('Kalie', 20);
insert into employees (name, type_id) values ('Bren', 12);
insert into employees (name, type_id) values ('Lin', 25);
insert into employees (name, type_id) values ('Byram', 11);
insert into employees (name, type_id) values ('Ethelyn', 14);
insert into employees (name, type_id) values ('Charlena', 11);
insert into employees (name, type_id) values ('Fiona', 22);
insert into employees (name, type_id) values ('Berkie', 5);
insert into employees (name, type_id) values ('Leesa', 30);
insert into employees (name, type_id) values ('Silvana', 20);
insert into employees (name, type_id) values ('Thane', null);
insert into employees (name, type_id) values ('Minni', 24);
insert into employees (name, type_id) values ('Alma', 14);
insert into employees (name, type_id) values ('Gordan', 25);
insert into employees (name, type_id) values ('Dillie', 17);
insert into employees (name, type_id) values ('Culley', 13);
insert into employees (name, type_id) values ('Della', 14);
insert into employees (name, type_id) values ('Janina', null);
insert into employees (name, type_id) values ('Lorne', 9);
insert into employees (name, type_id) values ('Deane', 13);
insert into employees (name, type_id) values ('Standford', null);
insert into employees (name, type_id) values ('Rodrique', 2);
insert into employees (name, type_id) values ('Frans', 13);
insert into employees (name, type_id) values ('Jamaal', 18);
insert into employees (name, type_id) values ('Rhoda', 7);
insert into employees (name, type_id) values ('Janaye', null);
insert into employees (name, type_id) values ('Cecilius', 14);
insert into employees (name, type_id) values ('Chelsae', null);
insert into employees (name, type_id) values ('Burke', 18);
insert into employees (name, type_id) values ('Creight', 20);
insert into employees (name, type_id) values ('Franklin', 9);
insert into employees (name, type_id) values ('Daron', 19);
insert into employees (name, type_id) values ('Ephrem', 4);
insert into employees (name, type_id) values ('Dniren', 24);
insert into employees (name, type_id) values ('Vikki', 10);
insert into employees (name, type_id) values ('Cassandry', 16);
insert into employees (name, type_id) values ('Enriqueta', 23);
insert into employees (name, type_id) values ('Mort', 14);
insert into employees (name, type_id) values ('Walt', 14);
insert into employees (name, type_id) values ('Shelba', 1);
insert into employees (name, type_id) values ('Jewel', 3);
insert into employees (name, type_id) values ('Godard', 14);
insert into employees (name, type_id) values ('Bruce', 4);
insert into employees (name, type_id) values ('Shaylah', null);
insert into employees (name, type_id) values ('Gwenneth', 15);
insert into employees (name, type_id) values ('Derry', 18);
insert into employees (name, type_id) values ('Freddy', 25);
insert into employees (name, type_id) values ('Wilhelm', 7);
insert into employees (name, type_id) values ('Jessalyn', null );
insert into employees (name, type_id) values ('Shermy', 17);
insert into employees (name, type_id) values ('Jameson', 30);
insert into employees (name, type_id) values ('Jessie', 8);
insert into employees (name, type_id) values ('Krisha', 19);
insert into employees (name, type_id) values ('Lorna', 9);
insert into employees (name, type_id) values ('Kari', 20);
insert into employees (name, type_id) values ('Teena', 21);
insert into employees (name, type_id) values ('Burnard', 7);
insert into employees (name, type_id) values ('Rachelle', 22);
insert into employees (name, type_id) values ('Alvan', 21);
insert into employees (name, type_id) values ('Lon', 9);
insert into employees (name, type_id) values ('Magdalen', 7);
insert into employees (name, type_id) values ('Jami', 26);
insert into employees (name, type_id) values ('Brittani', 15);
insert into employees (name, type_id) values ('Aurelie', null);
insert into employees (name, type_id) values ('Gracie', null);
insert into employees (name, type_id) values ('Walsh', null);
insert into employees (name, type_id) values ('Lyndsey', null);
insert into employees (name, type_id) values ('Bevan', null);
insert into employees (name, type_id) values ('Kort', 12);
insert into employees (name, type_id) values ('Gwennie', 8);

--2. Выполнить запросы с left, rigth, full, cross соединениями
SELECT * FROM employees e
LEFT JOIN departments d ON e.type_id = d.id;

SELECT * FROM employees e
RIGHT JOIN departments d ON e.type_id = d.id;

SELECT * FROM employees e
FULL JOIN departments d ON e.type_id = d.id;

SELECT * FROM employees e
CROSS JOIN departments d;

--3. Используя left join найти департаменты, у которых нет работников
SELECT * FROM employees e
LEFT JOIN departments d ON e.type_id = d.id
WHERE d.id IS null;

--4. Используя left и right join написать запросы,
--которые давали бы одинаковый результат (порядок вывода колонок в эти запросах также должен быть идентичный).
SELECT * FROM employees e
LEFT JOIN departments d ON e.type_id = d.id
union
SELECT * FROM employees e
RIGHT JOIN departments d ON e.type_id = d.id;

--5. Создать таблицу teens с атрибутами name, gender и заполнить ее.
--Используя cross join составить все возможные разнополые пары
create table teens (
    id serial primary key,
	name VARCHAR(50),
	gender VARCHAR(50)
);

insert into teens (name, gender) values ('Anderson', 'Male');
insert into teens (name, gender) values ('Orelie', 'Female');
insert into teens (name, gender) values ('Bay', 'Male');
insert into teens (name, gender) values ('Kalie', 'Agender');
insert into teens (name, gender) values ('Basia', 'Female');
insert into teens (name, gender) values ('Drucy', 'Female');
insert into teens (name, gender) values ('Maurie', 'Male');
insert into teens (name, gender) values ('Teddy', 'Female');
insert into teens (name, gender) values ('Regan', 'Female');
insert into teens (name, gender) values ('Loni', 'Female');
insert into teens (name, gender) values ('Carlynne', 'Female');
insert into teens (name, gender) values ('Ellette', 'Agender');
insert into teens (name, gender) values ('Chas', 'Male');
insert into teens (name, gender) values ('Hayley', 'Female');
insert into teens (name, gender) values ('Aloysius', 'Male');
insert into teens (name, gender) values ('Ulric', 'Male');
insert into teens (name, gender) values ('Maddy', 'Female');
insert into teens (name, gender) values ('Shepard', 'Male');
insert into teens (name, gender) values ('Brien', 'Male');
insert into teens (name, gender) values ('Sylas', 'Male');

SELECT t1.name, t2.name
FROM teens t1 CROSS JOIN teens t2
WHERE t1.name != t2.name;



