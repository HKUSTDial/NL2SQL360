SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, country, Age FROM singer ORDER BY Age DESC
SELECT Name, country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'French'
SELECT song_name, song_release_year FROM singer ORDER BY Age LIMIT 1
SELECT song_name, song_release_year FROM singer ORDER BY Age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country FROM singer WHERE Age > 20 GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT Location, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT capacity, AVG(capacity) FROM stadium GROUP BY capacity ORDER BY capacity DESC LIMIT 1
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT Name, capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT T1.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT Name FROM stadium EXCEPT SELECT T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014"
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.concert_Name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name, T1.theme
SELECT T1.concert_Name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name, T1.theme
SELECT T1.name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = "2014"
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = "2014"
SELECT Name, country FROM singer WHERE song_name LIKE "%Hey%"
SELECT Name, country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2014" OR T2.year = "2015"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2014" INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2015"
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T1.PetType = 'dog' AND T3.Sex = 'F'
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.Sex = 'F' AND T3.PetType = 'dog'
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT fname FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'cat' OR T2.pettype = 'dog'
SELECT fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Cat' OR T3.pettype = 'Dog'
SELECT fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'Cat' AND T3.PetType = 'Dog'
SELECT fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Cat' AND T3.pettype = 'Dog'
SELECT major, age FROM student WHERE NOT StuID IN (SELECT StuID FROM has_pet WHERE PetType = 'Cat')
SELECT T1.Major FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType <> 'Cat'
SELECT StuID FROM Has_Pet WHERE PetType <> 'Cat'
SELECT StuID FROM Has_Pet WHERE PetType <> 'Cat'
SELECT fname, age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'dog' AND NOT T3.pettype = 'cat'
SELECT fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'dog' AND NOT T3.PetType = 'cat'
SELECT pettype, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age), pettype FROM pets GROUP BY pettype
SELECT AVG(pet_age), MAX(pet_age), pettype FROM pets GROUP BY pettype
SELECT AVG(weight) FROM pets GROUP BY pettype
SELECT AVG(weight) FROM pets GROUP BY pettype
SELECT fname, age FROM student WHERE StuID IN (SELECT StuID FROM has_pet)
SELECT fname, age FROM student WHERE StuID IN (SELECT StuID FROM has_pet)
SELECT T1.petid FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT T1.petid FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT T1.stuID, COUNT(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid GROUP BY T1.stuid
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT fname, sex FROM student WHERE StuID IN (SELECT StuID FROM has_pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT fname, sex FROM student WHERE StuID IN (SELECT StuID FROM has_pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'Cat' AND T3.pet_age = 3
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'Cat' AND T3.pet_age = 3
SELECT AVG(age) FROM student WHERE NOT StuID IN (SELECT StuID FROM has_pet)
SELECT AVG(age) FROM student WHERE NOT StuID IN (SELECT StuID FROM has_pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT continent, COUNT(*) FROM countries GROUP BY continent
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.FullName, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.FullName, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM car_names ORDER BY horsepower LIMIT 1
SELECT model FROM car_names ORDER BY horsepower LIMIT 1
SELECT model FROM model_list WHERE weight < (SELECT AVG(weight) FROM model_list)
SELECT model FROM car_names WHERE weight < (SELECT AVG(weight) FROM car_names)
SELECT T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970
SELECT T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970
SELECT make, YEAR FROM car_names ORDER BY YEAR LIMIT 1
SELECT T1.maker, T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id ORDER BY T2.year LIMIT 1
SELECT DISTINCT model FROM car_names WHERE YEAR > 1980
SELECT model FROM model_list WHERE YEAR > 1980 GROUP BY model
SELECT continent, COUNT(*) FROM car_makers GROUP BY continent
SELECT continent, COUNT(*) FROM car_makers GROUP BY continent
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country ORDER BY t2.maker DESC LIMIT 1
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country ORDER BY t2.maker DESC LIMIT 1
SELECT COUNT(*), t1.full_name FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id GROUP BY t1.maker
SELECT T1.Model, T1.Maker, T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id
SELECT Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Make = 'amc hornet sportabout' AND T1.Model ='sw'
SELECT Accelerate FROM cars_data WHERE Id = (SELECT MakeId FROM car_names WHERE Make = 'amc hornet sportabout' AND Model ='sw')
SELECT COUNT(*) FROM car_makers WHERE country = 'france'
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM model_list WHERE country = 'usa'
SELECT COUNT(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = 'United States'
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T1.maker, T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model
SELECT T1.maker, T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model
SELECT T1.countryname, T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT T1.countryname, T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(weight) FROM cars_data GROUP BY YEAR
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING COUNT(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING COUNT(*) >= 3
SELECT MAX(horsepower), make FROM cars_data WHERE cylinders = 3
SELECT Horsepower FROM cars_data WHERE Cylinders = 3 ORDER BY Horsepower DESC LIMIT 1
SELECT model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT model FROM car_names ORDER BY mpg DESC LIMIT 1
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(edispl) FROM cars_data WHERE model = "volvo"
SELECT AVG(edispl) FROM cars_data WHERE model = "Volvo"
SELECT MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT model FROM car_names GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_names WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE maker = (SELECT id FROM car_makers WHERE fullname = 'American Motor Company')
SELECT COUNT(*) FROM model_list WHERE maker = (SELECT id FROM car_makers WHERE maker = 'American Motor Company')
SELECT t1.fullname, t1.id FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker GROUP BY t1.id HAVING COUNT(*) > 3
SELECT T1.maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T1.maker = (SELECT id FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'General Motors') OR T1.weight > 3500
SELECT model FROM model_list WHERE maker = 'General Motors' INTERSECT SELECT model FROM model_list WHERE weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(horsepower) FROM cars_data)
SELECT COUNT(*) FROM countries WHERE country_name IN (SELECT country FROM car_makers GROUP BY country HAVING COUNT(*) > 2)
SELECT COUNT(*) FROM car_makers GROUP BY country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM car_names WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM car_names ORDER BY horsepower DESC LIMIT 1
SELECT makeid, make FROM car_names WHERE horsepower > (SELECT MIN(horsepower) FROM car_names) AND cylinders <= 3
SELECT id, make FROM car_names WHERE horsepower < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 INTERSECT SELECT model FROM car_names WHERE make <> 'Ford Motor Company'
SELECT model FROM model_list WHERE weight < 3500 INTERSECT SELECT model FROM car_names WHERE make <> 'Ford Motor Company'
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE NOT T2.countryid
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country
SELECT id, maker FROM car_makers GROUP BY id HAVING COUNT(*) >= 2 INTERSECT SELECT id, maker FROM car_makers GROUP BY id HAVING COUNT(*) >= 3
SELECT id, maker FROM car_makers WHERE COUNT(*) >= 2 AND COUNT(*) >= 3
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker > 3 OR T1.countryname = 'fiat'
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.countryname = 'Fiat' OR COUNT(*) > 3
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.flightno = "123"
SELECT country FROM airlines WHERE airline = 'Jetblue Airways'
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT airline, abbreviation FROM airlines WHERE country = 'USA'
SELECT airportcode, airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode, airportname FROM airports WHERE city = 'Anthony'
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT city, country FROM airports WHERE airportcode = 'ATL'
SELECT city, country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABERDEEN'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.destairport = 'Ashley'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'Aberdeen' AND DestAirport = 'Ashley'
SELECT COUNT(*) FROM flights WHERE airline = (SELECT uid FROM airlines WHERE airline = 'JetBlue Airways')
SELECT COUNT(*) FROM flights WHERE airline = (SELECT uid FROM airlines WHERE airline = 'Jetblue Airways')
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.destairport = 'ASY' AND T2.airline = 'United Airlines'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = (SELECT uid FROM airlines WHERE airline = 'United Airlines') AND T2.airportname = 'ASY Airport'
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = 'AHD' AND T2.Airline = 'United Airlines'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD Airport'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.destairport = 'ABERDEEN' AND T2.airline = 'United Airlines'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1.Abbreviation, T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.SourceAirport = 'APG' AND T2.DestAirport = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO' EXCEPT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG')
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG')
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) < 200
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines')
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = 'Aberdeen'
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = 'ABERDEEN'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'Aberdeen' OR DestAirport = 'Abilene'
SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT sourceairport FROM flights) INTERSECT SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT destairport FROM flights)
SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT sourceairport FROM flights) INTERSECT SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT destairport FROM flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age
SELECT Name FROM employee ORDER BY Age
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city FROM employee GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT Name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT Name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T1.name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T1.Number_products, T2.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT COUNT(*) FROM shop
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = 'Robbin CV'
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(*) FROM Documents WHERE Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Documents WHERE Template_Type_Code = 'PPT'
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT version_number, template_type_code FROM Templates WHERE version_number > 5
SELECT version_number, template_type_code FROM Templates WHERE version_number > 5
SELECT T1.template_type_code, COUNT(*) FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT t1.template_type_code FROM templates AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.template_type_code FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT version_number, template_type_code FROM Templates ORDER BY version_number LIMIT 1
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = 'Data base'
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_code, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT T1.template_type_code, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = 'AD'
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id
SELECT T1.template_details FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_details HAVING COUNT(*) > 1
SELECT template_id FROM Templates WHERE template_type_code = "Presentation"
SELECT template_id FROM Templates WHERE template_details = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE document_name = 'Summer Show'
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT paragraph_text FROM Paragraphs WHERE paragraph_text = 'Korea '
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE "%Korea %"
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_name = 'Welcome to NY'
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_name = 'Welcome to NY'
SELECT paragraph_text FROM paragraphs WHERE document_name = "Customer reviews"
SELECT paragraph_text FROM paragraphs WHERE document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id, document_name
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Brazil' OR paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' OR paragraph_text = 'Ireland'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = "32" OR Age = "33"
SELECT Name FROM teacher WHERE Age = "32" OR Age = "33"
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T1.name FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id JOIN teacher AS T3 ON T2.teacher_id = T3.teacher_id WHERE T1.course ='math'
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.course ='math'
SELECT T1.name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT T1.name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING COUNT(*) >= 2
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT T1.name FROM teacher AS T1 JOIN course AS T2 ON T1.teacher_id = T2.teacher_id WHERE NOT T1.teacher_id IN (SELECT T1.teacher_id FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id)
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT name FROM visitor ORDER BY level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership < 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY Age
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE open_year < "2009"
SELECT open_year, Num_of_Staff FROM museum WHERE Name = 'Plaza Museum'
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE open_year > '2010')
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.visitor_ID, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID ORDER BY T2.total_spent DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(Num_of_ticket), MAX(Num_of_ticket) FROM visit
SELECT Total_spent FROM visit WHERE visitor_ID = "1"
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < "2009" INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year > "2011"
SELECT COUNT(*) FROM visitor WHERE open_year > "2010"
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(winner_age), AVG(loser_age) FROM matches
SELECT AVG(winner_age), AVG(loser_age) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, country_code FROM rankings ORDER BY tours DESC LIMIT 1
SELECT first_name, country_code FROM rankings ORDER BY tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM rankings GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, MAX(tours) FROM rankings GROUP BY winner_name ORDER BY MAX(tours) DESC LIMIT 1
SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.tourney_name = 'Australian Open' ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'Australian Open' ORDER BY T2.ranking_points DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM rankings GROUP BY first_name
SELECT first_name, AVG(ranking) FROM rankings GROUP BY first_name
SELECT SUM(ranking_points), first_name FROM rankings GROUP BY first_name
SELECT first_name, SUM(ranking_points) FROM rankings GROUP BY first_name
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'WTA Championships' AND T2.hand = 'L'
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'WTA Championships' AND T2.hand = 'L'
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(injured), MIN(injured) FROM death
SELECT AVG(injured) FROM death
SELECT T1.note, T1.killed, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT lost_in_battle, name FROM ship WHERE ship_type = 'Brig' GROUP BY lost_in_battle
SELECT id, name FROM battle WHERE deaths > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander BETWEEN 'Kaloyan' AND 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE lost_in_battle = "null"
SELECT note FROM death WHERE note LIKE "%East%"
SELECT line_1, line_2 FROM Addresses
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(*) FROM Courses
SELECT COUNT(*) FROM Courses
SELECT course_description FROM courses WHERE course_name ='math'
SELECT course_description FROM Courses WHERE course_name ='math'
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT T1.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Degree_Programs
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(*) FROM Degree_Programs
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = 1
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = 1
SELECT section_name, section_description FROM SECTIONS
SELECT section_name, section_description FROM SECTIONS
SELECT course_name, course_id FROM SECTIONS GROUP BY course_name HAVING COUNT(*) <= 2
SELECT course_name, course_id FROM Courses WHERE NOT course_id IN (SELECT course_id FROM Sections)
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT semester_name, semester_id FROM Students GROUP BY semester_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name, semester_id FROM Students GROUP BY semester_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Semesters AS T4 ON T2.semester_id = T4.semester_id WHERE T3.degree_summary_name = '2' AND T4.semester_name = '1'
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Semesters AS T4 ON T2.semester_id = T4.semester_id WHERE T3.degree_summary_name = '2' AND T4.semester_name = '1'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name, T1.degree_summary_description FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T1.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*), T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.student_id
SELECT T1.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.city = "North Carolina" EXCEPT SELECT T1.last_name FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.student_id
SELECT transcript_date, transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timothy' AND last_name = 'Ward'
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3, T1.city, T1.zip_postcode, T1.state_province_county, T1.country, T1.other_address_details FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts WHERE transcript_date <> "null"
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(*), student_course_id FROM Transcript_Contents GROUP BY student_course_id HAVING COUNT(*) > 1
SELECT COUNT(*), T1.student_course_id FROM Student_Enrolment_Courses AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_course_id HAVING COUNT(*) > 1
SELECT transcript_date FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM Transcript_Contents GROUP BY transcript_id ORDER BY COUNT(*) LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelor'
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.line_1
SELECT first_name, middle_name, last_name FROM Students ORDER BY first_name DESC, middle_name DESC, last_name DESC
SELECT other_student_details FROM Students ORDER BY last_name DESC
SELECT T1.section_name FROM SECTIONS AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.section_id = T2.course_id
SELECT section_description FROM SECTIONS WHERE section_name = "h"
SELECT first_name FROM Students WHERE permanent_address_id = (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT first_name FROM Students WHERE permanent_address_id = (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT title FROM Cartoon ORDER BY title
SELECT title FROM Cartoon ORDER BY title
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM Cartoon WHERE directed_by = 'Ben Jones'
SELECT COUNT(*) FROM Cartoon WHERE directed_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr'
SELECT title, directed_by FROM Cartoon ORDER BY original_air_date
SELECT title, directed_by FROM Cartoon ORDER BY original_air_date
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM Cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name, content) FROM TV_channel
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = 'Sky Radio'
SELECT COUNT(*) FROM TV_channel WHERE Language = 'English'
SELECT COUNT(*) FROM TV_channel WHERE Language = 'english'
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T1.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT title FROM Cartoon WHERE channel = "Sky Radio"
SELECT title FROM Cartoon WHERE channel = "Sky Radio"
SELECT episode FROM TV_series ORDER BY rating
SELECT episode FROM TV_series ORDER BY rating
SELECT T1.episode, T1.rating FROM TV_series AS T1 ORDER BY T1.rating DESC LIMIT 3
SELECT episode, rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT MIN(share), MAX(share) FROM TV_series
SELECT MAX(share), MIN(share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.production_code WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.production_code WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT directed_by, COUNT(*) FROM Cartoon GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_channel WHERE Hight_definition_TV = "yes"
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'yes'
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Todd Casey"
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by <> 'Todd Casey'
SELECT country FROM tv_channel EXCEPT SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' AND T2.written_by = 'Michael Chang'
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' OR T2.directed_by = 'Michael Chang'
SELECT Pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language <> 'english'
SELECT Pixel_aspect_ratio_PAR, country FROM TV_channel WHERE Language <> 'english'
SELECT id FROM TV_channel GROUP BY country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE directed_by = 'Ben Jones')
SELECT T1.id FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE directed_by <> 'Ben Jones'
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE directed_by = 'Ben Jones')
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE directed_by = 'Ben Jones')
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT final_table_made, best_finish FROM poker_player
SELECT final_table_made, best_finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT Name FROM people
SELECT Name FROM poker_player
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT t1.Birth_Date FROM people AS t1 JOIN poker_player AS t2 ON t1.People_ID = t2.People_ID ORDER BY t2.Earnings LIMIT 1
SELECT birth_date FROM people ORDER BY earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE NOT people_id IN (SELECT people_id FROM poker_player)
SELECT Name FROM people WHERE NOT people_id IN (SELECT people_id FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT MAX(created) FROM votes WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM votes
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number ORDER BY T2.created LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE governmentform ='republic'
SELECT COUNT(*) FROM country WHERE governmentform ='republic'
SELECT SUM(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Carribean'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT T1.region FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.name = 'Kabul'
SELECT region FROM country WHERE name = 'Kabul'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = 'Aruba' ORDER BY T1.percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = 'Aruba' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM countrylanguage WHERE countrycode = 'BRA'
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT region, population FROM country WHERE name = 'Angola'
SELECT T1.region, T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Angola'
SELECT AVG(LifeExpectancy) FROM country WHERE region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM countrylanguage WHERE countrycode = 'CA'
SELECT Name FROM country ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia'
SELECT Population FROM city WHERE countrycode = 'ASIA' ORDER BY GNP DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT Population FROM city WHERE District = 'Gelderland'
SELECT Population FROM city WHERE Name = 'Gelderland'
SELECT AVG(GNP), SUM(population) FROM country WHERE governmentform = 'US territory'
SELECT AVG(GNP), SUM(population) FROM country WHERE continent = 'Asia'
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(*) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = 'ABW'
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = 'ABW'
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = 'AF' AND isofficial = 'T'
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = 'AF' AND isofficial = 'T'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.continent FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = 'english' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE language = 'dutch'
SELECT COUNT(*) FROM countrylanguage WHERE language = 'english' OR language = 'dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'english' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'french'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'english' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'french'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'english' AND T2.isofficial = 'T' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'french' AND T2.isofficial = 'T'
SELECT Name FROM country WHERE countrylanguage.language = 'english' AND countrylanguage.isofficial = 'T' INTERSECT SELECT Name FROM country WHERE countrylanguage.language = 'french' AND countrylanguage.isofficial = 'T'
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE language = 'Chinese'
SELECT COUNT(*) FROM countrylanguage WHERE language = 'Chinese' GROUP BY isofficial
SELECT region FROM countrylanguage WHERE language = 'english' OR language = 'dutch'
SELECT region FROM countrylanguage WHERE language = 'Dutch' OR language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'english' OR T2.language = 'dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'T' AND T2.language = 'english' OR T2.language = 'dutch'
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' ORDER BY T1.percentage DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' GROUP BY T1.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.governmentform ='republic' GROUP BY T1.language HAVING COUNT(*) = 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.governmentform ='republic' GROUP BY T1.language HAVING COUNT(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = 'english' ORDER BY t1.population DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'english' ORDER BY t1.population DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Language = 'English'
SELECT AVG(LifeExpectancy) FROM countrylanguage WHERE Language <> 'english'
SELECT SUM(population) FROM city WHERE countrycode <> 'USA'
SELECT Population FROM city WHERE NOT countrycode = 'USA'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = 'Beatrix'
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.headofstate = 'Beatrix'
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE isofficial = 'T' AND indepyear < 1930
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE indepyear < 1930
SELECT Name FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE Population < (SELECT Population FROM country WHERE Continent = 'Asia')
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' GROUP BY T1.name ORDER BY T1.population LIMIT 1
SELECT Name FROM country WHERE Population > (SELECT Population FROM country WHERE Continent = 'Africa')
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' AND T2.population > (SELECT T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Africa')
SELECT countrycode FROM countrylanguage WHERE language <> 'english'
SELECT countrycode FROM countrylanguage WHERE language <> 'english'
SELECT countrycode FROM countrylanguage WHERE language <> 'english'
SELECT T1.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language <> 'english'
SELECT code FROM countrylanguage WHERE language <> 'english' AND governmentform <>'republic'
SELECT code FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = 'english') AND NOT governmentform ='republic'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND NOT T2.countrylanguage LIKE '%english%'
SELECT Name FROM city WHERE countrycode = 'EUR' AND NOT isofficial = 'T'
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Asia' AND t1.name IN (SELECT t1.name FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = 'Chinese' AND t1.isofficial = 'T')
SELECT Name FROM city WHERE countrycode = 'AS' AND countrylanguage.language = 'Chinese'
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) > 2
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT district, COUNT(*) FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT GOVERNMENTFORM, SUM(population) FROM country GROUP BY GOVERNMENTFORM HAVING AVG(lifeexpectancy) > 72
SELECT GOVERNMENTFORM, SUM(population) FROM country GROUP BY GOVERNMENTFORM HAVING AVG(lifeexpectancy) > 72
SELECT AVG(LifeExpectancy), SUM(Population) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT continent, SUM(population), AVG(lifeexpectancy) FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code ORDER BY T2.population DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code ORDER BY T1.percentage DESC LIMIT 1
SELECT T1.code, T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode ORDER BY T2.percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = 'Spanish'
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' ORDER BY T2.percentage DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING COUNT(*) >= (SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = 'Spanish')
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(attendance) FROM show
SELECT AVG(attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY YEAR_of_WORK DESC LIMIT 1
SELECT T1.name, T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name, T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT Name FROM conductor GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*)
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT T1.Record_Company FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Record_Company = T2.Record_Company WHERE T1.Year_of_Founded < 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Record_Company = T2.Record_Company WHERE T1.Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD'
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Founded HAVING COUNT(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Founded HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT T1.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = "Kyle"
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = "Kyle"
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.friend_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_id
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING T1.grade > 5 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Friend AS T3 ON T1.id = T3.friend_id GROUP BY T1.id HAVING T1.grade > 5 AND COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = 1
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT grade FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.state = T2.state GROUP BY T1.state HAVING COUNT(*) = 2
SELECT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.state = T2.state
SELECT AVG(age) FROM dogs WHERE date_of_treatment <> "null"
SELECT AVG(age) FROM dogs WHERE date_of_treatment <> "null"
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = 'Indiana' OR T1.cost_of_treatment > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' OR T2.treatment_id > 2
SELECT T1.name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE first_name NOT IN (SELECT first_name FROM dogs)
SELECT first_name FROM Owners WHERE first_name NOT IN (SELECT name FROM Dogs)
SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) = 0
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T1.cost_of_treatment) DESC LIMIT 1
SELECT Treatment_Types.treatment_type_description FROM Treatment_Types JOIN Treatments ON Treatment_Types.treatment_type_code = Treatments.treatment_type_code ORDER BY Treatments.cost_of_treatment LIMIT 1
SELECT Treatment_Types.treatment_type_description FROM Treatment_Types JOIN Treatments ON Treatment_Types.treatment_type_code = Treatments.treatment_type_code ORDER BY Treatments.cost_of_treatment LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Dogs AS T1 JOIN Charges AS T2 ON T1.dog_id = T2.charge_id ORDER BY T2.charge_amount DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Dogs AS T1 JOIN Charges AS T2 ON T1.dog_id = T2.charge_id GROUP BY T1.owner_id ORDER BY SUM(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Treatments AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Treatments AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T1.cost_of_treatment < (SELECT AVG(T1.cost_of_treatment) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id)
SELECT T1.first_name, T1.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id GROUP BY T1.professional_id HAVING T1.cost_of_treatment < (SELECT AVG(T1.cost_of_treatment) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id)
SELECT T1.date_of_treatment, T1.treatments.professional_id, T1.treatments.dog_id, T1.treatments.treatment_type_code, T1.treatments.cost_of_treatment, T1.treatments.date_of_treatment, T1.treatments.cost_of_treatment, T1.treatments.date_of_treatment, T1.treatments.cost_of_treatment, T1.treatments.date_of_treatment, T1.treatments.cost_of_treatment, T1.treatments.date_of_treatment, T1.treatments.cost_of_treatment, T1.treatments.date_of_treatment, T1.treatments.cost_of_treatment, T1.treatments.date_of_treatment, T1.treatments.cost_of_treatment, T1.treatments.date_of_treatment, T1.treatments.cost_of_t
SELECT T1.date_of_treatment, T1.cost_of_treatment, T1.treatment_type_code, T1.dog_id, T1.professional_id, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment, treatment_type_description FROM treatments JOIN treatment_types ON treatment_types.treatment_type_code = treatments.treatment_type_code
SELECT Treatments.cost_of_treatment, Treatment_Types.treatment_type_description FROM Treatments JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code
SELECT T1.first_name, T1.last_name, T1.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T1.size_code FROM Dogs AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T1.date_of_treatment FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T1.weight LIMIT 1
SELECT T1.name, T1.date_of_treatment FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code ORDER BY T1.cost_of_treatment LIMIT 1
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT Treatments.date_of_treatment, Treatments.date_of_treatment FROM Treatments
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT last_name FROM Dogs ORDER BY age LIMIT 1
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE date_departed = "null"
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT MAX(age) FROM Dogs
SELECT MAX(age) FROM Dogs
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_name, T1.size_description FROM Dogs AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T1.last_name, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT birth_year, citizenship FROM singer
SELECT birth_year, citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT Name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT title, name FROM song JOIN singer ON song.singer_id = singer.singer_id
SELECT title, Name FROM song JOIN singer ON song.singer_id = singer.singer_id
SELECT DISTINCT Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE Sales > 300000
SELECT Name FROM singer WHERE Sales > 300000
SELECT Name FROM singer GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM singer GROUP BY Name HAVING COUNT(*) > 1
SELECT T1.name, SUM(T2.sales) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name, SUM(T2.sales) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT Name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT Name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT citizenship FROM singer WHERE birth_year < 1945 OR birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT T1.feature_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = 'AirCon'
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code = 'hse' OR property_type_code = 'apt' AND room_count > 1
