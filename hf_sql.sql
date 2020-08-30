DROP DATABASE IF EXISTS gregs_list;
CREATE DATABASE gregs_list;
USE gregs_list;

--
-- создаем таблицу мои контакты
--

DROP TABLE IF EXISTS my_contacts;
CREATE TABLE my_contacts(
	last_name VARCHAR(30) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	gender CHAR(1) NOT NULL,
	birthday DATE NOT NULL,
	profession VARCHAR(50) NOT NULL,
	location VARCHAR(50) NOT NULL,
	status VARCHAR(50) NOT NULL,
	interests VARCHAR(100) NOT NULL,
	seeking VARCHAR(100) NOT NULL
);

-- DESC my_contacts;

-- наполняем таблицу данными
TRUNCATE TABLE my_contacts;
INSERT INTO my_contacts 
	(last_name, first_name, email, gender, birthday, profession, location, status, interests, seeking)
VALUES
	('Бренсон', 'Энн', 'annie@boards-r-us.com', 'Ж', '1962-07-01', 'программист', 'Маунтин-Вьюб, СА', 'не замужем, но есть планы', 'ролевые игры, программи­рование', 'новая работа'),
	('Гамильтон', 'Джейми', 'dontbother@breakneck_pizza.com', 'М', '1964-09-10', 'системный администратор', 'Саннивейл, СА', 'не женат', 'туризм, литература', 'друзья женщины'),
	('Скуп', 'Алан', 'soukup@breakneck_pizza.com', 'М', '1966-07-01', 'инженер', 'Сан-Антонио, ТХ', 'женат', 'ролевые игры, программи­рование', 'ничего'),
	('Мендоса', 'Анджелина', 'angelina@5tarbuzzcoffee.com', 'Ж', '1979-08-19', 'системный администратор', 'Сан-Франциско, СА', 'замужем', 'театр, танцы', 'новая работа'),
	('Фанион', 'Стив', 'steve@onionflavoredrings.com', 'M','1970-01-04', 'Панк', 'Гровер'' Милл, NJ', 'Не женат', 'Бунтарство', 'Единомышденники, гитаристы');

-- SELECT * FROM my_contacts WHERE first_name = 'Энн';

--
-- создаем таблицу пончики
--

DROP TABLE IF EXISTS doughnut_list;
CREATE TABLE doughnut_list(
	doughnut_name VARCHAR(10) NOT NULL,
	doughnut_type VARCHAR(20) NOT NULL,
	doughnut_cost DEC(3,2) NOT NULL DEFAULT 1.00
);

-- DESC doughnut_list;

INSERT INTO doughnut_list VALUES
	('Bloberry', 'с начинкой', 2.00),
	('Appleblush', 'с начинкой', '1.40');
INSERT INTO doughnut_list (doughnut_name, doughnut_type) VALUES
	('Cinnamondo', 'пышки'),
	('Rockstar', 'хворост'),
	('Carameller', 'хворост');

-- SELECT * FROM doughnut_list;


--
-- Создаем базу Напитки
--

DROP DATABASE IF EXISTS drinks;
CREATE DATABASE drinks;
USE drinks;

--
-- Создаем таблицу Легкие напитки
--

DROP TABLE IF EXISTS easy_drinks;
CREATE TABLE easy_drinks(
	drink_name VARCHAR(20) NOT NULL,
	main VARCHAR(20) NOT NULL,
	amount1 DEC(3.1) NOT NULL,
	`second` VARCHAR(20) NOT NULL,
	amount2 DEC(4.2) NOT NULL,
	directions VARCHAR(255) NOT NULL
	);

-- DESC easy_drinks;

INSERT INTO easy_drinks VALUES
	('Терновник', 'тоник', 1.5, 'ананасовый сок', 1,'взболтать со льдом, разлить по бока­лам, украсить лимонной цедрой'),
	('Голубая луна', 'содовая', 1.5, 'черничный сок', 0.75,'взболтать со льдом, разлить по бока­лам, украсить лимонной цедрой'),
	('Вот тебе на', 'персиковый нектар', 1, 'ананасовый сок', 1,'взболтать со льдом, разлить по стаканам̆'),
	('Лаймовый физз', 'Спрайт', 1.5, 'сок лайма', 0.75,'взболтать со льдом, разлить по бока­лам'),
	('Поцелуй', 'вишневый сок', 2, 'абрикосовый нектар', 7,'подавать со льдом и соломинкой'),
	('Горячее золото', 'персиковый нектар', 3, 'апельсиновый сок', 6,'влить в кружку горячий апельсино­вый сок, добавить персиковый нектар̆'),
	('Одинокое дерево', 'содовая', 1.5, 'вишневый сок', 0.75,'взболтать со льдом'),
	('Борзая', 'содовая', 1.5, 'грейпфрутовый сок', 5,'подавать со льдом, тщательно взболтать'),
	('Бабье лето', 'яблочный сок', 2, 'горячий чай', 6,'налить сок в кружку, добавить горячий чай̆'),
	('Лягушка', 'холодный сок', 1.5, 'лимонад', 5,'подавать на льду с ломтиком лаймӑ'),
	('Сода плюс', 'содовая', 2, 'виноградынй сок', 1,'взболтать в бокале, подавать без льда');

--
-- Cоздаем таблицу Информация про напитки
--

DROP TABLE IF EXISTS drink_info;
CREATE TABLE drink_info(
	drink_name VARCHAR(20) NOT NULL,
	cost DEC(3,1) NOT NULL,
	carbs DEC(3,1) NOT NULL,
	color VARCHAR(20) NOT NULL,
	ice CHAR(1) NOT NULL,
	calories INT NOT NULL
);

TRUNCATE TABLE drink_info;
INSERT INTO drink_info VALUES
	('Терновник', 3, 8.4, 'желтый', 'Д', 33),
	('Голубая луна', 2.5, 3.2, 'синий', 'Д', 12),
	('Вот тебе на', 3.5, 8.6, 'оранжевый', 'Д', 35),
	('Лаймовый физз', 2.5, 5.4, 'зеленый', 'Д', 24),
	('Поцелуй', 5.5, 42.5, 'фиолетовый', 'Д', 171),
	('Горячее золото', 3.2, 32.1, 'оранжевый', 'Н', 135),
	('Одинокое дерево', 3.6, 4.2, 'красный', 'Д', 17),
	('Борзая', 4, 14, 'желтый', 'Д', 50),
	('Бабье лето', 2.8, 7.2, 'коричневый', 'Н', 30),
	('Лягушка', 2.6, 21.5, 'бронзовый', 'Д', 80),
	('Сода плюс', 3.8, 4.7, 'красный', 'Н', 19);

INSERT INTO drink_info VALUES
	('Поцелуй', 5.5, 42.5, 'фиолетовый', 'Д', 170);

DELETE FROM drink_info
WHERE
calories = 171 and drink_name = 'Поцелуй';

SELECT * FROM drink_info;

SELECT drink_name FROM drink_info
WHERE 
calories BETWEEN 60 AND 30;

SELECT drink_name FROM drink_info WHERE NOT carbs BETWEEN 3 AND 5;


--
-- Cоздаем таблицу Перемещение клоунов
--

DROP TABLE IF EXISTS clown_info;
CREATE TABLE clown_info(
	clown_name VARCHAR(20) NOT NULL,
	last_seen VARCHAR(50),
	appearance VARCHAR(100) NOT NULL,
	activities VARCHAR(50)
);


TRUNCATE TABLE clown_info;
INSERT INTO clown_info VALUES
	('Элси', 'Дом престарелых Черри Хилл', 'Ж, рыжие волосы, зеленый костюм, огромные ботинки', 'шарики, машинки'),
	('Пиклз', 'Вечеринка Джека Грина', 'М, оранжевые волосы, синий костюм, огромные ботинки', 'мим'),
	('Снаглз', 'Болмарт', 'Ж, желтая рубашка, красные штаны', 'рожок, зонтик'),
	('Мистер Хобо', 'Цирк BG', 'М, сигара, черные волосы, маленькая шляпа', 'скрипка'),
	('Кларабелл', 'Дом престарелых Бельмонт', 'Ж, розовые волосы, большой цветок, синее платье', 'кричалки, танцы'),
	('Скутер', 'Больница Окленд', 'М, синие волосы, красные костюм, большой нос', 'шарики'),
	('Зиппо', 'Торговый центр Милстоун', 'Ж, оранжевый костюм, штаны', 'танцы'),
	('Бэйб', 'Автошкола Эрла', 'Ж, розовый костюм с блестками', 'эквилибристика, машинки'),
	('Бонзо', '', 'М, женское платье в горошек', 'пение, танцы'),
	('Снифлз', 'Заведение Трэйси', 'М, зелено-фиолетовый костюм, длинный нос', '');

SELECT * FROM clown_info;

UPDATE clown_info
SET last_seen = 'Заведение Трэйси'
WHERE clown_name = 'Мистер Хобо' and last_seen = 'Цирк BG';

UPDATE clown_info
SET activities = 'поет'
WHERE clown_name = 'Зиппо';

UPDATE clown_info
SET appearance = 'Ж, желтая рубашка, синие штаны'
WHERE clown_name = 'Снаглз';

UPDATE clown_info
SET last_seen = 'Парк Диксон'
WHERE clown_name = 'Бонзо';

UPDATE drink_info
SET cost = 3.5
WHERE cost = 2.5;

SELECT * FROM drink_info;

DROP TABLE IF EXISTS fish_info;
CREATE TABLE fish_info (
  `common` varchar(50) NOT NULL,
  `species` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `weight` varchar(15) NOT NULL 
) ENGINE=MyISAM DEFAULT CHARSET=utf8


INSERT INTO fish_info VALUES 
	('bass, largemouth' ,'M. salmoides' ,'Montgomery Lake, GA', '22 lb 4 oz'),
	('walleye', 'S. vitreus', 'Old Hickory Lake, TN', '25 lb 0 oz'),
	('trout, cutthroat', 'O. Clarki', 'Pyramid Lake, NV', '41 lb 0 oz'),
	('perch, yellow', 'P. Flavescens', 'Bordentown, NJ', '4 lb 3 oz'),
	('bluegill', 'L. Macrochirus', 'Ketona Lake, AL', '4 lb 12 oz'),
	('gar, longnose', 'L. Osseus', 'Trinity River, TX', '50 lb 5 oz'), 
	('crappie, white', 'P. annularis', 'Enid Dam, MS', '5 lb 3 oz'), 
	('pickerel, grass', 'E. americanus', 'Dewart Lake, IN', '1 lb 0 oz'), 
	('goldfish', 'C. auratus', 'Lake Hodges, CA', '6 lb 10 oz'), 
	('salmon, chinook', 'O. Tshawytscha', 'Kenai River, AK', '97 lb 4 oz');


SELECT * FROM fish_info;

DROP TABLE IF EXISTS `fish_records`;
CREATE TABLE `fish_records` (
  `first_name` varchar(50) NOT NULL,
 `last_name` varchar(50) NOT NULL,
 `common` varchar(50) NOT NULL,
 `location` varchar(50) NOT NULL,
 `state` varchar(2) NOT NULL,
  `weight` varchar(15) NOT NULL ,
  `date` DATE NOT NULL 
) ENGINE=MyISAM DEFAULT CHARSET=utf8


INSERT INTO fish_records VALUES ('George', 'Perry', 'bass, largemouth', 'Montgomery Lake', 'GA', '22 lb 4 oz', '1932-06-02');
INSERT INTO fish_records VALUES ('Mabry', 'Harper', 'walleye', 'Old Hickory Lake', 'TN', '25 lb 0 oz', '1960-08-02' );
INSERT INTO fish_records VALUES ('John', 'Skimmerhorn', 'trout, cutthroat', 'Pyramid Lake', 'NV', '41 lb 0 oz', '1925-12-1' );
INSERT INTO fish_records VALUES ('C.C.', 'Abbot', 'perch, yellow', 'Bordentown', 'NJ', '4 lb 3 oz', '1865-5-1' );
INSERT INTO fish_records VALUES ('T.S.', 'Hudson', 'bluegill', 'Ketona Lake', 'AL', '4 lb 12 oz', '1950-4-9' );
INSERT INTO fish_records VALUES ('Townsend', 'Miller', 'gar, longnose', 'Trinity River', 'TX', '50 lb 5 oz', '1954-7-30' );
INSERT INTO fish_records VALUES ('Fred', 'Bright', 'crappie, white', 'Enid Dam', 'MS', '5 lb 3 oz', '1957-7-31' );
INSERT INTO fish_records VALUES ('Mike', 'Berg', 'pickerel, grass', 'Dewart Lake', 'IN', '1 lb 0 oz', '1990-6-9' );
INSERT INTO fish_records VALUES ('Florentino', 'Abena', 'goldfish', 'Lake Hodges', 'CA', '6 lb 10 oz', '1996-4-17' );
INSERT INTO fish_records VALUES ('Les', 'Anderson', 'salmon, chinook', 'Kenai River', 'AK', '97 lb 4 oz', '1985-5-17');


SELECT * FROM `fish_records`;

SELECT * FROM fish_info
WHERE location LIKE '%NJ';

SELECT * FROM `fish_records`
WHERE state = 'NJ';

