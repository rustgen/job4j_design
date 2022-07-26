
insert into role(name) values ('admin');
insert into role(name) values ('user');

insert into users(name, role_id) values ('User #1', 1);
insert into users(name, role_id) values ('User #2', 2);

insert into rules(name) values ('main');
insert into rules(name) values ('restricted');

insert into category(name) values ('check system settings');
insert into category(name) values ('install updates');

insert into state(name) values ('in process');
insert into state(name) values ('not started');

insert into role_rules(role_id, rules_id) values (1, 1);
insert into role_rules(role_id, rules_id) values (2, 2);

insert into item(name, users_id, category_id, state_id) values ('item #1', 1, 2, 1);
insert into item(name, users_id, category_id, state_id) values ('item #2', 2, 2, 2);

insert into comments(name, item_id) values ('found errors', 1);
insert into comments(name, item_id) values ('not found any errors', 1);

insert into attachs(name, item_id) values ('screenshot', 1);
insert into attachs(name, item_id) values ('commit', 2);
