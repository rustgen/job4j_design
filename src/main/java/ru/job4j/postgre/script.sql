insert into devices(name, model, version) values('iPhone', '13 pro', '16.2');
insert into devices(name, model, version) values('iPad', '11 pro', '15.6');
insert into devices(name, model, version) values('iMac', 'M1', '12.03');
select * from devices;
update devices set version = '15.5';
delete from devices;
select * from devices;
