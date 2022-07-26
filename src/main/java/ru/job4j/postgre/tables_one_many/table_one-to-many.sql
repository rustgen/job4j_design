create table people(
    id serial primary key,
    name varchar(255)
);

create table powerbank(
    id serial primary key,
    number text,
    people_id references people(id)
);

insert into people(name, powerbank_id) values ('Jim');
insert into powerbank(number, people_id) values ('office #2', 1);

select * from powerbank;

select * from people where id in (select id from pewerbank_id);
