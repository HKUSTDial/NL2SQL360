SELECT COUNT(*) FROM singer;	concert_singer
SELECT COUNT(*) FROM singer;	concert_singer
SELECT name, country, age FROM singer ORDER BY age DESC;	concert_singer
SELECT singer.name, singer.country, singer.age FROM singer ORDER BY singer.age DESC;	concert_singer
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France';	concert_singer
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France';	concert_singer
SELECT singer.name, singer.song_release_year FROM singer WHERE age = ( SELECT MIN(age) FROM singer )	concert_singer
SELECT singer.name, singer.song_release_year FROM singer WHERE singer.age = ( SELECT MIN(age) FROM singer )	concert_singer
SELECT DISTINCT country FROM singer WHERE age > 20;	concert_singer
SELECT DISTINCT country FROM singer WHERE age > 20;	concert_singer
SELECT country, COUNT(*) as number_of_singers FROM singer GROUP BY country;	concert_singer
SELECT country, COUNT(*) FROM singer GROUP BY country;	concert_singer
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer);	concert_singer
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer);	concert_singer
SELECT location, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000;	concert_singer
SELECT stadium.location, stadium.name FROM stadium WHERE stadium.capacity >= 5000 AND stadium.capacity <= 10000;	concert_singer
SELECT MAX(capacity), AVG(capacity) FROM stadium;	concert_singer
SELECT AVG(capacity), MAX(capacity) FROM stadium;	concert_singer
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1;	concert_singer
SELECT stadium.name, stadium.capacity FROM stadium WHERE stadium.average = ( SELECT MAX(average) FROM stadium )	concert_singer
SELECT COUNT(*) FROM concert WHERE year = 2014 OR year = 2015;	concert_singer
SELECT COUNT(*) FROM concert WHERE year = 2014 OR year = 2015;	concert_singer
SELECT stadium.name, COUNT(concert.concert_id) AS num_concerts FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id GROUP BY stadium.name;	concert_singer
SELECT stadium.name, COUNT(concert.concert_id) as num_concerts FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id GROUP BY stadium.stadium_id;	concert_singer
SELECT stadium.name, stadium.capacity FROM stadium JOIN concert ON concert.stadium_id = stadium.stadium_id WHERE concert.year >= 2014 GROUP BY stadium.name, stadium.capacity ORDER BY COUNT(concert.concert_id) DESC LIMIT 1;	concert_singer
SELECT stadium.name, stadium.capacity FROM stadium WHERE stadium.stadium_id IN ( SELECT concert.stadium_id FROM concert WHERE concert.year > 2013 GROUP BY concert.stadium_id HAVING COUNT(*) = ( SELECT COUNT(*) FROM concert WHERE concert.year > 2013 GROUP BY concert.stadium_id ORDER BY COUNT(*) DESC LIMIT 1 ) );	concert_singer
SELECT year FROM concert GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1;	concert_singer
SELECT year from concert group by year order by count(*) desc limit 1;	concert_singer
SELECT stadium.name FROM stadium LEFT JOIN concert ON stadium.stadium_id = concert.stadium_id WHERE concert.stadium_id IS NULL;	concert_singer
SELECT stadium.name FROM stadium LEFT JOIN concert ON stadium.stadium_id = concert.stadium_id WHERE concert.concert_id IS NULL;	concert_singer
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30;	concert_singer
SELECT name FROM stadium WHERE stadium_id NOT IN ( SELECT stadium_id FROM concert WHERE year = 2014 );	concert_singer
SELECT stadium.name FROM stadium WHERE stadium.stadium_id NOT IN ( SELECT concert.stadium_id FROM concert WHERE concert.year = 2014 );	concert_singer
SELECT concert.concert_name, concert.theme, COUNT(singer_in_concert.singer_id) FROM concert JOIN singer_in_concert ON concert.concert_id = singer_in_concert.concert_id GROUP BY concert.concert_name, concert.theme;	concert_singer
SELECT concert.concert_name, concert.theme, COUNT(singer_in_concert.singer_id) AS number_of_singers FROM concert JOIN singer_in_concert ON concert.concert_id = singer_in_concert.concert_id GROUP BY concert.concert_name, concert.theme;	concert_singer
SELECT singer.name, COUNT(concert.concert_id) as num_concerts FROM singer JOIN singer_in_concert ON singer.singer_id = singer_in_concert.singer_id JOIN concert ON concert.concert_id = singer_in_concert.concert_id GROUP BY singer.name;	concert_singer
SELECT singer.name, COUNT(singer_in_concert.concert_id) as num_concerts FROM singer INNER JOIN singer_in_concert ON singer.singer_id = singer_in_concert.singer_id GROUP BY singer.name;	concert_singer
SELECT name FROM singer JOIN singer_in_concert ON singer.singer_id = singer_in_concert.singer_id JOIN concert ON singer_in_concert.concert_id = concert.concert_id WHERE concert.year = 2014;	concert_singer
SELECT singer.name FROM singer JOIN singer_in_concert ON singer.singer_id = singer_in_concert.singer_id JOIN concert ON singer_in_concert.concert_id = concert.concert_id WHERE concert.year = 2014;	concert_singer
SELECT singer.name, singer.country FROM singer WHERE singer.song_name LIKE '%Hey%';	concert_singer
SELECT singer.name, singer.country FROM singer WHERE singer.song_name LIKE '%Hey%';	concert_singer
SELECT stadium.name, stadium.location FROM stadium JOIN concert ON concert.stadium_id = stadium.stadium_id WHERE concert.year = 2014 INTERSECT SELECT stadium.name, stadium.location FROM stadium JOIN concert ON concert.stadium_id = stadium.stadium_id WHERE concert.year = 2015;	concert_singer
SELECT stadium.name, stadium.location FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id WHERE concert.year = 2014 INTERSECT SELECT stadium.name, stadium.location FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id WHERE concert.year = 2015;	concert_singer
SELECT COUNT(*) FROM concert WHERE stadium_id = ( SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1 );	concert_singer
SELECT COUNT(concert_id) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1);	concert_singer
SELECT COUNT(*) FROM pets WHERE weight > 10;	pets_1
SELECT COUNT(*) FROM pets WHERE weight > 10;	pets_1
SELECT pets.weight FROM pets WHERE pets.pettype = 'dog' ORDER BY pets.pet_age ASC LIMIT 1;	pets_1
SELECT MIN(weight) FROM pets WHERE pettype = 'dog';	pets_1
SELECT pets.pettype, MAX(pets.weight) FROM pets GROUP BY pets.pettype;	pets_1
SELECT pets.pettype, MAX(pets.weight) FROM pets GROUP BY pets.pettype;	pets_1
SELECT COUNT(*) FROM student INNER JOIN has_pet ON student.stuid = has_pet.stuid INNER JOIN pets ON has_pet.petid = pets.petid WHERE student.age > 20;	pets_1
SELECT COUNT(pets.petid) FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE student.age > 20	pets_1
SELECT COUNT(*) FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE student.sex = 'F' AND pets.pettype = 'dog';	pets_1
SELECT COUNT(*) FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE student.sex = 'female' AND pets.pettype = 'dog';	pets_1
SELECT COUNT(DISTINCT pettype) FROM pets;	pets_1
SELECT COUNT(DISTINCT pettype) FROM pets;	pets_1
SELECT student.fname FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'cat' OR pets.pettype = 'dog';	pets_1
SELECT student.fname FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype IN ('cat', 'dog');	pets_1
SELECT student.fname FROM student INNER JOIN has_pet ON student.stuid = has_pet.stuid INNER JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'cat' AND student.stuid IN (SELECT has_pet.stuid FROM has_pet INNER JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'dog' );	pets_1
SELECT student.fname FROM student WHERE stuid IN ( SELECT stuid FROM has_pet JOIN pets ON has_pet.petid = pets.petid WHERE pettype = 'cat' ) AND stuid IN ( SELECT stuid FROM has_pet JOIN pets ON has_pet.petid = pets.petid WHERE pettype = 'dog' );	pets_1
SELECT student.major, student.age FROM student WHERE student.stuid NOT IN ( SELECT has_pet.stuid FROM has_pet INNER JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = "cat" );	pets_1
SELECT student.major, student.age FROM student WHERE student.stuid NOT IN ( SELECT has_pet.stuid FROM has_pet INNER JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'cat' );	pets_1
SELECT student.stuid FROM student WHERE student.stuid NOT IN ( SELECT has_pet.stuid FROM has_pet INNER JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'cat' )	pets_1
SELECT student.stuid FROM student WHERE student.stuid NOT IN (SELECT stuid FROM has_pet INNER JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = "cat");	pets_1
SELECT student.fname, student.age FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'dog' AND student.stuid NOT IN ( SELECT student.stuid FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'cat' )	pets_1
SELECT student.fname FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'dog' EXCEPT SELECT student.fname FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'cat';	pets_1
SELECT pettype, weight FROM pets WHERE pet_age = (SELECT MIN(pet_age) FROM pets);	pets_1
SELECT pets.pettype, pets.weight FROM pets WHERE pet_age = (SELECT MIN(pet_age) FROM pets) LIMIT 1;	pets_1
SELECT pets.petid, pets.weight FROM pets WHERE pets.pet_age > 1;	pets_1
SELECT pets.petid, pets.weight FROM pets WHERE pets.pet_age > 1;	pets_1
SELECT pettype, AVG(pet_age) as average_age, MAX(pet_age) as maximum_age FROM pets GROUP BY pettype;	pets_1
SELECT pettype, AVG(pet_age) as average_age, MAX(pet_age) as maximum_age FROM pets GROUP BY pettype;	pets_1
SELECT pettype, avg(weight) FROM pets GROUP BY pettype;	pets_1
SELECT pettype, AVG(weight) FROM pets GROUP BY pettype;	pets_1
SELECT student.fname, student.age FROM student INNER JOIN has_pet ON student.stuid = has_pet.stuid;	pets_1
SELECT student.fname, student.age FROM student INNER JOIN has_pet ON student.stuid = has_pet.stuid;	pets_1
SELECT pets.petid FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE lname = 'Smith';	pets_1
SELECT pets.petid FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE student.lname = 'Smith';	pets_1
SELECT student.stuid, COUNT(has_pet.petid) FROM student JOIN has_pet ON student.stuid = has_pet.stuid GROUP BY student.stuid;	pets_1
SELECT student.stuid, COUNT(pets.petid) FROM student INNER JOIN has_pet ON student.stuid = has_pet.stuid INNER JOIN pets ON has_pet.petid = pets.petid GROUP BY student.stuid;	pets_1
SELECT student.fname, student.sex FROM student WHERE student.stuid IN (SELECT stuid FROM has_pet GROUP BY stuid HAVING COUNT(*) > 1);	pets_1
SELECT student.fname, student.sex FROM student WHERE student.stuid IN (SELECT has_pet.stuid FROM has_pet GROUP BY has_pet.stuid HAVING COUNT(*) > 1);	pets_1
SELECT student.lname FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'cat' AND pets.pet_age = 3;	pets_1
SELECT student.lname FROM student JOIN has_pet ON student.stuid = has_pet.stuid JOIN pets ON has_pet.petid = pets.petid WHERE pets.pettype = 'cat' AND pets.pet_age = 3 ORDER BY student.lname DESC LIMIT 1;	pets_1
SELECT AVG(age) FROM student WHERE stuid NOT IN ( SELECT stuid FROM has_pet )	pets_1
SELECT AVG(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)	pets_1
SELECT COUNT(*) FROM continents;	car_1
SELECT count(*) FROM continents;	car_1
SELECT continents.contid, continents.continent, COUNT(countries.countryname) FROM continents JOIN countries ON continents.contid = countries.continent GROUP BY continents.contid, continents.continent;	car_1
SELECT continents.contid, continents.continent, COUNT(countries.countryid) as num_countries FROM continents LEFT JOIN countries ON continents.contid = countries.continent GROUP BY continents.contid, continents.continent;	car_1
SELECT COUNT(*) FROM countries;	car_1
SELECT count(*) FROM countries;	car_1
SELECT car_makers.fullname, car_makers.id, COUNT(model_list.model) as num_models FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.fullname, car_makers.id;	car_1
SELECT car_makers.id, car_makers.fullname, COUNT(model_list.model) FROM car_makers INNER JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.id, car_makers.fullname;	car_1
SELECT model_list.model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model ORDER BY cars_data.horsepower LIMIT 1;	car_1
SELECT model_list.model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model ORDER BY cars_data.horsepower ASC LIMIT 1;	car_1
SELECT model_list.model FROM cars_data INNER JOIN car_names ON cars_data.id = car_names.makeid INNER JOIN model_list ON car_names.model = model_list.model WHERE cars_data.weight < (SELECT AVG(weight) FROM cars_data);	car_1
SELECT model_list.model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model WHERE cars_data.weight < (SELECT AVG(weight) FROM cars_data);	car_1
SELECT car_makers.maker FROM car_makers JOIN car_names ON car_makers.id = car_names.makeid JOIN cars_data ON car_names.makeid = cars_data.id WHERE cars_data.year = 1970;	car_1
SELECT car_makers.fullname FROM car_makers JOIN model_list ON car_makers.id = model_list.maker JOIN car_names ON model_list.model = car_names.model JOIN cars_data ON car_names.makeid = cars_data.id WHERE cars_data.year = 1970;	car_1
SELECT car_names.make, cars_data.year FROM car_names JOIN model_list ON car_names.model = model_list.modelid JOIN cars_data ON car_names.makeid = cars_data.id WHERE cars_data.year = ( SELECT MIN(year) FROM cars_data );	car_1
SELECT car_makers.maker, MIN(cars_data.year) FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model JOIN car_makers ON model_list.maker = car_makers.id GROUP BY car_makers.maker ORDER BY MIN(cars_data.year) LIMIT 1;	car_1
SELECT DISTINCT car_names.model FROM model_list JOIN car_makers ON model_list.maker = car_makers.id JOIN car_names ON model_list.model = car_names.model JOIN cars_data ON cars_data.id = car_names.makeid WHERE cars_data.year > 1980;	car_1
SELECT model_list.model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model WHERE cars_data.year > 1980;	car_1
SELECT continents.continent, COUNT(car_makers.id) FROM continents JOIN countries ON continents.contid = countries.continent JOIN car_makers ON countries.countryid = car_makers.country GROUP BY continents.continent;	car_1
SELECT continents.continent, COUNT(car_makers.maker) FROM continents JOIN countries ON countries.continent = continents.contid JOIN car_makers ON car_makers.country = countries.countryid GROUP BY continents.continent;	car_1
SELECT countries.countryname FROM countries JOIN car_makers ON car_makers.country = countries.countryid GROUP BY countries.countryname ORDER BY COUNT(car_makers.maker) DESC LIMIT 1;	car_1
SELECT countries.countryname FROM countries JOIN car_makers ON countries.countryid = car_makers.country GROUP BY countries.countryname ORDER BY COUNT(car_makers.maker) DESC LIMIT 1;	car_1
SELECT car_makers.fullname, COUNT(model_list.model) as model_count FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.fullname;	car_1
SELECT car_makers.id, car_makers.fullname, COUNT(model_list.model) AS num_car_models FROM car_makers JOIN model_list ON car_makers.id = model_list.maker GROUP BY car_makers.id, car_makers.fullname;	car_1
SELECT cars_data.accelerate FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model JOIN car_makers ON model_list.maker = car_makers.id WHERE car_makers.maker = 'amc' AND car_names.make = 'amc hornet sportabout (sw)';	car_1
SELECT accelerate FROM cars_data INNER JOIN car_names ON cars_data.id = car_names.makeid INNER JOIN model_list ON car_names.model = model_list.model INNER JOIN car_makers ON model_list.maker = car_makers.id WHERE car_names.model = 'amc hornet sportabout (sw)';	car_1
SELECT COUNT(DISTINCT car_makers.id) AS car_maker_count FROM car_makers INNER JOIN countries ON car_makers.country = countries.countryid WHERE countries.countryname = 'france';	car_1
SELECT COUNT(DISTINCT car_makers.maker) FROM car_makers JOIN countries ON car_makers.country = countries.countryid WHERE countries.countryname = 'France';	car_1
SELECT count(DISTINCT modelid) FROM car_makers JOIN countries ON car_makers.country = countries.countryid JOIN model_list ON model_list.maker = car_makers.id WHERE countries.countryname = 'usa';	car_1
SELECT COUNT(modelid) FROM countries JOIN car_makers ON countries.countryid = car_makers.country JOIN model_list ON car_makers.id = model_list.maker JOIN car_names ON model_list.model = car_names.model WHERE countries.countryname = 'United States';	car_1
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4;	car_1
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4;	car_1
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND year = 1974;	car_1
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND year = 1974;	car_1
SELECT model_list.maker, model_list.model FROM car_makers JOIN model_list ON car_makers.id = model_list.maker JOIN car_names ON model_list.model = car_names.model;	car_1
SELECT model_list.maker, model_list.model FROM car_makers JOIN model_list ON car_makers.id = model_list.maker JOIN car_names ON model_list.model = car_names.model;	car_1
SELECT countries.countryname, countries.countryid FROM countries INNER JOIN car_makers ON car_makers.country = countries.countryid GROUP BY countries.countryname, countries.countryid;	car_1
SELECT countries.countryid, countries.countryname FROM countries INNER JOIN car_makers ON car_makers.country = countries.countryid;	car_1
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150;	car_1
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150;	car_1
SELECT year, AVG(weight) AS average_weight FROM cars_data GROUP BY year;	car_1
SELECT year, AVG(weight), AVG(year) FROM cars_data GROUP BY year;	car_1
SELECT countries.countryname FROM countries JOIN continents ON countries.continent = continents.contid JOIN car_makers ON countries.countryid = car_makers.country WHERE continents.continent = 'europe' GROUP BY countries.countryname HAVING COUNT(DISTINCT car_makers.id) >= 3;	car_1
SELECT countries.countryname FROM countries JOIN continents ON countries.continent = continents.contid JOIN car_makers ON car_makers.country = countries.countryid GROUP BY countries.countryname HAVING COUNT(DISTINCT car_makers.maker) >= 3 AND continents.continent = "europe";	car_1
SELECT MAX(cars_data.horsepower), car_makers.fullname FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model JOIN car_makers ON model_list.maker = car_makers.id WHERE cars_data.cylinders = 3;	car_1
SELECT MAX(cars_data.horsepower), car_makers.fullname FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model JOIN car_makers ON model_list.maker = car_makers.id WHERE cars_data.cylinders = 3	car_1
SELECT model_list.model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model ORDER BY cars_data.mpg DESC LIMIT 1;	car_1
SELECT model_list.model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model ORDER BY cars_data.mpg DESC LIMIT 1;	car_1
SELECT AVG(horsepower) FROM cars_data WHERE year < 1980;	car_1
SELECT AVG(horsepower) FROM cars_data WHERE year < 1980;	car_1
SELECT avg(edispl) FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model WHERE model_list.model = 'volvo';	car_1
SELECT AVG(cars_data.edispl) FROM model_list JOIN car_names ON model_list.model = car_names.model JOIN car_makers ON model_list.maker = car_makers.id JOIN cars_data ON car_names.makeid = cars_data.id WHERE car_makers.maker = 'volvo';	car_1
SELECT MAX(accelerate), cylinders FROM cars_data GROUP BY cylinders;	car_1
SELECT MAX(accelerate) FROM cars_data GROUP BY cylinders;	car_1
SELECT model_list.model FROM model_list JOIN car_names ON model_list.model = car_names.model GROUP BY model_list.model ORDER BY COUNT(DISTINCT car_names.make) DESC LIMIT 1;	car_1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(DISTINCT modelid) DESC LIMIT 1;	car_1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4;	car_1
SELECT count(*) FROM cars_data WHERE cylinders > 4;	car_1
SELECT count(*) FROM cars_data WHERE year = 1980;	car_1
SELECT COUNT(*) FROM cars_data WHERE year = 1980;	car_1
SELECT COUNT(DISTINCT model) FROM model_list JOIN car_makers ON car_makers.id = model_list.maker WHERE car_makers.fullname = "American Motor Company";	car_1
SELECT COUNT(*) FROM model_list INNER JOIN car_makers ON model_list.maker = car_makers.id WHERE car_makers.fullname = "American Motor Company"	car_1
SELECT car_makers.id, car_makers.fullname FROM car_makers INNER JOIN model_list ON model_list.maker = car_makers.id GROUP BY car_makers.id, car_makers.fullname HAVING COUNT(model_list.model) > 3;	car_1
SELECT makers.id, makers.maker FROM car_makers AS makers JOIN model_list AS models ON makers.id = models.maker GROUP BY makers.id, makers.maker HAVING COUNT(models.modelid) > 3;	car_1
SELECT DISTINCT car_names.model FROM model_list JOIN car_makers ON model_list.maker = car_makers.id JOIN car_names ON model_list.model = car_names.model JOIN cars_data ON car_names.makeid = cars_data.id WHERE car_makers.fullname = 'General Motors' OR cars_data.weight > 3500;	car_1
SELECT DISTINCT car_names.model FROM model_list INNER JOIN car_makers ON model_list.maker = car_makers.id INNER JOIN car_names ON model_list.model = car_names.model INNER JOIN cars_data ON car_names.makeid = cars_data.id WHERE car_makers.fullname = "General Motors" OR cars_data.weight > 3500;	car_1
SELECT year FROM cars_data WHERE weight >= 3000 AND weight <= 4000;	car_1
SELECT DISTINCT cars_data.year FROM cars_data WHERE cars_data.weight < 4000 INTERSECT SELECT DISTINCT cars_data.year FROM cars_data WHERE cars_data.weight > 3000;	car_1
SELECT MAX(horsepower) FROM cars_data WHERE accelerate = (SELECT MAX(accelerate) FROM cars_data);	car_1
SELECT MAX(horsepower) FROM cars_data WHERE accelerate = (SELECT MAX(accelerate) FROM cars_data);	car_1
SELECT MIN(cars_data.cylinders) FROM model_list JOIN car_makers ON model_list.maker = car_makers.id JOIN car_names ON model_list.model = car_names.model JOIN cars_data ON car_names.makeid = cars_data.id WHERE model_list.model = 'volvo' ORDER BY cars_data.accelerate LIMIT 1;	car_1
SELECT cylinders FROM model_list JOIN car_makers ON model_list.maker = car_makers.id JOIN car_names ON car_names.model = model_list.model JOIN cars_data ON cars_data.id = car_names.makeid WHERE model_list.model = 'volvo' ORDER BY cars_data.accelerate ASC LIMIT 1;	car_1
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT MAX(horsepower) FROM cars_data)	car_1
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT MAX(horsepower) FROM cars_data);	car_1
SELECT count(DISTINCT countries.countryname) FROM countries JOIN car_makers ON car_makers.country = countries.countryid GROUP BY countries.countryname HAVING COUNT(DISTINCT car_makers.id) > 2;	car_1
SELECT COUNT(DISTINCT countries.countryid) FROM countries JOIN car_makers ON car_makers.country = countries.countryid GROUP BY countries.countryid HAVING COUNT(car_makers.id) > 2;	car_1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6;	car_1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6;	car_1
SELECT model_list.model FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.model JOIN car_makers ON model_list.maker = car_makers.id WHERE cars_data.cylinders = 4 ORDER BY cars_data.horsepower DESC LIMIT 1;	car_1
SELECT model FROM model_list INNER JOIN cars_data ON model_list.modelid = cars_data.id WHERE cars_data.cylinders = 4 ORDER BY cars_data.horsepower DESC LIMIT 1;	car_1
SELECT car_names.makeid, car_names.make FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid WHERE cars_data.horsepower > (SELECT MIN(horsepower) FROM cars_data) AND cars_data.cylinders <= 3;	car_1
SELECT car_makers.id, car_makers.maker FROM cars_data JOIN car_names ON cars_data.id = car_names.makeid JOIN model_list ON car_names.model = model_list.modelid JOIN car_makers ON model_list.maker = car_makers.id WHERE cylinders < 4 AND horsepower > ( SELECT MIN(horsepower) FROM cars_data )	car_1
SELECT MAX(mpg) FROM cars_data WHERE cylinders = 8 AND year < 1980;	car_1
SELECT MAX(mpg) FROM cars_data WHERE cylinders = 8 OR year < 1980;	car_1
SELECT car_names.model FROM model_list JOIN car_names ON model_list.model = car_names.model JOIN cars_data ON car_names.makeid = cars_data.id JOIN car_makers ON model_list.maker = car_makers.id WHERE cars_data.weight < 3500 AND car_makers.fullname <> 'Ford Motor Company';	car_1
SELECT car_names.model FROM model_list INNER JOIN car_names ON model_list.model = car_names.model INNER JOIN cars_data ON car_names.makeid = cars_data.id LEFT JOIN car_makers ON model_list.maker = car_makers.id WHERE cars_data.weight < 3500 AND car_makers.fullname != 'Ford Motor Company';	car_1
SELECT countries.countryname FROM countries WHERE countries.countryid NOT IN (SELECT car_makers.country FROM car_makers);	car_1
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT country FROM car_makers );	car_1
SELECT car_makers.id, car_makers.maker FROM car_makers JOIN model_list ON model_list.maker = car_makers.id GROUP BY car_makers.id, car_makers.maker HAVING COUNT(model_list.model) >= 2 AND COUNT(DISTINCT car_makers.id) > 3;	car_1
SELECT car_makers.id, car_makers.maker FROM car_makers INNER JOIN model_list ON car_makers.id = model_list.maker INNER JOIN car_names ON model_list.model = car_names.model INNER JOIN cars_data ON car_names.makeid = cars_data.id GROUP BY car_makers.id, car_makers.maker HAVING COUNT(DISTINCT model_list.model) >= 2 AND COUNT(DISTINCT cars_data.id) > 3;	car_1
SELECT countries.countryid, countries.countryname FROM countries WHERE countries.countryid IN ( SELECT car_makers.country FROM car_makers GROUP BY car_makers.country HAVING COUNT(*) > 3 ) OR countries.countryid IN ( SELECT car_makers.country FROM car_makers JOIN model_list ON car_makers.id = model_list.maker JOIN car_names ON model_list.model = car_names.model WHERE car_names.make = 'fiat' );	car_1
SELECT countryid, countryname FROM countries WHERE countryid IN (SELECT country FROM car_makers GROUP BY country HAVING COUNT(*) > 3) OR countryid IN (SELECT country FROM car_makers INNER JOIN model_list ON car_makers.id = model_list.maker INNER JOIN car_names ON model_list.modelid = car_names.model WHERE car_names.make = "fiat");	car_1
SELECT country FROM airlines WHERE airline = "JetBlue Airways";	flight_2
SELECT country FROM airlines WHERE airline = 'JetBlue Airways';	flight_2
SELECT abbreviation FROM airlines WHERE airline = 'JetBlue Airways';	flight_2
SELECT abbreviation FROM airlines WHERE airline = 'JetBlue Airways';	flight_2
SELECT airline, abbreviation FROM airlines WHERE country = "USA";	flight_2
SELECT airline, abbreviation FROM airlines WHERE country = 'USA';	flight_2
SELECT airportcode, airportname FROM airports WHERE city = "Anthony";	flight_2
SELECT airportcode, airportname FROM airports WHERE city = 'Anthony';	flight_2
SELECT COUNT(*) FROM airlines;	flight_2
SELECT count(*) FROM airlines;	flight_2
SELECT COUNT(*) FROM airports;	flight_2
SELECT COUNT(*) FROM airports;	flight_2
SELECT COUNT(*) FROM flights;	flight_2
SELECT COUNT(*) FROM flights;	flight_2
SELECT airline FROM airlines WHERE abbreviation = 'UAL';	flight_2
SELECT airline FROM airlines WHERE abbreviation = 'UAL';	flight_2
SELECT COUNT(*) FROM airlines WHERE country = "USA";	flight_2
SELECT COUNT(*) FROM airlines WHERE country = 'USA';	flight_2
SELECT city, country FROM airports WHERE airportname = "Alton";	flight_2
SELECT city, country FROM airports WHERE airportname = 'Alton';	flight_2
SELECT airportname FROM airports WHERE airportcode = 'AKO';	flight_2
SELECT airportname FROM airports WHERE airportcode = 'AKO';	flight_2
SELECT airportname FROM airports WHERE city = 'Aberdeen';	flight_2
SELECT airportname FROM airports WHERE city = 'Aberdeen';	flight_2
SELECT COUNT(*) FROM flights WHERE sourceairport = 'APG';	flight_2
SELECT COUNT(*) FROM flights WHERE sourceairport = 'APG';	flight_2
SELECT COUNT(*) FROM flights WHERE destairport = 'ATO';	flight_2
SELECT COUNT(*) FROM flights WHERE destairport = 'ATO';	flight_2
SELECT COUNT(*) FROM flights INNER JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.city = 'Aberdeen';	flight_2
SELECT COUNT(*) FROM flights WHERE sourceairport = (SELECT airportcode FROM airports WHERE city = 'Aberdeen');	flight_2
SELECT COUNT(*) FROM flights JOIN airports ON flights.destairport = airports.airportcode WHERE airports.city = 'Aberdeen'	flight_2
SELECT COUNT(*) FROM flights JOIN airports ON flights.destairport = airports.airportcode WHERE airports.city = 'Aberdeen';	flight_2
SELECT COUNT(*) FROM flights f JOIN airports a1 ON f.sourceairport = a1.airportcode JOIN airports a2 ON f.destairport = a2.airportcode WHERE a1.city = 'Aberdeen' AND a2.city = 'Ashley';	flight_2
SELECT COUNT(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen") AND destairport IN (SELECT airportcode FROM airports WHERE city = "Ashley");	flight_2
SELECT COUNT(*) FROM flights WHERE airline = 'JetBlue Airways';	flight_2
SELECT COUNT(*) FROM flights f JOIN airlines a ON f.airline = a.airline WHERE a.abbreviation = 'JetBlue';	flight_2
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND destairport = 'ASY';	flight_2
SELECT COUNT(*) FROM flights WHERE airline = 'United Airlines' AND destairport = 'ASY';	flight_2
SELECT COUNT(*) FROM flights WHERE airline = 'United Airlines' AND sourceairport = 'AHD';	flight_2
SELECT COUNT(*) FROM flights WHERE airline = "United Airlines" AND sourceairport = "AHD";	flight_2
SELECT COUNT(*) FROM flights JOIN airlines ON flights.airline = airlines.airline JOIN airports ON flights.destairport = airports.airportcode WHERE airlines.airline = 'United Airlines' AND airports.city = 'Aberdeen';	flight_2
SELECT COUNT(*) FROM flights JOIN airports ON flights.destairport = airports.airportcode WHERE airports.city = "Aberdeen" AND flights.airline = "United Airlines";	flight_2
SELECT airports.city FROM flights JOIN airports ON flights.destairport = airports.airportcode GROUP BY airports.city ORDER BY COUNT(*) DESC LIMIT 1;	flight_2
SELECT airports.city FROM flights JOIN airports ON flights.destairport = airports.airportcode GROUP BY airports.city ORDER BY COUNT(*) DESC LIMIT 1;	flight_2
SELECT city FROM airports WHERE airportcode IN ( SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY COUNT(*) DESC LIMIT 1 )	flight_2
SELECT airports.city FROM flights JOIN airports ON flights.sourceairport = airports.airportcode GROUP BY airports.city ORDER BY COUNT(*) DESC LIMIT 1;	flight_2
SELECT airports.airportcode FROM airports INNER JOIN flights ON airports.airportcode = flights.destairport GROUP BY airports.airportcode ORDER BY COUNT(flights.flightno) DESC LIMIT 1;	flight_2
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY COUNT(*) DESC LIMIT 1;	flight_2
SELECT airportcode FROM airports ORDER BY (SELECT COUNT(*) FROM flights WHERE destairport = airports.airportcode OR sourceairport = airports.airportcode) ASC LIMIT 1;	flight_2
SELECT airportname FROM airports WHERE airportcode IN ( SELECT sourceairport FROM flights GROUP BY sourceairport HAVING COUNT(*) = ( SELECT MIN(count) FROM ( SELECT COUNT(*) as count FROM flights GROUP BY sourceairport ) ) ) LIMIT 1;	flight_2
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1;	flight_2
SELECT flights.airline FROM flights GROUP BY flights.airline ORDER BY COUNT(*) DESC LIMIT 1;	flight_2
SELECT abbreviation, country FROM airlines WHERE uid IN ( SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) ASC LIMIT 1 )	flight_2
SELECT abbreviation, country FROM airlines WHERE uid = ( SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) ASC LIMIT 1 );	flight_2
SELECT airlines.airline FROM airlines JOIN flights ON airlines.airline = flights.airline JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportcode = 'AHD';	flight_2
SELECT airlines.airline FROM airlines JOIN flights ON airlines.uid = flights.airline JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportcode = 'AHD';	flight_2
SELECT airlines.airline FROM airlines INNER JOIN flights ON airlines.airline = flights.airline INNER JOIN airports ON flights.destairport = airports.airportcode WHERE airports.airportcode = 'AHD';	flight_2
SELECT airlines.airline FROM flights JOIN airlines ON flights.airline = airlines.airline WHERE flights.destairport = 'AHD';	flight_2
SELECT airline FROM airlines WHERE airline IN ( SELECT airline FROM flights WHERE destairport = 'APG' ) AND airline IN ( SELECT airline FROM flights WHERE destairport = 'CVO' );	flight_2
SELECT airline FROM flights WHERE sourceairport IN ('APG', 'CVO') GROUP BY airline HAVING COUNT(DISTINCT sourceairport) = 2;	flight_2
SELECT airlines.airline FROM flights JOIN airports ON flights.destairport = airports.airportcode JOIN airlines ON flights.airline = airlines.airline WHERE airports.airportcode = 'CVO' AND airlines.airline NOT IN ( SELECT DISTINCT flights.airline FROM flights JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportcode = 'APG' );	flight_2
SELECT airlines.airline FROM airlines JOIN flights ON airlines.airline = flights.airline JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportcode = 'CVO' AND airlines.airline NOT IN ( SELECT airlines.airline FROM airlines JOIN flights ON airlines.airline = flights.airline JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.airportcode = 'APG' );	flight_2
SELECT airline FROM airlines WHERE airline IN ( SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) >= 10 );	flight_2
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) >= 10;	flight_2
SELECT airline FROM airlines WHERE airline IN ( SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) < 200 );	flight_2
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) < 200;	flight_2
SELECT flightno FROM flights WHERE airline = "United Airlines";	flight_2
SELECT flightno FROM flights WHERE airline = 'United Airlines';	flight_2
SELECT flightno FROM flights WHERE sourceairport = 'APG';	flight_2
SELECT flightno FROM flights WHERE sourceairport = 'APG';	flight_2
SELECT flightno FROM flights WHERE destairport = "APG";	flight_2
SELECT flightno FROM flights WHERE destairport = 'APG';	flight_2
SELECT flights.flightno FROM flights JOIN airports ON flights.sourceairport = airports.airportcode WHERE airports.city = "Aberdeen";	flight_2
SELECT flightno FROM flights WHERE sourceairport = (SELECT airportcode FROM airports WHERE city = 'Aberdeen');	flight_2
SELECT flights.flightno FROM flights JOIN airports ON flights.destairport = airports.airportcode WHERE airports.city = "Aberdeen";	flight_2
SELECT flightno FROM flights WHERE destairport = (SELECT airportcode FROM airports WHERE city = "Aberdeen");	flight_2
SELECT COUNT(*) FROM flights INNER JOIN airports ON flights.destairport = airports.airportcode WHERE airports.city IN ('Aberdeen', 'Abilene');	flight_2
SELECT COUNT(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city IN ("Aberdeen", "Abilene"));	flight_2
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT destairport FROM flights) AND airportcode NOT IN (SELECT DISTINCT sourceairport FROM flights);	flight_2
SELECT airportcode, airportname, city, country FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights UNION SELECT destairport FROM flights);	flight_2
SELECT COUNT(*) FROM employee;	employee_hire_evaluation
SELECT COUNT(*) FROM employee;	employee_hire_evaluation
SELECT name FROM employee ORDER BY age ASC;	employee_hire_evaluation
SELECT employee.name FROM employee ORDER BY employee.age ASC;	employee_hire_evaluation
SELECT city, COUNT(employee_id) AS employee_count FROM employee GROUP BY city;	employee_hire_evaluation
SELECT city, COUNT(employee_id) AS employee_count FROM employee GROUP BY city;	employee_hire_evaluation
SELECT employee.city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1;	employee_hire_evaluation
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1;	employee_hire_evaluation
SELECT location, COUNT(*) AS shop_count FROM shop GROUP BY location;	employee_hire_evaluation
SELECT shop.location, COUNT(shop.shop_id) AS number_of_shops FROM shop GROUP BY shop.location;	employee_hire_evaluation
SELECT shop.manager_name, shop.district FROM shop WHERE shop.number_products = ( SELECT MAX(number_products) FROM shop );	employee_hire_evaluation
SELECT shop.manager_name, shop.district FROM shop WHERE shop.number_products = ( SELECT MAX(number_products) FROM shop)	employee_hire_evaluation
SELECT MIN(number_products) AS min_number_products, MAX(number_products) AS max_number_products FROM shop;	employee_hire_evaluation
SELECT MIN(number_products), MAX(number_products) FROM shop;	employee_hire_evaluation
SELECT name, location, district FROM shop ORDER BY number_products DESC;	employee_hire_evaluation
SELECT shop.name, shop.location, shop.district FROM shop ORDER BY shop.number_products DESC;	employee_hire_evaluation
SELECT shop.name FROM shop WHERE shop.number_products > (SELECT AVG(number_products) FROM shop);	employee_hire_evaluation
SELECT shop.name FROM shop WHERE shop.number_products > (SELECT AVG(number_products) FROM shop);	employee_hire_evaluation
SELECT employee.name FROM employee JOIN evaluation ON employee.employee_id = evaluation.employee_id GROUP BY employee.name ORDER BY COUNT(*) DESC LIMIT 1;	employee_hire_evaluation
SELECT employee.name FROM employee JOIN evaluation ON employee.employee_id = evaluation.employee_id GROUP BY employee.employee_id ORDER BY COUNT(*) DESC LIMIT 1;	employee_hire_evaluation
SELECT employee.name FROM employee JOIN evaluation ON employee.employee_id = evaluation.employee_id WHERE evaluation.bonus = (SELECT MAX(bonus) FROM evaluation);	employee_hire_evaluation
SELECT employee.name FROM evaluation INNER JOIN employee ON evaluation.employee_id = employee.employee_id WHERE evaluation.bonus = (SELECT MAX(bonus) FROM evaluation);	employee_hire_evaluation
SELECT employee.name FROM employee WHERE employee.employee_id NOT IN (SELECT evaluation.employee_id FROM evaluation)	employee_hire_evaluation
SELECT employee.name FROM employee WHERE employee.employee_id NOT IN (SELECT evaluation.employee_id FROM evaluation);	employee_hire_evaluation
SELECT shop.name FROM shop JOIN hiring ON shop.shop_id = hiring.shop_id GROUP BY shop.name ORDER BY COUNT(hiring.employee_id) DESC LIMIT 1;	employee_hire_evaluation
SELECT shop.name FROM shop JOIN hiring ON shop.shop_id = hiring.shop_id GROUP BY hiring.shop_id ORDER BY COUNT(hiring.employee_id) DESC LIMIT 1;	employee_hire_evaluation
SELECT shop.name FROM shop WHERE shop.shop_id NOT IN (SELECT shop_id FROM hiring)	employee_hire_evaluation
SELECT shop.name FROM shop WHERE shop.shop_id NOT IN (SELECT shop_id FROM hiring);	employee_hire_evaluation
SELECT shop.name, COUNT(employee.employee_id) FROM shop JOIN hiring ON shop.shop_id = hiring.shop_id JOIN employee ON hiring.employee_id = employee.employee_id GROUP BY shop.name;	employee_hire_evaluation
SELECT shop.name, COUNT(employee.employee_id) AS number_of_employees FROM shop JOIN hiring ON shop.shop_id = hiring.shop_id JOIN employee ON hiring.employee_id = employee.employee_id GROUP BY shop.shop_id, shop.name;	employee_hire_evaluation
SELECT SUM(bonus) FROM evaluation;	employee_hire_evaluation
SELECT SUM(bonus) FROM evaluation;	employee_hire_evaluation
SELECT hiring.* FROM hiring;	employee_hire_evaluation
SELECT shop_id, employee_id, start_from, is_full_time FROM hiring;	employee_hire_evaluation
SELECT shop.district FROM shop WHERE (number_products < 3000 AND shop_id IN (SELECT shop_id FROM shop WHERE number_products > 10000))	employee_hire_evaluation
SELECT shop.district FROM shop INNER JOIN ( SELECT district FROM shop WHERE number_products < 3000 GROUP BY district ) AS low_product_shops ON shop.district = low_product_shops.district INNER JOIN ( SELECT district FROM shop WHERE number_products > 10000 GROUP BY district ) AS high_product_shops ON shop.district = high_product_shops.district;	employee_hire_evaluation
SELECT COUNT(DISTINCT location) FROM shop;	employee_hire_evaluation
SELECT COUNT(DISTINCT location) FROM shop;	employee_hire_evaluation
SELECT COUNT(*) FROM documents;	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM documents;	cre_Doc_Template_Mgt
SELECT documents.document_id, documents.document_name, documents.document_description FROM documents;	cre_Doc_Template_Mgt
SELECT documents.document_id, documents.document_name, documents.document_description FROM documents;	cre_Doc_Template_Mgt
SELECT documents.document_name, documents.template_id FROM documents WHERE documents.document_description LIKE '%w%';	cre_Doc_Template_Mgt
SELECT documents.document_name, documents.template_id FROM documents WHERE documents.document_description LIKE '%w%';	cre_Doc_Template_Mgt
SELECT documents.document_id, documents.template_id, documents.document_description FROM documents WHERE documents.document_name = "Robbin CV";	cre_Doc_Template_Mgt
SELECT documents.document_id, documents.template_id, documents.document_description FROM documents WHERE documents.document_name = 'Robbin CV';	cre_Doc_Template_Mgt
SELECT COUNT(DISTINCT templates.template_id) FROM documents JOIN templates ON documents.template_id = templates.template_id;	cre_Doc_Template_Mgt
SELECT COUNT(DISTINCT templates.template_id) as template_count FROM templates JOIN documents ON templates.template_id = documents.template_id;	cre_Doc_Template_Mgt
SELECT COUNT(DISTINCT documents.document_id) AS document_count FROM documents JOIN templates ON documents.template_id = templates.template_id JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code WHERE ref_template_types.template_type_code = 'PPT';	cre_Doc_Template_Mgt
SELECT COUNT(DISTINCT documents.document_id) FROM documents JOIN templates ON documents.template_id = templates.template_id JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code WHERE ref_template_types.template_type_description = 'PPT';	cre_Doc_Template_Mgt
SELECT templates.template_id, COUNT(documents.document_id) FROM templates LEFT JOIN documents ON templates.template_id = documents.template_id GROUP BY templates.template_id;	cre_Doc_Template_Mgt
SELECT templates.template_id, COUNT(*) AS usage_count FROM templates JOIN documents ON templates.template_id = documents.template_id GROUP BY templates.template_id;	cre_Doc_Template_Mgt
SELECT templates.template_id, templates.template_type_code FROM templates JOIN documents ON documents.template_id = templates.template_id GROUP BY templates.template_id, templates.template_type_code ORDER BY COUNT(documents.document_id) DESC LIMIT 1;	cre_Doc_Template_Mgt
SELECT templates.template_id, templates.template_type_code FROM templates JOIN documents ON templates.template_id = documents.template_id GROUP BY templates.template_id, templates.template_type_code ORDER BY COUNT(documents.document_id) DESC LIMIT 1;	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates JOIN documents ON documents.template_id = templates.template_id GROUP BY templates.template_id HAVING COUNT(DISTINCT documents.document_id) > 1	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates WHERE templates.template_id IN (SELECT documents.template_id FROM documents GROUP BY documents.template_id HAVING COUNT(*) > 1);	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates LEFT JOIN documents ON templates.template_id = documents.template_id WHERE documents.document_id IS NULL;	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates LEFT JOIN documents ON templates.template_id = documents.template_id WHERE documents.document_id IS NULL;	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM templates;	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM templates;	cre_Doc_Template_Mgt
SELECT templates.template_id, templates.version_number, templates.template_type_code FROM templates;	cre_Doc_Template_Mgt
SELECT templates.template_id, templates.version_number, templates.template_type_code FROM templates;	cre_Doc_Template_Mgt
SELECT DISTINCT template_type_code FROM templates;	cre_Doc_Template_Mgt
SELECT template_type_code FROM templates;	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates WHERE templates.template_type_code IN ('PP', 'PPT');	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates WHERE templates.template_type_code = 'PP' OR templates.template_type_code = 'PPT';	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM templates WHERE template_type_code = 'CV';	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM templates WHERE template_type_code = 'CV';	cre_Doc_Template_Mgt
SELECT templates.version_number, templates.template_type_code FROM templates WHERE templates.version_number > 5;	cre_Doc_Template_Mgt
SELECT templates.version_number, templates.template_type_code FROM templates WHERE templates.version_number > 5;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code, COUNT(templates.template_id) FROM ref_template_types LEFT JOIN templates ON ref_template_types.template_type_code = templates.template_type_code GROUP BY ref_template_types.template_type_code;	cre_Doc_Template_Mgt
SELECT template_type_code, COUNT(*) AS num_templates FROM templates GROUP BY template_type_code;	cre_Doc_Template_Mgt
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1;	cre_Doc_Template_Mgt
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(template_id) DESC LIMIT 1;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM ref_template_types LEFT JOIN templates ON templates.template_type_code = ref_template_types.template_type_code GROUP BY ref_template_types.template_type_code HAVING COUNT(templates.template_id) < 3;	cre_Doc_Template_Mgt
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(template_id) < 3;	cre_Doc_Template_Mgt
SELECT MIN(version_number), template_type_code FROM templates;	cre_Doc_Template_Mgt
SELECT templates.version_number, templates.template_type_code FROM templates WHERE templates.version_number = (SELECT MIN(version_number) FROM templates)	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM documents JOIN templates ON documents.template_id = templates.template_id JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code WHERE documents.document_name = "Data base";	cre_Doc_Template_Mgt
SELECT templates.template_type_code FROM documents JOIN templates ON documents.template_id = templates.template_id WHERE documents.document_name = 'Data base';	cre_Doc_Template_Mgt
SELECT documents.document_name FROM documents JOIN templates ON templates.template_id = documents.template_id JOIN ref_template_types ON ref_template_types.template_type_code = templates.template_type_code WHERE ref_template_types.template_type_code = "BK";	cre_Doc_Template_Mgt
SELECT documents.document_name FROM documents JOIN templates ON documents.template_id = templates.template_id WHERE templates.template_type_code = 'BK';	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code, COUNT(documents.document_id) FROM templates INNER JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code INNER JOIN documents ON templates.template_id = documents.template_id GROUP BY ref_template_types.template_type_code;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code, COUNT(DISTINCT documents.document_id) FROM ref_template_types JOIN templates ON ref_template_types.template_type_code = templates.template_type_code JOIN documents ON templates.template_id = documents.template_id GROUP BY ref_template_types.template_type_code;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM templates JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code JOIN documents ON templates.template_id = documents.template_id GROUP BY ref_template_types.template_type_code ORDER BY COUNT(documents.document_id) DESC LIMIT 1;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM documents JOIN templates ON documents.template_id = templates.template_id JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code GROUP BY ref_template_types.template_type_code ORDER BY COUNT(*) DESC LIMIT 1;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM ref_template_types LEFT JOIN templates ON ref_template_types.template_type_code = templates.template_type_code WHERE templates.template_type_code IS NULL;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM ref_template_types WHERE ref_template_types.template_type_code NOT IN (SELECT templates.template_type_code FROM templates INNER JOIN documents ON templates.template_id = documents.template_id)	cre_Doc_Template_Mgt
SELECT template_type_code, template_type_description FROM ref_template_types;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code, ref_template_types.template_type_description FROM ref_template_types;	cre_Doc_Template_Mgt
SELECT template_type_description FROM ref_template_types WHERE template_type_code = 'AD';	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_description FROM templates JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code WHERE templates.template_type_code = 'AD';	cre_Doc_Template_Mgt
SELECT template_type_code FROM ref_template_types WHERE template_type_description = 'Book';	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_code FROM ref_template_types WHERE ref_template_types.template_type_description = "Book";	cre_Doc_Template_Mgt
SELECT DISTINCT ref_template_types.template_type_description FROM ref_template_types JOIN templates ON ref_template_types.template_type_code = templates.template_type_code JOIN documents ON templates.template_id = documents.template_id;	cre_Doc_Template_Mgt
SELECT ref_template_types.template_type_description FROM templates JOIN documents ON documents.template_id = templates.template_id JOIN ref_template_types ON ref_template_types.template_type_code = templates.template_type_code GROUP BY ref_template_types.template_type_description;	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code WHERE ref_template_types.template_type_description = "Presentation";	cre_Doc_Template_Mgt
SELECT templates.template_id FROM templates INNER JOIN ref_template_types ON templates.template_type_code = ref_template_types.template_type_code WHERE ref_template_types.template_type_description = 'Presentation';	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM paragraphs;	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM paragraphs;	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM paragraphs p JOIN documents d ON p.document_id = d.document_id WHERE d.document_name = 'Summer Show';	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM paragraphs WHERE document_id = (SELECT document_id FROM documents WHERE document_name = 'Summer Show');	cre_Doc_Template_Mgt
SELECT paragraph_text, paragraph_id, document_id, other_details FROM paragraphs WHERE paragraph_text = 'Korea';	cre_Doc_Template_Mgt
SELECT paragraph_text, other_details FROM paragraphs WHERE paragraph_text = 'Korea';	cre_Doc_Template_Mgt
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_id = ( SELECT document_id FROM documents WHERE document_name = 'Welcome to NY' );	cre_Doc_Template_Mgt
SELECT paragraph_id, paragraph_text FROM paragraphs INNER JOIN documents ON paragraphs.document_id = documents.document_id WHERE documents.document_name = 'Welcome to NY';	cre_Doc_Template_Mgt
SELECT paragraph_text FROM paragraphs WHERE document_id = ( SELECT document_id FROM documents WHERE document_name = 'Customer reviews' );	cre_Doc_Template_Mgt
SELECT paragraph_text FROM paragraphs WHERE document_id = ( SELECT document_id FROM documents WHERE document_name = 'Customer reviews' );	cre_Doc_Template_Mgt
SELECT documents.document_id, COUNT(paragraphs.paragraph_id) FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id ORDER BY documents.document_id;	cre_Doc_Template_Mgt
SELECT documents.document_id, COUNT(paragraphs.paragraph_id) AS paragraph_count FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id ORDER BY documents.document_id;	cre_Doc_Template_Mgt
SELECT documents.document_id, documents.document_name, COUNT(paragraphs.paragraph_id) as paragraph_count FROM documents INNER JOIN paragraphs ON paragraphs.document_id = documents.document_id GROUP BY documents.document_id, documents.document_name;	cre_Doc_Template_Mgt
SELECT documents.document_id, documents.document_name, COUNT(paragraphs.paragraph_id) AS number_of_paragraphs FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id, documents.document_name;	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents INNER JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id HAVING COUNT(paragraphs.paragraph_id) >= 2;	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents INNER JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id HAVING COUNT(paragraphs.paragraph_id) >= 2;	cre_Doc_Template_Mgt
SELECT documents.document_id, documents.document_name FROM documents JOIN paragraphs ON paragraphs.document_id = documents.document_id GROUP BY documents.document_id, documents.document_name ORDER BY COUNT(paragraphs.paragraph_id) DESC LIMIT 1;	cre_Doc_Template_Mgt
SELECT documents.document_id, documents.document_name FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id, documents.document_name ORDER BY COUNT(paragraphs.paragraph_id) DESC LIMIT 1;	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id ORDER BY COUNT(paragraphs.paragraph_id) LIMIT 1;	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id ORDER BY COUNT(paragraphs.paragraph_id) ASC LIMIT 1;	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id HAVING COUNT(paragraphs.paragraph_id) BETWEEN 1 AND 2;	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY documents.document_id HAVING COUNT(paragraphs.paragraph_id) BETWEEN 1 AND 2;	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id WHERE paragraphs.paragraph_text IN ('Brazil', 'Ireland');	cre_Doc_Template_Mgt
SELECT documents.document_id FROM documents JOIN paragraphs ON paragraphs.document_id = documents.document_id WHERE paragraphs.paragraph_text IN ('Brazil', 'Ireland');	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM teacher;	course_teach
SELECT COUNT(*) FROM teacher;	course_teach
SELECT name FROM teacher ORDER BY age ASC;	course_teach
SELECT name FROM teacher ORDER BY age ASC;	course_teach
SELECT age, hometown FROM teacher;	course_teach
SELECT teacher.age, teacher.hometown FROM teacher;	course_teach
SELECT teacher.name FROM teacher WHERE teacher.hometown != 'Little Lever Urban District';	course_teach
SELECT name FROM teacher WHERE hometown != 'Little Lever Urban District';	course_teach
SELECT name FROM teacher WHERE age IN (32, 33);	course_teach
SELECT name FROM teacher WHERE age IN (32, 33)	course_teach
SELECT hometown FROM teacher ORDER BY age ASC LIMIT 1;	course_teach
SELECT hometown FROM teacher ORDER BY age ASC LIMIT 1;	course_teach
SELECT teacher.hometown, COUNT(*) as num_teachers FROM teacher GROUP BY teacher.hometown;	course_teach
SELECT teacher.hometown, count(*) FROM teacher GROUP BY teacher.hometown;	course_teach
SELECT hometown FROM teacher GROUP BY hometown ORDER BY COUNT(*) DESC LIMIT 1;	course_teach
SELECT hometown FROM teacher GROUP BY hometown ORDER BY COUNT(*) DESC LIMIT 1;	course_teach
SELECT DISTINCT hometown FROM teacher GROUP BY hometown HAVING COUNT(*) > 1;	course_teach
SELECT teacher.hometown FROM teacher GROUP BY teacher.hometown HAVING COUNT(DISTINCT teacher.teacher_id) >= 2;	course_teach
SELECT teacher.name, course.course FROM teacher INNER JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id INNER JOIN course ON course_arrange.course_id = course.course_id;	course_teach
SELECT teacher.name, course.course FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id;	course_teach
SELECT teacher.name, course.course FROM teacher INNER JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id INNER JOIN course ON course_arrange.course_id = course.course_id ORDER BY teacher.name ASC;	course_teach
SELECT teacher.name, course.course FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id ORDER BY teacher.name ASC;	course_teach
SELECT teacher.name FROM course_arrange JOIN teacher ON course_arrange.teacher_id = teacher.teacher_id JOIN course ON course_arrange.course_id = course.course_id WHERE course.course = "Math";	course_teach
SELECT teacher.name FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id WHERE course.course = 'Math';	course_teach
SELECT teacher.name, COUNT(course_arrange.course_id) FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id GROUP BY teacher.name;	course_teach
SELECT teacher.name, COUNT(course_arrange.course_id) FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id GROUP BY teacher.name;	course_teach
SELECT name FROM teacher WHERE teacher_id IN (SELECT teacher_id FROM course_arrange GROUP BY teacher_id HAVING COUNT(DISTINCT course_id) >= 2);	course_teach
SELECT name FROM teacher WHERE teacher_id IN ( SELECT teacher_id FROM course_arrange GROUP BY teacher_id HAVING COUNT(DISTINCT course_id) >= 2 );	course_teach
SELECT name FROM teacher WHERE teacher_id NOT IN ( SELECT teacher_id FROM course_arrange )	course_teach
SELECT teacher.name FROM teacher LEFT JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id WHERE course_arrange.course_id IS NULL;	course_teach
SELECT COUNT(*) FROM visitor WHERE age < 30;	museum_visit
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC;	museum_visit
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4;	museum_visit
SELECT visitor.name, visitor.level_of_membership FROM visitor WHERE visitor.level_of_membership > 4 ORDER BY visitor.age DESC;	museum_visit
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1;	museum_visit
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009;	museum_visit
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum";	museum_visit
SELECT museum.name FROM museum WHERE museum.num_of_staff > ( SELECT MIN(num_of_staff) FROM museum WHERE museum.open_year > 2010 );	museum_visit
SELECT visitor.id, visitor.name, visitor.age FROM visitor JOIN visit ON visitor.id = visit.visitor_id GROUP BY visitor.id, visitor.name, visitor.age HAVING COUNT(DISTINCT visit.museum_id) > 1;	museum_visit
SELECT visitor.id, visitor.name, visitor.level_of_membership FROM visitor JOIN visit ON visitor.id = visit.visitor_id GROUP BY visitor.id, visitor.name, visitor.level_of_membership ORDER BY SUM(visit.total_spent) DESC LIMIT 1;	museum_visit
SELECT visit.museum_id, museum.name FROM visit JOIN museum ON visit.museum_id = museum.museum_id GROUP BY visit.museum_id, museum.name ORDER BY COUNT(*) DESC LIMIT 1;	museum_visit
SELECT museum.name FROM museum WHERE museum.museum_id NOT IN (SELECT visit.museum_id FROM visit)	museum_visit
SELECT visitor.name, visitor.age FROM visitor JOIN visit ON visitor.id = visit.visitor_id GROUP BY visit.visitor_id ORDER BY MAX(visit.num_of_ticket) DESC LIMIT 1;	museum_visit
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit;	museum_visit
SELECT SUM(total_spent) FROM visit WHERE visitor_id IN (SELECT id FROM visitor WHERE level_of_membership = 1);	museum_visit
SELECT visitor.name FROM visitor JOIN visit ON visitor.id = visit.visitor_id JOIN museum ON visit.museum_id = museum.museum_id WHERE museum.open_year < 2009 INTERSECT SELECT visitor.name FROM visitor JOIN visit ON visitor.id = visit.visitor_id JOIN museum ON visit.museum_id = museum.museum_id WHERE museum.open_year > 2011;	museum_visit
SELECT COUNT(DISTINCT visitor_id) FROM visit WHERE museum_id IN ( SELECT museum_id FROM museum WHERE open_year <= 2010)	museum_visit
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008;	museum_visit
SELECT COUNT(*) FROM players;	wta_1
SELECT COUNT(*) FROM players;	wta_1
SELECT COUNT(*) FROM matches;	wta_1
SELECT COUNT(*) FROM matches;	wta_1
SELECT players.first_name, players.birth_date FROM players WHERE players.country_code = "USA";	wta_1
SELECT players.first_name, players.birth_date FROM players WHERE players.player_id IN (SELECT player_id FROM rankings WHERE player_id IN (SELECT winner_id FROM matches WHERE winner_ioc = "USA") OR player_id IN (SELECT loser_id FROM matches WHERE winner_ioc = "USA"));	wta_1
SELECT (SELECT AVG(loser_age) FROM matches) AS average_loser_age, (SELECT AVG(winner_age) FROM matches) AS average_winner_age;	wta_1
SELECT AVG(loser_age) AS average_loser_age, AVG(winner_age) AS average_winner_age FROM matches;	wta_1
SELECT AVG(rankings.ranking) as average_rank FROM matches JOIN players ON matches.winner_id = players.player_id JOIN rankings ON players.player_id = rankings.player_id;	wta_1
SELECT AVG(winner_rank) FROM matches;	wta_1
SELECT MAX(loser_rank) FROM matches;	wta_1
SELECT MAX(loser_rank) FROM matches;	wta_1
SELECT COUNT(DISTINCT country_code) FROM players;	wta_1
SELECT COUNT(DISTINCT country_code) FROM players;	wta_1
SELECT COUNT(DISTINCT loser_name) FROM matches;	wta_1
SELECT COUNT(DISTINCT loser_name) FROM matches;	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10;	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10;	wta_1
SELECT DISTINCT first_name, last_name FROM matches JOIN players ON matches.winner_id = players.player_id WHERE year = 2013 INTERSECT SELECT DISTINCT first_name, last_name FROM matches JOIN players ON matches.winner_id = players.player_id WHERE year = 2016;	wta_1
SELECT players.first_name, players.last_name FROM matches JOIN players ON matches.winner_id = players.player_id WHERE year = 2013 INTERSECT SELECT players.first_name, players.last_name FROM matches JOIN players ON matches.winner_id = players.player_id WHERE year = 2016;	wta_1
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016;	wta_1
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016;	wta_1
SELECT players.country_code, players.first_name FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.tourney_name = 'WTA Championships' INTERSECT SELECT players.country_code, players.first_name FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.tourney_name = 'Australian Open';	wta_1
SELECT players.first_name, players.country_code FROM players INNER JOIN matches ON players.player_id = matches.winner_id WHERE matches.tourney_name = 'WTA Championships' AND players.player_id IN ( SELECT winner_id FROM matches WHERE tourney_name = 'Australian Open' );	wta_1
SELECT players.first_name, players.country_code FROM players WHERE players.birth_date = (SELECT MIN(birth_date) FROM players) ;	wta_1
SELECT players.first_name, players.country_code FROM players ORDER BY players.birth_date ASC LIMIT 1;	wta_1
SELECT players.first_name, players.last_name FROM players ORDER BY players.birth_date;	wta_1
SELECT players.first_name || ' ' || players.last_name FROM players ORDER BY players.birth_date;	wta_1
SELECT players.first_name, players.last_name FROM players WHERE players.hand = 'L' ORDER BY players.birth_date;	wta_1
SELECT players.first_name || ' ' || players.last_name FROM players WHERE players.hand = 'Left' ORDER BY players.birth_date;	wta_1
SELECT players.first_name, players.country_code FROM players WHERE players.player_id = ( SELECT player_id FROM rankings GROUP BY player_id ORDER BY COUNT(tours) DESC LIMIT 1 );	wta_1
SELECT players.first_name, players.country_code FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.player_id ORDER BY COUNT(rankings.tours) DESC LIMIT 1;	wta_1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1;	wta_1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1;	wta_1
SELECT players.first_name, players.last_name, SUM(matches.winner_rank_points) AS total_rank_points FROM matches JOIN players ON matches.winner_id = players.player_id GROUP BY players.first_name, players.last_name ORDER BY total_rank_points DESC LIMIT 1;	wta_1
SELECT matches.winner_name, SUM(matches.winner_rank_points) AS total_rank_points FROM matches GROUP BY matches.winner_name ORDER BY COUNT(matches.winner_name) DESC LIMIT 1;	wta_1
SELECT matches.winner_name FROM matches JOIN players ON players.player_id = matches.winner_id JOIN rankings ON rankings.player_id = players.player_id WHERE matches.tourney_name = 'Australian Open' ORDER BY rankings.ranking_points DESC LIMIT 1;	wta_1
SELECT matches.winner_name FROM matches JOIN players ON matches.winner_id = players.player_id WHERE matches.tourney_name = "Australian Open" ORDER BY matches.winner_rank_points DESC LIMIT 1;	wta_1
SELECT loser_name, winner_name FROM matches WHERE minutes = ( SELECT MAX(minutes) FROM matches );	wta_1
SELECT matches.winner_name, matches.loser_name FROM matches WHERE minutes = ( SELECT MAX(minutes) FROM matches );	wta_1
SELECT players.first_name, AVG(rankings.ranking) AS average_ranking FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.player_id, players.first_name;	wta_1
SELECT players.first_name, AVG(rankings.ranking) as average_ranking FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.first_name;	wta_1
SELECT players.first_name, SUM(rankings.ranking_points) as total_ranking_points FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.player_id, players.first_name;	wta_1
SELECT players.first_name, SUM(rankings.ranking_points) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.first_name;	wta_1
SELECT country_code, COUNT(player_id) AS player_count FROM players GROUP BY country_code;	wta_1
SELECT country_code, COUNT(*) as player_count FROM players GROUP BY country_code;	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1;	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(player_id) DESC LIMIT 1;	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(player_id) > 50;	wta_1
SELECT players.country_code FROM players GROUP BY players.country_code HAVING COUNT(players.player_id) > 50;	wta_1
SELECT ranking_date, COUNT(DISTINCT tours) FROM rankings GROUP BY ranking_date;	wta_1
SELECT ranking_date, COUNT(DISTINCT tours) AS total_tours FROM rankings GROUP BY ranking_date;	wta_1
SELECT year, COUNT(*) as num_matches FROM matches GROUP BY year;	wta_1
SELECT year, COUNT(*) AS match_count FROM matches GROUP BY year;	wta_1
SELECT winner_name, winner_rank FROM matches JOIN players ON matches.winner_id = players.player_id ORDER BY winner_age LIMIT 3;	wta_1
SELECT winner_name, winner_rank FROM matches JOIN players ON matches.winner_id = players.player_id ORDER BY winner_age ASC LIMIT 3;	wta_1
SELECT COUNT(DISTINCT matches.winner_id) FROM matches JOIN players ON matches.winner_id = players.player_id WHERE tourney_name = 'WTA Championships' AND hand = 'left';	wta_1
SELECT COUNT(DISTINCT matches.winner_id) FROM matches JOIN players ON matches.winner_id = players.player_id WHERE matches.winner_hand = 'L' AND matches.tourney_name = 'WTA Championships';	wta_1
SELECT players.first_name, players.country_code, players.birth_date FROM players INNER JOIN matches ON matches.winner_id = players.player_id WHERE matches.winner_rank_points = (SELECT MAX(winner_rank_points) FROM matches);	wta_1
SELECT players.first_name, players.country_code, players.birth_date FROM players JOIN matches ON matches.winner_id = players.player_id GROUP BY players.player_id ORDER BY SUM(matches.winner_rank_points) DESC LIMIT 1;	wta_1
SELECT players.hand, COUNT(*) AS count FROM players GROUP BY players.hand;	wta_1
SELECT hand, COUNT(*) AS count FROM players GROUP BY hand;	wta_1
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured';	battle_death
SELECT ship.name, ship.tonnage FROM ship ORDER BY ship.name DESC;	battle_death
SELECT name, date, result FROM battle;	battle_death
SELECT MIN(killed) AS minimum_death_toll, MAX(killed) AS maximum_death_toll FROM death;	battle_death
SELECT AVG(injured) FROM death;	battle_death
SELECT death.note, death.killed FROM death JOIN ship ON death.caused_by_ship_id = ship.id WHERE ship.tonnage = 't';	battle_death
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril';	battle_death
SELECT battle.id, battle.name FROM battle WHERE battle.id IN ( SELECT ship.lost_in_battle FROM ship WHERE ship.ship_type = 'Brig' )	battle_death
SELECT battle.id, battle.name FROM battle JOIN ship ON ship.lost_in_battle = battle.id JOIN death ON death.caused_by_ship_id = ship.id GROUP BY battle.id, battle.name HAVING SUM(death.killed) > 10;	battle_death
SELECT ship.id, ship.name FROM death JOIN ship ON death.caused_by_ship_id = ship.id GROUP BY ship.id, ship.name ORDER BY SUM(death.injured) DESC LIMIT 1;	battle_death
SELECT DISTINCT battle.name FROM battle WHERE battle.bulgarian_commander = 'Kaloyan' AND battle.latin_commander = 'Baldwin I';	battle_death
SELECT COUNT(DISTINCT result) FROM battle;	battle_death
SELECT COUNT(DISTINCT battle.id) FROM battle WHERE battle.id NOT IN ( SELECT ship.lost_in_battle FROM ship WHERE ship.tonnage = '225' )	battle_death
SELECT battle.name, battle.date FROM battle INNER JOIN ship ON ship.lost_in_battle = battle.id WHERE ship.name IN ('Lettice', 'HMS Atalanta');	battle_death
SELECT name, result, bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE location = 'English Channel');	battle_death
SELECT note FROM death WHERE note LIKE '%East%';	battle_death
SELECT addresses.line_1, addresses.line_2 FROM addresses;	student_transcripts_tracking
SELECT addresses.line_1, addresses.line_2 FROM addresses;	student_transcripts_tracking
SELECT COUNT(*) FROM courses;	student_transcripts_tracking
SELECT COUNT(*) FROM courses;	student_transcripts_tracking
SELECT course_description FROM courses WHERE course_name = 'math';	student_transcripts_tracking
SELECT course_description FROM courses WHERE course_name = "math";	student_transcripts_tracking
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea';	student_transcripts_tracking
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea";	student_transcripts_tracking
SELECT departments.department_name, departments.department_id FROM departments JOIN degree_programs ON departments.department_id = degree_programs.department_id GROUP BY departments.department_id ORDER BY COUNT(DISTINCT degree_programs.degree_program_id) DESC LIMIT 1;	student_transcripts_tracking
SELECT departments.department_id, departments.department_name FROM departments INNER JOIN degree_programs ON departments.department_id = degree_programs.department_id GROUP BY departments.department_id, departments.department_name ORDER BY COUNT(degree_programs.degree_program_id) DESC LIMIT 1;	student_transcripts_tracking
SELECT COUNT(DISTINCT department_id) FROM degree_programs;	student_transcripts_tracking
SELECT COUNT(DISTINCT department_id) FROM degree_programs;	student_transcripts_tracking
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs;	student_transcripts_tracking
SELECT COUNT(DISTINCT degree_program_id) FROM degree_programs;	student_transcripts_tracking
SELECT COUNT(*) FROM degree_programs WHERE department_id = ( SELECT department_id FROM departments WHERE department_name = 'engineering')	student_transcripts_tracking
SELECT count(degree_program_id) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'engineering');	student_transcripts_tracking
SELECT section_name, section_description FROM sections;	student_transcripts_tracking
SELECT section_name, section_description FROM sections;	student_transcripts_tracking
SELECT course_id, course_name FROM courses WHERE course_id IN ( SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(section_id) <= 2 )	student_transcripts_tracking
SELECT course_name, course_id FROM courses WHERE course_id IN ( SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) < 2 );	student_transcripts_tracking
SELECT section_name FROM sections ORDER BY section_name DESC;	student_transcripts_tracking
SELECT section_name FROM sections ORDER BY section_name DESC;	student_transcripts_tracking
SELECT semesters.semester_id, semesters.semester_name FROM semesters JOIN student_enrolment ON semesters.semester_id = student_enrolment.semester_id GROUP BY semesters.semester_id, semesters.semester_name ORDER BY COUNT(student_enrolment.student_id) DESC LIMIT 1;	student_transcripts_tracking
SELECT semesters.semester_id, semesters.semester_name FROM semesters JOIN student_enrolment ON semesters.semester_id = student_enrolment.semester_id GROUP BY semesters.semester_id, semesters.semester_name ORDER BY COUNT(student_enrolment.student_id) DESC LIMIT 1;	student_transcripts_tracking
SELECT department_description FROM departments WHERE department_name LIKE '%computer%';	student_transcripts_tracking
SELECT department_description FROM departments WHERE department_name LIKE '%computer%';	student_transcripts_tracking
SELECT first_name, middle_name, last_name, student_id FROM students WHERE student_id IN ( SELECT student_id FROM student_enrolment WHERE semester_id = [semester_id] GROUP BY student_id HAVING COUNT(DISTINCT degree_program_id) = 2 );	student_transcripts_tracking
SELECT students.student_id, students.first_name, students.middle_name, students.last_name FROM student_enrolment JOIN students ON student_enrolment.student_id = students.student_id GROUP BY students.student_id, students.first_name, students.middle_name, students.last_name HAVING COUNT(DISTINCT student_enrolment.degree_program_id) = 2 AND COUNT(DISTINCT student_enrolment.semester_id) = 1	student_transcripts_tracking
SELECT students.first_name, students.middle_name, students.last_name FROM students JOIN student_enrolment ON students.student_id = student_enrolment.student_id JOIN degree_programs ON student_enrolment.degree_program_id = degree_programs.degree_program_id WHERE degree_programs.degree_summary_name = "Bachelor";	student_transcripts_tracking
SELECT students.first_name, students.middle_name, students.last_name FROM students JOIN student_enrolment ON students.student_id = student_enrolment.student_id JOIN degree_programs ON student_enrolment.degree_program_id = degree_programs.degree_program_id WHERE degree_programs.degree_summary_name = 'Bachelors';	student_transcripts_tracking
SELECT degree_summary_name FROM degree_programs JOIN student_enrolment ON degree_programs.degree_program_id = student_enrolment.degree_program_id GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1;	student_transcripts_tracking
SELECT degree_programs.degree_summary_name FROM degree_programs JOIN student_enrolment ON student_enrolment.degree_program_id = degree_programs.degree_program_id GROUP BY degree_programs.degree_summary_name ORDER BY COUNT(student_enrolment.student_id) DESC LIMIT 1;	student_transcripts_tracking
SELECT degree_programs.degree_program_id, degree_programs.degree_summary_name FROM degree_programs JOIN student_enrolment ON degree_programs.degree_program_id = student_enrolment.degree_program_id GROUP BY degree_programs.degree_program_id, degree_programs.degree_summary_name ORDER BY COUNT(student_enrolment.student_id) DESC LIMIT 1;	student_transcripts_tracking
SELECT degree_program_id, degree_summary_name, degree_summary_description FROM degree_programs WHERE degree_program_id = ( SELECT degree_program_id FROM student_enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1 )	student_transcripts_tracking
SELECT student_enrolment.student_id, students.first_name, students.middle_name, students.last_name, COUNT(student_enrolment.student_enrolment_id) as num_enrollments FROM student_enrolment JOIN students ON student_enrolment.student_id = students.student_id GROUP BY student_enrolment.student_id ORDER BY num_enrollments DESC LIMIT 1;	student_transcripts_tracking
SELECT students.first_name, students.middle_name, students.last_name, students.student_id, COUNT(*) AS enrollments FROM students JOIN student_enrolment ON students.student_id = student_enrolment.student_id GROUP BY students.student_id ORDER BY enrollments DESC LIMIT 1;	student_transcripts_tracking
SELECT semesters.semester_name FROM semesters LEFT JOIN student_enrolment ON semesters.semester_id = student_enrolment.semester_id WHERE student_enrolment.student_id IS NULL;	student_transcripts_tracking
SELECT semesters.semester_name FROM semesters LEFT JOIN student_enrolment ON semesters.semester_id = student_enrolment.semester_id WHERE student_enrolment.student_id IS NULL;	student_transcripts_tracking
SELECT courses.course_name FROM courses INNER JOIN student_enrolment_courses ON courses.course_id = student_enrolment_courses.course_id;	student_transcripts_tracking
SELECT courses.course_name FROM courses INNER JOIN student_enrolment_courses ON courses.course_id = student_enrolment_courses.course_id;	student_transcripts_tracking
SELECT courses.course_name FROM courses JOIN student_enrolment_courses ON courses.course_id = student_enrolment_courses.course_id GROUP BY student_enrolment_courses.course_id ORDER BY COUNT(student_enrolment_courses.student_enrolment_id) DESC LIMIT 1;	student_transcripts_tracking
SELECT course_name FROM courses JOIN student_enrolment_courses ON courses.course_id = student_enrolment_courses.course_id GROUP BY course_name ORDER BY COUNT(*) DESC LIMIT 1;	student_transcripts_tracking
SELECT students.last_name FROM students JOIN addresses ON students.current_address_id = addresses.address_id LEFT JOIN student_enrolment ON students.student_id = student_enrolment.student_id WHERE addresses.state_province_county = 'North Carolina' AND student_enrolment.student_id IS NULL;	student_transcripts_tracking
SELECT students.last_name FROM students JOIN addresses ON students.permanent_address_id = addresses.address_id LEFT JOIN student_enrolment ON students.student_id = student_enrolment.student_id WHERE addresses.state_province_county = 'North Carolina' AND student_enrolment.student_id IS NULL;	student_transcripts_tracking
SELECT transcripts.transcript_date, transcripts.transcript_id FROM transcripts WHERE transcripts.transcript_id IN (SELECT student_enrolment_courses.student_enrolment_id FROM student_enrolment_courses GROUP BY student_enrolment_courses.student_enrolment_id HAVING COUNT(*) >= 2);	student_transcripts_tracking
SELECT transcript_date, transcript_id FROM transcripts WHERE transcript_id IN ( SELECT transcript_id FROM student_enrolment_courses GROUP BY transcript_id HAVING COUNT(DISTINCT course_id) >= 2 );	student_transcripts_tracking
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward';	student_transcripts_tracking
SELECT students.cell_mobile_number FROM students WHERE students.first_name = 'Timmothy' AND students.last_name = 'Ward';	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1;	student_transcripts_tracking
SELECT students.first_name, students.middle_name, students.last_name FROM students ORDER BY students.date_first_registered LIMIT 1;	student_transcripts_tracking
SELECT students.first_name, students.middle_name, students.last_name FROM students JOIN student_enrolment ON students.student_id = student_enrolment.student_id JOIN transcripts ON student_enrolment.student_enrolment_id = transcripts.transcript_id ORDER BY transcripts.transcript_date ASC LIMIT 1;	student_transcripts_tracking
SELECT students.first_name, students.middle_name, students.last_name FROM students JOIN student_enrolment ON students.student_id = student_enrolment.student_id JOIN student_enrolment_courses ON student_enrolment.student_enrolment_id = student_enrolment_courses.student_enrolment_id JOIN transcripts ON student_enrolment.student_enrolment_id = transcripts.transcript_id ORDER BY students.date_first_registered ASC LIMIT 1;	student_transcripts_tracking
SELECT students.first_name FROM students JOIN addresses AS perm ON students.permanent_address_id = perm.address_id JOIN addresses AS curr ON students.current_address_id = curr.address_id WHERE perm.line_1 <> curr.line_1;	student_transcripts_tracking
SELECT students.first_name FROM students JOIN addresses AS permanent ON students.permanent_address_id = permanent.address_id JOIN addresses AS current ON students.current_address_id = current.address_id WHERE permanent.line_1 <> current.line_1;	student_transcripts_tracking
SELECT addresses.address_id, addresses.line_1, addresses.line_2, addresses.line_3 FROM addresses WHERE addresses.address_id IN ( SELECT current_address_id FROM students GROUP BY current_address_id ORDER BY COUNT(*) DESC LIMIT 1 );	student_transcripts_tracking
SELECT addresses.address_id, addresses.line_1, addresses.line_2 FROM addresses INNER JOIN students ON students.permanent_address_id = addresses.address_id GROUP BY addresses.address_id ORDER BY COUNT(*) DESC LIMIT 1;	student_transcripts_tracking
SELECT AVG(transcript_date) AS average_print_date FROM transcripts;	student_transcripts_tracking
SELECT AVG(transcript_date) FROM transcripts;	student_transcripts_tracking
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date LIMIT 1;	student_transcripts_tracking
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date ASC LIMIT 1;	student_transcripts_tracking
SELECT COUNT(*) FROM transcripts;	student_transcripts_tracking
SELECT COUNT(*) FROM transcripts;	student_transcripts_tracking
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1;	student_transcripts_tracking
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1;	student_transcripts_tracking
SELECT COUNT(*) as max_enrollment_count, student_enrolment_id FROM student_enrolment_courses GROUP BY student_enrolment_id ORDER BY max_enrollment_count DESC LIMIT 1;	student_transcripts_tracking
SELECT MAX(count_course) as max_count, course_id, student_enrolment_id FROM ( SELECT course_id, student_enrolment_id, COUNT(course_id) as count_course FROM student_enrolment_courses GROUP BY course_id, student_enrolment_id ) GROUP BY course_id ORDER BY max_count DESC LIMIT 1;	student_transcripts_tracking
SELECT transcripts.transcript_date, transcripts.transcript_id FROM transcripts JOIN transcript_contents ON transcripts.transcript_id = transcript_contents.transcript_id JOIN student_enrolment_courses ON transcript_contents.student_course_id = student_enrolment_courses.student_course_id JOIN student_enrolment ON student_enrolment_courses.student_enrolment_id = student_enrolment.student_enrolment_id GROUP BY transcripts.transcript_date, transcripts.transcript_id ORDER BY COUNT(*) ASC LIMIT 1;	student_transcripts_tracking
SELECT transcripts.transcript_id, transcripts.transcript_date FROM transcripts JOIN transcript_contents ON transcript_contents.transcript_id = transcripts.transcript_id GROUP BY transcripts.transcript_id, transcripts.transcript_date ORDER BY COUNT(*) ASC LIMIT 1;	student_transcripts_tracking
SELECT semesters.semester_name FROM semesters JOIN student_enrolment ON student_enrolment.semester_id = semesters.semester_id JOIN degree_programs ON degree_programs.degree_program_id = student_enrolment.degree_program_id WHERE degree_programs.degree_summary_name = 'Bachelor' INTERSECT SELECT semesters.semester_name FROM semesters JOIN student_enrolment ON student_enrolment.semester_id = semesters.semester_id JOIN degree_programs ON degree_programs.degree_program_id = student_enrolment.degree_program_id WHERE degree_programs.degree_summary_name = 'Master';	student_transcripts_tracking
SELECT semesters.semester_id FROM semesters JOIN student_enrolment ON semesters.semester_id = student_enrolment.semester_id JOIN degree_programs ON student_enrolment.degree_program_id = degree_programs.degree_program_id WHERE degree_programs.degree_summary_name IN ('Masters', 'Bachelors') GROUP BY semesters.semester_id HAVING COUNT(DISTINCT degree_programs.degree_summary_name) = 2;	student_transcripts_tracking
SELECT count(DISTINCT students.current_address_id) FROM students;	student_transcripts_tracking
SELECT DISTINCT line_1, line_2, line_3, city FROM addresses JOIN students ON students.permanent_address_id = addresses.address_id OR students.current_address_id = addresses.address_id;	student_transcripts_tracking
SELECT students.first_name, students.last_name, students.middle_name, students.student_id, students.email_address, addresses.line_1, addresses.line_2, addresses.line_3, addresses.city FROM students INNER JOIN addresses ON students.permanent_address_id = addresses.address_id ORDER BY students.last_name DESC;	student_transcripts_tracking
SELECT students.last_name, students.first_name, students.middle_name, students.other_student_details FROM students ORDER BY students.last_name DESC;	student_transcripts_tracking
SELECT section_name, section_description, section_id, course_id FROM sections WHERE section_name = 'h';	student_transcripts_tracking
SELECT sections.section_description FROM sections WHERE sections.section_name = 'h';	student_transcripts_tracking
SELECT students.first_name FROM students WHERE students.permanent_address_id IN (SELECT address_id FROM addresses WHERE country = 'Haiti') OR students.cell_mobile_number = '09700166582';	student_transcripts_tracking
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582';	student_transcripts_tracking
SELECT title FROM cartoon ORDER BY title ASC;	tvshow
SELECT cartoon.title FROM cartoon ORDER BY cartoon.title ASC;	tvshow
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones';	tvshow
SELECT cartoon.title FROM cartoon WHERE cartoon.directed_by = 'Ben Jones';	tvshow
SELECT COUNT(*) FROM cartoon WHERE written_by = "Joseph Kuhr";	tvshow
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr";	tvshow
SELECT cartoon.title, cartoon.directed_by FROM cartoon ORDER BY cartoon.original_air_date;	tvshow
SELECT cartoon.title, cartoon.directed_by FROM cartoon JOIN tv_channel ON cartoon.channel = tv_channel.id ORDER BY cartoon.original_air_date;	tvshow
SELECT title FROM cartoon WHERE directed_by IN ("Ben Jones", "Brandon Vietti");	tvshow
SELECT cartoon.title FROM cartoon WHERE cartoon.directed_by = 'Ben Jones' OR cartoon.directed_by = 'Brandon Vietti';	tvshow
SELECT country, COUNT(*) as num_channels FROM tv_channel GROUP BY country ORDER BY num_channels DESC LIMIT 1;	tvshow
SELECT country, COUNT(*) AS channel_count FROM tv_channel GROUP BY country ORDER BY channel_count DESC LIMIT 1;	tvshow
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM tv_channel;	tvshow
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM tv_channel;	tvshow
SELECT content FROM tv_channel WHERE series_name = "Sky Radio";	tvshow
SELECT content FROM tv_channel WHERE series_name = "Sky Radio";	tvshow
SELECT package_option FROM tv_channel WHERE series_name = "Sky Radio";	tvshow
SELECT tv_channel.package_option FROM tv_channel WHERE tv_channel.series_name = 'Sky Radio';	tvshow
SELECT count(*) FROM tv_channel WHERE language = 'English';	tvshow
SELECT COUNT(DISTINCT id) FROM tv_channel WHERE language = 'English';	tvshow
SELECT language, count(*) as num_of_tv_channels FROM tv_channel GROUP BY language ORDER BY num_of_tv_channels LIMIT 1;	tvshow
SELECT language, COUNT(*) AS num_channels FROM tv_channel GROUP BY language ORDER BY num_channels ASC LIMIT 1;	tvshow
SELECT tv_channel.language, COUNT(tv_channel.id) FROM tv_channel GROUP BY tv_channel.language	tvshow
SELECT language, COUNT(DISTINCT tv_channel.id) as num_channels FROM tv_channel GROUP BY language;	tvshow
SELECT series_name FROM tv_channel JOIN cartoon ON cartoon.channel = tv_channel.id WHERE cartoon.title = "The Rise of the Blue Beetle!";	tvshow
SELECT series_name FROM tv_channel WHERE id = ( SELECT channel FROM cartoon WHERE title = 'The Rise of the Blue Beetle!' );	tvshow
SELECT cartoon.title FROM cartoon JOIN tv_channel ON cartoon.channel = tv_channel.id WHERE tv_channel.series_name = "Sky Radio";	tvshow
SELECT cartoon.title FROM cartoon INNER JOIN tv_channel ON cartoon.channel = tv_channel.id WHERE tv_channel.series_name = 'Sky Radio';	tvshow
SELECT episode FROM tv_series ORDER BY rating DESC;	tvshow
SELECT episode FROM tv_series ORDER BY rating;	tvshow
SELECT episode, rating FROM tv_series ORDER BY rating DESC LIMIT 3;	tvshow
SELECT episode, rating FROM tv_series ORDER BY rating DESC LIMIT 3;	tvshow
SELECT MIN(share), MAX(share) FROM tv_series;	tvshow
SELECT MAX(share), MIN(share) FROM tv_series;	tvshow
SELECT air_date FROM tv_series WHERE episode = "A Love of a Lifetime";	tvshow
SELECT air_date FROM tv_series WHERE episode = "A Love of a Lifetime";	tvshow
SELECT weekly_rank FROM tv_series WHERE episode = "A Love of a Lifetime";	tvshow
SELECT tv_series.weekly_rank FROM tv_series WHERE tv_series.episode = 'A Love of a Lifetime';	tvshow
SELECT tv_channel.series_name FROM tv_series JOIN tv_channel ON tv_series.channel = tv_channel.id WHERE tv_series.episode = "A Love of a Lifetime";	tvshow
SELECT tv_channel.series_name FROM tv_series JOIN tv_channel ON tv_series.channel = tv_channel.id WHERE tv_series.episode = "A Love of a Lifetime";	tvshow
SELECT tv_series.episode FROM tv_series JOIN tv_channel ON tv_series.channel = tv_channel.id WHERE tv_channel.series_name = "Sky Radio";	tvshow
SELECT episode FROM tv_series WHERE channel = ( SELECT id FROM tv_channel WHERE series_name = "Sky Radio" ) ;	tvshow
SELECT directed_by, COUNT(*) AS num_cartoons FROM cartoon GROUP BY directed_by;	tvshow
SELECT cartoon.directed_by, COUNT(cartoon.id) as num_cartoons FROM cartoon GROUP BY cartoon.directed_by;	tvshow
SELECT cartoon.production_code, cartoon.channel FROM cartoon WHERE cartoon.original_air_date = ( SELECT MAX(original_air_date) FROM cartoon )	tvshow
SELECT cartoon.production_code, cartoon.channel FROM cartoon WHERE cartoon.id = (SELECT MAX(id) FROM cartoon)	tvshow
SELECT tv_channel.package_option, tv_channel.series_name FROM tv_channel WHERE tv_channel.hight_definition_tv = 1;	tvshow
SELECT tv_channel.package_option, tv_channel.series_name FROM tv_channel WHERE tv_channel.hight_definition_tv = 1;	tvshow
SELECT tv_channel.country FROM cartoon JOIN tv_channel ON cartoon.channel = tv_channel.id WHERE cartoon.written_by = 'Todd Casey';	tvshow
SELECT tv_channel.country FROM cartoon JOIN tv_channel ON cartoon.channel = tv_channel.id WHERE cartoon.written_by = 'Todd Casey';	tvshow
SELECT tv_channel.country FROM tv_channel WHERE tv_channel.id NOT IN ( SELECT cartoon.channel FROM cartoon WHERE cartoon.written_by = "Todd Casey" )	tvshow
SELECT tv_channel.country FROM tv_channel WHERE tv_channel.id NOT IN ( SELECT cartoon.channel FROM cartoon WHERE cartoon.written_by = "Todd Casey" );	tvshow
SELECT tv_channel.series_name, tv_channel.country FROM cartoon JOIN tv_channel ON cartoon.channel = tv_channel.id WHERE cartoon.directed_by IN ('Ben Jones', 'Michael Chang');	tvshow
SELECT tv_channel.series_name, tv_channel.country FROM tv_channel INNER JOIN cartoon ON cartoon.channel = tv_channel.id WHERE cartoon.directed_by IN ('Ben Jones', 'Michael Chang');	tvshow
SELECT tv_channel.pixel_aspect_ratio_par, tv_channel.country FROM tv_channel WHERE tv_channel.language <> 'English';	tvshow
SELECT tv_channel.pixel_aspect_ratio_par, tv_channel.country FROM tv_channel WHERE tv_channel.language <> 'English';	tvshow
SELECT tv_channel.id FROM tv_channel WHERE country IN ( SELECT country FROM tv_channel GROUP BY country HAVING COUNT(DISTINCT id) > 2 )	tvshow
SELECT tv_channel.id FROM tv_channel GROUP BY tv_channel.id HAVING COUNT(*) > 2;	tvshow
SELECT tv_channel.id FROM tv_channel WHERE tv_channel.id NOT IN ( SELECT cartoon.channel FROM cartoon WHERE cartoon.directed_by = "Ben Jones" )	tvshow
SELECT tv_channel.id FROM tv_channel WHERE tv_channel.id NOT IN ( SELECT cartoon.channel FROM cartoon WHERE cartoon.directed_by = 'Ben Jones' );	tvshow
SELECT tv_channel.package_option FROM tv_channel WHERE tv_channel.id NOT IN (SELECT DISTINCT cartoon.channel FROM cartoon WHERE cartoon.directed_by = 'Ben Jones');	tvshow
SELECT tv_channel.package_option FROM tv_channel WHERE tv_channel.id NOT IN (SELECT cartoon.channel FROM cartoon WHERE cartoon.directed_by = 'Ben Jones')	tvshow
SELECT COUNT(*) FROM poker_player;	poker_player
SELECT COUNT(*) FROM poker_player;	poker_player
SELECT earnings FROM poker_player ORDER BY earnings DESC;	poker_player
SELECT earnings FROM poker_player ORDER BY earnings DESC;	poker_player
SELECT final_table_made, best_finish FROM poker_player;	poker_player
SELECT final_table_made, best_finish FROM poker_player;	poker_player
SELECT AVG(earnings) FROM poker_player;	poker_player
SELECT avg(earnings) FROM poker_player;	poker_player
SELECT money_rank FROM poker_player WHERE earnings = ( SELECT MAX(earnings) FROM poker_player ) LIMIT 1;	poker_player
SELECT money_rank FROM poker_player ORDER BY earnings DESC LIMIT 1;	poker_player
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000;	poker_player
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000;	poker_player
SELECT people.name FROM poker_player JOIN people ON poker_player.people_id = people.people_id;	poker_player
SELECT people.name FROM poker_player JOIN people ON poker_player.people_id = people.people_id;	poker_player
SELECT people.name FROM poker_player INNER JOIN people ON poker_player.people_id = people.people_id WHERE poker_player.earnings > 300000	poker_player
SELECT p.name FROM poker_player pp JOIN people p ON pp.people_id = p.people_id WHERE pp.earnings > 300000;	poker_player
SELECT name FROM poker_player JOIN people ON poker_player.people_id = people.people_id ORDER BY final_table_made ASC;	poker_player
SELECT people.name FROM poker_player JOIN people ON poker_player.people_id = people.people_id ORDER BY poker_player.final_table_made ASC;	poker_player
SELECT people.birth_date FROM poker_player INNER JOIN people ON poker_player.people_id = people.people_id ORDER BY poker_player.earnings LIMIT 1;	poker_player
SELECT people.birth_date FROM poker_player JOIN people ON poker_player.people_id = people.people_id ORDER BY poker_player.earnings LIMIT 1;	poker_player
SELECT poker_player.money_rank FROM poker_player JOIN people ON poker_player.people_id = people.people_id ORDER BY people.height DESC LIMIT 1;	poker_player
SELECT poker_player.money_rank FROM poker_player JOIN people ON poker_player.people_id = people.people_id ORDER BY people.height DESC LIMIT 1;	poker_player
SELECT AVG(earnings) FROM poker_player INNER JOIN people ON poker_player.people_id = people.people_id WHERE people.height > 200;	poker_player
SELECT AVG(earnings) FROM poker_player INNER JOIN people ON poker_player.people_id = people.people_id WHERE people.height > 200;	poker_player
SELECT people.name FROM poker_player JOIN people ON poker_player.people_id = people.people_id ORDER BY poker_player.earnings DESC;	poker_player
SELECT people.name FROM poker_player JOIN people ON poker_player.people_id = people.people_id ORDER BY poker_player.earnings DESC;	poker_player
SELECT nationality, COUNT(*) as count FROM people GROUP BY nationality;	poker_player
SELECT nationality, COUNT(*) FROM people GROUP BY nationality;	poker_player
SELECT nationality FROM people GROUP BY nationality ORDER BY COUNT(*) DESC LIMIT 1;	poker_player
SELECT nationality FROM people GROUP BY nationality ORDER BY COUNT(*) DESC LIMIT 1;	poker_player
SELECT nationality FROM people GROUP BY nationality HAVING COUNT(*) >= 2	poker_player
SELECT nationality FROM people GROUP BY nationality HAVING COUNT(*) >= 2;	poker_player
SELECT name, birth_date FROM people ORDER BY name ASC	poker_player
SELECT people.name, people.birth_date FROM people ORDER BY people.name ASC;	poker_player
SELECT name FROM people WHERE nationality != "Russia";	poker_player
SELECT name FROM people WHERE nationality <> 'Russia';	poker_player
SELECT people.name FROM people WHERE people.people_id NOT IN ( SELECT poker_player.people_id FROM poker_player )	poker_player
SELECT people.name FROM people LEFT JOIN poker_player ON poker_player.people_id = people.people_id WHERE poker_player.people_id IS NULL;	poker_player
SELECT COUNT(DISTINCT nationality) FROM people;	poker_player
SELECT COUNT(DISTINCT nationality) FROM people;	poker_player
SELECT COUNT(DISTINCT state) FROM area_code_state;	voter_1
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC;	voter_1
SELECT vote_id, phone_number, state FROM votes;	voter_1
SELECT MAX(area_code), MIN(area_code) FROM area_code_state;	voter_1
SELECT MAX(created) FROM votes WHERE state = 'CA';	voter_1
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway';	voter_1
SELECT DISTINCT state, created FROM votes;	voter_1
SELECT contestant_number, contestant_name FROM contestants WHERE contestant_number IN ( SELECT contestant_number FROM votes GROUP BY contestant_number HAVING COUNT(*) >= 2 );	voter_1
SELECT contestants.contestant_number, contestants.contestant_name FROM contestants INNER JOIN votes ON contestants.contestant_number = votes.contestant_number GROUP BY contestants.contestant_number, contestants.contestant_name ORDER BY COUNT(votes.vote_id) ASC LIMIT 1;	voter_1
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA';	voter_1
SELECT COUNT(*) FROM contestants LEFT JOIN votes ON contestants.contestant_number = votes.contestant_number WHERE votes.contestant_number IS NULL;	voter_1
SELECT area_code_state.area_code FROM votes JOIN area_code_state ON votes.state = area_code_state.state GROUP BY area_code_state.area_code ORDER BY COUNT(*) DESC LIMIT 1;	voter_1
SELECT votes.created, votes.state, votes.phone_number FROM votes JOIN contestants ON votes.contestant_number = contestants.contestant_number WHERE contestants.contestant_name = 'Tabatha Gehling';	voter_1
SELECT area_code FROM votes JOIN contestants ON votes.contestant_number = contestants.contestant_number JOIN area_code_state ON votes.state = area_code_state.state WHERE contestants.contestant_name = 'Tabatha Gehling' INTERSECT SELECT area_code FROM votes JOIN contestants ON votes.contestant_number = contestants.contestant_number JOIN area_code_state ON votes.state = area_code_state.state WHERE contestants.contestant_name = 'Kelly Clauss';	voter_1
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%';	voter_1
SELECT name FROM country WHERE indepyear > 1950;	world_1
SELECT name FROM country WHERE indepyear > 1950;	world_1
SELECT COUNT(*) FROM country WHERE governmentform = 'Republic';	world_1
SELECT COUNT(*) FROM country WHERE governmentform = 'Republic';	world_1
SELECT SUM(surfacearea) FROM country WHERE region = 'Caribbean';	world_1
SELECT SUM(surfacearea) FROM country WHERE continent = 'Caribbean';	world_1
SELECT continent FROM country WHERE name = 'Anguilla';	world_1
SELECT continent FROM country WHERE name = 'Anguilla';	world_1
SELECT country.region FROM city INNER JOIN country ON city.countrycode = country.code WHERE city.name = 'Kabul';	world_1
SELECT country.region FROM city JOIN country ON city.countrycode = country.code WHERE city.name = 'Kabul';	world_1
SELECT language FROM countrylanguage WHERE countrycode = 'ABW' ORDER BY percentage DESC LIMIT 1;	world_1
SELECT language FROM countrylanguage WHERE countrycode = 'ABW' AND isofficial = 'T' AND percentage = (SELECT MAX(percentage) FROM countrylanguage WHERE countrycode = 'ABW');	world_1
SELECT population, lifeexpectancy FROM country WHERE name = 'Brazil';	world_1
SELECT country.population, country.lifeexpectancy FROM country WHERE country.name = 'Brazil';	world_1
SELECT region, population FROM country WHERE name = 'Angola';	world_1
SELECT region, population FROM country WHERE name = 'Angola';	world_1
SELECT AVG(lifeexpectancy) FROM country WHERE region = 'Central Africa';	world_1
SELECT AVG(lifeexpectancy) FROM country WHERE region = "Central Africa";	world_1
SELECT country.name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;	world_1
SELECT country.name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;	world_1
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = "Asia";	world_1
SELECT SUM(population) AS total_population, MAX(gnp) AS largest_gnp FROM country WHERE continent = 'Asia';	world_1
SELECT AVG(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic';	world_1
SELECT AVG(lifeexpectancy) FROM country WHERE continent = "Africa" AND governmentform = "Republic";	world_1
SELECT SUM(surfacearea) FROM country WHERE continent IN ('Asia', 'Europe');	world_1
SELECT SUM(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe";	world_1
SELECT SUM(population) FROM city WHERE district = 'Gelderland';	world_1
SELECT SUM(population) FROM city WHERE district = 'Gelderland';	world_1
SELECT AVG(gnp), SUM(population) FROM country WHERE governmentform = 'US Territory';	world_1
SELECT AVG(GNP) AS mean_gnp, SUM(population) AS total_population FROM country WHERE governmentform = 'US Territory';	world_1
SELECT COUNT(DISTINCT language) AS unique_languages FROM countrylanguage;	world_1
SELECT COUNT(DISTINCT language) FROM countrylanguage;	world_1
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = "Africa";	world_1
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = 'Africa';	world_1
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE countrycode = 'ABW';	world_1
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE countrycode = (SELECT code FROM country WHERE name = 'Aruba');	world_1
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE countrycode = 'AFG' AND isofficial = 'T';	world_1
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE countrycode = 'AFG' AND isofficial = 'T';	world_1
SELECT country.name FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode GROUP BY country.code ORDER BY COUNT(DISTINCT countrylanguage.language) DESC LIMIT 1;	world_1
SELECT country.name FROM country WHERE country.code = ( SELECT countrycode FROM countrylanguage GROUP BY countrycode ORDER BY COUNT(DISTINCT language) DESC LIMIT 1 );	world_1
SELECT country.continent FROM countrylanguage INNER JOIN country ON countrylanguage.countrycode = country.code GROUP BY country.continent ORDER BY COUNT(DISTINCT countrylanguage.language) DESC LIMIT 1;	world_1
SELECT continent FROM country GROUP BY continent ORDER BY COUNT(DISTINCT code) DESC LIMIT 1;	world_1
SELECT COUNT(DISTINCT country.name) FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language IN ('English', 'Dutch') GROUP BY country.code HAVING COUNT(DISTINCT countrylanguage.language) = 2;	world_1
SELECT COUNT(DISTINCT country.code) FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language IN ('English', 'Dutch');	world_1
SELECT country.name FROM country INNER JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language = 'English' INTERSECT SELECT country.name FROM country INNER JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language = 'French';	world_1
SELECT name FROM country WHERE code IN ( SELECT countrycode FROM countrylanguage WHERE language = 'English' ) AND code IN ( SELECT countrycode FROM countrylanguage WHERE language = 'French' );	world_1
SELECT country.name FROM country WHERE country.code IN (SELECT countrycode FROM countrylanguage WHERE language = "English" AND isofficial = 1) AND country.code IN (SELECT countrycode FROM countrylanguage WHERE language = "French" AND isofficial = 1);	world_1
SELECT country.name FROM country WHERE EXISTS ( SELECT 1 FROM countrylanguage WHERE countrylanguage.countrycode = country.code AND countrylanguage.language IN ('English', 'French') AND countrylanguage.isofficial = 'T' GROUP BY countrylanguage.countrycode HAVING COUNT(*) = 2 );	world_1
SELECT COUNT(DISTINCT c.continent) FROM countrylanguage cl JOIN country c ON cl.countrycode = c.code WHERE cl.language = 'Chinese';	world_1
SELECT COUNT(DISTINCT continent) FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'Chinese');	world_1
SELECT region FROM country WHERE code IN ( SELECT countrycode FROM countrylanguage WHERE language IN ('English', 'Dutch') )	world_1
SELECT country.region FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language IN ('Dutch', 'English');	world_1
SELECT country.name FROM countrylanguage JOIN country ON countrylanguage.countrycode = country.code WHERE countrylanguage.isofficial = 1 AND (countrylanguage.language = 'English' OR countrylanguage.language = 'Dutch');	world_1
SELECT country.name FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language IN ('English', 'Dutch') AND countrylanguage.isofficial = 1;	world_1
SELECT language FROM countrylanguage WHERE countrycode IN ( SELECT code FROM country WHERE continent = 'Asia' ) ORDER BY percentage DESC LIMIT 1;	world_1
SELECT language FROM countrylanguage WHERE countrycode IN ( SELECT code FROM country WHERE continent = 'Asia' ) GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1;	world_1
SELECT countrylanguage.language FROM countrylanguage JOIN country ON countrylanguage.countrycode = country.code WHERE country.governmentform = 'Republic' GROUP BY countrylanguage.language HAVING COUNT(DISTINCT country.code) = 1;	world_1
SELECT language FROM countrylanguage WHERE countrycode IN ( SELECT code FROM country WHERE governmentform = 'Republic' ) GROUP BY language HAVING COUNT(DISTINCT countrycode) = 1;	world_1
SELECT city.name FROM city JOIN country ON city.countrycode = country.code JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language = "English" ORDER BY city.population DESC LIMIT 1;	world_1
SELECT city.name FROM city INNER JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode WHERE countrylanguage.language = 'English' ORDER BY city.population DESC LIMIT 1;	world_1
SELECT name, population, lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY surfacearea DESC LIMIT 1;	world_1
SELECT country.name, country.population, country.lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1;	world_1
SELECT AVG(lifeexpectancy) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English" AND isofficial = "T")	world_1
SELECT AVG(lifeexpectancy) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' AND isofficial = 'T');	world_1
SELECT SUM(country.population) FROM country WHERE country.code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English");	world_1
SELECT SUM(country.population) FROM country WHERE country.code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English");	world_1
SELECT countrylanguage.language FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE country.headofstate = 'Beatrix' AND countrylanguage.isofficial = 1;	world_1
SELECT countrylanguage.language FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE country.headofstate = 'Beatrix' AND countrylanguage.isofficial = 'T';	world_1
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE countrycode IN (  SELECT code  FROM country  WHERE indepyear < 1930 ) AND isofficial = 'T';	world_1
SELECT COUNT(DISTINCT language) FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE indepyear < 1930 AND isofficial = 1;	world_1
SELECT code, name, surfacearea FROM country WHERE surfacearea > ( SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe' )	world_1
SELECT country.name FROM country WHERE country.surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')	world_1
SELECT country.name FROM country WHERE country.continent = "Africa" AND country.population < (SELECT MIN(population) FROM country WHERE continent = "Asia");	world_1
SELECT name FROM country WHERE continent = "Africa" AND population < (SELECT MIN(population) FROM country WHERE continent = "Asia")	world_1
SELECT country.name FROM country WHERE country.continent = 'Asia' AND country.population > ( SELECT MAX(population) FROM country WHERE continent = 'Africa' );	world_1
SELECT country.name FROM country WHERE country.continent = "Asia" AND country.population > ( SELECT MAX(population) FROM country WHERE continent = "Africa" );	world_1
SELECT country.code FROM country WHERE country.code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English');	world_1
SELECT country.code FROM country WHERE country.code NOT IN (SELECT countrylanguage.countrycode FROM countrylanguage WHERE countrylanguage.language = "English");	world_1
SELECT DISTINCT countrycode FROM countrylanguage WHERE language <> "English";	world_1
SELECT countrycode FROM countrylanguage WHERE language != "English";	world_1
SELECT country.code FROM country WHERE country.code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English") AND country.governmentform != "Republic";	world_1
SELECT code FROM country WHERE governmentform != "Republic" AND code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English");	world_1
SELECT city.name FROM city JOIN country ON city.countrycode = country.code JOIN countrylanguage ON countrylanguage.countrycode = country.code WHERE country.continent = 'Europe' AND countrylanguage.language <> 'English' AND countrylanguage.isofficial = 'N';	world_1
SELECT city.name FROM city JOIN country ON city.countrycode = country.code JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE country.continent = 'Europe' AND countrylanguage.language != 'English' AND countrylanguage.isofficial = 'F';	world_1
SELECT city.name FROM city JOIN country ON city.countrycode = country.code JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE country.continent = 'Asia' AND countrylanguage.language = 'Chinese' AND countrylanguage.isofficial = 'T';	world_1
SELECT city.name FROM city JOIN country ON city.countrycode = country.code JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE country.continent = 'Asia' AND countrylanguage.language = 'Chinese' AND countrylanguage.isofficial = 1;	world_1
SELECT country.name, country.indepyear, country.surfacearea FROM country WHERE country.population = (SELECT MIN(population) FROM country);	world_1
SELECT country.name, country.indepyear, country.surfacearea FROM country WHERE country.population = ( SELECT MIN(population) FROM country )	world_1
SELECT population, name, headofstate FROM country WHERE surfacearea = (SELECT MAX(surfacearea) FROM country);	world_1
SELECT name, population, headofstate FROM country WHERE surfacearea = (SELECT MAX(surfacearea) FROM country);	world_1
SELECT country.name, COUNT(countrylanguage.language) AS language_count FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode GROUP BY country.name HAVING language_count >= 3;	world_1
SELECT country.name, COUNT(countrylanguage.language) AS language_count FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode GROUP BY country.name HAVING language_count > 2;	world_1
SELECT DISTRICT, COUNT(*) AS city_count FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district;	world_1
SELECT district, COUNT(*) FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district;	world_1
SELECT governmentform, SUM(population) AS total_population FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform;	world_1
SELECT country.governmentform, SUM(country.population) AS total_population FROM country WHERE country.governmentform IN ( SELECT DISTINCT country.governmentform FROM country WHERE country.lifeexpectancy > 72 ) GROUP BY country.governmentform;	world_1
SELECT continent, AVG(lifeexpectancy) AS avg_life_expectancy, SUM(population) AS total_population FROM country GROUP BY continent HAVING avg_life_expectancy < 72;	world_1
SELECT continent, SUM(population) AS total_population, AVG(lifeexpectancy) AS average_life_expectancy FROM country WHERE continent IN ( SELECT continent FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72 ) GROUP BY continent;	world_1
SELECT country.name, country.surfacearea FROM country ORDER BY country.surfacearea DESC LIMIT 5;	world_1
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5	world_1
SELECT name FROM country ORDER BY population DESC LIMIT 3;	world_1
SELECT country.name FROM country ORDER BY population DESC LIMIT 3;	world_1
SELECT name FROM country ORDER BY population ASC LIMIT 3;	world_1
SELECT name FROM country ORDER BY population LIMIT 3;	world_1
SELECT COUNT(*) FROM country WHERE continent = 'Asia';	world_1
SELECT COUNT(*) FROM country WHERE continent = 'Asia';	world_1
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000;	world_1
SELECT name FROM country WHERE continent = "Europe" AND population = 80000;	world_1
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000;	world_1
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000;	world_1
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000;	world_1
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000;	world_1
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(DISTINCT countrycode) DESC LIMIT 1;	world_1
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(DISTINCT countrycode) DESC LIMIT 1;	world_1
SELECT country.name, countrylanguage.language FROM country INNER JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.percentage = ( SELECT MAX(percentage) FROM countrylanguage WHERE countrylanguage.countrycode = country.code ) GROUP BY country.name;	world_1
SELECT country.code, countrylanguage.language FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode GROUP BY country.code HAVING MAX(countrylanguage.percentage) = countrylanguage.percentage;	world_1
SELECT COUNT(DISTINCT country.code) FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language = 'Spanish' GROUP BY countrylanguage.language HAVING countrylanguage.percentage = MAX(countrylanguage.percentage);	world_1
SELECT COUNT(countrycode) FROM countrylanguage WHERE language = 'Spanish' AND isofficial = 'T' AND percentage > 50;	world_1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" ORDER BY percentage DESC LIMIT 1;	world_1
SELECT country.code FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language = "Spanish" AND countrylanguage.isofficial = 1 AND countrylanguage.percentage > 50;	world_1
SELECT COUNT(conductor_id) FROM conductor;	orchestra
SELECT COUNT(*) FROM conductor;	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.age ASC;	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.age;	orchestra
SELECT name FROM conductor WHERE nationality != 'USA';	orchestra
SELECT name FROM conductor WHERE nationality != "USA";	orchestra
SELECT orchestra.record_company FROM orchestra ORDER BY orchestra.year_of_founded DESC;	orchestra
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC;	orchestra
SELECT AVG(attendance) FROM show;	orchestra
SELECT AVG(attendance) AS average_attendance FROM show;	orchestra
SELECT MIN(share), MAX(share) FROM performance WHERE type != "Live final";	orchestra
SELECT MAX(share), MIN(share) FROM performance WHERE type != "Live final";	orchestra
SELECT COUNT(DISTINCT nationality) FROM conductor;	orchestra
SELECT COUNT(DISTINCT nationality) FROM conductor;	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.year_of_work DESC;	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.year_of_work DESC;	orchestra
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1;	orchestra
SELECT conductor.name FROM conductor ORDER BY conductor.year_of_work DESC LIMIT 1;	orchestra
SELECT conductor.name, orchestra.orchestra FROM conductor JOIN orchestra ON conductor.conductor_id = orchestra.conductor_id	orchestra
SELECT conductor.name, orchestra.orchestra FROM conductor JOIN orchestra ON conductor.conductor_id = orchestra.conductor_id;	orchestra
SELECT conductor.name FROM conductor GROUP BY conductor.name HAVING COUNT(DISTINCT conductor.conductor_id) > 1;	orchestra
SELECT conductor.name FROM conductor JOIN orchestra ON conductor.conductor_id = orchestra.conductor_id GROUP BY conductor.conductor_id HAVING COUNT(DISTINCT orchestra.orchestra_id) > 1;	orchestra
SELECT conductor.name FROM conductor JOIN orchestra ON conductor.conductor_id = orchestra.conductor_id GROUP BY conductor.name ORDER BY COUNT(DISTINCT orchestra.orchestra_id) DESC LIMIT 1;	orchestra
SELECT conductor.name FROM conductor JOIN orchestra ON conductor.conductor_id = orchestra.conductor_id GROUP BY conductor.name ORDER BY COUNT(orchestra.orchestra_id) DESC LIMIT 1;	orchestra
SELECT conductor.name FROM conductor JOIN orchestra ON conductor.conductor_id = orchestra.conductor_id WHERE orchestra.year_of_founded > 2008;	orchestra
SELECT conductor.name FROM conductor JOIN orchestra ON conductor.conductor_id = orchestra.conductor_id WHERE orchestra.year_of_founded > 2008;	orchestra
SELECT record_company, COUNT(orchestra) as num_orchestras FROM orchestra GROUP BY record_company;	orchestra
SELECT record_company, COUNT(orchestra_id) FROM orchestra GROUP BY record_company;	orchestra
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC;	orchestra
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC;	orchestra
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(orchestra_id) DESC LIMIT 1;	orchestra
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(orchestra_id) DESC LIMIT 1;	orchestra
SELECT orchestra FROM orchestra LEFT JOIN performance ON orchestra.orchestra_id = performance.orchestra_id WHERE performance.performance_id IS NULL;	orchestra
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN ( SELECT orchestra_id FROM performance );	orchestra
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003;	orchestra
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003;	orchestra
SELECT COUNT(DISTINCT orchestra_id) FROM orchestra WHERE major_record_format IN ('CD', 'DVD');	orchestra
SELECT COUNT(DISTINCT orchestra_id) FROM orchestra WHERE major_record_format IN ('CD', 'DVD');	orchestra
SELECT DISTINCT year_of_founded FROM orchestra WHERE orchestra_id IN ( SELECT orchestra_id FROM performance GROUP BY orchestra_id HAVING COUNT(*) > 1 );	orchestra
SELECT year_of_founded FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM performance GROUP BY orchestra_id HAVING COUNT(*) > 1);	orchestra
SELECT COUNT(*) FROM highschooler;	network_1
SELECT COUNT(*) FROM highschooler;	network_1
SELECT name, grade FROM highschooler;	network_1
SELECT name, grade FROM highschooler;	network_1
SELECT grade FROM highschooler;	network_1
SELECT grade FROM highschooler	network_1
SELECT grade FROM highschooler WHERE name = 'Kyle';	network_1
SELECT grade FROM highschooler WHERE name = 'Kyle';	network_1
SELECT name FROM highschooler WHERE grade = 10;	network_1
SELECT name FROM highschooler WHERE grade = 10;	network_1
SELECT id FROM highschooler WHERE name = 'Kyle';	network_1
SELECT id FROM highschooler WHERE name = "Kyle";	network_1
SELECT COUNT(*) FROM highschooler WHERE grade IN (9, 10);	network_1
SELECT COUNT(*) FROM highschooler WHERE grade IN (9, 10);	network_1
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade;	network_1
SELECT grade, COUNT(id) FROM highschooler GROUP BY grade;	network_1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1;	network_1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1;	network_1
SELECT grade FROM highschooler GROUP BY grade HAVING COUNT(*) >= 4;	network_1
SELECT grade FROM highschooler GROUP BY grade HAVING COUNT(*) >= 4;	network_1
SELECT friend.student_id, COUNT(friend.friend_id) as number_of_friends FROM friend GROUP BY friend.student_id;	network_1
SELECT highschooler.id, COUNT(friend.friend_id) FROM highschooler LEFT JOIN friend ON highschooler.id = friend.student_id GROUP BY highschooler.id;	network_1
SELECT highschooler.name, COUNT(friend.friend_id) AS number_of_friends FROM highschooler JOIN friend ON highschooler.id = friend.student_id GROUP BY highschooler.name;	network_1
SELECT highschooler.name, COUNT(friend.friend_id) AS num_friends FROM highschooler LEFT JOIN friend ON friend.student_id = highschooler.id GROUP BY highschooler.name;	network_1
SELECT name FROM highschooler WHERE id IN ( SELECT student_id FROM friend GROUP BY student_id ORDER BY COUNT(friend_id) DESC LIMIT 1 )	network_1
SELECT highschooler.name FROM highschooler JOIN friend ON friend.student_id = highschooler.id GROUP BY highschooler.id ORDER BY COUNT(friend.friend_id) DESC LIMIT 1;	network_1
SELECT name FROM highschooler WHERE id IN ( SELECT student_id FROM friend GROUP BY student_id HAVING COUNT(friend_id) >= 3 )	network_1
SELECT name FROM highschooler WHERE id IN ( SELECT student_id FROM friend GROUP BY student_id HAVING COUNT(friend_id) >= 3 )	network_1
SELECT highschooler.name FROM highschooler JOIN friend ON friend.friend_id = highschooler.id WHERE highschooler.name = "Kyle";	network_1
SELECT highschooler.name FROM highschooler JOIN friend ON friend.friend_id = highschooler.id JOIN highschooler h ON h.id = friend.student_id WHERE h.name = "Kyle"	network_1
SELECT COUNT(*) FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle');	network_1
SELECT Count(*) as num_friends FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle');	network_1
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)	network_1
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)	network_1
SELECT name FROM highschooler WHERE id NOT IN ( SELECT student_id FROM friend )	network_1
SELECT name FROM highschooler WHERE id NOT IN ( SELECT student_id FROM friend )	network_1
SELECT highschooler.id FROM highschooler WHERE id IN (SELECT friend_id FROM friend) AND id IN (SELECT liked_id FROM likes);	network_1
SELECT highschooler.id FROM highschooler INNER JOIN friend ON friend.student_id = highschooler.id INNER JOIN likes ON likes.student_id = highschooler.id GROUP BY highschooler.id HAVING COUNT(*) > 0;	network_1
SELECT highschooler.name FROM highschooler INNER JOIN friend ON friend.student_id = highschooler.id INNER JOIN likes ON likes.liked_id = highschooler.id GROUP BY highschooler.name;	network_1
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend) AND id IN (SELECT student_id FROM likes)	network_1
SELECT student_id, COUNT(*) AS like_count FROM likes GROUP BY student_id;	network_1
SELECT student_id, COUNT(*) as num_likes FROM likes GROUP BY student_id;	network_1
SELECT highschooler.name, COUNT(likes.student_id) FROM highschooler INNER JOIN likes ON highschooler.id = likes.student_id GROUP BY highschooler.name;	network_1
SELECT highschooler.name, COUNT(likes.liked_id) FROM highschooler JOIN likes ON highschooler.id = likes.student_id GROUP BY highschooler.name;	network_1
SELECT name FROM highschooler WHERE id IN ( SELECT student_id FROM likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1 )	network_1
SELECT highschooler.name FROM highschooler JOIN likes ON highschooler.id = likes.student_id GROUP BY highschooler.id ORDER BY COUNT(*) DESC LIMIT 1;	network_1
SELECT highschooler.name FROM highschooler JOIN likes ON likes.student_id = highschooler.id GROUP BY highschooler.id HAVING COUNT(likes.liked_id) >= 2;	network_1
SELECT highschooler.name FROM highschooler JOIN likes ON highschooler.id = likes.student_id GROUP BY highschooler.id HAVING COUNT(likes.student_id) >= 2;	network_1
SELECT name FROM highschooler WHERE grade > 5 AND id IN ( SELECT student_id FROM friend GROUP BY student_id HAVING COUNT(friend_id) >= 2 )	network_1
SELECT name FROM highschooler WHERE grade > 5 AND id IN ( SELECT student_id FROM friend GROUP BY student_id HAVING COUNT(friend_id) >= 2 );	network_1
SELECT COUNT(*) FROM likes WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle');	network_1
SELECT COUNT(*) FROM likes INNER JOIN highschooler ON highschooler.id = likes.student_id WHERE highschooler.name = 'Kyle';	network_1
SELECT AVG(grade) FROM highschooler WHERE id IN ( SELECT DISTINCT student_id FROM friend )	network_1
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT friend.student_id FROM friend);	network_1
SELECT MIN(grade) FROM highschooler WHERE id NOT IN ( SELECT student_id FROM friend )	network_1
SELECT MIN(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend);	network_1
SELECT state FROM owners WHERE state IN (SELECT state FROM professionals)	dog_kennels
SELECT DISTINCT state FROM owners INTERSECT SELECT DISTINCT state FROM professionals;	dog_kennels
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments);	dog_kennels
SELECT avg(age) as average_age FROM dogs WHERE dog_id in (SELECT DISTINCT dog_id FROM treatments);	dog_kennels
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = 'Indiana' OR professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) > 2);	dog_kennels
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = 'Indiana' OR professional_id IN ( SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) > 2 );	dog_kennels
SELECT dogs.name FROM dogs JOIN treatments ON dogs.dog_id = treatments.dog_id GROUP BY dogs.dog_id HAVING SUM(treatments.cost_of_treatment) <= 1000;	dog_kennels
SELECT dogs.name FROM dogs JOIN owners ON dogs.owner_id = owners.owner_id JOIN treatments ON dogs.dog_id = treatments.dog_id WHERE owners.owner_id NOT IN ( SELECT owners.owner_id FROM owners JOIN dogs ON dogs.owner_id = owners.owner_id JOIN treatments ON dogs.dog_id = treatments.dog_id WHERE treatments.cost_of_treatment > 1000 );	dog_kennels
SELECT DISTINCT first_name FROM owners UNION SELECT DISTINCT first_name FROM professionals EXCEPT SELECT DISTINCT name FROM dogs;	dog_kennels
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs	dog_kennels
SELECT professionals.professional_id, professionals.role_code, professionals.email_address FROM professionals WHERE professionals.professional_id NOT IN ( SELECT DISTINCT professional_id FROM treatments );	dog_kennels
SELECT professionals.professional_id, professionals.role_code, professionals.email_address FROM professionals WHERE professionals.professional_id NOT IN (SELECT professional_id FROM treatments)	dog_kennels
SELECT owners.owner_id, owners.first_name, owners.last_name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id GROUP BY owners.owner_id, owners.first_name, owners.last_name ORDER BY COUNT(dogs.dog_id) DESC LIMIT 1;	dog_kennels
SELECT owners.owner_id, owners.first_name, owners.last_name FROM owners INNER JOIN dogs ON owners.owner_id = dogs.owner_id GROUP BY owners.owner_id, owners.first_name, owners.last_name ORDER BY COUNT(dogs.dog_id) DESC LIMIT 1;	dog_kennels
SELECT professional_id, role_code, first_name FROM professionals WHERE professional_id IN ( SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2 );	dog_kennels
SELECT professional_id, role_code, first_name FROM professionals WHERE professional_id IN ( SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2 );	dog_kennels
SELECT breeds.breed_name FROM dogs JOIN breeds ON dogs.breed_code = breeds.breed_code GROUP BY breeds.breed_name ORDER BY COUNT(*) DESC LIMIT 1;	dog_kennels
SELECT breeds.breed_name FROM dogs JOIN breeds ON dogs.breed_code = breeds.breed_code GROUP BY breeds.breed_name ORDER BY COUNT(*) DESC LIMIT 1;	dog_kennels
SELECT owners.owner_id, owners.last_name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id JOIN treatments ON dogs.dog_id = treatments.dog_id GROUP BY owners.owner_id, owners.last_name ORDER BY COUNT(*) DESC LIMIT 1;	dog_kennels
SELECT owners.owner_id, owners.last_name FROM owners JOIN dogs ON dogs.owner_id = owners.owner_id JOIN treatments ON treatments.dog_id = dogs.dog_id GROUP BY owners.owner_id ORDER BY SUM(treatments.cost_of_treatment) DESC LIMIT 1;	dog_kennels
SELECT treatment_types.treatment_type_description FROM treatment_types JOIN treatments ON treatment_types.treatment_type_code = treatments.treatment_type_code GROUP BY treatments.treatment_type_code ORDER BY SUM(treatments.cost_of_treatment) ASC LIMIT 1;	dog_kennels
SELECT treatment_types.treatment_type_description FROM treatment_types JOIN treatments ON treatment_types.treatment_type_code = treatments.treatment_type_code GROUP BY treatment_types.treatment_type_description ORDER BY SUM(treatments.cost_of_treatment) LIMIT 1;	dog_kennels
SELECT owners.owner_id, owners.zip_code FROM owners JOIN dogs ON dogs.owner_id = owners.owner_id JOIN treatments ON treatments.dog_id = dogs.dog_id GROUP BY owners.owner_id ORDER BY SUM(treatments.cost_of_treatment) DESC LIMIT 1;	dog_kennels
SELECT owners.owner_id, owners.zip_code FROM owners JOIN dogs ON dogs.owner_id = owners.owner_id JOIN treatments ON treatments.dog_id = dogs.dog_id GROUP BY owners.owner_id, owners.zip_code ORDER BY SUM(treatments.cost_of_treatment) DESC LIMIT 1;	dog_kennels
SELECT professional_id, cell_number FROM professionals WHERE professional_id IN ( SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(DISTINCT treatment_type_code) >= 2 );	dog_kennels
SELECT professional_id, cell_number FROM professionals WHERE professional_id IN ( SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(DISTINCT treatment_type_code) >= 2 );	dog_kennels
SELECT first_name, last_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments));	dog_kennels
SELECT professionals.first_name, professionals.last_name FROM professionals INNER JOIN treatments ON treatments.professional_id = professionals.professional_id WHERE treatments.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments);	dog_kennels
SELECT treatments.date_of_treatment, professionals.first_name FROM treatments JOIN professionals ON treatments.professional_id = professionals.professional_id;	dog_kennels
SELECT treatments.date_of_treatment, professionals.first_name FROM treatments JOIN professionals ON treatments.professional_id = professionals.professional_id;	dog_kennels
SELECT treatments.cost_of_treatment, treatment_types.treatment_type_description FROM treatments JOIN treatment_types ON treatments.treatment_type_code = treatment_types.treatment_type_code;	dog_kennels
SELECT cost_of_treatment, treatment_type_description FROM treatments JOIN treatment_types ON treatments.treatment_type_code = treatment_types.treatment_type_code;	dog_kennels
SELECT owners.first_name, owners.last_name, sizes.size_description FROM owners JOIN dogs ON dogs.owner_id = owners.owner_id JOIN sizes ON dogs.size_code = sizes.size_code;	dog_kennels
SELECT owners.first_name, owners.last_name, sizes.size_description FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id JOIN sizes ON dogs.size_code = sizes.size_code;	dog_kennels
SELECT owners.first_name, dogs.name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id;	dog_kennels
SELECT owners.first_name, dogs.name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id;	dog_kennels
SELECT dogs.name, treatments.date_of_treatment FROM dogs JOIN breeds ON dogs.breed_code = breeds.breed_code JOIN treatments ON treatments.dog_id = dogs.dog_id WHERE breeds.breed_name = ( SELECT breed_name FROM breeds ORDER BY breed_code LIMIT 1 ) ORDER BY treatments.date_of_treatment;	dog_kennels
SELECT dogs.name, treatments.date_of_treatment FROM dogs JOIN breeds ON dogs.breed_code = breeds.breed_code JOIN treatments ON dogs.dog_id = treatments.dog_id JOIN treatment_types ON treatments.treatment_type_code = treatment_types.treatment_type_code WHERE breeds.breed_code IN ( SELECT breed_code FROM breeds GROUP BY breed_code HAVING COUNT(*) = 1 );	dog_kennels
SELECT owners.first_name, dogs.name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id WHERE owners.state = 'Virginia';	dog_kennels
SELECT owners.first_name, dogs.name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id WHERE owners.street LIKE '%Virginia%'	dog_kennels
SELECT dogs.date_arrived, dogs.date_departed FROM dogs JOIN treatments ON dogs.dog_id = treatments.dog_id;	dog_kennels
SELECT dogs.date_arrived, dogs.date_departed FROM dogs JOIN treatments ON dogs.dog_id = treatments.dog_id	dog_kennels
SELECT owners.last_name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id WHERE dogs.age = ( SELECT MIN(age) FROM dogs )	dog_kennels
SELECT owners.last_name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id WHERE dogs.age = (SELECT MIN(age) FROM dogs);	dog_kennels
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin';	dog_kennels
SELECT email_address FROM professionals WHERE state IN ('Hawaii', 'Wisconsin');	dog_kennels
SELECT date_arrived, date_departed FROM dogs;	dog_kennels
SELECT date_arrived, date_departed FROM dogs;	dog_kennels
SELECT COUNT(DISTINCT dog_id) FROM treatments;	dog_kennels
SELECT COUNT(DISTINCT dogs.dog_id) FROM dogs JOIN treatments ON dogs.dog_id = treatments.dog_id;	dog_kennels
SELECT COUNT(DISTINCT professional_id) FROM treatments;	dog_kennels
SELECT COUNT(DISTINCT professional_id) FROM treatments;	dog_kennels
SELECT professionals.role_code, professionals.street, professionals.city, professionals.state FROM professionals WHERE professionals.city LIKE '%West%';	dog_kennels
SELECT professionals.role_code, professionals.street, professionals.city, professionals.state FROM professionals WHERE professionals.city LIKE '%West%';	dog_kennels
SELECT owners.first_name, owners.last_name, owners.email_address FROM owners WHERE owners.state LIKE '%North%';	dog_kennels
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%';	dog_kennels
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs);	dog_kennels
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs);	dog_kennels
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;	dog_kennels
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;	dog_kennels
SELECT COUNT(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)	dog_kennels
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments);	dog_kennels
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs);	dog_kennels
SELECT COUNT(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )	dog_kennels
SELECT COUNT(DISTINCT professionals.professional_id) FROM professionals LEFT JOIN treatments ON professionals.professional_id = treatments.professional_id WHERE treatments.professional_id IS NULL;	dog_kennels
SELECT COUNT(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments);	dog_kennels
SELECT dogs.name, dogs.age, dogs.weight FROM dogs WHERE dogs.abandoned_yn = 1;	dog_kennels
SELECT dogs.name, dogs.age, dogs.weight FROM dogs WHERE dogs.abandoned_yn = 1;	dog_kennels
SELECT AVG(age) FROM dogs;	dog_kennels
SELECT AVG(age) FROM dogs;	dog_kennels
SELECT MAX(age) FROM dogs;	dog_kennels
SELECT max(age) AS oldest_dog_age FROM dogs;	dog_kennels
SELECT charge_type, charge_amount FROM charges;	dog_kennels
SELECT charge_type, charge_amount FROM charges;	dog_kennels
SELECT MAX(charge_amount) FROM charges	dog_kennels
SELECT charge_amount FROM charges WHERE charge_type = ( SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1 )	dog_kennels
SELECT email_address, cell_number, home_phone FROM professionals;	dog_kennels
SELECT professionals.email_address, professionals.cell_number, professionals.home_phone FROM professionals;	dog_kennels
SELECT breeds.breed_name, sizes.size_description FROM breeds, sizes, dogs WHERE dogs.breed_code = breeds.breed_code AND dogs.size_code = sizes.size_code	dog_kennels
SELECT DISTINCT breeds.breed_name, sizes.size_description FROM dogs JOIN breeds ON dogs.breed_code = breeds.breed_code JOIN sizes ON dogs.size_code = sizes.size_code;	dog_kennels
SELECT professionals.first_name, treatment_types.treatment_type_description FROM professionals JOIN treatments ON treatments.professional_id = professionals.professional_id JOIN treatment_types ON treatments.treatment_type_code = treatment_types.treatment_type_code;	dog_kennels
SELECT professionals.first_name, treatment_types.treatment_type_description FROM professionals JOIN treatments ON professionals.professional_id = treatments.professional_id JOIN treatment_types ON treatments.treatment_type_code = treatment_types.treatment_type_code;	dog_kennels
SELECT COUNT(*) FROM singer;	singer
SELECT COUNT(*) FROM singer;	singer
SELECT name FROM singer ORDER BY net_worth_millions ASC;	singer
SELECT name FROM singer ORDER BY net_worth_millions ASC;	singer
SELECT birth_year, citizenship FROM singer;	singer
SELECT birth_year, citizenship FROM singer;	singer
SELECT name FROM singer WHERE citizenship != 'France';	singer
SELECT name FROM singer WHERE citizenship != 'French';	singer
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949;	singer
SELECT name FROM singer WHERE birth_year IN (1948, 1949);	singer
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1;	singer
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1;	singer
SELECT citizenship, COUNT(*) as num_singers FROM singer GROUP BY citizenship;	singer
SELECT citizenship, COUNT(singer_id) FROM singer GROUP BY citizenship;	singer
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1;	singer
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1;	singer
SELECT citizenship, MAX(net_worth_millions) AS max_net_worth FROM singer GROUP BY citizenship;	singer
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship;	singer
SELECT song.title, singer.name FROM song JOIN singer ON song.singer_id = singer.singer_id;	singer
SELECT song.title, singer.name FROM song JOIN singer ON song.singer_id = singer.singer_id;	singer
SELECT DISTINCT singer.name FROM singer INNER JOIN song ON singer.singer_id = song.singer_id WHERE song.sales > 300000;	singer
SELECT name FROM singer WHERE singer_id IN ( SELECT singer_id FROM song WHERE sales > 300000 );	singer
SELECT name FROM singer WHERE singer_id IN ( SELECT singer_id FROM song GROUP BY singer_id HAVING COUNT(song_id) > 1 );	singer
SELECT singer.name FROM singer INNER JOIN song ON singer.singer_id = song.singer_id GROUP BY singer.name HAVING COUNT(song.song_id) > 1;	singer
SELECT singer.name, SUM(song.sales) AS total_sales FROM singer JOIN song ON singer.singer_id = song.singer_id GROUP BY singer.name;	singer
SELECT name, SUM(sales) AS total_sales FROM singer JOIN song ON singer.singer_id = song.singer_id GROUP BY name;	singer
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)	singer
SELECT singer.name FROM singer LEFT JOIN song ON singer.singer_id = song.singer_id WHERE song.singer_id IS NULL;	singer
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955;	singer
SELECT DISTINCT citizenship FROM singer WHERE birth_year < 1945 AND birth_year > 1955;	singer
SELECT COUNT(*) FROM other_available_features;	real_estate_properties
SELECT ref_feature_types.feature_type_name FROM other_available_features JOIN ref_feature_types ON other_available_features.feature_type_code = ref_feature_types.feature_type_code WHERE other_available_features.feature_name = 'AirCon';	real_estate_properties
SELECT ref_property_types.property_type_description FROM properties INNER JOIN ref_property_types ON properties.property_type_code = ref_property_types.property_type_code WHERE properties.property_type_code = "code";	real_estate_properties
SELECT properties.property_name FROM properties JOIN ref_property_types ON properties.property_type_code = ref_property_types.property_type_code WHERE ref_property_types.property_type_description IN ('House', 'Apartment') AND properties.room_count > 1	real_estate_properties
