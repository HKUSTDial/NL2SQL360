SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT name, song_release_year FROM singer ORDER BY age LIMIT 1
SELECT Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT Song_Name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY AVG(attendance) DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY AVG(attendance) DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.theme, T2.name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.theme
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.Name FROM concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year = 2014
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT name, country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY highest LIMIT 1)
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT weight FROM pets WHERE pet_age = (SELECT MIN(pet_age) FROM pets WHERE pettype = "dog")
SELECT weight FROM pets WHERE pet_age = (SELECT MIN(pet_age) FROM pets WHERE pettype = "dog")
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT MAX(weight), MAX(pet_age), pet_type FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Student WHERE age > 20
SELECT COUNT(*) FROM Student WHERE age > 20
SELECT COUNT(*) FROM Student WHERE sex = "F" AND major = "Pets" AND pet_age = 0 AND pet_type = "Dog"
SELECT COUNT(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = "F" AND T2.pettype = "dog"
SELECT COUNT(DISTINCT pet_type) FROM pets
SELECT COUNT(DISTINCT pet_type) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE pet_type = "Cat")
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE pet_type = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE petid = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE petid = "Cat"
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat" EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat"
SELECT fname FROM student WHERE NOT StuID IN (SELECT StuID FROM Has_Cat) AND StuID IN (SELECT StuID FROM Has_Pet WHERE petid = "dog")
SELECT pet_type, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT AVG(weight), MAX(weight), pet_age FROM Pets GROUP BY pet_age
SELECT AVG(age), MAX(age), pet_type FROM pets GROUP BY pet_type
SELECT AVG(weight), pet_type FROM pets GROUP BY pet_type
SELECT AVG(weight), pet_type FROM pets GROUP BY pet_type
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T1.petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT T1.petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT COUNT(*) FROM Has_Pet
SELECT T1.StuID, COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" AND T3.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3 AND T3.pettype = "Cat"
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT continent, continentname, COUNT(*) FROM countries GROUP BY continent
SELECT continent, COUNT(*) FROM countries GROUP BY continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker
SELECT T1.FullName, T2.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.id
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId ORDER BY T1.Horsepower ASC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.weight < (SELECT AVG(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.weight < (SELECT AVG(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T2.year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.year = 1970
SELECT T1.Make, T1.Production FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year = (SELECT MIN(YEAR) FROM cars_data)
SELECT T1.Maker, T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker ORDER BY T2.year LIMIT 1
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT continent, COUNT(*) FROM car_makers GROUP BY continent
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.ContId GROUP BY T1.ContID
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country = T2.Country GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country = T2.Country GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T1.Maker
SELECT COUNT(*), T1.id, T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT Accelerate FROM cars_data WHERE Model = "amc hornet sportabout (sw)
SELECT Accelerate FROM cars_data WHERE Model = "amc hornet sportabout (sw)
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM model_list WHERE maker = 'usa'
SELECT COUNT(*) FROM model_list WHERE Maker = "United States"
SELECT AVG(mpg) FROM cars_data WHERE cylinders = "4"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = "4"
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryID HAVING COUNT(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryID HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(weight), AVG(year) FROM cars_data GROUP BY AVG(year)
SELECT T1.Country FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE Continent = "Europe" GROUP BY Country HAVING COUNT(*) >= 3
SELECT MAX(horsepower), T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT MAX(Horsepower), T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId ORDER BY T1.MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(edispl) FROM cars_data WHERE model = "volvo"
SELECT AVG(edispl) FROM cars_data WHERE model = "Volvo"
SELECT MAX(accelerate), cylinders FROM cars_data GROUP BY cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(DISTINCT model) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE maker = 'American Motor Company'
SELECT COUNT(*) FROM model_list WHERE maker = 'American Motor Company'
SELECT T1.FullName, T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.id HAVING COUNT(*) > 3
SELECT T1.Maker, T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.id HAVING COUNT(*) > 3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Maker = "General Motors" OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight < 3000 AND Weight > 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = "volvo" ORDER BY T1.Accelerate ASC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = "volvo" ORDER BY T1.Accelerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM countries GROUP BY country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM countries WHERE COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = "4" ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = "4" ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Makeid, T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Make = T2.Makeid WHERE T1.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND T1.Cylinders > 3
SELECT T1.Makeid, T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders <= 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.Maker = "Ford Motor Company"
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Maker = "Ford Motor Company"
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.country = T2.country WHERE T2.model = 'fiat' GROUP BY T1.countryid HAVING COUNT(*) > 3
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.country = T2.country GROUP BY T1.countryid HAVING COUNT(*) > 3 UNION SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.country = T2.country WHERE T2.Model = "Fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT airline, abbreviation FROM airlines WHERE country = 'USA'
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
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
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT airportname FROM airports WHERE airportname = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE city = "Aberdeen"
SELECT AirportName FROM airports WHERE city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "APG"
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "APG"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM airports WHERE city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "Aberdeen"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.DestAirport WHERE T1.city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE destination = "Aberdeen"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Aberdeen" AND T1.AirportName = "Ashley"
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "Aberdeen" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM flights WHERE airline = 'JetBlue Airways'
SELECT COUNT(*) FROM Flights WHERE Airline = "Jetblue Airways"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.DestAirport WHERE T1.AirportName = "ASY" AND T2.Airline = "United Airlines"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.DestAirport WHERE T1.AirportName = "ASY" AND T2.Airline = "United Airlines"
SELECT COUNT(*) FROM Flights WHERE DestAirport = "AHD" AND Airline = "United Airlines"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.SourceAirport WHERE T1.AirportName = "AHD" AND T2.Airline = "United Airlines"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.SourceAirport WHERE T1.AirportName = "Aberdeen" AND T2.Airline = "United Airlines"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.DestAirport WHERE T1.AirportName = "Aberdeen" AND T2.Airline = "United Airlines"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.DestAirport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.DestAirport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.SourceAirport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.abbreviation, T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.country, T1.Abbreviation FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Abbreviation ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport INTERSECT SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport
SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG" INTERSECT SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "CVO"
SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "CVO" EXCEPT SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG"
SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "CVO" EXCEPT SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT T1.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG"
SELECT FlightNo FROM Flights WHERE SOURCEAIRPORT = "APG"
SELECT T1.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = "APG"
SELECT FlightNo FROM Flights WHERE SOURCEAIRPORT = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SOURCEAIRPORT = "Aberdeen"
SELECT FlightNo FROM Flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.DestAirport WHERE T1.city = "Aberdeen" OR T1.city = "Abilene"
SELECT COUNT(*) FROM airports WHERE city = "Aberdeen" OR city = "Abilene"
SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT DestAirport FROM flights)
SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT destinationairport FROM flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 30000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 30000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_name, template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name, template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_id, template_id, document_details FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_details FROM Documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(*) FROM Documents WHERE template_type_code = "PPT"
SELECT COUNT(*) FROM Documents WHERE template_type_code = "PPT"
SELECT T1.template_id, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM Documents)
SELECT template_id FROM Ref_Template_Types WHERE NOT template_type_code IN (SELECT template_type_code FROM Documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM Templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT version_number, template_type_code FROM Templates WHERE version_Number > 5
SELECT version_number, template_type_code FROM Templates WHERE version_Number > 5
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT MIN(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_code, COUNT(*) FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.template_type_code
SELECT T1.template_type_code, COUNT(*) FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.template_type_code
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code, template_type_description FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID
SELECT template_id FROM Ref_Template_Types WHERE template_type_Description = "Presentation"
SELECT template_id FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation"
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT T1.paragraph_details FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = "Korea"
SELECT T1.paragraph_details FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = "Korea"
SELECT T1.paragraph_id, T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT t2.paragraph_id, t2.paragraph_text FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Welcome to NY"
SELECT t2.paragraph_text FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Customer reviews"
SELECT t2.paragraph_text FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Customer reviews"
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM Documents GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM Documents GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM Documents GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.document_id, T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = "Brazil" AND paragraph_text = "Ireland"
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' AND paragraph_text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T2.Name, T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT Name FROM teacher WHERE Course = "Math"
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT AVG(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP < 4
SELECT name, LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age
SELECT museum_id, name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, Num_of_Staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE Num_of_Staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY Total_spent DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.Name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID ORDER BY Num_of_Ticket DESC LIMIT 1
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit
SELECT Total_spent FROM visitor WHERE LEVEL_OF_MEMBERSHIP = 1
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.Museum_ID WHERE T3.open_year < 2009 INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.Museum_ID WHERE T3.open_year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(winner_rank) FROM MATCHS
SELECT AVG(winner_rank) FROM MATCHS
SELECT loser_rank FROM MATCHS ORDER BY loser_rank DESC LIMIT 1
SELECT MIN(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM rankings AS T1 JOIN matches AS T2 ON T1.tours = T2.tourney_id GROUP BY T1.tours HAVING COUNT(*) > 10
SELECT T1.tourney_name FROM tournaments AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING COUNT(*) > 10
SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT match_num FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM rankings AS T1 JOIN tournaments AS T2 ON T1.tours = T2.tourney_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM rankings AS T1 JOIN tournaments AS T2 ON T1.tours = T2.tourney_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT AVG(tours), first_name FROM rankings GROUP BY first_name
SELECT T1.first_name, AVG(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, SUM(T2.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = (SELECT MIN(YEAR) FROM matches)
SELECT T1.winner_name, T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = (SELECT MIN(YEAR) FROM matches)
SELECT COUNT(DISTINCT winner_id) FROM WTA Championships WHERE loser_hand = "left"
SELECT COUNT(*) FROM WTA Championships WHERE winner_hand = "left"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY SUM(T2.winner_rank_points) DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(injured), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT T1.killed, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = "t"
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT id FROM ship WHERE tonnage = 225)
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' AND T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM Addresses
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(*) FROM COURSES
SELECT COUNT(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT T1.department_name, T1.department_id FROM DEPARTMENTS AS T1 JOIN DEGREE_PROGRAMS AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM DEPARTMENTS AS T1 JOIN DEGREE_PROGRAMS AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM DEGREE_PROGRAMS
SELECT COUNT(DISTINCT degree_summary_name) FROM DEGREE_PROGRAMS
SELECT COUNT(*) FROM degree_programs WHERE department_id = "engineering"
SELECT COUNT(*) FROM degree_programs WHERE department_id = "engineering"
SELECT section_name, section_description FROM SECTIONS
SELECT section_name, section_description FROM SECTIONS
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT semester_name, semester_id FROM Semesters WHERE semester_id = (SELECT semester_id FROM Student_Enrolment GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT semester_name, semester_id FROM Student_Enrolment GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE '%Computer%'
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 1 AND T2.degree_program_id = 2 GROUP BY T2.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelors"
SELECT T1.degree_program_id FROM DEGREE_PROGRAMS AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM DEGREE_PROGRAMS AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM DEGREE_PROGRAMS AS T1 JOIN DEGREE_SUMMARYS AS T2 ON T1.degree_summary_name = T2.degree_summary_name GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM DEGREE_PROGRAMS AS T1 JOIN DEGREE_SUMMARYS AS T2 ON T1.degree_summary_name = T2.degree_summary_name GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T2.first_name, T2.middle_name, T2.last_name, COUNT(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT student_id FROM student_enrolment
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT student_id FROM student_enrolment
SELECT T1.transcript_date, T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.student_course_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students WHERE date_graduated = (SELECT MIN(date_graduated) FROM Students)
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T2.line_1, T2.line_2, T2.line_3 FROM Addresses AS T1 JOIN Sections AS T2 ON T1.address_id = T2.address_id WHERE T2.section_id = (SELECT MAX(section_id) FROM SECTIONS)
SELECT T1.address_id, T2.line_1, T2.line_2 FROM Addresses AS T1 JOIN Sections AS T2 ON T1.address_id = T2.address_id WHERE T1.state_province_county = (SELECT state_province_county FROM Addresses GROUP BY state_province_county ORDER BY COUNT(*) DESC LIMIT 1)
SELECT AVG(transcript_date) FROM TRANSCRIPTS
SELECT AVG(transcript_date) FROM TRANSCRIPTS
SELECT date_first_registered, other_details FROM Students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM Students)
SELECT transcript_date, other_details FROM TRANSCRIPTS ORDER BY transcript_date ASC LIMIT 1
SELECT COUNT(*) FROM TRANSCRIPTS
SELECT COUNT(*) FROM TRANSCRIPTS
SELECT MAX(transcript_date) FROM TRANSCRIPTS
SELECT date_last_released FROM TRANSCRIPTS ORDER BY date_last_released DESC LIMIT 1
SELECT COUNT(*), course_id FROM Student_Enrolment_Courses GROUP BY course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_id, COUNT(*) FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM TRANSCRIPTS GROUP BY transcript_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.student_course_id GROUP BY T1.transcript_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT semester_id FROM student_enrolment WHERE degree_program_id = "MA" INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = "BA"
SELECT semester_id FROM student_enrolment WHERE degree_program_id = "MA" INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = "BA"
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT student_details FROM Students ORDER BY student_details DESC
SELECT other_details FROM Students ORDER BY other_details DESC
SELECT section_description FROM SECTIONS WHERE section_name = "h"
SELECT section_description FROM SECTIONS WHERE section_name = "h"
SELECT first_name FROM Students WHERE permanent_address_id = "Haiti" OR cell_mobile_number = "09700166582"
SELECT first_name FROM Students WHERE permanent_address_id = "Haiti" OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT COUNT(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country, COUNT(*) FROM TV_Channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_Channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT COUNT(*), Language FROM TV_Channel GROUP BY Language
SELECT t2.series_name FROM Cartoon AS t1 JOIN TV_Channel AS t2 ON t1.channel = t2.id WHERE t1.Title = "The Rise of the Blue Beetle"
SELECT t1.series_name FROM TV_Channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.channel WHERE t2.Title = "The Rise of the Blue Beetle"
SELECT t3.title FROM TV_Channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel JOIN Cartoon AS t3 ON t2.id = t3.id WHERE t1.series_name = "Sky Radio"
SELECT t3.title FROM TV_series AS t1 JOIN Cartoon AS t2 ON t1.id = t2.id JOIN TV_Channel AS t3 ON t1.channel = t3.id WHERE t1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT episode, rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Channel FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT t1.series_name FROM TV_series AS t1 JOIN Episode AS t2 ON t1.id = t2.id WHERE t2.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE id = "Sky Radio"
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT COUNT(*), directed_by FROM cartoon GROUP BY directed_by
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_Channel WHERE high_definition_TV = 'Y'
SELECT package_option, series_name FROM TV_Channel WHERE high_definition_TV = 'Y'
SELECT DISTINCT t1.country FROM TV_Channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.id WHERE t2.Written_by = "Todd Casey"
SELECT DISTINCT country FROM cartoon WHERE written_by = "Todd Casey"
SELECT country FROM TV_Channel EXCEPT SELECT country FROM Cartoon WHERE written_by = "Todd Casey"
SELECT country FROM TV_Channel EXCEPT SELECT country FROM Cartoon WHERE written_by = "Todd Casey"
SELECT t1.series_name, t1.country FROM TV_Channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" AND t2.written_by = "Michael Chang"
SELECT t1.series_name, t1.country FROM TV_Channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name, t1.country FROM TV_Channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR, country FROM TV_Channel WHERE Language <> "English"
SELECT pixel_aspect_ratio_PAR, country FROM TV_Channel WHERE Language <> "English"
SELECT id FROM TV_Channel WHERE Country > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel EXCEPT SELECT id FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT id FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM TV_Channel EXCEPT SELECT t1.package_option FROM TV_Channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE directed_by = "Ben Jones")
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
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT Name FROM poker_player
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(state) FROM area_code_state
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM area_code_state
SELECT created FROM votes WHERE state = "CA" ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM contestants WHERE contestant_name <> "Jessie Alloway"
SELECT DISTINCT state, created FROM votes
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = "NY" OR state = "CA"
SELECT COUNT(*) FROM contestants WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT state FROM votes GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(surfacearea) FROM country WHERE region = "Caribbean"
SELECT SUM(surfacearea) FROM country WHERE region = "Carribean"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT district FROM city WHERE name = "Kabul"
SELECT region FROM country WHERE name = "Kabul"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Name = "Aruba"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT region, population FROM country WHERE name = "Angola"
SELECT region, population FROM country WHERE name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT name FROM country WHERE lifeexpectancy = (SELECT MIN(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = "Asia" ORDER BY lifeexpectancy LIMIT 1
SELECT SUM(pop), MAX(GNP) FROM country WHERE continent = "Asia"
SELECT population, MAX(GNP) FROM country WHERE continent = "Asia"
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT SUM(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT population FROM district WHERE district = "Gelderland"
SELECT SUM(population) FROM district WHERE district = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "United States"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "United States"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = "Africa"
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = "Africa"
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT COUNT(*) FROM country WHERE code = "Afghanistan" AND isofficial = 1
SELECT COUNT(*) FROM country WHERE code = "Afghanistan" AND isofficial = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country WHERE language = "english" INTERSECT SELECT COUNT(*) FROM country WHERE language = "dutch"
SELECT COUNT(*) FROM country WHERE languages = "english" INTERSECT SELECT COUNT(*) FROM country WHERE languages = "dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT COUNT(DISTINCT continent) FROM country WHERE language = "Chinese"
SELECT COUNT(DISTINCT continent) FROM country WHERE language = "Chinese"
SELECT region FROM country WHERE language = "english" OR language = "dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT CountryCode FROM country WHERE Language = "English" OR Language = "Dutch"
SELECT CountryCode FROM country WHERE Language = "English" OR Language = "Dutch"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code JOIN countrylanguage AS t3 ON t2.code = t3.countrycode WHERE t3.language = "english" AND t1.population = (SELECT MAX(population) FROM city WHERE language = "english")
SELECT t3.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode JOIN city AS t3 ON t1.code = t3.countrycode WHERE t2.language = "english" AND t1.population = (SELECT MAX(population) FROM country WHERE language = "english")
SELECT name, population, lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE Language <> "English"
SELECT AVG(lifeexpectancy) FROM country WHERE NOT countrycode IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT SUM(population) FROM country WHERE NOT countrycode IN (SELECT countrycode FROM country WHERE language = 'english')
SELECT population FROM country WHERE NOT countrycode IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM country AS T1 JOIN country AS T2 ON T1.HeadOfState = T2.HeadOfState WHERE T2.Name = "Beatrix"
SELECT COUNT(DISTINCT language) FROM country WHERE founded > 1930
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE founded < 1930
SELECT name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT MIN(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
SELECT name FROM country WHERE population < (SELECT MIN(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
SELECT name FROM country WHERE population > (SELECT MAX(population) FROM country WHERE continent = 'Africa') AND continent = 'Asia'
SELECT name FROM country WHERE population > (SELECT MAX(population) FROM country WHERE continent = 'Africa') AND continent = 'Asia'
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT countrycode FROM country WHERE NOT countrycode IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language <> 'english'
SELECT countrycode FROM country WHERE NOT countrycode IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT code FROM country WHERE NOT governmentform = "Republic" AND NOT language = "English"
SELECT code FROM country WHERE NOT countrycode IN (SELECT countrycode FROM country WHERE governmentform = "Republic") AND NOT language = "english"
SELECT name FROM city WHERE countrycode IN (SELECT countrycode FROM country WHERE language = 'english')
SELECT name FROM city WHERE NOT id IN (SELECT city_id FROM city WHERE language = 'english') AND continent = 'Europe'
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name IN (SELECT T1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese")
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = "Asia" AND t2.language = "Chinese"
SELECT name, independenceyear, surfacearea FROM country ORDER BY population LIMIT 1
SELECT name, independence, surfacearea FROM country ORDER BY population LIMIT 1
SELECT population, name, headofstate FROM country WHERE surfacearea = (SELECT MAX(surfacearea) FROM country)
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT district, COUNT(*) FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT district, COUNT(*) FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT governmentform, AVG(population) FROM country WHERE AVG(lifeexpectancy) > 72 GROUP BY governmentform
SELECT governmentform, AVG(lifeexpectancy) FROM country GROUP BY governmentform HAVING AVG(lifeexpectancy) > 72
SELECT AVG(lifeexpectancy), SUM(population), continent FROM country WHERE AVG(lifeexpectancy) < 72 GROUP BY continent
SELECT continent, AVG(lifeexpectancy), AVG(population) FROM country WHERE AVG(lifeexpectancy) < 72 GROUP BY continent
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT AVG(area), SUM(population) FROM country WHERE continent = "North America" AND area > 3000
SELECT AVG(population), AVG(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.countrycode, T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.countrycode ORDER BY AVG(T2.percentage) DESC LIMIT 1
SELECT T1.countrycode, T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.countrycode ORDER BY AVG(T2.percentage) DESC LIMIT 1
SELECT COUNT(*) FROM country WHERE language = "Spanish" GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country WHERE language = "Spanish"
SELECT CountryCode FROM country WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryCode FROM country WHERE Language = "Spanish"
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT COUNT(DISTINCT nationality) FROM conductor
SELECT COUNT(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Major_Record_Format, COUNT(*) FROM orchestra GROUP BY Major_Record_Format
SELECT major_record_format, COUNT(*) FROM orchestra GROUP BY major_record_format
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC LIMIT 1
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Major_Record_Format FROM orchestra WHERE YEAR_OF_Founded < 2003 INTERSECT SELECT Major_Record_Format FROM orchestra WHERE YEAR_OF_Founded > 2003
SELECT Major_Record_Format FROM orchestra WHERE YEAR_OF_Founded < 2003 INTERSECT SELECT Major_Record_Format FROM orchestra WHERE YEAR_OF_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_founded HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING COUNT(*) > 1
SELECT COUNT(*) FROM highschooler
SELECT COUNT(*) FROM highschooler
SELECT name, grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*), grade FROM highschooler GROUP BY grade
SELECT COUNT(*), grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM friend GROUP BY student_id
SELECT COUNT(DISTINCT friend_id) FROM friend
SELECT name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id HAVING COUNT(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id HAVING COUNT(*) >= 3
SELECT T2.friend_id, T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT COUNT(*) FROM friend WHERE student_id = 'Kyle'
SELECT COUNT(*) FROM friend WHERE name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT id FROM friend
SELECT id FROM highschooler EXCEPT SELECT id FROM friend
SELECT name FROM highschooler WHERE NOT id IN (SELECT id FROM friend)
SELECT name FROM highschooler WHERE NOT id IN (SELECT id FROM friend)
SELECT id FROM friend INTERSECT SELECT id FROM likes
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT name FROM student WHERE id IN (SELECT friend_id FROM friend) INTERSECT SELECT id FROM liked
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN likes AS T3 ON T2.id = T3.liked_id
SELECT COUNT(*) FROM likes GROUP BY student_id
SELECT COUNT(*) FROM likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id
SELECT t3.name FROM highschooler AS t1 JOIN likes AS t2 ON t1.id = t2.student_id JOIN friend AS t3 ON t1.id = t3.friend_id GROUP BY t3.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.name FROM highschooler AS t1 JOIN likes AS t2 ON t1.id = t2.student_id GROUP BY t2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT name FROM highschooler WHERE grade > 5 AND COUNT(friend_id) >= 2
SELECT name FROM highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM likes WHERE liked_id = 'Kyle'
SELECT COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT AVG(grade) FROM highschooler WHERE id IN (SELECT id FROM friend)
SELECT AVG(grade) FROM highschooler WHERE id IN (SELECT id FROM friend)
SELECT MIN(grade) FROM highschooler WHERE NOT id IN (SELECT id FROM friend)
SELECT MIN(grade) FROM highschooler WHERE NOT id IN (SELECT id FROM friend)
SELECT state FROM OWNERS INTERSECT SELECT state FROM Professionals
SELECT state FROM OWNERS INTERSECT SELECT state FROM Professionals
SELECT AVG(age) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "IN" OR COUNT(*) > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN States AS T3 ON T1.state = T3.state WHERE T3.state = "Indiana" OR COUNT(*) > 2
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT first_name FROM Professionals OR Owners EXCEPT SELECT first_name FROM Dogs
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT first_name FROM Dogs
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT T1.owner_id, T2.first_name, T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.first_name, T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T2.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T2.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatments AS T1 JOIN Costs AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.weight) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.weight) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment, treatment_type_code FROM Treatments
SELECT cost_of_treatment, treatment_type_code FROM Treatments
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T3.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN dates AS T3 ON T2.date_of_treatment = T3.date_of_treatment WHERE T1.breed_code = (SELECT breed_code FROM Breeds GROUP BY breed_code ORDER BY COUNT(*) ASC LIMIT 1)
SELECT T1.name, T3.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.breed_code = (SELECT breed_code FROM Breeds GROUP BY breed_code ORDER BY COUNT(*) ASC LIMIT 1)
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived, T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT last_name FROM OWNERS ORDER BY date_of_birth LIMIT 1
SELECT last_name FROM dogs ORDER BY date_of_birth LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_of_arrival, date_of_departure FROM Dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT T1.role_code, T1.street, T1.city, T1.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM OWNERS WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM OWNERS WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_amount FROM CHARGES ORDER BY charge_type DESC LIMIT 1
SELECT charge_amount FROM CHARGES ORDER BY charge_type DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT T1.breed_name, T2.size_code FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name, T1.size_code FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T3.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN title AS T3 ON T1.Singer_ID = T3.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name, SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM available_features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE room_count > 1 AND property_type_code = 'house' OR property_type_code = 'apartment'
