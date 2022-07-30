create table car_bodies (
    id serial primary key,
    name VARCHAR(50)
);

create table car_engines (
    id serial primary key,
    name VARCHAR(50)
);

create table car_transmissions (
    id serial primary key,
    name VARCHAR(50)
);

create table cars (
    id serial primary key,
    name VARCHAR(50),
    body_id INT references car_bodies(id),
    engine_id INT references car_engines(id),
    transmission_id INT references car_transmissions(id)
);

insert into car_bodies (name) values ('SEDAN');
insert into car_bodies (name) values ('COUPE');
insert into car_bodies (name) values ('SPORTS CAR');
insert into car_bodies (name) values ('STATION WAGON');
insert into car_bodies (name) values (null);
insert into car_bodies (name) values (null);
insert into car_bodies (name) values ('HATCHBACK');
insert into car_bodies (name) values ('CONVERTIBLE');
insert into car_bodies (name) values ('MINIVAN');
insert into car_bodies (name) values ('PICKUP TRUCK');


insert into car_engines (name) values ('In-line engine');
insert into car_engines (name) values ('V-8 engine');
insert into car_engines (name) values (null);
insert into car_engines (name) values ('Horizontally-opposed engine');
insert into car_engines (name) values (null);
insert into car_engines (name) values ('V-4 engine');

insert into car_transmissions (name) values (null);
insert into car_transmissions (name) values ('Manual');
insert into car_transmissions (name) values (null);
insert into car_transmissions (name) values ('Automatic');
insert into car_transmissions (name) values ('Continuously variable transmission (CVT)');
insert into car_transmissions (name) values (null);
insert into car_transmissions (name) values ('Semi-automatic and dual-clutch transmissions');
insert into car_transmissions (name) values ('Accounting');
insert into car_transmissions (name) values ('Super Automatic');

insert into cars (name, body_id, engine_id, transmission_id) values ('Audi', 7, 5, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('GMC', 5, 1, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercury', 2, 2, 7);
insert into cars (name, body_id, engine_id, transmission_id) values ('Dodge', 4, 2, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Chevrolet', 6, 2, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Hyundai', 2, 2, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Pontiac', 1, 1, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Ford', 2, 4, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('GMC', 7, 3, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Audi', 2, 3, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Eagle', 2, 1, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Buick', 2, 5, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Lincoln', 8, 3, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Dodge', 3, 3, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('BMW', 4, 4, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mazda', 3, 4, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mazda', 3, 1, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Ferrari', 6, 5, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mitsubishi', 1, 3, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Aston Martin', 2, 2, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mitsubishi', 2, 3, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Dodge', 1, 2, 7);
insert into cars (name, body_id, engine_id, transmission_id) values ('Toyota', 9, 2, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Chevrolet', 5, 3, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Lexus', 1, 1, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Cadillac', 8, 5, 7);
insert into cars (name, body_id, engine_id, transmission_id) values ('Lamborghini', 3, 2, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Ford', 1, 4, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('MINI', 7, 4, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Bentley', 2, 3, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Volkswagen', 4, 4, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Ford', 4, 3, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Pontiac', 9, 2, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('GMC', 2, 2, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Pontiac', 9, 5, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Infiniti', 7, 1, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Oldsmobile', 6, 5, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('GMC', 2, 5, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Chrysler', 2, 1, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Buick', 3, 5, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Acura', 3, 2, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Toyota', 4, 3, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Kia', 1, 2, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Nissan', 2, 1, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('BMW', 5, 5, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Nissan', 7, 1, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Ford', 4, 4, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Buick', 8, 3, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Cadillac', 1, 3, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Hyundai', 9, 1, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Ford', 2, 2, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Porsche', 6, 3, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Toyota', 2, 4, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercury', 3, 5, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercury', 9, 2, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Chevrolet', 8, 5, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Dodge', 7, 3, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Volkswagen', 6, 1, 7);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mitsubishi', 9, 3, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mitsubishi', null, null, null);
insert into cars (name, body_id, engine_id, transmission_id) values ('Chevrolet', 8, 5, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Chevrolet', 8, 5, null );
insert into cars (name, body_id, engine_id, transmission_id) values ('Chevrolet', 8, null , 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercedes-Benz', 7, 5, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercedes-Benz', null, 5, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercedes-Benz', null , null , 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercedes-Benz', 6, 3, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercedes-Benz', 6, null , null );
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercury', 6, 5, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Plymouth', 5, 5, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Plymouth', null , 5, null );
insert into cars (name, body_id, engine_id, transmission_id) values ('Ferrari', 5, 4, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Pontiac', 8, 1, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Hummer', 1, 2, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Kia', 5, 5, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Chevrolet', 5, 2, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Jeep', 9, 4, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Dodge', 5, 5, 7);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mazda', 9, 4, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Ford', 6, 4, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Buick', 6, 5, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Infiniti', 2, 1, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercedes-Benz', 1, 2, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Lamborghini', 7, 4, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Isuzu', 8, 1, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Eagle', 6, 4, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Buick', 2, 3, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('BMW', 8, 1, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Audi', 7, 3, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Audi', 6, 3, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Ford', 6, 4, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Honda', 9, 1, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Audi', 4, 4, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Hyundai', 7, 3, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Suzuki', 4, 4, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('BMW', 9, 2, 3);
insert into cars (name, body_id, engine_id, transmission_id) values ('Honda', 4, 1, 7);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercury', 8, 2, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('Hyundai', 1, 3, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Plymouth', 8, 5, 5);
insert into cars (name, body_id, engine_id, transmission_id) values ('Jaguar', 8, 4, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('Porsche', 3, 1, 6);
insert into cars (name, body_id, engine_id, transmission_id) values ('GMC', 3, 1, 2);
insert into cars (name, body_id, engine_id, transmission_id) values ('Audi', 7, 3, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Oldsmobile', 4, 2, 1);
insert into cars (name, body_id, engine_id, transmission_id) values ('BMW', 1, 4, 4);
insert into cars (name, body_id, engine_id, transmission_id) values ('Mercury', 3, 3, 2);

-- 1.Вывести список всех машин и все привязанные к ним детали.
--Нужно учесть, что каких-то деталей машина может и не содержать.
--В таком случае значение может быть null при выводе (например, название двигателя null);
SELECT * FROM cars
LEFT JOIN car_bodies b ON cars.body_id = b.id
LEFT JOIN car_engines e ON cars.engine_id = e.id
LEFT JOIN car_transmissions t ON cars.transmission_id = t.id;

--2.Вывести кузовы, которые не используются НИ в одной машине.
--"Не используются" значит, что среди записей таблицы cars отсутствует внешние ключи,
--ссылающие на таблицу car_bodies. Например, Вы добавили в car_bodies "седан", "хэтчбек" и "пикап",
--а при добавлении в таблицу cars указали только внешние ключи на записи "седан" и "хэтчбек".
--Запрос, касающийся этого пункта, должен вывести "пикап", т.к. среди машин нет тех, что обладают таким кузовом;
SELECT b.name body_null FROM car_bodies b
LEFT JOIN cars ON cars.body_id = b.id
WHERE cars.body_id IS null;

--3.Вывести двигатели, которые не используются НИ в одной машине, аналогично п.2;
SELECT e.name engine_null FROM cars
RIGHT JOIN car_engines e ON cars.engine_id = e.id
WHERE cars.name IS null;

--4.Вывести коробки передач, которые не используются НИ в одной машине, аналогично п.2.
SELECT t.name transmission_null FROM cars
RIGHT JOIN car_transmissions t ON t.id = cars.transmission_id
WHERE cars.transmission_id IS null;
