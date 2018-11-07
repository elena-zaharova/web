-- ЗАПРОСЫ ДЛЯ ЗАПОЛНЕНИЯ ТАБЛИЦЫ --

INSERT INTO dvd
VALUE(NULL,'Терминатор','2002');
INSERT INTO dvd
VALUE(NULL,'Бегущий в лабиринте','2013');
INSERT INTO dvd
VALUE(NULL,'Начало','2010');
INSERT INTO dvd
VALUE(NULL,'Хоббит: Нежданное путешествие','2012');
INSERT INTO dvd
VALUE(NULL,'Голодные Игры','2012');
INSERT INTO dvd
VALUE(NULL,'Дориан Грей','2010');
INSERT INTO dvd
VALUE(NULL,'1+1','2011');
INSERT INTO dvd
VALUE(NULL,'Вспомнить все','2013');
INSERT INTO dvd
VALUE(NULL,'Титаник','2000');
INSERT INTO dvd
VALUE(NULL,'Трон','2010');

INSERT INTO customer
VALUE(NULL,'Лейла','Кузнецова','122-456', '2015-12-03');
INSERT INTO customer
VALUE(NULL,'Константинт','Гаврилов','102-476', '2012-05-21');
INSERT INTO customer
VALUE(NULL,'Владимир','Маяковский','121-653', '2015-04-03');
INSERT INTO customer
VALUE(NULL,'Марина','Цветаева','119-453', '2014-06-15');
INSERT INTO customer
VALUE(NULL,'Михаил','Радионов','126-653', '1015-11-19');
INSERT INTO customer
VALUE(NULL,'Анна','Секретарева','120-739', '2016-10-09');
INSERT INTO customer
VALUE(NULL,'Ольга','Иванова','117-432', '2010-01-30');
INSERT INTO customer
VALUE(NULL,'Сергей','Есенин','128-743', '2015-08-13');
INSERT INTO customer
VALUE(NULL,'Каролина','Ахматова','131-863', '2017-03-28');
INSERT INTO customer
VALUE(NULL,'Александр','Панфилов','122-652', '2014-08-09');
INSERT INTO customer
VALUE(NULL,'Юлия','Уварова','120-000', '2015-04-21');

INSERT INTO offer
VALUE(NULL,'10','1','2016-09-16', '2016-10-02');
INSERT INTO offer
VALUE(NULL,'8','4','2018-01-13', '2018-02-22');
INSERT INTO offer
VALUE(NULL,'3','8','2017-05-20', '2017-06-13');
INSERT INTO offer
VALUE(NULL,'7','3','2018-07-21', '2018-07-31');
INSERT INTO offer
VALUE(NULL,'4','9','2016-04-28', '2017-05-16');
INSERT INTO offer
VALUE(NULL,'10','10','2016-02-05', '2016-03-11');
INSERT INTO offer
VALUE(NULL,'8','5','2015-12-08', '2016-01-23');
INSERT INTO offer
VALUE(NULL,'6','1','2017-09-10', '2017-10-01');
INSERT INTO offer
VALUE(NULL,'1','8','2017-10-30', '2017-11-10');
INSERT INTO offer
VALUE(NULL,'2','4','2016-04-09', '2016-04-30');
INSERT INTO offer
VALUE(NULL,'4','2','2018-03-01', '2018-04-21');
INSERT INTO offer
VALUE(NULL,'9','3','2017-11-15', '2017-12-02');
INSERT INTO offer
VALUE(NULL,'1','8','2018-01-19', NULL);
INSERT INTO offer
VALUE(NULL,'8','10','2018-04-18', NULL);
INSERT INTO offer
VALUE(NULL,'5','1','2017-12-9', NULL);


-- ЗАПРОСЫ ПО БАЗЕ ДАННЫХ --

--  Подготовьте SQL запрос получения списка всех DVD, год выпуска которых 2010, 
-- отсортированных в алфавитном порядке по названию DVD. 
SELECT title, production_year FROM dvd
WHERE production_year = "2010"
ORDER BY title ASC;

-- Подготовьте SQL запрос для получения списка DVD дисков, которые в настоящее время находятся у клиентов.
SELECT customer.first_name, customer.last_name, dvd.title, offer.offer_date, offer.return_date
FROM offer
LEFT JOIN dvd
ON offer.dvd_id = dvd.dvd_id
LEFT JOIN customer 
ON offer.customer_id = customer.customer_id
WHERE return_date >= curdate();

-- Напишите SQL запрос для получения списка клиентов, которые брали какие-либо DVD 
-- диски в текущем году. В результатах запроса необходимо также отразить какие диски брали клиенты.
SELECT customer.first_name,
       customer.last_name,
       dvd.title, offer.offer_date
FROM offer
LEFT JOIN dvd 
ON offer.dvd_id = dvd.dvd_id
LEFT JOIN customer 
ON offer.customer_id = customer.customer_id
WHERE offer.offer_date >= "2018-01-01";
