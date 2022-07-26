create table ssn(
    id serial primary key,
    number text
);

create table people(
    id serial primary key,
    name varchar(255),
    age int,
    ssn_id int references ssn(id) unique
);