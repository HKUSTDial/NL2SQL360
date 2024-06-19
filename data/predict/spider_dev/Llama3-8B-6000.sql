SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT T2.name, T2.song_release_year FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT name, release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT T3.song_name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN song AS T3 ON T2.concert_id = T3.concert_id WHERE T1.age > (SELECT AVG(age) FROM singer)
SELECT DISTINCT T3.song_name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN song AS T3 ON T2.concert_id = T3.concert_id WHERE T1.age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id GROUP BY t2.stadium_id ORDER BY AVG(t2.attendance) DESC LIMIT 1
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id GROUP BY t2.stadium_id ORDER BY AVG(t2.attendance) DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.name
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.name
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR >= 2014 GROUP BY t1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR <> 2014)
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.concert_name
SELECT T2.name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T3.Name FROM concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T2.Song_ID = T3.Song_ID WHERE T1.Year = 2014
SELECT T3.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = 2014
SELECT T1.name, T1.country FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE '%Hey%'
SELECT T1.name, T1.country FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE '%Hey%'
SELECT T2.location, T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.location, T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T2.name, T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name, T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT MAX(capacity) FROM stadium)
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT MAX(capacity) FROM stadium)
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT weight FROM pets WHERE pettype = 'dog' AND age = (SELECT MIN(age) FROM pets WHERE pettype = 'dog')
SELECT weight FROM pets WHERE pettype = 'dog' AND age = (SELECT MIN(age) FROM pets WHERE pettype = 'dog')
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT pettype, MAX(weight) FROM pets GROUP BY pettype
SELECT COUNT(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT COUNT(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT COUNT(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F' AND T2.pettype = 'dog'
SELECT COUNT(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F' AND T2.pettype = 'Dog'
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT DISTINCT t1.fname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t2.pettype = "Cat" OR t2.pettype = "Dog"
SELECT DISTINCT t1.fname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t2.pettype = "Cat" OR t2.pettype = "Dog"
SELECT t3.fname FROM has_pet AS t1 JOIN pets AS t2 ON t1.petid = t2.petid JOIN student AS t3 ON t1.stuid = t3.stuid WHERE t2.pettype = "Cat" INTERSECT SELECT t3.fname FROM has_pet AS t1 JOIN pets AS t2 ON t1.petid = t2.petid JOIN student AS t3 ON t1.stuid = t3.stuid WHERE t2.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT DISTINCT t1.fname, t1.age FROM Student AS t1 JOIN Has_Pet AS t2 ON t1.stuid = t2.stuid WHERE t2.pettype = "dog" EXCEPT SELECT t1.fname, t1.age FROM Student AS t1 JOIN Has_Pet AS t2 ON t1.stuid = t2.stuid WHERE t2.pettype = "cat"
SELECT DISTINCT t1.fname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t2.pettype = "dog" EXCEPT SELECT t1.fname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t2.pettype = "cat"
SELECT pettype, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pettype, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT pettype, AVG(age), MAX(age) FROM pets GROUP BY pettype
SELECT pettype, AVG(age), MAX(age) FROM pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM pets GROUP BY pettype
SELECT DISTINCT t1.fname, t1.age FROM Student AS t1 JOIN Has_Pet AS t2 ON t1.stuid = t2.stuid
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT T1.petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT T1.petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT COUNT(*), stuid FROM Has_Pet GROUP BY stuid
SELECT StuID, COUNT(*) FROM Has_Pets GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING COUNT(*) > 1
SELECT t1.lname FROM Student AS t1 JOIN Has_Pet AS t2 ON t1.stuid = t2.stuid JOIN Pets AS t3 ON t2.petid = t3.petid WHERE t3.pet_age = 3
SELECT t1.lname FROM Student AS t1 JOIN Has_Pet AS t2 ON t1.stuid = t2.stuid JOIN Pets AS t3 ON t2.petid = t3.petid WHERE t3.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.contid, T1.continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.contid
SELECT T1.contid, T1.continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.name, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.name, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM car_data ORDER BY horsepower LIMIT 1
SELECT Model FROM car_names ORDER BY Horsepower ASC LIMIT 1
SELECT T2.Model FROM car_data AS T1 JOIN model_list AS T2 ON T1.ModelId = T2.ModelId WHERE T1.Weight < (SELECT AVG(weight) FROM car_data)
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId JOIN cars_data AS T3 ON T2.MakeId = T3.MakeId WHERE T3.Weight < (SELECT AVG(weight) FROM cars_data)
SELECT DISTINCT T1.name FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = 1970
SELECT DISTINCT T1.name FROM car_makers AS T1 JOIN cars AS T2 ON T1.id = T2.maker WHERE T2.year = 1970
SELECT T1.Make, T1.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Year = (SELECT MIN(YEAR) FROM car_data)
SELECT T1.Maker, T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC LIMIT 1
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN card_names AS T2 ON T1.ModelId = T2.ModelId WHERE T2.Year > 1980
SELECT T1.continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.contid GROUP BY T1.continent
SELECT T1.continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.contid GROUP BY T1.continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.name
SELECT COUNT(*), T1.id, T1.name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = "amc hornet sportabout"
SELECT T1.accelerate FROM car_data AS T1 JOIN cars AS T2 ON T1.id = T2.makeid WHERE T2.name = 'AMC Hornet'
SELECT COUNT(*) FROM car_makers WHERE country = 'France'
SELECT COUNT(*) FROM car_makers WHERE country = 'France'
SELECT COUNT(*) FROM car_makers WHERE country = 'USA'
SELECT COUNT(*) FROM car_makers WHERE country = 'United States'
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM card_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM car_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM car_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker, model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(weight), YEAR FROM car_data GROUP BY YEAR
SELECT Country, COUNT(*) FROM car_makers WHERE Country = 'Europe' GROUP BY Country HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT MAX(T2.Horsepower), T1.Make FROM car_name AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Cylinders = 3
SELECT MAX(T2.Horsepower), T1.Make FROM car_name AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 3
SELECT model FROM car_names ORDER BY fuel LIMIT 1
SELECT model FROM car_data ORDER BY mpg DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Model = "volvo"
SELECT AVG(Edispl) FROM volvos
SELECT MAX(accelerate), cylinders FROM car_data GROUP BY cylinders
SELECT MAX(accelerate), MIN(accelerate) FROM car_data
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM car_data WHERE cylinders > 4
SELECT COUNT(*) FROM car_data WHERE cylinders > 4
SELECT COUNT(*) FROM car_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_name WHERE YEAR = 1980
SELECT COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.name = "American Motor Company"
SELECT COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.name = "American Motor Company"
SELECT T1.name, T1.id, T2.name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.maker HAVING COUNT(*) > 3
SELECT T1.name, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId JOIN car_makers AS T3 ON T1.Maker = T3.id WHERE T3.name = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId JOIN car_makers AS T3 ON T1.Maker = T3.id WHERE T3.Company = "General Motors" OR T2.Weight > 3500
SELECT YEAR FROM car_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM car_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM car_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelererate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelererate DESC LIMIT 1
SELECT T1.Cylinders FROM car_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.ModelId WHERE T2.CarName = "volvo" ORDER BY T1.Accerate ASC LIMIT 1
SELECT T1.Cylinders FROM car_data AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId WHERE T2.Make = "Volvo" ORDER BY T1.Accerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelererate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelererate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(DISTINCT country) FROM car_makers GROUP BY country HAVING COUNT(*) > 2
SELECT COUNT(DISTINCT country) FROM car_makers GROUP BY country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_data WHERE cylinders > 6
SELECT COUNT(*) FROM car_data WHERE cylinders > 6
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Make, T1.ModelName FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Horsepower > (SELECT MIN(Horsepower) FROM car_data) AND T2.Cylinders <> 3
SELECT T1.Make, T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Cylinders < 4
SELECT MAX(MPG) FROM car_data WHERE Cylinders = 8 UNION SELECT MAX(MPG) FROM car_data WHERE YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 UNION SELECT MAX(MPG) FROM cars_data WHERE YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 AND maker <> 'Ford Motor Company'
SELECT DISTINCT model FROM model_list WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list WHERE maker = 'Ford Motor Company'
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT T1.id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT T1.id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING T2.Model = 'fiat'
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId WHERE T2.Model = "Fiat"
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT airline, abbreviation FROM airlines WHERE country = 'USA'
SELECT airline, abbreviation FROM airlines WHERE country = 'USA'
SELECT T1.AirportCode, T2.AirportName FROM airports AS T1 JOIN city AS T2 ON T1.city = T2.city WHERE T2.city = "Anthony"
SELECT airportCode, airportName FROM airports WHERE city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT airline FROM airlines WHERE abbreviation = 'UAL'
SELECT airline FROM airlines WHERE abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT city, country FROM airports WHERE airportName = "Alton"
SELECT city, country FROM airports WHERE airportName = "Alton"
SELECT airportname FROM airports WHERE airport = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportName FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = "Abberdeen"
SELECT COUNT(*) FROM flights WHERE origin = 'APG'
SELECT COUNT(*) FROM flights WHERE origin = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE origin = "ATO"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.aisportcode WHERE T2.city = "City of Aberdeen"
SELECT COUNT(*) FROM Aberdeen AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.city = "Abeareare"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.aisportcode WHERE T2.city = "Abeareare"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abraham"
SELECT COUNT(*) FROM Aberdeen AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.city = 'Aberdeen' AND T2.DestAirport = 'Ashley'
SELECT COUNT(*) FROM Aberdeen AS origin, Ashley AS destination JOIN flights AS T1 ON T1.SourceAirport = origin.AirportCode AND T1.DestAirport = destination.AirportCode WHERE T1.origin = "Abraham" AND T1.destination = "Ashley"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'ASY' AND T1.Airline = 'United Airlines'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY Airport" AND T1.Airline = "United Airlines"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.aidportcode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'United Airlines'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.aidportcode WHERE T2.city = "AHD" AND T1.Airline = "United"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = 'Aberdeen' AND T1.Airline = 'United'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abraham" AND T1.Airline = "United"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.aidportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.aidport_code = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airoport_code = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.aidport_code = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.abbreviation, T2.country FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airline, T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG' INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO'
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG" INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "CVO"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport EXCEPT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT T1.flno FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.aidportcode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN landing AS T2 ON T1.DestAirport = T2.Airport WHERE T2.Airport = "APG"
SELECT T1.flno FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.aidportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN origin AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.city = 'Abraham'
SELECT T1.flno FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.aidportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abraham"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abilene" OR T2.city = "Aberdeen"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abilene" OR T2.city = "Aberdeen"
SELECT airportname FROM airports WHERE NOT UID IN (SELECT sourceairport, destinationairport FROM flights)
SELECT airportname FROM airports EXCEPT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport OR T1.AirportCode = T2.DestAirport
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY MAX(T2.bonus) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE no_number_of Employees > 0
SELECT T2.name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T2.name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE Number_products < 3000 INTERSECT SELECT district FROM shop WHERE Number_products > 10000
SELECT district FROM shop WHERE Number_products < 3000 INTERSECT SELECT district FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT T1.document_name, T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_name, T2.template_id FROM Documents AS T1 JOIN Ref_Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(*) FROM Documents WHERE Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Documents WHERE Template_Type_Code = "PTT"
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT T1.template_id, T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM Ref_Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM Ref_Templates
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PT"
SELECT COUNT(*) FROM templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM Ref_template_types WHERE template_type_code = "CV"
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(Version_Number), Template_Type_Code FROM Templates
SELECT MIN(Version_Number), Template_Type_Code FROM Templates
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T2.document_name FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_code = "BK"
SELECT T2.document_name FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_code = "BK"
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code FROM documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM documents
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT t2.template_type_description FROM Documents AS t1 JOIN Ref_template_types AS t2 ON t1.template_id = t2.template_id
SELECT template_id FROM Ref_template_types WHERE template_type_description = "Presentation"
SELECT template_id FROM Ref_template_types WHERE template_type_description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM documents GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Age FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T2.Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Name, T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Course_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name ASC
SELECT T2.Name, T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course = "Math"
SELECT T2.Name, COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT AVG(Age) FROM visitor WHERE LEVEL_of_membership <> 4
SELECT name, LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY age DESC
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.Name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.id, T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY SUM(T2.Num_of_Ticket) DESC LIMIT 1
SELECT T1.Museum_ID, T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T2.name, T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(num_of_tickets), MAX(num_of_tickets) FROM visit
SELECT SUM(T1.num_of_tickets) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.Museum_ID = T3.Museum_ID WHERE T3.Open_Year < 2009 INTERSECT SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.Museum_ID = T3.Museum_ID WHERE T3.Open_Year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE museum_id IN (SELECT museum_id FROM museum WHERE open_year > 2010)
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(T1.age) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.player_id
SELECT AVG(T1.age), AVG(T2.age) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.player_id
SELECT AVG(T2.rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id
SELECT AVG(T2.rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id
SELECT MIN(loser_rank) FROM matches
SELECT MIN(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM tourneys AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_name HAVING COUNT(*) > 10
SELECT T1.tournament_name FROM tournaments AS T1 JOIN matches AS T2 ON T1.tournament_id = T2.tournament_id GROUP BY T1.tournament_name HAVING COUNT(*) > 10
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN MATCH AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM Players AS T1 JOIN MATCH AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN MATCH AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM Players AS T1 JOIN MATCH AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM Players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = 'Australian Open'
SELECT first_name, country_code FROM Player WHERE age = (SELECT MAX(age) FROM Player)
SELECT first_name, country_code FROM Player WHERE age = (SELECT MAX(age) FROM Player)
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM Player WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN tours AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T2.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T2.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id ORDER BY T2.minutes DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.duration DESC LIMIT 1
SELECT AVG(T1.rating), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name, AVG(T2.rating_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT SUM(T1.rating_points), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name, SUM(T2.rating_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.first_name, T1.last_name, T2.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.age LIMIT 3
SELECT T1.first_name, T1.last_name, T2.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.age LIMIT 3
SELECT COUNT(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tournament_name = "WTA Championships"
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tournament_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY SUM(T2.winner_rank_points) DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE ship_type = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, RESULT FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured), time FROM death GROUP BY time
SELECT T1.note, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 1000
SELECT name, result FROM battle WHERE Bulgarian_commander <> "Boril"
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = "Kaloyan" AND latin_commander = "Baldwin I"
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = 225)
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.losted_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE location = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT DISTINCT address_id FROM addresses
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(*) FROM COURSES
SELECT COUNT(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN city_addresses AS T2 ON T1.address_id = T2.address_id WHERE T2.city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT T2.department_name, T1.department_id FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM degrees
SELECT COUNT(DISTINCT department_id) FROM degrees_programs
SELECT COUNT(DISTINCT degree_name) FROM degrees
SELECT COUNT(DISTINCT degree_id) FROM degrees
SELECT SUM(T1.degrees) FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT SUM(T1.degrees) FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM semesters AS T1 JOIN student_registrations AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM semesters AS T1 JOIN student_registrations AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM DEPARTMENT WHERE department_name LIKE '%computer%'
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 1 GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 2 GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelors"
SELECT T2.degree_program_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*), T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment_Course)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment_Course)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM students WHERE current_address_id = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.transcript_date, T1.transcript_id FROM TRANSACTIONS AS T1 JOIN TRANSACTIONS AS T2 ON T1.transaction_id = T2.transaction_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM TRANSACTIONS AS T1 JOIN TRANSECTS AS T2 ON T1.transaction_id = T2.transaction_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "MA" ORDER BY T1.date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.year_id = (SELECT MIN(YEAR) FROM Student_Enrolment)
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T2.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM TRANSACTIONS
SELECT AVG( transcript_date) FROM TRANSACTIONS
SELECT transcript_date, other_details FROM TRANSACTIONS ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date, other_details FROM TRANSACTIONS
SELECT COUNT(*) FROM TRANSACTIONS
SELECT COUNT(*) FROM TRANSACTIONS
SELECT MAX( transcript_date) FROM TRANSACTIONS
SELECT transcript_date FROM TRANSACTIONS ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(*), T1.course_id FROM Student_Enrolment AS T1 JOIN TRANSACTIONS AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name, T2.student_enrolment_id FROM Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T2.student_enrolment_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM TRANSACTIONS AS T1 JOIN TRANSACTIONS AS T2 ON T1.transaction_id = T2.transaction_id GROUP BY T1.transcript_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM TRANSACTIONS AS T1 JOIN TRANSACTIONS AS T2 ON T1.transaction_id = T2.transaction_id GROUP BY T1.transaction_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id = (SELECT MAX(student_id) FROM student_enrolment AS T3) INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id = (SELECT MIN(student_id) FROM student_enrolment AS T3)
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id = (SELECT MAX(student_id) FROM student_enrolment AS T3 JOIN students AS T4 ON T3.student_id = T4.student_id WHERE T4.first_name = "Masters" INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id = (SELECT MAX(student_id) FROM student_enrolment AS T3 JOIN students AS T4 ON T3.student_id = T4.student_id WHERE T4.first_name = "Bachelors")
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM Students ORDER BY first_name DESC
SELECT * FROM Students ORDER BY last_name DESC
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT first_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE country = "Haiti" UNION SELECT first_name FROM students WHERE cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT COUNT(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT T1.title, T1.directed_by FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.id = T2.id ORDER BY T2.Air_Date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE Series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_channel WHERE Language = "english"
SELECT COUNT(*) FROM TV_channel WHERE Language = "english"
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT T1.series_name FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT t1.series_name FROM TV_channel AS t1 JOIN Cartoons AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM Cartoons AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT rating, episode FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Ranking FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Ranking FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel WHERE High_Definition_TV = 1
SELECT t1.package_options, t2.series_name FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.high_definition_tv = 1
SELECT T1.Country FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language <> "english"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language <> "english"
SELECT id FROM TV_channel GROUP BY country HAVING COUNT(*) > 2
SELECT T1.id FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T1.id HAVING COUNT(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_channel EXCEPT SELECT T1.Package_Option FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_channel EXCEPT SELECT T1.Package_Option FROM TV_channel AS T1 JOIN Cartoons AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Ben Jones"
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Ranking FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Ranking FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(T2_Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT DISTINCT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1_Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T1.Money_Ranking FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Ranking FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT AVG(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT AVG(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM area_code_state
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM area_code_state
SELECT MAX(created) FROM votes WHERE state = 'CA'
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM votes
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state = 'NY' OR T2.state = 'CA'
SELECT COUNT(*) FROM contestants WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM votes AS T1 JOIN Contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM VOTERS AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM VOTERS AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indeependence > 1950
SELECT name FROM country WHERE founded > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Caribbean'
SELECT T1.Continent FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = 'Anguilla'
SELECT T1.Continent FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = 'Anguilla'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = 'Kabul'
SELECT region FROM country WHERE city = 'Kabul'
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = 'Aruba' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = 'Aruba' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Country = 'Brazil'
SELECT Population, LifeExpectancy FROM country WHERE Country = 'Brazil'
SELECT Region, Population FROM country WHERE Country = 'Angola'
SELECT region, population FROM country WHERE country = 'Angola'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN region AS T2 ON T1.Region = T2.Code WHERE T2.Name = 'Central Africa'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN people AS T2 ON T1.Code = T2.CountryCode WHERE T1.Region = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Republic = 1 AND T1.Country = 'Africa'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Africa' AND T2.GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT SUM(Population) FROM district WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US'
SELECT AVG(GNP), SUM(Population) FROM country WHERE CountryCode = 'USA'
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT governmenttype) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Aruba'
SELECT COUNT(DISTINCT language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Aruba'
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Afghanistan'
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Afghanistan'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'English' INTERSECT SELECT T1.id FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'Dutch'
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'English' INTERSECT SELECT T1.id FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT COUNT(DISTINCT continent) FROM country WHERE language = 'Chinese'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'english' OR T2.language = 'dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'english' OR T2.language = 'dutch'
SELECT Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.GovernmentForm = 'Republic' GROUP BY T2.language HAVING COUNT(*) = 1
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.GovernmentForm = 'Republic' GROUP BY T2.language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.country_code WHERE T3.language = 'english' ORDER BY T1.population DESC LIMIT 1
SELECT city FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'english' GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, life expectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT SUM(Population) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language <> 'English')
SELECT SUM(Population) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = 'Beatrix'
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = 'Beatrix'
SELECT COUNT(DISTINCT T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.founded < 1930
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE founded < 1930
SELECT name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT MIN(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT MIN(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT MAX(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT MAX(population) FROM country WHERE continent = 'Africa')
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English'
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English'
SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT code FROM country WHERE NOT governmentform = 'Republic' AND countrylanguage <> 'english'
SELECT code FROM country EXCEPT SELECT country_code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'english' UNION SELECT country_code FROM country AS T1 JOIN country AS T2 ON T1.code = T2.code WHERE T2.governmentForm = 'Republic'
SELECT city FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.code WHERE T2.continent = 'Europe' EXCEPT SELECT city FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.country_code WHERE T3.isofficial = 'F'
SELECT name FROM city WHERE continent = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.country_code WHERE T3.isofficial = 'F'
SELECT DISTINCT T1.Capital FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = 'Asia' AND T3.IsOfficial = 'F'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.country_code WHERE T2.continent = 'Asia' AND T3.language = 'Chinese'
SELECT name, independence_year, surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name, independence, surfacearea FROM country ORDER BY population LIMIT 1
SELECT T1.Population, T1.Name, T1.Leader FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code GROUP BY T1.code HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT T1.GovernmentForm, SUM(T2.Population) FROM government AS T1 JOIN country AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.GovernmentForm HAVING AVG(T2.LifeExpectancy) > 72
SELECT SUM(Population), GovernmentForm FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT AVG(T1.lifeexpectancy), SUM(T1.population), T1.continent FROM country AS T1 JOIN sqlite_sequence AS T2 ON T1.code = T2.country_code WHERE T2.name <> 'Asia' GROUP BY T1.continent HAVING AVG(T1.lifeexpectancy) < 72
SELECT SUM(Population), AVG(LifeExpectancy) FROM country WHERE AVG(LifeExpectancy) < 72 GROUP BY AVG(LifeExpectancy)
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT Name FROM country WHERE Country = 'Europe' AND Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT city FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Country ORDER BY SUM(T2.Percentage) DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'Spanish' ORDER BY T2.percentage DESC LIMIT 1
SELECT COUNT(DISTINCT country_code) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = 'Spanish'
SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish' ORDER BY T2.Percentage DESC LIMIT 1
SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish' GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Years_of_Work DESC
SELECT Name FROM conductor ORDER BY Years_of_Work DESC
SELECT Name FROM conductor ORDER BY Years_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Years_of_Work DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T3.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT T3.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_company, COUNT(*) FROM orchestra GROUP BY Record_company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Year_of_Founded HAVING COUNT(*) > 1
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Year_of_Founded HAVING COUNT(*) > 1
SELECT COUNT(*) FROM highschooler
SELECT COUNT(*) FROM highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM friend GROUP BY student_id
SELECT COUNT(T2.friend_id), T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.highschool_id GROUP BY T2.highschool_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.highschool_id GROUP BY T2.highschool_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.highschool_id GROUP BY T2.highschool_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.highschool_id GROUP BY T2.highschool_id HAVING COUNT(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.highschool_id GROUP BY T2.highschool_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT COUNT(T2.friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT COUNT(T2.friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT friend_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT friend_id FROM friend
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler EXCEPT SELECT name FROM friend
SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.highschool_id JOIN likes AS T3 ON T2.student_id = T3.student_id
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.friend_id = T3.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.highschool_id JOIN likes AS T3 ON T2.student_id = T3.student_id
SELECT COUNT(*), T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT COUNT(*), T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.school_id GROUP BY T2.school_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.school_id GROUP BY T2.school_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.highschool_id GROUP BY T2.highschool_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.highschool_id WHERE T2.grade > 5 GROUP BY T2.highschool_id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM highschool AS T1 JOIN likes AS T2 ON T1.id = T2.highschool_id WHERE T1.name = 'Kyle'
SELECT AVG(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT AVG(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT MIN(grade) FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT MIN(grade) FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT AVG(t1.age) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id
SELECT AVG(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2 UNION SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana"
SELECT T1.professional_id, T1.last_name, T1.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" GROUP BY T1.professional_id HAVING COUNT(*) > 2
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT name FROM dogs WHERE NOT owner_id IN (SELECT owner_id FROM treatments GROUP BY owner_id HAVING SUM(cost_of_treatment) > 1000)
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM owners EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM owners EXCEPT SELECT first_name FROM dogs
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id, T2.first_name, T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.first_name, T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.owner_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.bred_code = (SELECT MIN(bred_code) FROM dogs)
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.bred_code = (SELECT MIN(bred_code) FROM dogs)
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.date_arrived, T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.age LIMIT 1
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id WHERE t2.age = (SELECT MIN(age) FROM dogs)
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT T1.role_code, T1.street, T1.city, T1.state FROM Professions AS T1 JOIN Cities AS T2 ON T1.city = T2.city WHERE T2.city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM charges
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY MAX(cost_of_treatment)
SELECT charge_amount FROM charges GROUP BY charge_type_code ORDER BY AVG(cost_of_treatment) DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT T1.breed_type_code, T2.size_code FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T3.treatment_type_description, T2.date_of_treatment FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.owner_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, MAX(Net_worth_Millions) FROM singer GROUP BY Citizenship
SELECT T3.Title, T2.Name FROM song AS T1 JOIN artist AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN title AS T3 ON T1.Title = T3.Title
SELECT T3.Title, T2.Name FROM song AS T1 JOIN artist AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN title AS T3 ON T1.Title = T3.Title
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name, SUM(T1.sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM other_available_features
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_type_code = "Properties"
SELECT property_name FROM properties WHERE room_count > 1
