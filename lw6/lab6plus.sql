-- 1
--   1.1) Тактовые частоты CPU тех компьютеров, у которых объем памяти 3000 Мб. Вывод: id, cpu, memory
SELECT id, cpu, memory 
FROM pc
WHERE memory = 3000;

--   1.2) Минимальный объём жесткого диска, установленного в компьютере на складе. Вывод: hdd
SELECT MIN(hdd)
FROM pc;


--   1.3) Количество компьютеров с минимальным объемом жесткого диска, доступного на складе. Вывод: count, hdd
SELECT COUNT(id), hdd
FROM pc
HAVING MIN(hdd);


-- 2
CREATE TABLE track_downloads ( 
      download_id BIGINT(20) NOT NULL AUTO_INCREMENT, 
      track_id INT NOT NULL, 
      user_id BIGINT(20) NOT NULL, 
      download_time TIMESTAMP NOT NULL DEFAULT 0, 
       
      PRIMARY KEY (download_id) 
    ); 


-- 4  Необходимо создать таблицу студентов (поля id, name)
-- и таблицу курсов (поля id, name).
-- Каждый студент может посещать несколько курсов. Названия курсов и имена студентов - произвольны.
-- Написать SQL запросы: 
CREATE TABLE course ( 
      course_id BIGINT(20) NOT NULL AUTO_INCREMENT, 
      name VARCHAR(50), 
      PRIMARY KEY (course_id) 
    ); 
    CREATE TABLE students ( 
	  students_id BIGINT(20) NOT NULL AUTO_INCREMENT, 
      name VARCHAR(50),        
      PRIMARY KEY (download_id) 
    ); 
 CREATE TABLE students_x_courses ( 
	  students_x_courses_id BIGINT(20) NOT NULL AUTO_INCREMENT, 
      course_id BIGINT(20) NOT NULL, 
      students_id BIGINT(20) NOT NULL,
      PRIMARY KEY (students_x_courses_id) 
    ); 

--    1. отобразить количество курсов, на которые ходит более 5 студентов
SELECT count(students_x_courses.course_id) FROM students_x_courses
WHERE count(students_x_courses.students_id) > 5;

--    2. отобразить все курсы, на которые записан определенный студент.
SELECT courses.name, students.name 
FROM students_x_courses
LEFT JOIN students
ON students_id.students_x_courses = students_id.students
LEFT JOIN course
ON course_id.students_x_courses = course_id.course;

-- 5 Может ли значение в столбце(ах), на который наложено ограничение
-- foreign key, равняться null? Привидите пример. 

-- Может если на данный столбец не нанесено ограничение NOT NULL, 
-- например припостроении таблицы дерева файловой системы столбец foreign key 
-- ссылка на эту же самую таблицу, кортеж с информацией о родительской директории 
-- тогда для корневой дерктор этой файловой системы в столбце будет null

-- 6 Как удалить повторяющиеся строки с использованием 
-- ключевого слова Distinct? Приведите пример таблиц с данными и запросы. 

SELECT DISTINCT name_of_columns FROM name_of_table;


-- 7  Есть две таблицы:
--     users - таблица с пользователями (users_id, name)
--    orders - таблица с заказами (orders_id, users_id, status)
--    1) Выбрать всех пользователей из таблицы users, у которых ВСЕ записи в таблице orders имеют status = 0

SELECT name FROM users
LEFT JOIN orders
ON orders.users_id = users.users_id
WHERE status = 0 ;

--    2) Выбрать всех пользователей из таблицы users, у которых больше 5 записей в таблице orders имеют status = 1
SELECT name FROM users
LEFT JOIN orders
ON orders.users_id = users.users_id
WHERE status = 1 AND COUNT(orders.users_id) > 5  ;


-- 8)  В чем различие между выражениями HAVING и WHERE? 
-- Предложение WHERE может использоваться с операторами - Select, Insert и Update, 
-- где в качестве предложения HAVING может использоваться только оператор Select.
-- WHERE фильтрует строки до агрегации (GROUPING), где as, 
-- HAVING фильтрует группы после выполнения агрегаций.
-- Агрегатные функции не могут использоваться в предложении WHERE,
--  если только он не находится в подчиненном запросе, содержащемся 
-- в предложении HAVING, тогда как агрегированные функции могут использоваться в предложении Have.


