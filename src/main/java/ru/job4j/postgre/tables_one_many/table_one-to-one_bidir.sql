create table ssn(
    id serial primary key,
    number text
);

create table people(
    id serial primary key,
    name varchar(255),
    age int
);

create table ssn_people(
    id serial primary key,
    ssn_id int references ssn(id) unique,
    person_id int references people(id) unique
);