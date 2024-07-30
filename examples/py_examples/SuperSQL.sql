SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT singer.name, singer.song_release_year FROM singer ORDER BY singer.age LIMIT 1
SELECT song_name, song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20 
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country 
SELECT country, COUNT(*) FROM singer GROUP BY country 
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT location, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT max(capacity) , avg(capacity) FROM stadium 
SELECT avg(capacity) , max(capacity) FROM stadium 
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1; 
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1 
SELECT count(*) FROM concert WHERE year IN ("2014", "2015")
SELECT count(*) FROM concert WHERE year IN ("2014", "2015")
SELECT s.name, COUNT(c.concert_id) FROM stadium s INNER JOIN concert c ON s.stadium_id = c.stadium_id GROUP BY s.name
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name 
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= '2014' GROUP BY T1.name, T1.capacity ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > '2013' GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT year FROM concert GROUP BY year ORDER BY count(*) DESC LIMIT 1 
SELECT year FROM concert GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = '2014'
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT T2.concert_name, T2.theme, count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.concert_name, T2.theme, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_name, T2.theme
SELECT name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id
SELECT T2.name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT s.name FROM singer s JOIN singer_in_concert sic ON s.singer_id = sic.singer_id JOIN concert c ON sic.concert_id = c.concert_id WHERE c.year = '2014';
SELECT singer.name FROM singer JOIN singer_in_concert ON singer.singer_id = singer_in_concert.singer_id JOIN concert ON singer_in_concert.concert_id = concert.concert_id WHERE concert.year = '2014'
SELECT name, country FROM singer WHERE song_name LIKE "%Hey%"
SELECT singer.name, singer.country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = '2014' INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = '2015'
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = '2014' INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = '2015'
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium) 
SELECT count(T2.concert_id) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10;
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets WHERE pettype = 'dog' ORDER BY pet_age ASC LIMIT 1;
SELECT weight FROM pets WHERE pettype = 'dog' AND pet_age = (SELECT min(pet_age) FROM pets WHERE pettype = 'dog');
SELECT pettype , max(weight) FROM pets GROUP BY pettype 
SELECT pettype , max(weight) FROM pets GROUP BY pettype 
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T2.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog' AND T1.sex = 'F'
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T2.sex = 'F' AND T3.pettype = 'dog'
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" OR T3.pettype = "dog"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" OR T3.pettype = "dog"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog'
SELECT major, age FROM student EXCEPT SELECT t1.major, t1.age FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid JOIN pets AS t3 ON t2.petid = t3.petid WHERE t3.pettype = 'cat'
SELECT major, age FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet JOIN pets ON has_pet.petid = pets.petid WHERE pettype = 'cat')
SELECT stuid FROM student EXCEPT SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'cat'
SELECT stuid FROM student EXCEPT SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'cat'
SELECT T1.fname, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" AND T1.stuid NOT IN (SELECT T4.stuid FROM has_pet AS T4 JOIN pets AS T5 ON T4.petid = T5.petid WHERE T5.pettype = "cat")
SELECT s.fname FROM student s JOIN has_pet hp ON s.stuid = hp.stuid JOIN pets p ON hp.petid = p.petid WHERE p.pettype = 'dog' AND s.stuid NOT IN ( SELECT hp.stuid FROM has_pet hp JOIN pets p ON hp.petid = p.petid WHERE p.pettype = 'cat' )
SELECT t1.pettype , t1.weight FROM pets AS t1 JOIN has_pet AS t2 ON t1.petid = t2.petid ORDER BY t1.pet_age LIMIT 1
SELECT pettype, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT pettype , avg(pet_age) , max(pet_age) FROM pets GROUP BY pettype 
SELECT pettype, avg(pet_age) , max(pet_age) FROM pets GROUP BY pettype 
SELECT petType , avg(weight) FROM pets GROUP BY petType;
SELECT pettype, avg(weight) FROM pets GROUP BY pettype; 
SELECT DISTINCT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T1.fname, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT petid FROM has_pet JOIN student ON has_pet.stuid = student.stuid WHERE student.lname = 'Smith'
SELECT petid FROM has_pet JOIN student ON has_pet.stuid = student.stuid WHERE student.lname = 'Smith'
SELECT T1.stuid , count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid
SELECT T1.stuid , COUNT(*) FROM has_pet AS T1 GROUP BY T1.stuid;
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname, T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT t1.lname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid JOIN pets AS t3 ON t2.petid = t3.petid WHERE t3.pettype = 'cat' AND t3.pet_age = 3
SELECT s.lname FROM student AS s JOIN has_pet AS hp ON s.stuid = hp.stuid JOIN pets AS p ON p.petid = hp.petid WHERE p.pettype = "cat" AND p.pet_age = 3;
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)
SELECT count(*) FROM continents 
SELECT count(*) FROM continents 
SELECT T1.contid, T1.continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT T1.contid, T1.continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT count(*) FROM countries 
SELECT count(*) FROM countries
SELECT T1.fullname, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.fullname, T1.id
SELECT T1.fullname, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.fullname, T1.id
SELECT model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid ORDER BY horsepower ASC LIMIT 1;
SELECT model FROM car_names JOIN cars_data ON car_names.makeid = cars_data.id ORDER BY cars_data.horsepower ASC LIMIT 1
SELECT t2.model FROM cars_data AS t1 JOIN car_names AS t2 ON t1.id = t2.makeid WHERE t1.weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT car_makers.maker FROM car_makers JOIN cars_data ON car_makers.id = cars_data.id WHERE cars_data.year = 1970 
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN cars_data AS T3 ON T2.modelid = T3.id WHERE T3.year = 1970
SELECT T1.make , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id ORDER BY T2.year ASC LIMIT 1
SELECT T1.maker, T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC LIMIT 1
SELECT DISTINCT model FROM car_names JOIN cars_data ON car_names.makeid = cars_data.id WHERE cars_data.year > 1980
SELECT DISTINCT model_list.model FROM model_list JOIN cars_data ON model_list.modelid = cars_data.id WHERE cars_data.year > 1980
SELECT T1.continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 JOIN car_makers AS T3 ON T1.contid = T2.continent AND T2.countryid = T3.country GROUP BY T1.continent
SELECT T1.continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent JOIN car_makers AS T3 ON T2.countryid = T3.country GROUP BY T1.continent
SELECT countries.countryname FROM car_makers JOIN countries ON car_makers.country = countries.countryid GROUP BY countries.countryname ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryname ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.fullname
SELECT car_makers.fullname, car_makers.id, count(model_list.model) FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.fullname, car_makers.id
SELECT accelerate FROM cars_data WHERE id IN (SELECT makeid FROM car_names WHERE make = "amc hornet sportabout (sw)"); 
SELECT accelerate FROM cars_data WHERE id = (SELECT makeid FROM car_names WHERE make = "amc hornet sportabout (sw)"); 
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'france'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'France'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id JOIN countries AS T3 ON T2.country = T3.countryid WHERE T3.countryname = "usa"
SELECT count(*) FROM model_list INNER JOIN car_makers ON model_list.maker = car_makers.id INNER JOIN countries ON car_makers.country = countries.countryid WHERE countries.countryname = 'United States'
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND year = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND year = 1974
SELECT car_makers.maker, model_list.model FROM car_makers JOIN model_list ON car_makers.id = model_list.maker
SELECT car_makers.maker, model_list.model FROM car_makers JOIN model_list ON car_makers.id = model_list.maker
SELECT countryname, countryid FROM countries WHERE countryid IN (SELECT DISTINCT country FROM car_makers)
SELECT countryname, countryid FROM countries WHERE countryid IN (SELECT country FROM car_makers)
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150 
SELECT avg(weight), year FROM cars_data GROUP BY year
SELECT avg(weight) , year FROM cars_data GROUP BY year 
SELECT countries.countryname FROM car_makers JOIN countries ON car_makers.country = countries.countryid JOIN continents ON countries.continent = continents.contid WHERE continents.continent = 'europe' GROUP BY countries.countryname HAVING count(*) >= 3
SELECT c.countryname FROM countries AS c JOIN car_makers AS cm ON c.countryid = cm.country WHERE c.continent = (SELECT contid FROM continents WHERE continent = 'Europe') GROUP BY c.countryname HAVING count(cm.maker) >= 3
SELECT max(T1.horsepower) , T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 3
SELECT max(cars_data.horsepower), car_names.make FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid WHERE cars_data.cylinders = 3;
SELECT model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid ORDER BY mpg DESC LIMIT 1;
SELECT model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid ORDER BY mpg DESC LIMIT 1
SELECT avg(horsepower) FROM cars_data WHERE year < 1980 
SELECT avg(horsepower) FROM cars_data WHERE year < 1980
SELECT avg(T1.edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN model_list AS T3 ON T2.model = T3.model WHERE T3.model = 'volvo'
SELECT avg(T1.edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.make = 'volvo'
SELECT cylinders , max(accelerate) FROM cars_data GROUP BY cylinders
SELECT cylinders, max(accelerate) FROM cars_data GROUP BY cylinders 
SELECT model FROM car_names GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1 
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE year = 1980
SELECT count(*) FROM cars_data WHERE year = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = "American Motor Company"
SELECT count(*) FROM model_list JOIN car_makers ON model_list.maker = car_makers.id WHERE car_makers.fullname = "American Motor Company";
SELECT cm.fullname, cm.id FROM car_makers AS cm INNER JOIN model_list AS ml ON cm.id = ml.maker GROUP BY cm.fullname, cm.id HAVING COUNT(ml.model) > 3
SELECT T1.maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(T2.model) > 3;
SELECT DISTINCT T3.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T2.model = T3.model JOIN cars_data AS T4 ON T3.makeid = T4.id WHERE T1.fullname = 'General Motors' OR T4.weight > 3500
SELECT DISTINCT model FROM model_list AS m JOIN car_makers AS cm ON cm.id = m.maker JOIN cars_data AS cd ON cd.id = m.modelid WHERE cm.fullname = 'General Motors' OR cd.weight > 3500
SELECT year FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT year FROM cars_data WHERE weight < 4000 OR weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN model_list AS T3 ON T2.model = T3.model WHERE T3.model = 'volvo' ORDER BY T1.accelerate ASC LIMIT 1;
SELECT cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN model_list AS T3 ON T2.model = T3.model WHERE T3.model = 'volvo' ORDER BY accelerate LIMIT 1;
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data WHERE horsepower = (SELECT max(horsepower) FROM cars_data))
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data WHERE horsepower = (SELECT max(horsepower) FROM cars_data)) 
SELECT country, count(*) FROM car_makers GROUP BY country HAVING count(*) > 2;
SELECT country , count(*) FROM car_makers GROUP BY country HAVING count(*) > 2;
SELECT count(*) FROM cars_data WHERE cylinders > 6;
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T1.cylinders = 4 ORDER BY T1.horsepower DESC LIMIT 1;
SELECT T3.model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN model_list AS T3 ON T2.model = T3.model WHERE T1.cylinders = 4 ORDER BY T1.horsepower DESC LIMIT 1;
SELECT car_names.makeid, car_names.make FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid WHERE cars_data.horsepower > (SELECT min(horsepower) FROM cars_data) AND cars_data.cylinders <= 3
SELECT car_names.makeid , car_names.make FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid WHERE cars_data.cylinders < 4 AND cars_data.horsepower > (SELECT MIN(horsepower) FROM cars_data)
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR year < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR year < 1980
SELECT model_list.model FROM car_makers JOIN model_list ON car_makers.id = model_list.maker JOIN car_names ON model_list.model = car_names.model JOIN cars_data ON car_names.makeid = cars_data.id WHERE cars_data.weight < 3500 AND car_makers.fullname != 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id JOIN car_makers AS T3 ON T1.maker = T3.id WHERE T2.weight < 3500 AND T3.fullname != 'Ford Motor Company'
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id, T1.maker HAVING COUNT(T2.model) >= 2 AND COUNT(T1.maker) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T2.model = T3.model GROUP BY T1.id HAVING COUNT(DISTINCT T2.model) >= 2 AND COUNT(T3.make) > 3
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'fiat' UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(T2.id) > 3
SELECT countryid, countryname FROM countries WHERE countryid IN (SELECT country FROM car_makers GROUP BY country HAVING count(id) > 3) OR countryid IN (SELECT country FROM car_makers JOIN model_list ON car_makers.id = model_list.maker WHERE model = 'fiat')
SELECT country FROM airlines WHERE airline = "JetBlue Airways";
SELECT country FROM airlines WHERE airline = "JetBlue Airways";
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways";
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT airline, abbreviation FROM airlines WHERE country = 'USA'
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT count(*) FROM airlines 
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airline FROM airlines WHERE abbreviation = 'UAL' 
SELECT airline FROM airlines WHERE abbreviation = 'UAL' 
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city, country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton' 
SELECT airportname FROM airports WHERE airportcode = "AKO" 
SELECT airportname FROM airports WHERE airportcode = 'AKO' 
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG' 
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights WHERE destairport = "ATO"
SELECT count(*) FROM flights AS F JOIN airports AS A ON F.sourceairport = A.airportcode WHERE A.city = 'Aberdeen'
SELECT count(*) FROM flights AS F1 JOIN airports AS A1 ON F1.sourceairport = A1.airportcode WHERE A1.city = 'Aberdeen'
SELECT count(*) FROM flights INNER JOIN airports ON airports.airportcode = flights.destairport WHERE airports.city = 'Aberdeen';
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' 
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen') AND destairport IN (SELECT airportcode FROM airports WHERE city = 'Ashley')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen") AND destairport IN (SELECT airportcode FROM airports WHERE city = "Ashley")
SELECT count(*) FROM flights JOIN airlines ON flights.airline = airlines.uid WHERE airlines.airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = "JetBlue Airways"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'United Airlines' AND T1.destairport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'United Airlines' AND T1.destairport = 'ASY'
SELECT count(*) FROM flights AS t1 JOIN airlines AS t2 ON t1.airline = t2.uid WHERE t2.airline = 'United Airlines' AND t1.sourceairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'United Airlines' AND T1.sourceairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'United Airlines' AND T1.destairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.airline = 'United Airlines' AND T3.city = 'Aberdeen'
SELECT T2.city FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1;
SELECT t1.city FROM airports AS t1 JOIN flights AS t2 ON t1.airportcode = t2.destairport GROUP BY t2.destairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports WHERE airportcode IN (SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) DESC LIMIT 1)
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) ASC LIMIT 1;
SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) ASC LIMIT 1;
SELECT T2.airline FROM Flights AS T1 JOIN Airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airline ORDER BY count(*) DESC LIMIT 1;
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1 
SELECT airlines.abbreviation, airlines.country FROM flights JOIN airlines ON flights.airline = airlines.uid GROUP BY airlines.abbreviation, airlines.country ORDER BY count(flights.airline) ASC LIMIT 1;
SELECT A1.abbreviation, A1.country FROM airlines AS A1 JOIN flights AS F1 ON A1.uid = F1.airline GROUP BY F1.airline ORDER BY count(*) ASC LIMIT 1;
SELECT A.airline FROM airlines AS A JOIN flights AS F ON A.uid = F.airline WHERE F.sourceairport = 'AHD'
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = "AHD"
SELECT t2.airline FROM flights AS t1 JOIN airlines AS t2 ON t1.airline = t2.uid WHERE t1.destairport = 'AHD'
SELECT airlines.airline FROM airlines JOIN flights ON airlines.uid = flights.airline WHERE flights.destairport = "AHD"
SELECT airline FROM flights WHERE sourceairport = 'APG' INTERSECT SELECT airline FROM flights WHERE sourceairport = 'CVO'
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = "APG" INTERSECT SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = "CVO"
SELECT airline FROM flights WHERE sourceairport = 'CVO' EXCEPT SELECT airline FROM flights WHERE sourceairport = 'APG'
SELECT airline FROM flights WHERE sourceairport = 'CVO' EXCEPT SELECT airline FROM flights WHERE sourceairport = 'APG'
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) >= 10
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airline HAVING COUNT(T1.flightno) >= 10
SELECT airline FROM flights GROUP BY airline HAVING COUNT(flightno) < 200
SELECT airline FROM flights GROUP BY airline HAVING count(flightno) < 200 
SELECT flightno FROM flights JOIN airlines ON flights.airline = airlines.uid WHERE airlines.airline = "United Airlines"
SELECT flightno FROM flights JOIN airlines ON flights.airline = airlines.uid WHERE airlines.airline = "United Airlines"
SELECT flightno FROM flights WHERE sourceairport = "APG"
SELECT flightno FROM flights WHERE sourceairport = "APG";
SELECT flightno FROM flights WHERE destairport = "APG"
SELECT flightno FROM flights WHERE destairport = 'APG'
SELECT flightno FROM flights AS f JOIN airports AS a ON f.sourceairport = a.airportcode WHERE a.city = "Aberdeen"
SELECT flightno FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen');
SELECT T1.flightno FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT flightno FROM flights JOIN airports ON flights.destairport = airports.airportcode WHERE airports.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city IN ("Aberdeen", "Abilene")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city IN ("Aberdeen", "Abilene"))
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights) AND airportcode NOT IN (SELECT destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights) AND airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee 
SELECT name FROM employee ORDER BY age ASC 
SELECT name FROM employee ORDER BY age ASC
SELECT city , count(*) FROM employee GROUP BY city 
SELECT city , count(*) FROM employee GROUP BY city 
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1 
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1 
SELECT location, count(*) FROM shop GROUP BY location 
SELECT location , count(*) FROM shop GROUP BY location 
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop 
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop) 
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop) 
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1 
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(T2.employee_id) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , t1.name FROM shop AS t1 JOIN hiring AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.name
SELECT T1.name , COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT sum(bonus) FROM evaluation
SELECT sum(bonus) FROM evaluation 
SELECT * FROM hiring 
SELECT * FROM hiring 
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000 
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000 
SELECT count(DISTINCT location) FROM shop
SELECT count(DISTINCT location) FROM shop 
SELECT count(*) FROM documents
SELECT count(*) FROM documents 
SELECT document_id , document_name , document_description FROM documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name, template_id FROM documents WHERE document_description LIKE '%w%'
SELECT document_name, template_id FROM documents WHERE document_description LIKE "%w%"
SELECT d.document_id, d.template_id, r.template_type_description FROM documents AS d JOIN templates AS t ON d.template_id = t.template_id JOIN ref_template_types AS r ON t.template_type_code = r.template_type_code WHERE d.document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = 'Robbin CV'
SELECT count(DISTINCT template_id) FROM documents
SELECT count(DISTINCT template_id) FROM documents
SELECT count(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT';
SELECT count(*) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "PPT"
SELECT template_id , count(*) FROM documents GROUP BY template_id;
SELECT template_id , count(*) FROM documents GROUP BY template_id
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM templates 
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id , version_number , template_type_code FROM templates 
SELECT distinct(template_type_code) FROM templates 
SELECT DISTINCT template_type_code FROM ref_template_types
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM templates WHERE template_type_code IN ('PP','PPT')
SELECT count(*) FROM templates WHERE template_type_code = 'CV'
SELECT count(*) FROM templates WHERE template_type_code = 'CV'
SELECT version_number, template_type_code FROM templates WHERE version_number > 5 
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT template_type_code , count(*) FROM templates GROUP BY template_type_code 
SELECT template_type_code , count(*) FROM templates GROUP BY template_type_code 
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1 
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3 
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3 
SELECT MIN(version_number), template_type_code FROM templates GROUP BY template_type_code
SELECT version_number, template_type_code FROM templates ORDER BY version_number ASC LIMIT 1;
SELECT T2.template_type_code FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT t1.template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_name = "Data base"
SELECT document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT template_type_code , COUNT(*) FROM templates INNER JOIN documents ON templates.template_id = documents.template_id GROUP BY template_type_code
SELECT template_type_code , count(*) FROM templates JOIN documents ON templates.template_id = documents.template_id GROUP BY template_type_code
SELECT t2.template_type_code FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id GROUP BY t2.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates INNER JOIN documents ON templates.template_id=documents.template_id GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM ref_template_types EXCEPT SELECT T1.template_type_code FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_id = T3.template_id
SELECT template_type_code FROM ref_template_types EXCEPT SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN documents AS t3 ON t2.template_id = t3.template_id
SELECT template_type_code , template_type_description FROM ref_template_types 
SELECT template_type_code , template_type_description FROM ref_template_types 
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT template_type_description FROM ref_template_types WHERE template_type_code IN (SELECT template_type_code FROM templates WHERE template_id IN (SELECT template_id FROM documents))
SELECT DISTINCT T3.template_type_description FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code
SELECT template_id FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Presentation"
SELECT template_id FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = 'Presentation'
SELECT count(*) FROM paragraphs;
SELECT count(*) FROM paragraphs 
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text = "Korea"
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T2.paragraph_id, T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT paragraphs.paragraph_id , paragraphs.paragraph_text FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id WHERE documents.document_name = 'Welcome to NY'
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id , COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT T1.document_id , T1.document_name , COUNT(*) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id, T1.document_name
SELECT T1.document_id , T1.document_name, COUNT(*) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id, T1.document_name
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT T1.document_id, T1.document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id, T1.document_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.document_id , T2.document_name FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(paragraph_id) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher 
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY age ASC
SELECT age , hometown FROM teacher 
SELECT age , hometown FROM teacher 
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33 
SELECT name FROM teacher WHERE age = '32' OR age = '33'
SELECT hometown FROM teacher ORDER BY age ASC LIMIT 1 
SELECT hometown FROM teacher ORDER BY age ASC LIMIT 1 
SELECT hometown , COUNT(*) FROM teacher GROUP BY hometown 
SELECT hometown , COUNT(*) FROM teacher GROUP BY hometown 
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1 
SELECT hometown FROM teacher GROUP BY hometown ORDER BY COUNT(*) DESC LIMIT 1 
SELECT hometown FROM teacher GROUP BY hometown HAVING COUNT(*) >= 2 
SELECT hometown FROM teacher GROUP BY hometown HAVING count(*) >= 2 
SELECT teacher.name, course.course FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T3 ON T1.teacher_id = T3.teacher_id JOIN course AS T2 ON T2.course_id = T3.course_id 
SELECT T2.name , T3.course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id ORDER BY T2.name ASC
SELECT T1.name, T3.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id ORDER BY T1.name
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T3.course_id = T2.course_id WHERE T3.course = "Math"
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.course = "Math"
SELECT T1.name , COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT T1.name , COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT t.name FROM teacher AS t JOIN course_arrange AS ca ON t.teacher_id = ca.teacher_id GROUP BY t.teacher_id HAVING COUNT(*) >= 2
SELECT teacher.name FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id GROUP BY teacher.name HAVING COUNT(course_arrange.course_id) >= 2
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30;
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4 
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < '2009'
SELECT open_year , num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > '2010')
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(T2.museum_id) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY SUM(T2.total_spent) DESC LIMIT 1
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.num_of_ticket DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit 
SELECT sum(T1.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < "2009" INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year > "2011"
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT visitor_id FROM visit WHERE museum_id IN ( SELECT museum_id FROM museum WHERE open_year > '2010' ) )
SELECT count(*) FROM museum WHERE open_year > "2013" OR open_year < "2008"
SELECT count(*) FROM players 
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches 
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches 
SELECT avg(winner_age) , avg(loser_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches 
SELECT max(loser_rank) FROM matches
SELECT MIN(T1.loser_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id
SELECT count(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(match_num) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(match_num) > 10;
SELECT first_name, last_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE year = 2013 INTERSECT SELECT winner_id FROM matches WHERE year = 2016)
SELECT players.first_name, players.last_name FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.year = 2013 INTERSECT SELECT players.first_name, players.last_name FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.year = 2016
SELECT count(*) FROM matches WHERE year IN (2013, 2016)
SELECT count(*) FROM matches WHERE year IN (2013, 2016);
SELECT P1.country_code, P1.first_name FROM players AS P1 JOIN matches AS M1 ON P1.player_id = M1.winner_id WHERE M1.tourney_name = 'WTA Championships' INTERSECT SELECT P2.country_code, P2.first_name FROM players AS P2 JOIN matches AS M2 ON P2.player_id = M2.winner_id WHERE M2.tourney_name = 'Australian Open'
SELECT P.first_name, P.country_code FROM players P JOIN matches M ON P.player_id = M.winner_id WHERE M.tourney_name = 'WTA Championships' INTERSECT SELECT P.first_name, P.country_code FROM players P JOIN matches M ON P.player_id = M.winner_id WHERE M.tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date ASC
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'Left' ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY SUM(tours) DESC LIMIT 1
SELECT first_name, country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(tours) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(T2.winner_id) DESC, T2.winner_rank_points DESC LIMIT 1
SELECT p.first_name, p.last_name FROM matches m JOIN players p ON m.winner_id = p.player_id WHERE m.tourney_name = 'Australian Open' ORDER BY m.winner_rank_points DESC LIMIT 1;
SELECT winner_name FROM matches WHERE tourney_name = 'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1
SELECT p1.first_name || ' ' || p1.last_name AS winner_name, p2.first_name || ' ' || p2.last_name AS loser_name FROM matches m JOIN players p1 ON m.winner_id = p1.player_id JOIN players p2 ON m.loser_id = p2.player_id ORDER BY m.minutes DESC LIMIT 1
SELECT M.winner_name, M.loser_name FROM matches M ORDER BY M.minutes DESC LIMIT 1 
SELECT P.first_name, AVG(R.ranking) FROM players AS P JOIN rankings AS R ON P.player_id = R.player_id GROUP BY P.first_name
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT sum(ranking_points) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT sum(ranking_points), first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY first_name
SELECT count(*) , country_code FROM players GROUP BY country_code 
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT ranking_date , sum(tours) FROM rankings GROUP BY ranking_date 
SELECT ranking_date , sum(tours) FROM rankings GROUP BY ranking_date 
SELECT year, COUNT(*) FROM matches GROUP BY year;
SELECT year , COUNT(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches JOIN players ON matches.winner_id = players.player_id ORDER BY players.birth_date DESC LIMIT 3
SELECT P.first_name, P.last_name, R.ranking FROM players AS P JOIN matches AS M ON P.player_id = M.winner_id JOIN rankings AS R ON P.player_id = R.player_id ORDER BY P.birth_date DESC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE winner_hand = 'Left' AND tourney_name = 'WTA Championships'
SELECT count(*) FROM matches WHERE winner_hand = 'L' AND tourney_name = 'WTA Championships';
SELECT first_name, country_code, birth_date FROM players JOIN matches ON players.player_id = matches.winner_id ORDER BY winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand 
SELECT hand , count(*) FROM players GROUP BY hand 
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle; 
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death;
SELECT T1.injured , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander != 'Boril'; 
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = "Brig"
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN death AS T3 ON T2.id = T3.caused_by_ship_id GROUP BY T1.id, T1.name HAVING SUM(T3.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id, T1.name ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(DISTINCT id) FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "Lettice" INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS Atalanta"
SELECT name, result, bulgarian_commander FROM battle EXCEPT SELECT T1.name, T1.result, T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel'
SELECT note FROM death WHERE note LIKE "%East%"
SELECT line_1, line_2 FROM addresses;
SELECT line_1, line_2 FROM addresses 
SELECT count(*) FROM courses 
SELECT count(*) FROM courses 
SELECT course_description FROM courses WHERE course_name = "math"
SELECT course_description FROM courses WHERE course_name = "math"
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea' 
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.department_name, T1.department_id FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id, T2.department_name ORDER BY COUNT(*) DESC LIMIT 1 
SELECT T1.department_name, T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs 
SELECT count(DISTINCT degree_program_id) FROM degree_programs 
SELECT count(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT count(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering" 
SELECT section_name, section_description FROM sections; 
SELECT section_name, section_description FROM sections 
SELECT T2.course_name, T2.course_id FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id, T2.course_name HAVING count(*) <= 2 
SELECT C.course_name, C.course_id FROM courses C LEFT JOIN sections S ON C.course_id = S.course_id GROUP BY C.course_id, C.course_name HAVING COUNT(S.section_id) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_id , T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_id, T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id, T1.semester_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT students.first_name, students.middle_name, students.last_name, students.student_id FROM students JOIN student_enrolment ON students.student_id = student_enrolment.student_id GROUP BY students.first_name, students.middle_name, students.last_name, students.student_id HAVING count(student_enrolment.degree_program_id) = 2
SELECT students.first_name, students.middle_name, students.last_name, students.student_id FROM students JOIN student_enrolment ON students.student_id = student_enrolment.student_id GROUP BY students.first_name, students.middle_name, students.last_name, students.student_id HAVING COUNT(degree_program_id) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT s.first_name , s.middle_name , s.last_name FROM students s JOIN student_enrolment se ON s.student_id = se.student_id JOIN degree_programs dp ON se.degree_program_id = dp.degree_program_id WHERE dp.degree_summary_name LIKE '%Bachelors%'
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id, T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1 
SELECT T1.degree_program_id, T1.degree_summary_description FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id, T1.degree_summary_description ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.student_id, T2.first_name, T2.middle_name, T2.last_name, count(*) AS enrollment_count FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY enrollment_count DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.first_name, T1.middle_name, T1.last_name, T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment) 
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment) 
SELECT DISTINCT course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT courses.course_name FROM courses JOIN student_enrolment_courses ON courses.course_id = student_enrolment_courses.course_id GROUP BY courses.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM students AS s JOIN addresses AS a ON s.current_address_id = a.address_id WHERE a.state_province_county = 'North Carolina' EXCEPT SELECT s2.last_name FROM students AS s2 JOIN student_enrolment AS se ON s2.student_id = se.student_id
SELECT T1.transcript_date , T1.transcript_id FROM transcripts AS T1 JOIN transcript_contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING count(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM transcripts AS T1 JOIN transcript_contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id , T1.transcript_date HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1 
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1 
SELECT first_name, middle_name, last_name FROM students ORDER BY date_left LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_left ASC LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id 
SELECT first_name FROM students WHERE permanent_address_id != current_address_id 
SELECT T2.address_id, T2.line_1, T2.line_2, T2.line_3 FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id GROUP BY T2.address_id, T2.line_1, T2.line_2, T2.line_3 ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM transcripts
SELECT avg(transcript_date) FROM transcripts
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM transcripts; 
SELECT count(*) FROM transcripts 
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1 
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1 
SELECT T1.student_course_id , count(*) FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_enrolment_id , T1.course_id , count(*) FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_enrolment_id , T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.transcript_date , T1.transcript_id FROM transcripts AS T1 JOIN transcript_contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(T1.transcript_id) ASC LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM transcripts AS T1 JOIN transcript_contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1
SELECT T3.semester_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN semesters AS T3 ON T1.semester_id = T3.semester_id WHERE T2.degree_summary_name = 'Master' INTERSECT SELECT T3.semester_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN semesters AS T3 ON T1.semester_id = T3.semester_id WHERE T2.degree_summary_name = 'Bachelor'
SELECT semester_id FROM student_enrolment AS se JOIN degree_programs AS dp ON se.degree_program_id = dp.degree_program_id WHERE dp.degree_summary_name = 'Masters' INTERSECT SELECT semester_id FROM student_enrolment AS se JOIN degree_programs AS dp ON se.degree_program_id = dp.degree_program_id WHERE dp.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM students 
SELECT DISTINCT T1.line_1, T1.line_2, T1.city, T1.country FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id OR T1.address_id = T2.permanent_address_id 
SELECT * FROM students ORDER BY other_student_details DESC
SELECT other_student_details FROM students ORDER BY first_name DESC 
SELECT section_description FROM sections WHERE section_name = 'h' 
SELECT section_description FROM sections WHERE section_name = "h"; 
SELECT first_name FROM students AS s JOIN addresses AS a ON s.permanent_address_id = a.address_id WHERE a.country = 'Haiti' OR s.cell_mobile_number = '09700166582'
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT title FROM cartoon ORDER BY title ASC
SELECT title FROM cartoon ORDER BY title ASC
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by = 'Joseph Kuhr'
SELECT title, directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT title, directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti";
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country , count(*) FROM tv_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT country , COUNT(*) FROM tv_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM tv_channel 
SELECT count(DISTINCT series_name), count(DISTINCT content) FROM tv_channel 
SELECT content FROM tv_channel WHERE series_name = "Sky Radio"; 
SELECT content FROM tv_channel WHERE series_name = "Sky Radio";
SELECT package_option FROM tv_channel WHERE series_name = "Sky Radio"
SELECT package_option FROM tv_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM tv_channel WHERE language = 'English' 
SELECT count(*) FROM tv_channel WHERE language = "English" 
SELECT language , count(*) FROM tv_channel GROUP BY language ORDER BY count(*) ASC LIMIT 1; 
SELECT language , COUNT(*) FROM tv_channel GROUP BY language ORDER BY COUNT(*) ASC LIMIT 1 
SELECT language , COUNT(*) FROM tv_channel GROUP BY language 
SELECT language , COUNT(*) FROM tv_channel GROUP BY language 
SELECT T1.series_name FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT episode FROM tv_series ORDER BY rating 
SELECT episode FROM tv_series ORDER BY rating
SELECT tv_series.episode, tv_series.rating FROM tv_series ORDER BY tv_series.rating DESC LIMIT 3
SELECT episode, rating FROM tv_series ORDER BY rating DESC LIMIT 3;
SELECT max(share) , min(share) FROM tv_series
SELECT max(share) , min(share) FROM tv_series
SELECT air_date FROM tv_series WHERE episode = "A Love of a Lifetime"
SELECT air_date FROM tv_series WHERE episode = "A Love of a Lifetime"
SELECT weekly_rank FROM tv_series WHERE episode = "A Love of a Lifetime"
SELECT weekly_rank FROM tv_series WHERE episode = "A Love of a Lifetime"
SELECT t1.series_name FROM tv_channel AS t1 JOIN tv_series AS t2 ON t1.id = t2.channel WHERE t2.episode = "A Love of a Lifetime"
SELECT series_name FROM tv_channel WHERE id = (SELECT channel FROM tv_series WHERE episode = "A Love of a Lifetime")
SELECT episode FROM tv_series AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT t1.episode FROM tv_series as t1 JOIN tv_channel as t2 ON t1.channel = t2.id WHERE t2.series_name = "Sky Radio";
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by 
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM tv_channel WHERE hight_definition_tv = "Yes"; 
SELECT package_option, series_name FROM tv_channel WHERE hight_definition_tv = "Yes";
SELECT country FROM tv_channel WHERE id IN (SELECT channel FROM cartoon WHERE written_by = 'Todd Casey');
SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey";
SELECT country FROM tv_channel EXCEPT SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT country FROM tv_channel EXCEPT SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.series_name, T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name, T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT T1.series_name, T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_par, country FROM tv_channel WHERE language != "English"
SELECT pixel_aspect_ratio_par, country FROM tv_channel WHERE language != "English"
SELECT country, id FROM tv_channel GROUP BY country HAVING COUNT(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2;
SELECT id FROM tv_channel EXCEPT SELECT t2.id FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Ben Jones"
SELECT id FROM tv_channel EXCEPT SELECT T1.id FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT final_table_made , best_finish FROM poker_player; 
SELECT final_table_made , best_finish FROM poker_player
SELECT avg(earnings) FROM poker_player
SELECT avg(earnings) FROM poker_player
SELECT money_rank FROM poker_player ORDER BY earnings DESC LIMIT 1
SELECT money_rank FROM poker_player ORDER BY earnings DESC LIMIT 1
SELECT max(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT max(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id WHERE T1.earnings > 300000
SELECT T1.name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T2.earnings > 300000
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.final_table_made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.final_table_made ASC
SELECT birth_date FROM people JOIN poker_player ON people.people_id = poker_player.people_id ORDER BY earnings LIMIT 1
SELECT T1.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T2.earnings ASC LIMIT 1
SELECT T1.money_rank FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T2.height DESC LIMIT 1
SELECT T1.money_rank FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T2.height DESC LIMIT 1
SELECT avg(T1.earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id WHERE T2.height > 200
SELECT avg(earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id WHERE height > 200
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY earnings DESC
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings DESC
SELECT nationality , count(*) FROM people GROUP BY nationality 
SELECT nationality, count(*) FROM people GROUP BY nationality 
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationality FROM people GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2 
SELECT nationality FROM people GROUP BY nationality HAVING COUNT(*) >= 2 
SELECT people.name, people.birth_date FROM people ORDER BY people.name ASC
SELECT people.name, people.birth_date FROM people ORDER BY name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT name FROM people WHERE nationality != 'Russia'
SELECT name FROM people EXCEPT SELECT T1.name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id
SELECT name FROM people EXCEPT SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id
SELECT count(DISTINCT nationality) FROM people 
SELECT count(DISTINCT nationality) FROM people 
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes;
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1;
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state, created FROM votes 
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number, T1.contestant_name HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) ASC LIMIT 1
SELECT count(*) FROM votes WHERE state IN ("NY", "CA")
SELECT count(*) FROM contestants WHERE contestant_number NOT IN ( SELECT contestant_number FROM votes )
SELECT area_code FROM votes JOIN area_code_state ON votes.state = area_code_state.state GROUP BY area_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.created, T2.state, T2.phone_number FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Tabatha Gehling'
SELECT T3.area_code FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number JOIN area_code_state AS T3 ON T1.state = T3.state WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T3.area_code FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number JOIN area_code_state AS T3 ON T1.state = T3.state WHERE T2.contestant_name = 'Kelly Clauss';
SELECT contestant_name FROM contestants WHERE contestant_name LIKE "%Al%"
SELECT name FROM country WHERE indepyear > 1950 
SELECT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic' 
SELECT sum(surfacearea) FROM country WHERE region = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE region = "Caribbean"
SELECT continent FROM country WHERE name = "Anguilla"; 
SELECT continent FROM country WHERE name = "Anguilla";
SELECT country.region FROM city JOIN country ON city.countrycode = country.code WHERE city.name = "Kabul"
SELECT country.region FROM country JOIN city ON country.code = city.countrycode WHERE city.name = "Kabul";
SELECT language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Aruba' ORDER BY T1.percentage DESC LIMIT 1;
SELECT language FROM countrylanguage WHERE countrycode = (SELECT code FROM country WHERE name = 'Aruba') ORDER BY percentage DESC LIMIT 1;
SELECT population , lifeexpectancy FROM country WHERE name = 'Brazil'
SELECT population , lifeexpectancy FROM country WHERE name = 'Brazil'
SELECT region, population FROM country WHERE name = "Angola" 
SELECT region, population FROM country WHERE name = "Angola"; 
SELECT avg(lifeexpectancy) FROM country WHERE region = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE region = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1 
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia';
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(population) FROM city WHERE district = 'Gelderland';
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(gnp) , sum(population) FROM country WHERE governmentform = 'US Territory'
SELECT avg(gnp), sum(population) FROM country WHERE governmentform = 'US Territory'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT language) FROM countrylanguage JOIN country ON countrylanguage.countrycode = country.code WHERE country.name = 'Aruba';
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = (SELECT code FROM country WHERE name = 'Aruba')
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = (SELECT code FROM country WHERE name = 'Afghanistan') AND isofficial = 'true'
SELECT count(language) FROM countrylanguage WHERE countrycode = (SELECT code FROM country WHERE name = 'Afghanistan') AND isofficial = 'T'
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT country.name FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode GROUP BY country.name ORDER BY COUNT(countrylanguage.language) DESC LIMIT 1
SELECT continent FROM country AS a JOIN countrylanguage AS b ON a.code = b.countrycode GROUP BY continent ORDER BY COUNT(DISTINCT language) DESC LIMIT 1;
SELECT continent FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY continent ORDER BY COUNT(DISTINCT t2.language) DESC LIMIT 1
SELECT count(*) FROM country WHERE code IN ( SELECT countrycode FROM countrylanguage WHERE language = 'English' INTERSECT SELECT countrycode FROM countrylanguage WHERE language = 'Dutch')
SELECT count(distinct countrycode) FROM countrylanguage WHERE language IN ('English', 'Dutch')
SELECT c.name FROM country as c JOIN countrylanguage as cl ON c.code = cl.countrycode WHERE cl.language = 'English' INTERSECT SELECT c.name FROM country as c JOIN countrylanguage as cl ON c.code = cl.countrycode WHERE cl.language = 'French'
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' INTERSECT SELECT countrycode FROM countrylanguage WHERE language = 'French')
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' AND T1.isofficial = 'T' INTERSECT SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'French' AND T1.isofficial = 'T'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT count(DISTINCT c.continent) FROM country c JOIN countrylanguage cl ON c.code = cl.countrycode WHERE cl.language = 'Chinese'
SELECT count(DISTINCT continent) FROM country c INNER JOIN countrylanguage l ON c.code = l.countrycode WHERE l.language = 'Chinese'
SELECT region FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' OR language = 'Dutch')
SELECT region FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language IN ('Dutch', 'English'));
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' OR language = 'Dutch' AND isofficial = 'T')
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' OR language = 'Dutch' AND isofficial = 'T')
SELECT language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Asia' GROUP BY t1.language ORDER BY SUM(t1.percentage) DESC LIMIT 1;
SELECT language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' GROUP BY T1.language ORDER BY count(*) DESC LIMIT 1;
SELECT language FROM countrylanguage AS CL INNER JOIN country AS C ON CL.countrycode = C.code WHERE C.governmentform = "Republic" GROUP BY CL.language HAVING count(CL.language) = 1
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE governmentform = 'Republic') GROUP BY language HAVING COUNT(countrycode) = 1
SELECT T2.name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'English' ORDER BY T2.population DESC LIMIT 1;
SELECT T2.name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'English' ORDER BY T2.population DESC LIMIT 1;
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT avg(lifeexpectancy) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' AND isofficial = 'Yes')
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial = 'No'
SELECT sum(population) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT sum(population) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT language FROM countrylanguage WHERE isofficial = 'Yes' AND countrycode IN (SELECT code FROM country WHERE headofstate = 'Beatrix')
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.headofstate = 'Beatrix' AND T2.isofficial = 'TRUE'
SELECT COUNT(DISTINCT countrylanguage.language) FROM countrylanguage JOIN country ON countrylanguage.countrycode = country.code WHERE country.indepyear < 1930 AND countrylanguage.isofficial = 'T'
SELECT count(DISTINCT language) FROM countrylanguage WHERE isofficial = 'T' AND countrycode IN (SELECT code FROM country WHERE indepyear < 1930)
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = "Africa" AND population < (SELECT MIN(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM countrylanguage WHERE language != 'English'
SELECT countrycode FROM countrylanguage WHERE language != 'English'
SELECT countrycode FROM countrylanguage WHERE language != 'English'
SELECT countrycode FROM countrylanguage WHERE language != 'English'
SELECT code FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English') AND governmentform != 'Republic'
SELECT code FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English') AND governmentform != 'Republic'
SELECT city.name FROM city JOIN country ON city.countrycode = country.code JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE country.continent = 'Europe' AND countrylanguage.language = 'English' AND countrylanguage.isofficial = 'NO'
SELECT city.name FROM city JOIN country ON city.countrycode = country.code JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE country.continent = 'Europe' AND (countrylanguage.language != 'English' OR countrylanguage.isofficial != 'T')
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.continent = "Asia" AND T3.language = "Chinese" AND T3.isofficial = "Yes"
SELECT DISTINCT city.name FROM city JOIN country ON city.countrycode = country.code JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE country.continent = 'Asia' AND countrylanguage.language = 'Chinese' AND countrylanguage.isofficial = 'Yes'
SELECT name, indepyear, surfacearea FROM country ORDER BY population LIMIT 1 
SELECT name , indepyear , surfacearea FROM country ORDER BY population LIMIT 1 
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1 
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT country.name , COUNT(*) FROM countrylanguage JOIN country ON country.code = countrylanguage.countrycode GROUP BY countrylanguage.countrycode HAVING COUNT(*) >= 3
SELECT country.name, COUNT(countrylanguage.language) FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode GROUP BY country.name HAVING COUNT(countrylanguage.language) > 2;
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district 
SELECT governmentform , SUM(population) FROM country GROUP BY governmentform HAVING AVG(lifeexpectancy) > 72
SELECT governmentform, SUM(population) FROM country GROUP BY governmentform HAVING AVG(lifeexpectancy) > 72
SELECT continent, avg(lifeexpectancy), sum(population) FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT continent, SUM(population) , AVG(lifeexpectancy) FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5 
SELECT name FROM country ORDER BY population DESC LIMIT 3 
SELECT name FROM country ORDER BY population DESC LIMIT 3 
SELECT name FROM country ORDER BY population ASC LIMIT 3 
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(distinct countrycode) DESC LIMIT 1
SELECT countrylanguage.language, max(countrylanguage.percentage), country.name FROM countrylanguage JOIN country on countrylanguage.countrycode = country.code GROUP BY country.name ORDER BY max(countrylanguage.percentage) DESC
SELECT countrycode , language , MAX(percentage) FROM countrylanguage GROUP BY countrycode
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE language = 'Spanish' AND percentage = (SELECT MAX(percentage) FROM countrylanguage WHERE language = 'Spanish')
SELECT count(*) FROM countrylanguage WHERE language = 'Spanish' AND isofficial = 'Yes'
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' AND isofficial = 'T'
SELECT count(*) FROM conductor 
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC 
SELECT name FROM conductor ORDER BY age ASC 
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != "USA"
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC 
SELECT avg(attendance) FROM show
SELECT avg(attendance) FROM show
SELECT max(share), min(share) FROM performance WHERE type != "Live final"
SELECT max(share) , min(share) FROM performance WHERE type != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1 
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1 
SELECT T2.name , T1.orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id 
SELECT conductor.name, orchestra.orchestra FROM conductor JOIN orchestra ON conductor.conductor_id = orchestra.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING COUNT(*) > 1 
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING COUNT(*) > 1 
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT c.name FROM conductor as c JOIN orchestra as o ON c.conductor_id = o.conductor_id WHERE o.year_of_founded > 2008
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id WHERE T1.year_of_founded > 2008
SELECT record_company , COUNT(*) FROM orchestra GROUP BY record_company 
SELECT record_company, count(*) FROM orchestra GROUP BY record_company 
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC 
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC; 
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1 
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1 
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003 
SELECT count(*) FROM orchestra WHERE major_record_format IN ('CD', 'DVD')
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT year_of_founded FROM orchestra AS o JOIN performance AS p ON o.orchestra_id = p.orchestra_id GROUP BY o.orchestra_id HAVING COUNT(p.performance_id) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler 
SELECT count(*) FROM highschooler 
SELECT name , grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT grade FROM highschooler 
SELECT grade FROM highschooler 
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = "Kyle"
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT id FROM highschooler WHERE name = 'Kyle';
SELECT count(*) FROM highschooler WHERE grade IN (9, 10)
SELECT count(*) FROM highschooler WHERE grade IN (9, 10)
SELECT grade, count(*) FROM highschooler GROUP BY grade
SELECT grade , count(*) FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , COUNT(friend_id) FROM friend GROUP BY student_id 
SELECT student_id , count(*) FROM friend GROUP BY student_id
SELECT T1.name, count(T2.friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name 
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3 
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(DISTINCT friend_id) FROM friend JOIN highschooler ON friend.student_id = highschooler.id WHERE highschooler.name = 'Kyle'
SELECT count(DISTINCT t2.friend_id) FROM highschooler AS t1 JOIN friend AS t2 ON t1.id = t2.student_id WHERE t1.name = "Kyle"
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM friend INTERSECT SELECT liked_id FROM likes
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend) AND id IN (SELECT liked_id FROM likes);
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend) INTERSECT SELECT name FROM highschooler WHERE id IN (SELECT liked_id FROM likes)
SELECT student_id , count(*) FROM likes GROUP BY student_id 
SELECT student_id , count(*) FROM likes GROUP BY student_id 
SELECT T2.name, count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id, T2.name
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT highschooler.name FROM highschooler JOIN friend ON highschooler.id = friend.student_id WHERE highschooler.grade > 5 GROUP BY highschooler.name HAVING count(friend_id) >= 2
SELECT count(*) FROM likes AS l JOIN highschooler AS h ON l.student_id = h.id WHERE h.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = "Kyle"
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT MIN(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals INTERSECT SELECT state FROM owners
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT avg(age) FROM dogs JOIN treatments ON dogs.dog_id = treatments.dog_id
SELECT P1.professional_id, P1.last_name, P1.cell_number FROM professionals AS P1 WHERE P1.state = 'Indiana' UNION SELECT P1.professional_id, P1.last_name, P1.cell_number FROM professionals AS P1 JOIN treatments AS T1 ON P1.professional_id = T1.professional_id GROUP BY P1.professional_id HAVING COUNT(T1.treatment_id) > 2
SELECT P.professional_id, P.last_name, P.cell_number FROM professionals AS P WHERE P.state = 'Indiana' UNION SELECT P.professional_id, P.last_name, P.cell_number FROM professionals AS P JOIN treatments AS T ON P.professional_id = T.professional_id GROUP BY P.professional_id HAVING COUNT(T.treatment_id) > 2
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.name HAVING SUM(T2.cost_of_treatment) > 1000
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT p.professional_id, p.role_code, p.email_address FROM professionals AS p JOIN treatments AS t ON p.professional_id = t.professional_id
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id, T1.first_name, T1.last_name ORDER BY count(*) DESC LIMIT 1 
SELECT T1.professional_id, T1.role_code, T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id, T1.last_name ORDER BY count(*) DESC LIMIT 1
SELECT t1.owner_id , t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id JOIN treatments AS t3 ON t2.dog_id = t3.dog_id GROUP BY t1.owner_id , t1.last_name ORDER BY sum(t3.cost_of_treatment) DESC LIMIT 1
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_description ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1
SELECT treatment_types.treatment_type_description FROM treatment_types JOIN treatments ON treatment_types.treatment_type_code = treatments.treatment_type_code GROUP BY treatments.treatment_type_code ORDER BY SUM(treatments.cost_of_treatment) ASC LIMIT 1;
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(DISTINCT T2.treatment_type_code) >= 2 
SELECT T1.professional_id, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(DISTINCT T2.treatment_type_code) >= 2
SELECT p1.first_name , p1.last_name FROM professionals AS p1 JOIN treatments AS t1 ON p1.professional_id = t1.professional_id WHERE t1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT P.first_name, P.last_name FROM professionals AS P JOIN treatments AS T ON P.professional_id = T.professional_id WHERE T.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id 
SELECT treatments.date_of_treatment , professionals.first_name FROM treatments JOIN professionals ON treatments.professional_id = professionals.professional_id
SELECT T2.cost_of_treatment, T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT owners.first_name, owners.last_name, sizes.size_description FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id JOIN sizes ON dogs.size_code = sizes.size_code
SELECT owners.first_name, owners.last_name, sizes.size_description FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id JOIN sizes ON dogs.size_code = sizes.size_code
SELECT o.first_name, d.name FROM owners AS o JOIN dogs AS d ON o.owner_id = d.owner_id
SELECT owners.first_name , dogs.name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id 
SELECT dogs.name, treatments.date_of_treatment FROM dogs JOIN treatments ON dogs.dog_id = treatments.dog_id JOIN ( SELECT breed_code, COUNT(breed_code) AS breed_count FROM dogs GROUP BY breed_code ORDER BY breed_count LIMIT 1 ) AS rare_breeds ON dogs.breed_code = rare_breeds.breed_code
SELECT T2.name , T1.date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code IN (SELECT breed_code FROM breeds GROUP BY breed_code ORDER BY count(*) ASC LIMIT 1)
SELECT owners.first_name, dogs.name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id WHERE owners.state = 'Virginia' 
SELECT OWNERS.first_name, DOGS.name FROM OWNERS JOIN DOGS ON OWNERS.owner_id = DOGS.owner_id WHERE OWNERS.state = 'Virginia'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id
SELECT T1.date_arrived, T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id 
SELECT o.last_name FROM owners AS o JOIN dogs AS d ON o.owner_id = d.owner_id ORDER BY d.date_of_birth DESC LIMIT 1 
SELECT owners.last_name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id ORDER BY dogs.date_of_birth DESC LIMIT 1
SELECT email_address FROM professionals WHERE state IN ("Hawaii", "Wisconsin")
SELECT email_address FROM professionals WHERE state IN ('Hawaii', 'Wisconsin'); 
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived , date_departed FROM dogs
SELECT count(distinct dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT count(DISTINCT professional_id) FROM treatments
SELECT role_code, street, city, state FROM professionals WHERE city LIKE "%West%"
SELECT role_code , street , city , state FROM professionals WHERE city LIKE "%West%"
SELECT first_name, last_name , email_address FROM owners WHERE state LIKE "%North%"
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE "%North%"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) 
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1 
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'N')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'N')
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs
SELECT Age FROM dogs ORDER BY Age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1 
SELECT charge_type, sum(charge_amount) FROM charges GROUP BY charge_type 
SELECT charge_type , sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_type, charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM professionals
SELECT email_address , cell_number , home_phone FROM professionals 
SELECT breeds.breed_name , sizes.size_description FROM dogs INNER JOIN breeds ON dogs.breed_code = breeds.breed_code INNER JOIN sizes ON dogs.size_code = sizes.size_code GROUP BY breeds.breed_name , sizes.size_description
SELECT DISTINCT b.breed_name, s.size_description FROM dogs d JOIN breeds b ON d.breed_code = b.breed_code JOIN sizes s ON d.size_code = s.size_code
SELECT T2.first_name , T3.treatment_type_description FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer 
SELECT Name FROM singer ORDER BY net_worth_millions ASC 
SELECT Name FROM singer ORDER BY net_worth_millions ASC 
SELECT birth_year , citizenship FROM singer 
SELECT birth_year , citizenship FROM singer 
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT name FROM singer WHERE citizenship != 'French'
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1
SELECT citizenship , COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship, max(net_worth_millions) FROM singer GROUP BY citizenship;
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T1.title , T2.name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT song.title , singer.name FROM song INNER JOIN singer ON song.singer_id = singer.singer_id
SELECT DISTINCT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T2.sales > 300000
SELECT DISTINCT singer.name FROM singer JOIN song ON singer.singer_id = song.singer_id WHERE song.sales > 300000
SELECT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING COUNT(*) > 1
SELECT T1.name , sum(T2.sales) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , sum(T2.sales) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM other_available_features 
SELECT T1.feature_type_name FROM ref_feature_types AS T1 JOIN other_available_features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon";
SELECT property_type_description FROM ref_property_types INNER JOIN properties ON ref_property_types.property_type_code = properties.property_type_code 
SELECT property_name FROM properties WHERE property_type_code IN ('House', 'Apartment') AND room_count > 1
