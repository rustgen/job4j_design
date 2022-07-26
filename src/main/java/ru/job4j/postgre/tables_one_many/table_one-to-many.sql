create table powerbank(
    id serial primary key,
    number text
);

create table people(
    id serial primary key,
    name varchar(255),
    powerbank_id references powerbank(id)
);

insert into powerbank(number) values ('office #2');
insert into people(name, powerbank_id) values ('Jim', 1);

select * from people;

select * from powerbank where id in (select id from people);
