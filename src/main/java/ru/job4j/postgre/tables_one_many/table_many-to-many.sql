create table devices(
    id serial primary key,
    name text
);

create table people(
    id serial primary key,
    name varchar(255),
    age int
);

create table devices_people(
    id serial primary key,
    device_id int references devices(id),
    person_id int references people(id)
);

insert into devices(name) values ('iPhone');
insert into devices(name) values ('iPad');
insert into devices(name) values ('iMac');

insert into people(name, age) values ('John', 15);
insert into people(name, age) values ('Nick', 48);
insert into people(name, age) values ('Gina', 23);

insert into devices_people(person_id, device_id) values (1, 1);
insert into devices_people(person_id, device_id) values (1, 2);
insert into devices_people(person_id, device_id) values (2, 1);
insert into devices_people(person_id, device_id) values (2, 3);
insert into devices_people(person_id, device_id) values (3, 1);
insert into devices_people(person_id, device_id) values (3, 2);
insert into devices_people(person_id, device_id) values (3, 3);
