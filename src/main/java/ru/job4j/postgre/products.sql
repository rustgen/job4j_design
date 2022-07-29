create table type (
id serial primary key,
	name VARCHAR(50)
);

create table product (
id serial primary key,
	name VARCHAR(50),
	type_id INT references type(id),
	expired_date DATE,
	price INT
);

insert into type (name) values ('Veal');
insert into type (name) values ('Cheese' );
insert into type (name) values ('Potatoes');
insert into type (name) values ('Poppy Seed');
insert into type (name) values ('Oranges');
insert into type (name) values ('Milk');
insert into type (name) values ('Pork');
insert into type (name) values ('Tea' );
insert into type (name) values ('Cheese' );
insert into type (name) values ('Hold Up Tool Storage Rack');
insert into type (name) values ('Wine');
insert into type (name) values ('Lamb');
insert into type (name) values ('Cinnamon');
insert into type (name) values ('Pop' );
insert into type (name) values ('Chicken Breast Wing On');
insert into type (name) values ('Appetizer' );
insert into type (name) values ('Pork');
insert into type (name) values ('Truffle Cups Green' );
insert into type (name) values ('Cream');
insert into type (name) values ('Ecolab' );
insert into type (name) values ('Nectarines');
insert into type (name) values ('Pants Custom Dry Clean');
insert into type (name) values ('Veal');
insert into type (name) values ('Pastry' );
insert into type (name) values ('Potatoes');
insert into type (name) values ('Pasta');
insert into type (name) values ('Pastry' );
insert into type (name) values ('Muffin' );
insert into type (name) values ('Marzipan 50/50');
insert into type (name) values ('Shrimp' );
insert into type (name) values ('Ecolab Silver Fusion');
insert into type (name) values ('Table Cloth 90x90 Colour' );
insert into type (name) values ('Lettuce');
insert into type (name) values ('Cabbage');
insert into type (name) values ('Coffee' );
insert into type (name) values ('Alize Sunset' );
insert into type (name) values ('Filo Dough');
insert into type (name) values ('Rabbit' );
insert into type (name) values ('Tea' );
insert into type (name) values ('Wine');
insert into type (name) values ('Beef');
insert into type (name) values ('Wine');
insert into type (name) values ('Sponge Cake Mix' );
insert into type (name) values ('Wine');
insert into type (name) values ('Soup');
insert into type (name) values ('Berry Brulee' );
insert into type (name) values ('Gatorade');
insert into type (name) values ('Truffle Cups Green' );
insert into type (name) values ('Beans');
insert into type (name) values ('Flour');
insert into type (name) values ('Pork');
insert into type (name) values ('Soup');
insert into type (name) values ('Flavouring');
insert into type (name) values ('Hold Up Tool Storage Rack');
insert into type (name) values ('Brandy' );
insert into type (name) values ('Potato' );
insert into type (name) values ('Oil' );
insert into type (name) values ('Onions' );
insert into type (name) values ('Fireball Whisky' );
insert into type (name) values ('Yoplait');
insert into type (name) values ('Soup');
insert into type (name) values ('Wine');
insert into type (name) values ('Nantucket' );
insert into type (name) values ('Nut' );
insert into type (name) values ('Pepper' );
insert into type (name) values ('Gatorade');
insert into type (name) values ('Juice');
insert into type (name) values ('Tomato' );
insert into type (name) values ('Mix' );
insert into type (name) values ('Tea Leaves');
insert into type (name) values ('Tomato Puree' );
insert into type (name) values ('Wine');
insert into type (name) values ('Wine');
insert into type (name) values ('Almonds Ground Blanched');
insert into type (name) values ('Napkin' );
insert into type (name) values ('Basil');
insert into type (name) values ('General Purpose Trigger');
insert into type (name) values ('Apron');
insert into type (name) values ('Chickhen');
insert into type (name) values ('Pepper' );
insert into type (name) values ('Vinegar');
insert into type (name) values ('Wine');
insert into type (name) values ('Longos' );
insert into type (name) values ('Corn');
insert into type (name) values ('Bandage');
insert into type (name) values ('Bread');
insert into type (name) values ('Bar Special K');
insert into type (name) values ('Carbonated Water');
insert into type (name) values ('Ham' );
insert into type (name) values ('Myers Planters Punch');
insert into type (name) values ('Lychee' );
insert into type (name) values ('Cheese' );
insert into type (name) values ('Juice');
insert into type (name) values ('Towel Multifold' );
insert into type (name) values ('Truffle');
insert into type (name) values ('Nescafe');
insert into type (name) values ('Lemonade');
insert into type (name) values ('Creme De Cacao Mcguines');
insert into type (name) values ('Bagel');
insert into type (name) values ('Beans');
insert into type (name) values ('Chicken');

insert into product (name, type_id, expired_date, price) values ('Knuckle ',82,'2022-08-05',38 );
insert into product (name, type_id, expired_date, price) values ('Cottage Cheese ', 73,'2022-08-13',18 );
insert into product (name, type_id, expired_date, price) values ('Purple, Organic ',78,'2022-08-16',70 );
insert into product (name, type_id, expired_date, price) values ('Seed',29,'2022-07-04',44 );
insert into product (name, type_id, expired_date, price) values ('Navel, 72 ',37,'2022-08-26',67 );
insert into product (name, type_id, expired_date, price) values ('Shoulder ', 66,'2022-07-08',79 );
insert into product (name, type_id, expired_date, price) values ('Vanilla Chai ', 88,'2022-07-12',49 );
insert into product (name, type_id, expired_date, price) values ('Woolwich Goat, Log ', 2, '2022-07-26',41 );
insert into product (name, type_id, expired_date, price) values ('rack',21,'2022-07-13',19 );
insert into product (name, type_id, expired_date, price) values ('White, French Cross ',71,'2022-08-23',39 );
insert into product (name, type_id, expired_date, price) values ('Whole, Fresh ', 70,'2022-07-10',57 );
insert into product (name, type_id, expired_date, price) values ('Stick ',80,'2022-08-02',78 );
insert into product (name, type_id, expired_date, price) values ('Club Soda Can ',18,'2022-07-10',93 );
insert into product (name, type_id, expired_date, price) values ('wing',99,'2022-07-01',54 );
insert into product (name, type_id, expired_date, price) values ('Seafood Assortment ', 3, '2022-07-15',54 );
insert into product (name, type_id, expired_date, price) values ('Suckling Pig ', 68,'2022-07-11',85 );
insert into product (name, type_id, expired_date, price) values ('Green ',63,'2022-08-07',63 );
insert into product (name, type_id, expired_date, price) values ('0.18 ', 94,'2022-07-12',96 );
insert into product (name, type_id, expired_date, price) values ('Solid Fusion ', 100, '2022-07-24',28 );
insert into product (name, type_id, expired_date, price) values ('Nectarines',35,'2022-08-23',87 );
insert into product (name, type_id, expired_date, price) values ('Pants Custom Dry Clean',91,'2022-07-30',67 );
insert into product (name, type_id, expired_date, price) values ('Knuckle ',86,'2022-08-07',74 );
insert into product (name, type_id, expired_date, price) values ('Raisin Muffin Mini',97,'2022-07-30',48 );
insert into product (name, type_id, expired_date, price) values ('Fingerling 4 Oz ',39,'2022-07-04',29 );
insert into product (name, type_id, expired_date, price) values ('Tortellini, Fresh ',74,'2022-07-03',56 );
insert into product (name, type_id, expired_date, price) values ('Banana Muffin Mini',4, '2022-08-03',29 );
insert into product (name, type_id, expired_date, price) values ('Zero Transfat ',60,'2022-07-08',30 );
insert into product (name, type_id, expired_date, price) values ('Marzipan 50/50',90,'2022-07-27',26 );
insert into product (name, type_id, expired_date, price) values ('16/20, Peeled Deviened ', 54,'2022-08-18',30 );
insert into product (name, type_id, expired_date, price) values ('Ecolab Silver Fusion',2, '2022-07-16',21 );
insert into product (name, type_id, expired_date, price) values ('Table Cloth 90x90 Colour',50,'2022-07-30',61 );
insert into product (name, type_id, expired_date, price) values ('Curly Endive ', 39,'2022-08-07',15 );
insert into product (name, type_id, expired_date, price) values ('Green ',54,'2022-07-19',73 );
insert into product (name, type_id, expired_date, price) values ('French Vanilla Frothy ',96,'2022-08-17',74 );
insert into product (name, type_id, expired_date, price) values ('Alize Sunset',45,'2022-07-10',100 );
insert into product (name, type_id, expired_date, price) values ('Filo Dough',33,'2022-08-16',52 );
insert into product (name, type_id, expired_date, price) values ('Saddles ',73,'2022-07-25',73 );
insert into product (name, type_id, expired_date, price) values ('Vanilla Chai ', 78,'2022-08-17',58 );
insert into product (name, type_id, expired_date, price) values ('Magnotta Pinot Gris Sr',3, '2022-07-29',72 );
insert into product (name, type_id, expired_date, price) values ('Cooked, Corned ', 41,'2022-07-13',63 );
insert into product (name, type_id, expired_date, price) values ('Chardonnay Mondavi ', 78,'2022-07-10',96 );
insert into product (name, type_id, expired_date, price) values ('Vanilla ',58,'2022-07-02',42 );
insert into product (name, type_id, expired_date, price) values ('Charddonnay Errazuriz ',48,'2022-07-20',45 );
insert into product (name, type_id, expired_date, price) values ('Cream Of Broccoli, Dry ', 50,'2022-08-10',93 );
insert into product (name, type_id, expired_date, price) values ('Berry Brulee',68,'2022-07-02',42 );
insert into product (name, type_id, expired_date, price) values ('Fruit Punch ',23,'2022-07-29',70 );
insert into product (name, type_id, expired_date, price) values ('Truffle Cups Green',100, '2022-07-27',29 );
insert into product (name, type_id, expired_date, price) values ('Black Bean, Dry ',32,'2022-08-04',30 );
insert into product (name, type_id, expired_date, price) values ('Bread ',9, '2022-08-24',93 );
insert into product (name, type_id, expired_date, price) values ('Inside ', 90,'2022-08-15',48 );
insert into product (name, type_id, expired_date, price) values ('Cream Of Potato / Leek ', 82,'2022-07-25',47 );
insert into product (name, type_id, expired_date, price) values ('Rum ',91,'2022-08-15',22 );
insert into product (name, type_id, expired_date, price) values ('Hold Up Tool Storage Rack', 99,'2022-08-22',83 );
insert into product (name, type_id, expired_date, price) values ('Bar ',42,'2022-07-30',52 );
insert into product (name, type_id, expired_date, price) values ('Sweet ',49,'2022-08-24',66 );
insert into product (name, type_id, expired_date, price) values ('Truffle, Black ', 99,'2022-07-01',100 );
insert into product (name, type_id, expired_date, price) values ('Red Pearl ',43,'2022-07-10',28 );
insert into product (name, type_id, expired_date, price) values ('Fireball Whisky', 45,'2022-07-01',19 );
insert into product (name, type_id, expired_date, price) values ('Strawbrasp Peac ',92,'2022-07-21',12 );
insert into product (name, type_id, expired_date, price) values ('Campbells, Minestrone ',6, '2022-07-29',95 );
insert into product (name, type_id, expired_date, price) values ('Acient Coast Caberne ', 15,'2022-07-06',63 );
insert into product (name, type_id, expired_date, price) values ('518ml ',100, '2022-08-24',65 );
insert into product (name, type_id, expired_date, price) values ('Pine Nuts, Whole ', 12,'2022-08-04',33 );
insert into product (name, type_id, expired_date, price) values ('Green ',21,'2022-08-04',63 );
insert into product (name, type_id, expired_date, price) values ('Xfactor Berry ',97,'2022-08-23',43 );
insert into product (name, type_id, expired_date, price) values ('Mango ',64,'2022-08-15',91 );
insert into product (name, type_id, expired_date, price) values ('Tricolor Cherry ',92,'2022-07-19',10 );
insert into product (name, type_id, expired_date, price) values ('Cocktail Ice Cream', 70,'2022-08-11',51 );
insert into product (name, type_id, expired_date, price) values ('Oolong ', 25,'2022-08-03',86 );
insert into product (name, type_id, expired_date, price) values ('Tomato Puree',43,'2022-08-14',34 );
insert into product (name, type_id, expired_date, price) values ('Trimbach Pinot Blanc ', 99,'2022-08-24',92 );
insert into product (name, type_id, expired_date, price) values ('Muscadet Sur Lie ', 55,'2022-08-14',71 );
insert into product (name, type_id, expired_date, price) values ('Almonds Ground Blanched', 69,'2022-08-21',99 );
insert into product (name, type_id, expired_date, price) values ('Dinner, White ',54,'2022-07-05',65 );
insert into product (name, type_id, expired_date, price) values ('Thai Ice Cream', 71,'2022-07-17',48 );
insert into product (name, type_id, expired_date, price) values ('General Purpose Trigger', 90,'2022-07-30',49 );
insert into product (name, type_id, expired_date, price) values ('Apron', 81,'2022-07-06',50 );
insert into product (name, type_id, expired_date, price) values ('Chicken Phyllo ', 37,'2022-07-25',22 );
insert into product (name, type_id, expired_date, price) values ('Paprika, Hungarian ', 57,'2022-08-07',45 );
insert into product (name, type_id, expired_date, price) values ('White Ice Cream',95,'2022-07-24',81 );
insert into product (name, type_id, expired_date, price) values ('White, Riesling, Semi Dry', 5, '2022-07-01',74 );
insert into product (name, type_id, expired_date, price) values ('Grilled Chicken With ', 57,'2022-07-16',97 );
insert into product (name, type_id, expired_date, price) values ('On The Cob ', 46,'2022-07-19',23 );
insert into product (name, type_id, expired_date, price) values ('Finger Cots ',17,'2022-07-27',64 );
insert into product (name, type_id, expired_date, price) values ('Italian Corn Meal Poly ', 2, '2022-08-11',73 );
insert into product (name, type_id, expired_date, price) values ('Bar Special K', 12,'2022-07-21',59 );
insert into product (name, type_id, expired_date, price) values ('Raspberry ',2, '2022-07-17',66 );
insert into product (name, type_id, expired_date, price) values ('Virginia ', 73,'2022-08-25',46 );
insert into product (name, type_id, expired_date, price) values ('Myers Planters Punch',81,'2022-08-03',88 );
insert into product (name, type_id, expired_date, price) values ('Canned ', 58,'2022-08-09',22 );
insert into product (name, type_id, expired_date, price) values ('Gorgonzola ', 38,'2022-08-04',23 );
insert into product (name, type_id, expired_date, price) values ('Clam, 46 Oz ',76,'2022-07-21',58 );
insert into product (name, type_id, expired_date, price) values ('Towel Multifold', 4, '2022-08-16',28 );
insert into product (name, type_id, expired_date, price) values ('Whole Black Peeled ', 66,'2022-07-08',66 );
insert into product (name, type_id, expired_date, price) values ('Frothy French Vanilla ',97,'2022-08-16',89 );
insert into product (name, type_id, expired_date, price) values ('Island Tea, 591 Ml ', 64,'2022-07-05',77 );
insert into product (name, type_id, expired_date, price) values ('Creme De Cacao Mcguines', 58,'2022-08-11',86 );
insert into product (name, type_id, expired_date, price) values ('Ched Chs Presliced ', 57,'2022-08-18',69 );
insert into product (name, type_id, expired_date, price) values ('Yellow ', 64,'2022-08-17',76 );
insert into product (name, type_id, expired_date, price) values ('Leg, Boneless ',100, '2022-08-26',30 );

-- 1. Написать запрос получение всех продуктов с типом "Cheese"
SELECT product.name, product.expired_date, product.price, type.name
FROM product
JOIN type ON product.type_id = type.id
WHERE type.name = 'Cheese';

--2. Написать запрос получения всех продуктов, у кого в имени есть слово "Ice Cream"
SELECT name, expired_date, price
FROM product
WHERE name LIKE '%Ice Cream%';

--3. Написать запрос, который выводит все продукты, срок годности которых уже истек
SELECT * FROM product
WHERE expired_date < current_date;

--4. Написать запрос, который выводит самый дорогой продукт.
SELECT name, price FROM product
WHERE price = (
SELECT MAX(price) FROM product
);

--5. Написать запрос, который выводит для каждого типа
-- количество продуктов к нему принадлежащих. В виде имя_типа, количество
SELECT type.name, COUNT(p.name)
FROM type
JOIN product p ON p.type_id = type.id
GROUP BY type.name;

--6. Написать запрос получение всех продуктов с типом "Cheese" и "Milk"
SELECT product.name, product.expired_date, product.price, type.name
FROM product
JOIN type ON product.type_id = type.id
WHERE type.name = 'Cheese' OR type.name = 'Milk';

--7. Написать запрос, который выводит тип продуктов, которых осталось меньше 10 штук.
SELECT type.name
FROM type
JOIN product p ON p.type_id = type.id
GROUP BY type.name
HAVING COUNT(p.name) < 10;

--8. Вывести все продукты и их тип.
SELECT p.name AS prod, type.name AS type
FROM type
JOIN product p ON p.type_id = type.id;
