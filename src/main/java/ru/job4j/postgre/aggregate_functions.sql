create table devices(
    id serial primary key,
    name varchar(255),
    price float
);

create table people(
    id serial primary key,
    name varchar(255)
);

create table devices_people(
    id serial primary key,
    device_id int references devices(id),
    people_id int references people(id)
);

insert into devices (name, price) values ('Nokia 2011', 63324.2);
insert into devices (name, price) values ('Nokia 2012', 64790.51);
insert into devices (name, price) values ('Nokia 2002', 15987.89);
insert into devices (name, price) values ('Nokia 2009', 87017.33);
insert into devices (name, price) values ('Nokia 2010', 68014.94);
insert into devices (name, price) values ('Nokia 2001', 78265.99);
insert into devices (name, price) values ('Nokia 2001', 24832.23);
insert into devices (name, price) values ('Nokia 2009', 17147.74);
insert into devices (name, price) values ('Nokia 2010', 82884.78);
insert into devices (name, price) values ('Nokia 1994', 26244.18);
insert into devices (name, price) values ('Nokia 1995', 16868.69);
insert into devices (name, price) values ('Nokia 1998', 59835.57);
insert into devices (name, price) values ('Nokia 2012', 24394.35);
insert into devices (name, price) values ('Nokia 1979', 55668.03);
insert into devices (name, price) values ('Nokia 2006', 86376.22);
insert into devices (name, price) values ('Nokia 2009', 61134.25);
insert into devices (name, price) values ('Nokia 1983', 407.82);
insert into devices (name, price) values ('Nokia 2012', 34942.48);
insert into devices (name, price) values ('Nokia 2001', 1409.83);
insert into devices (name, price) values ('Nokia 2011', 69697.59);

insert into people (name) values ('Léandre');
insert into people (name) values ('Tán');
insert into people (name) values ('Mélodie');
insert into people (name) values ('Joséphine');
insert into people (name) values ('Uò');
insert into people (name) values ('Anaé');
insert into people (name) values ('Bérénice');
insert into people (name) values ('Annotés');
insert into people (name) values ('Loïs');
insert into people (name) values ('Cléa');
insert into people (name) values ('Wá');
insert into people (name) values ('Anaïs');
insert into people (name) values ('Hélène');
insert into people (name) values ('Camélia');
insert into people (name) values ('Estée');
insert into people (name) values ('Rébecca');
insert into people (name) values ('Måns');
insert into people (name) values ('Léonore');
insert into people (name) values ('Mélanie');
insert into people (name) values ('Uò');

insert into devices_people (device_id, people_id) values (8, 1);
insert into devices_people (device_id, people_id) values (9, 2);
insert into devices_people (device_id, people_id) values (17, 3);
insert into devices_people (device_id, people_id) values (4, 4);
insert into devices_people (device_id, people_id) values (4, 5);
insert into devices_people (device_id, people_id) values (13, 6);
insert into devices_people (device_id, people_id) values (20, 7);
insert into devices_people (device_id, people_id) values (15, 8);
insert into devices_people (device_id, people_id) values (8, 9);
insert into devices_people (device_id, people_id) values (15, 10);
insert into devices_people (device_id, people_id) values (2, 11);
insert into devices_people (device_id, people_id) values (18, 12);
insert into devices_people (device_id, people_id) values (14, 13);
insert into devices_people (device_id, people_id) values (15, 14);
insert into devices_people (device_id, people_id) values (15, 15);
insert into devices_people (device_id, people_id) values (3, 16);
insert into devices_people (device_id, people_id) values (4, 17);
insert into devices_people (device_id, people_id) values (2, 18);
insert into devices_people (device_id, people_id) values (2, 19);
insert into devices_people (device_id, people_id) values (6, 20);

SELECT AVG (price) FROM devices;

SELECT people.name, AVG (price)
FROM devices_people AS dp
JOIN devices ON dp.id = devices.id
JOIN people ON dp.id = people.id
GROUP BY people.name;

SELECT people.name, AVG (price)
FROM devices_people AS dp
JOIN devices ON dp.id = devices.id
JOIN people ON dp.id = people.id
GROUP BY people.name
HAVING AVG (price) > 5000;