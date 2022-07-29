create table vincar (
    id serial primary key,
	vin_num VARCHAR(50)
);

create table cars (
    id serial primary key,
	name VARCHAR(50),
	year int,
	vincar_id int references vincar(id) unique
);

insert into vincar (vin_num) values ('WBADR63473G670310');
insert into vincar (vin_num) values ('WAUKFBFL8DA376656');
insert into vincar (vin_num) values ('1GKS1CE04ER461239');
insert into vincar (vin_num) values ('JM1GJ1U51F1936171');
insert into vincar (vin_num) values ('SCBZB25E72C750176');
insert into vincar (vin_num) values ('3VWC17AU8FM581948');
insert into vincar (vin_num) values ('WBAEV33462P050674');
insert into vincar (vin_num) values ('JN8AZ1MU1DW522110');
insert into vincar (vin_num) values ('1G6AB1R32F0406603');
insert into vincar (vin_num) values ('2G4WC582561101368');

insert into cars (name, year, vincar_id) values ('Continental', 2008, 1);
insert into cars (name, year, vincar_id) values ('CLS-Class', 2008, 2);
insert into cars (name, year, vincar_id) values ('G35', 2008, 3);
insert into cars (name, year, vincar_id) values ('Vandura 2500', 1992, 5);
insert into cars (name, year, vincar_id) values ('FX', 2003, 7);
insert into cars (name, year, vincar_id) values ('Vanagon', 1984, 9);
insert into cars (name, year, vincar_id) values ('Caravan', 1998, 10);
insert into cars (name, year) values ('GTO', 1971);
insert into cars (name, year) values ('SX4', 2008);
insert into cars (name, year) values ('Regal', 1992);

SELECT * FROM cars INNER JOIN vincar ON cars.vincar_id = vincar.id;

SELECT cn.name, vin.vin_num
FROM cars AS cn
JOIN vincar AS vin ON cn.vincar_id = vin.id;

SELECT year, vin.vin_num AS vn
FROM cars JOIN vincar AS vin
ON cars.vincar_id = vin.id;



