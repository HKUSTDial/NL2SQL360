SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT Name, Song_release_year FROM singer ORDER BY Age LIMIT 1
SELECT Name, Song_release_year FROM singer ORDER BY Age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT COUNT(*), country FROM singer GROUP BY country
SELECT COUNT(*), country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > average
SELECT song_name FROM singer WHERE age > AVG(age)
SELECT LOCATION, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT Name, capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = '2014' OR YEAR = '2015'
SELECT COUNT(*) FROM concert WHERE YEAR = '2014' OR YEAR = '2015'
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT COUNT(*), stadium_id FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name, capacity FROM stadium ORDER BY COUNT(*) DESC LIMIT 1 OFFSET 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT Name FROM stadium EXCEPT SELECT Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014
SELECT Name FROM stadium EXCEPT SELECT T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name, T1.theme
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name, T1.theme
SELECT T1.name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT Name, Country FROM singer WHERE Song_Name LIKE "%Hey%"
SELECT Name, Country FROM singer WHERE Song_Name LIKE "%Hey%"
SELECT Name, LOCATION FROM stadium WHERE YEAR = 2014 INTERSECT SELECT Name, LOCATION FROM stadium WHERE YEAR = 2015
SELECT Name, LOCATION FROM stadium WHERE YEAR = '2014' INTERSECT SELECT Name, LOCATION FROM stadium WHERE YEAR = '2015'
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.highest = T2.capacity
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.highest = T2.capacity
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.PetType = 'dog' AND T1.StuID IN (SELECT StuID FROM Student WHERE Sex = 'F')
SELECT COUNT(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.PetType = 'dog' AND T1.StuID IN (SELECT StuID FROM Student WHERE Sex = 'F')
SELECT COUNT(DISTINCT pet_type) FROM Pets
SELECT COUNT(DISTINCT pet_type) FROM Pets
SELECT fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'
SELECT fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'
SELECT fname FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'cat' INTERSECT SELECT fname FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'dog'
SELECT fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Cat' INTERSECT SELECT fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Dog'
SELECT Major, Age FROM Student EXCEPT SELECT T1.Major, T1.Age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'Cat'
SELECT Major, Age FROM Student EXCEPT SELECT T1.Major, T1.Age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'Cat'
SELECT StuID FROM Has_pet EXCEPT SELECT StuID FROM Has_pet WHERE PetType = 'Cat'
SELECT StuID FROM Has_pet EXCEPT SELECT StuID FROM Has_pet WHERE PetType = 'Cat'
SELECT fname, age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog' EXCEPT SELECT fname, age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat'
SELECT fname FROM student WHERE major = 1 AND NOT StuID IN (SELECT StuID FROM has_pet WHERE pet_type = 'Cat')
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT AVG(age), MAX(age) FROM Pets GROUP BY pet_type
SELECT AVG(age), MAX(age) FROM Pets GROUP BY pet_type
SELECT AVG(weight), pet_type FROM Pets GROUP BY pet_type
SELECT AVG(weight), pet_type FROM Pets GROUP BY pet_type
SELECT fname, age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT fname, age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT petid FROM has_pet JOIN student ON has_pet.stuid = student.stuid WHERE lname = 'Smith'
SELECT petid FROM has_pet JOIN pets ON has_pet.petid = pets.petid JOIN student ON has_pet.stuid = student.stuid WHERE lname = 'Smith'
SELECT StuID, COUNT(*) FROM Has_pet GROUP BY StuID
SELECT StuID FROM Has_pet GROUP BY StuID
SELECT fname, sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.fname, T1.sex HAVING COUNT(*) > 1
SELECT fname, sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.fname, T1.sex HAVING COUNT(*) > 1
SELECT Lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.contid, T1.continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT Continent, contid, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T2.fullname, T1.maker, COUNT(*) FROM car_names AS T1 JOIN car_makers AS T2 ON T1.make = T2.maker GROUP BY T1.maker
SELECT FullName, id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM model_list ORDER BY horsepower LIMIT 1
SELECT model FROM car_names ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT AVG(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT AVG(weight) FROM cars_data)
SELECT maker FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE YEAR = 1970
SELECT DISTINCT T1.maker FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.modelid WHERE T2.year = 1970
SELECT make, YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT maker, YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT continent, COUNT(*) FROM continents GROUP BY continent
SELECT continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.continent GROUP BY T1.continent
SELECT T2.countryname FROM model_list AS T1 JOIN countries AS T2 ON T1.country = T2.countryid GROUP BY T1.country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.countryname FROM model_list AS T1 JOIN countries AS T2 ON T1.country = T2.countryid GROUP BY T1.country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), FullName FROM model_list GROUP BY Maker
SELECT COUNT(*), model, id, fullname FROM model_list GROUP BY model
SELECT accelerate FROM cars_data WHERE make = 'AMC Hornet Sportabout'
SELECT accelerate FROM cars_data WHERE make = 'AMC Hornet Sportabout'
SELECT COUNT(*) FROM countries WHERE country = 'france'
SELECT COUNT(*) FROM car_makers WHERE country = 'France'
SELECT COUNT(*) FROM model_list WHERE country = 'USA'
SELECT COUNT(*) FROM model_list WHERE country = 'United States'
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT Make, Model FROM car_names
SELECT maker, model FROM model_list
SELECT countryName, countryid FROM countries GROUP BY countryName HAVING COUNT(*) >= 1
SELECT T2.countryName, T1.countryid FROM countries AS T1 JOIN car_names AS T2 ON T1.countryid = T2.makeid GROUP BY T1.countryid HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(weight), AVG(year) FROM cars_data GROUP BY YEAR
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country JOIN model_list AS T3 ON T2.id = T3.maker WHERE T1.continent = 'europe' GROUP BY T1.countryname HAVING COUNT(*) >= 3
SELECT countryname FROM countries WHERE continent = 'Europe' GROUP BY countryname HAVING COUNT(*) >= 3
SELECT MAX(horsepower), make FROM cars_data WHERE cylinders = 3 GROUP BY make
SELECT horsepower, make FROM cars_data WHERE cylinders = 3 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT model FROM car_names ORDER BY mpg DESC LIMIT 1
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(edispl) FROM cars_data WHERE model = 'volvo'
SELECT AVG(edispl) FROM cars_data WHERE make = 'Volvo'
SELECT MAX(Accelerate) FROM cars_data GROUP BY cylinders
SELECT MAX(Accelerate) FROM cars_data GROUP BY cylinders
SELECT model FROM car_names GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM car_names GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T1.maker = 'American Motor Company'
SELECT COUNT(*) FROM model_list WHERE Maker = 'American Motor Company'
SELECT FullName, id FROM car_makers GROUP BY FullName HAVING COUNT(*) > 3
SELECT model, id FROM model_list GROUP BY model HAVING COUNT(*) > 3
SELECT DISTINCT model FROM model_list WHERE maker = 'General Motors' OR weight > 3500
SELECT DISTINCT model FROM model_list WHERE maker = 'General Motors' OR weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT >= 3000 AND WEIGHT <= 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT cylinders FROM cars_data ORDER BY accelerate LIMIT 1
SELECT cylinders FROM cars_data WHERE model = 'Volvo' ORDER BY accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1)
SELECT COUNT(*) FROM countries GROUP BY continent HAVING COUNT(*) > 2
SELECT COUNT(*) FROM countries GROUP BY country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY horsepower DESC LIMIT 1
SELECT makeid, make FROM car_names WHERE horsepower > (SELECT MIN(horsepower) FROM cars_data) EXCEPT SELECT makeid, make FROM car_names WHERE cylinders > 3
SELECT makeid, make FROM car_names WHERE horsepower <> (SELECT MIN(horsepower) FROM cars_data) AND cylinders < 4
SELECT MAX(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT MAX(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT model FROM model_list WHERE maker = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT model FROM cars_data WHERE maker = 'Ford'
SELECT countryname FROM countries GROUP BY countryname HAVING COUNT(*) = 1
SELECT countryname FROM countries WHERE NOT countryid IN (SELECT country FROM car_makers)
SELECT id, maker FROM model_list GROUP BY maker HAVING COUNT(*) >= 2 AND COUNT(*) <= 3
SELECT id, maker FROM model_list GROUP BY maker HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT id, countryName FROM countries GROUP BY id HAVING COUNT(*) > 3 OR model = 'fiat'
SELECT countryid, countryname FROM countries GROUP BY countryid HAVING COUNT(*) > 3 OR model = 'fiat'
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE airline = 'Jetblue Airways'
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT airline, abbreviation FROM airlines WHERE country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE city = 'Anthony'
SELECT AirportCode, AirportName FROM airports WHERE city = 'Anthony'
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
SELECT city, country FROM airports WHERE airportname = 'Alton'
SELECT city, country FROM airports WHERE airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE city = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM Flights WHERE DestAirport = 'ATO'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABERDEEN'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABERDEEN'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABERDEEN'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABERDEEN'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'Aberdeen' AND DestAirport = 'Ashley'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABERDEEN' AND DestAirport = 'ASHLEY'
SELECT COUNT(*) FROM Flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM Flights WHERE Airline = 'Jetblue Airways'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT COUNT(*) FROM Flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 1
SELECT COUNT(*) FROM Flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'United Airlines'
SELECT COUNT(*) FROM Flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT COUNT(*) FROM Flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 1
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'United'
SELECT city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) ASC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT abbreviation, country FROM airlines ORDER BY COUNT(*) ASC LIMIT 1
SELECT abbreviation, country FROM airlines ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT airline FROM flights WHERE sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT airline FROM flights WHERE destairport = 'AHD'
SELECT airline FROM flights WHERE sourceairport = 'APG' INTERSECT SELECT airline FROM flights WHERE sourceairport = 'CVO'
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' INTERSECT SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA'
SELECT airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG'
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) >= 10
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE Airline = 1
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM Flights WHERE DestAirport = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = 'APG'
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = 'ABERDEEN'
SELECT FlightNo FROM Flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE DestAirport = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'Aberdeen' OR DestAirport = 'Abilene'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'Aberdeen' OR DestAirport = 'Abilene'
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM Flights) AND NOT AirportCode IN (SELECT DestAirport FROM Flights)
SELECT AirportName FROM airports WHERE NOT AirportName IN (SELECT SourceAirport FROM Flights) AND NOT AirportName IN (SELECT DestAirport FROM Flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age
SELECT Name FROM employee ORDER BY Age ASC
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT employee_id FROM evaluation GROUP BY employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT employee_id FROM evaluation GROUP BY employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT employee_id FROM evaluation ORDER BY bonus DESC LIMIT 1
SELECT employee_id FROM evaluation ORDER BY bonus DESC LIMIT 1
SELECT Name FROM employee EXCEPT SELECT Name FROM evaluation
SELECT Name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT COUNT(*), name FROM Hiring GROUP BY shop_id
SELECT Number_products, name FROM shop
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM HIRING
SELECT * FROM HIRING
SELECT district FROM shop GROUP BY district HAVING COUNT(*) < 3000 INTERSECT SELECT district FROM shop GROUP BY district HAVING COUNT(*) > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
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
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT COUNT(*) FROM Documents WHERE Template_ID = (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT')
SELECT T1.template_id, COUNT(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT COUNT(*), template_id FROM Documents GROUP BY template_id
SELECT T1.template_id, T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM paragraphs GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT COUNT(*), template_type_code FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(version_number), template_type_code FROM templates GROUP BY template_type_code
SELECT MIN(version_number), template_type_code FROM templates GROUP BY template_type_code
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = 'Data base'
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = 'BK')
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = 'BK')
SELECT T1.template_type_code, COUNT(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT COUNT(*), template_type_code FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM templates
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = 'AD'
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT template_id FROM templates WHERE template_type_code = "Presentation"
SELECT template_id FROM templates WHERE template_type_description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM PARAGRAPHS WHERE document_name = 'Summer Show'
SELECT COUNT(*) FROM PARAGRAPHS WHERE document_name = 'Summer Show'
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name LIKE "%Korea%"
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_name = 'Welcome to NY'
SELECT document_id, paragraph_text FROM paragraphs WHERE document_name = 'Welcome to NY'
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY document_id, document_name
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM Documents GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) = 1 TO 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "%Brazil%" INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "%Ireland%"
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT Name, Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id WHERE T3.course = 'math'
SELECT Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = 'Math'
SELECT T1.name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE open_year > 2010)
SELECT id, name, age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.ID, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID ORDER BY SUM(T2.total_spent) DESC LIMIT 1
SELECT T1.museum_id, T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY SUM(T2.num_of_ticket) DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM VISIT
SELECT SUM(total_spent) FROM VISIT WHERE level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id WHERE T1.museum_id IN (SELECT museum_id FROM museum WHERE open_year < 2009) INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.museum_id IN (SELECT museum_id FROM museum WHERE open_year > 2011)
SELECT COUNT(*) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T2.museum_id NOT IN (SELECT museum_id FROM museum WHERE open_year > 2010)
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(winner_age), AVG(loser_age) FROM matches
SELECT AVG(loser_age), AVG(winner_age) FROM matches
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
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE tourney_name = 'WTA Championships' INTERSECT SELECT first_name, country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT first_name, country_code FROM rankings GROUP BY first_name ORDER BY tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE tourney_name = 'Australian Open' ORDER BY ranking_points DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE tourney_name = 'Australian Open' ORDER BY ranking_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM rankings GROUP BY first_name
SELECT first_name, AVG(ranking) FROM rankings GROUP BY first_name
SELECT SUM(ranking_points), first_name FROM rankings GROUP BY first_name
SELECT first_name, SUM(ranking_points) FROM rankings GROUP BY first_name
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT tours FROM rankings GROUP BY ranking_date
SELECT tours FROM rankings GROUP BY ranking_date
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE tourney_name = 'WTA Championships' AND winner_hand = 'L'
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "L" AND T1.tourney_name = "WTA Championships"
SELECT first_name, country_code, birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY winner_rank_points DESC LIMIT 1
SELECT first_name, country_code, birth_date FROM players ORDER BY winner_rank_points DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(injured), MIN(injured) FROM death
SELECT AVG(injured) FROM death
SELECT note, injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT id, name FROM battle WHERE lost_in_battle IN (SELECT id FROM ship WHERE ship_type = 'Brig')
SELECT id, name FROM battle GROUP BY id HAVING COUNT(*) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT name, date FROM battle WHERE lost_in_battle = (SELECT id FROM ship WHERE name = 'Lettice') OR lost_in_battle = (SELECT id FROM ship WHERE name = 'HMS Atalanta')
SELECT name, result, bulgarian_commander FROM battle WHERE NOT lost_in_battle IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE "%East%"
SELECT line_1, line_2 FROM Addresses
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM Courses
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'
SELECT department_name, department_id FROM DEPARTMENTS GROUP BY department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM degree_programs GROUP BY department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM DEGREE_PROGRAMS
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM degree_programs WHERE department_id = 1
SELECT COUNT(*) FROM degree_programs WHERE department_id = 1
SELECT section_name, section_description FROM SECTIONS
SELECT section_name, section_description FROM SECTIONS
SELECT course_name, course_id FROM courses GROUP BY course_name HAVING COUNT(*) <= 2
SELECT course_name, course_id FROM courses GROUP BY course_name HAVING COUNT(*) < 2
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT semester_name, semester_id FROM Semesters ORDER BY date_left DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT first_name, middle_name, last_name, student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Student_Enrolment_Courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN Degree_Programs AS T4 ON T3.degree_program_id = T4.degree_program_id GROUP BY T2.student_enrolment_id HAVING COUNT(*) = 2
SELECT first_name, middle_name, last_name, student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Student_Enrolment_Courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN Degree_Programs AS T4 ON T3.degree_program_id = T4.degree_program_id GROUP BY T2.student_enrolment_id HAVING COUNT(*) = 2
SELECT first_name, middle_name, last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT first_name, middle_name, last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN student_enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T1.course_name
SELECT course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) > 0
SELECT course_name FROM courses ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM Students WHERE state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT transcript_date, transcript_id FROM TRANSCRIPT_CONTENTS GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT transcript_date, transcript_id FROM TRANSCRIPTS GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3, T1.city, T1.zip_postcode, T1.state_province_county, T1.country, T1.other_address_details FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM TRANSCRIPTS
SELECT AVG(transcript_date) FROM TRANSCRIPTS
SELECT transcript_date, other_details FROM TRANSCRIPTS ORDER BY transcript_date LIMIT 1
SELECT MIN(transcript_date), other_details FROM TRANSCRIPTS GROUP BY other_details
SELECT COUNT(*) FROM TRANSCRIPTS
SELECT COUNT(*) FROM TRANSCRIPTS
SELECT transcript_date FROM TRANSCRIPT ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM TRANSCRIPT ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(*), student_enrolment_id FROM TRANSCRIPT_CONTENTS GROUP BY student_enrolment_id HAVING COUNT(*) > 1
SELECT COUNT(*), student_enrolment_id FROM student_enrolment_courses GROUP BY course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date FROM TRANSCRIPTS ORDER BY COUNT(*) ASC LIMIT 1
SELECT transcript_date, transcript_id FROM TRANSCRIPTS ORDER BY COUNT(*) ASC LIMIT 1
SELECT semester_name FROM Semesters WHERE semester_name = 'Master' INTERSECT SELECT semester_name FROM Semesters WHERE semester_name = 'Bachelor'
SELECT semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T2.semester_name = 'Fall 2019'
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT first_name, last_name FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM Students ORDER BY last_name DESC
SELECT section_name FROM SECTIONS AS h
SELECT section_description FROM SECTIONS WHERE section_name = 'h'
SELECT first_name FROM Students WHERE permanent_address_id = (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT first_name FROM Students WHERE permanent_address_id = (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT title FROM Cartoon ORDER BY title
SELECT title FROM Cartoon ORDER BY title
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM Cartoon WHERE directed_by = 'Ben Jones'
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr'
SELECT title, directed_by FROM cartoon ORDER BY air_date
SELECT title, directed_by FROM cartoon ORDER BY air_date
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM Cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_series WHERE series_name = 'Sky Radio'
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = 'Sky Radio'
SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English'
SELECT COUNT(*) FROM TV_channel WHERE Language = 'English'
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT COUNT(*), Language FROM TV_Channel GROUP BY Language
SELECT channel FROM cartoon WHERE title = "The Rise of the Blue Beetle!"
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT title FROM Cartoon WHERE channel = "Sky Radio"
SELECT title FROM Cartoon WHERE channel = (SELECT id FROM TV_channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(share), MAX(share) FROM TV_series
SELECT MAX(share), MIN(share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT channel FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT production_code, channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_channel WHERE Hight_definition_TV = 'Yes'
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'yes'
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT country FROM TV_channel EXCEPT SELECT t1.country FROM TV_channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = 'Todd Casey'
SELECT Country FROM TV_Channel WHERE NOT Channel IN (SELECT Channel FROM Cartoon WHERE Written_by = 'Todd Casey')
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT id FROM TV_channel GROUP BY country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT channel FROM Cartoon WHERE directed_by = 'Ben Jones'
SELECT Package_Option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_channel EXCEPT SELECT T1.Package_Option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id
SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id
SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T2.earnings > 300000
SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T2.earnings > 300000
SELECT Name FROM people ORDER BY Final_Table_Made
SELECT Name FROM people ORDER BY Final_Table_Made ASC
SELECT Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY Earnings ASC LIMIT 1
SELECT Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY Earnings LIMIT 1
SELECT money_rank FROM poker_player ORDER BY height DESC LIMIT 1
SELECT money_rank FROM poker_player ORDER BY height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT Name FROM people ORDER BY Earnings DESC
SELECT Name FROM people ORDER BY Earnings DESC
SELECT COUNT(*), Nationality FROM people GROUP BY Nationality HAVING COUNT(*) > 1
SELECT COUNT(*), Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM area_code_state
SELECT created FROM VOTES WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT contestant_number, contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM contestants WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT area_code FROM VOTES GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM VOTES WHERE contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE "%Al%"
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE governmentform = 'republic'
SELECT COUNT(*) FROM country WHERE governmentform = 'republic'
SELECT SUM(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT SUM(surfacearea) FROM country WHERE region = 'Carribean'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT region FROM city WHERE name = 'Kabul'
SELECT region FROM city WHERE name = 'Kabul'
SELECT language FROM countrylanguage WHERE countrycode = 'ARU' ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'ARU' GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT region, population FROM country WHERE name = 'Angola'
SELECT region, population FROM country WHERE name = 'Angola'
SELECT AVG(lifeexpectancy) FROM country WHERE region = 'Central Africa'
SELECT AVG(lifeexpectancy) FROM country WHERE region = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia'
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia'
SELECT AVG(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT AVG(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT SUM(surfacearea) FROM country WHERE continent = 'Europe'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT Population FROM city WHERE District = 'Gelderland'
SELECT SUM(population) FROM city WHERE district = 'Gelderland'
SELECT AVG(gnp), SUM(population) FROM country WHERE governmentform = 'US Territory'
SELECT AVG(gnp), SUM(population) FROM country WHERE region = 'North America'
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(*) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = 'ARU'
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = 'ARU'
SELECT COUNT(*) FROM countrylanguage WHERE isofficial = 'T' AND countrycode = 'AF'
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Afghanistan'
SELECT Name FROM country ORDER BY Population DESC LIMIT 1
SELECT Name FROM country GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' INTERSECT SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Dutch'
SELECT COUNT(*) FROM countrylanguage WHERE language = 'english' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE language = 'dutch'
SELECT Name FROM country WHERE Language = 'English' INTERSECT SELECT Name FROM country WHERE Language = 'French'
SELECT Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'english' INTERSECT SELECT Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'french'
SELECT Name FROM country WHERE isofficial = 'T' INTERSECT SELECT Name FROM country WHERE isofficial = 'T'
SELECT Name FROM countrylanguage WHERE Language = 'english' INTERSECT SELECT Name FROM countrylanguage WHERE Language = 'french'
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE language = 'Chinese'
SELECT COUNT(*) FROM countrylanguage WHERE language = 'Chinese'
SELECT region FROM countrylanguage WHERE language = 'english' OR language = 'dutch'
SELECT region FROM countrylanguage WHERE language = 'Dutch' OR language = 'English'
SELECT countrycode FROM countrylanguage WHERE isofficial = 'T' GROUP BY countrycode HAVING COUNT(*) >= 1
SELECT Name FROM countrylanguage WHERE isofficial = 'T' AND language = 'english' OR language = 'dutch'
SELECT language FROM countrylanguage WHERE isofficial = 'T' AND continent = 'Asia' ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT countrycode FROM country WHERE continent = 'Asia') GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE isofficial = 'T' GROUP BY language HAVING COUNT(*) = 1
SELECT language FROM countrylanguage WHERE isofficial = 'T' GROUP BY language HAVING COUNT(*) = 1 INTERSECT SELECT language FROM countrylanguage WHERE governmentform = 'republic'
SELECT Name FROM city ORDER BY Population DESC LIMIT 1 INTERSECT SELECT Name FROM citylanguage WHERE Language = 'english'
SELECT Name FROM city WHERE Name IN (SELECT Name FROM countrylanguage WHERE Language = 'english') ORDER BY Population DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(lifeexpectancy) FROM country WHERE NOT isofficial = 'T'
SELECT AVG(lifeexpectancy) FROM country WHERE NOT isofficial = 'T'
SELECT SUM(population) FROM country WHERE NOT language = 'english'
SELECT Population FROM country WHERE NOT countrycode IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT language FROM countrylanguage WHERE isofficial = 'T' AND headofstate = 'Beatrix'
SELECT language FROM countrylanguage WHERE isofficial = 'T' AND headofstate = 'Beatrix'
SELECT SUM(DISTINCT percentage) FROM countrylanguage WHERE isofficial = 'T' AND IndepYear < 1930
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE IndepYear < 1930)
SELECT Name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT Name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE region = 'Europe')
SELECT Name FROM country WHERE Continent = 'Africa' EXCEPT SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.population < T2.population WHERE T2.continent = 'Asia'
SELECT Name FROM country WHERE Continent = 'Africa' ORDER BY Population LIMIT 1 OFFSET (SELECT COUNT(*) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Asia' HAVING Population > ANY (SELECT Population FROM country WHERE Continent = 'Africa')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT countrycode FROM countrylanguage WHERE language <> 'english'
SELECT countrycode FROM countrylanguage WHERE language <> 'english'
SELECT countrycode FROM countrylanguage WHERE language <> 'english'
SELECT countrycode FROM countrylanguage WHERE language <> 'english'
SELECT countrycode FROM countrylanguage WHERE language <> 'english' INTERSECT SELECT countrycode FROM country WHERE governmentform <> 'Republic'
SELECT code FROM country WHERE NOT governmentform = 'Republic' AND NOT language = 'english'
SELECT Name FROM city WHERE countrycode IN (SELECT countrycode FROM country WHERE continent = 'Europe') EXCEPT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'english'
SELECT Name FROM city WHERE countrycode = 'EU' AND NOT language = 'english'
SELECT Name FROM city WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE language = 'Chinese' AND isofficial = 'T') GROUP BY Name HAVING COUNT(*) = 1
SELECT DISTINCT Name FROM city WHERE countrycode = 'AS' AND language = 'Chinese'
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population ASC LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population ASC LIMIT 1
SELECT Population, Name, headOfState FROM country ORDER BY surfaceArea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) > 2
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT COUNT(*) FROM city AS T1 JOIN city AS T2 ON T1.district = T2.district WHERE T1.population > AVG(T2.population)
SELECT governmentform, SUM(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT governmentform, SUM(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT AVG(lifeexpectancy), SUM(population) FROM country WHERE AVG(lifeexpectancy) < 72 GROUP BY continent
SELECT continent, SUM(population), AVG(lifeexpectancy) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
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
SELECT SUM(population), AVG(surfacearea) FROM country WHERE region = 'North America' AND surfacearea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT countrycode, language FROM countrylanguage GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Spanish' ORDER BY T1.percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = 'Spanish'
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' GROUP BY countrycode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_of_work DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T1.name, T2.orchestra FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name, T2.orchestra FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id
SELECT Name FROM conductor GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM conductor GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM conductor GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor WHERE YEAR_of_work > 2008
SELECT Name FROM conductor WHERE YEAR_of_work > 2008
SELECT COUNT(*), record_company FROM orchestra GROUP BY record_company
SELECT COUNT(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra ORDER BY COUNT(*) DESC
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra EXCEPT SELECT Orchestra FROM performance
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD'
SELECT YEAR_of_founded FROM orchestra GROUP BY YEAR_of_founded HAVING COUNT(*) > 1
SELECT YEAR_of_founded FROM orchestra GROUP BY YEAR_of_founded HAVING COUNT(*) > 1
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
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(*) FROM Friend GROUP BY student_id
SELECT name, COUNT(*) FROM Friend GROUP BY student_id
SELECT name, COUNT(*) FROM Friend GROUP BY student_id
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 'Kyle'
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) = 0
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.liked_id
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.liked_id GROUP BY T1.name HAVING COUNT(*) = 2
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.liked_id
SELECT COUNT(*), student_id FROM likes GROUP BY student_id
SELECT COUNT(*), student_id FROM likes GROUP BY student_id
SELECT name, COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id GROUP BY T1.liked_id
SELECT name, COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id GROUP BY T1.liked_id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT AVG(grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT AVG(grade) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT AVG(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT AVG(age) FROM Treatments AS T JOIN Dogs AS D ON T.dog_id = D.dog_id
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2 OR T1.state = 'Indiana'
SELECT T1.professional_id, T2.last_name, T1.cell_number FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = 'Indiana' OR T1.treatment_id > 2
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT name FROM dogs WHERE owner_id NOT IN (SELECT owner_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT first_name FROM professionals INTERSECT SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT first_name FROM professionals INTERSECT SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT professional_id, role_code, email_address FROM treatments
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT professional_id, role_code, email_address FROM treatments
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T1.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment LIMIT 1
SELECT owner_id, zip_code FROM Owners ORDER BY SUM(T1.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT first_name, last_name FROM professionals WHERE treatment_id IN (SELECT treatment_id FROM treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments))
SELECT date_of_treatment, first_name FROM Treatments AS T JOIN Professionals AS P ON T.professional_id = P.professional_id
SELECT date_of_treatment, first_name FROM Treatments
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT first_name, last_name, size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT first_name, last_name, size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT first_name, name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.age LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.name ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT first_name, name FROM Owners WHERE state = 'Virginia'
SELECT date_arrived, date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT last_name FROM Owners ORDER BY date_of_birth LIMIT 1
SELECT last_name FROM Owners ORDER BY date_of_birth LIMIT 1
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments GROUP BY professional_id
SELECT COUNT(*) FROM Treatments GROUP BY professional_id HAVING COUNT(*) > 0
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT MAX(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM charges
SELECT MAX(charge_amount) FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT breed_code, size_code FROM dogs
SELECT DISTINCT breed_code, size_code FROM dogs
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year, citizenship FROM singer
SELECT Birth_Year, citizenship FROM singer
SELECT Name FROM singer WHERE citizenship <> "France"
SELECT Name FROM singer WHERE citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT COUNT(*), citizenship FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT title, name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT title, name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT DISTINCT Name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T2.sales > 300000
SELECT DISTINCT Name FROM singer WHERE Sales > 300000
SELECT Name FROM singer GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM singer GROUP BY Name HAVING COUNT(*) > 1
SELECT T1.name, SUM(T2.sales) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT SUM(sales), name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT Name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT T2.name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.title = NULL
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_feature_types WHERE feature_type_code = 'AirCon'
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code = 'house' OR property_type_code = 'apartment' AND room_count > 1
