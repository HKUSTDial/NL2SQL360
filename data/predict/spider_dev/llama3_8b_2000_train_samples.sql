SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T2.Name, T2.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T3 ON T1.Singer_ID = T3.Singer_ID JOIN singer AS T2 ON T3.Singer_ID = T2.Singer_ID ORDER BY T1.Age LIMIT 1
SELECT T2.Name, T2.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T3 ON T1.Singer_ID = T3.Singer_ID JOIN singer AS T2 ON T3.Singer_ID = T2.Singer_ID WHERE T1.Age = (SELECT MIN(T1.Age) FROM singer AS T1)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country FROM singer WHERE Age > 20 GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT T2.Song_Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > (SELECT AVG(age) FROM singer)
SELECT T2.Song_Name FROM singer AS T1 JOIN singer_in_concert AS T3 ON T1.Singer_ID = T3.Singer_ID JOIN concert AS T2 ON T3.concert_ID = T2.concert_ID WHERE T1.Age > (SELECT Average FROM stadium)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT stadium_id, COUNT(*) FROM concert GROUP BY stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T2.concert_name, T2.theme, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.Year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.Year = 2014
SELECT T2.Name, T2.Country FROM singer AS T1 JOIN singer_in_concert AS T3 ON T1.Singer_ID = T3.Singer_ID JOIN concert AS T2 ON T3.concert_ID = T2.concert_ID WHERE T2.concert_Name LIKE "%Hey%"
SELECT T2.Name, T2.Country FROM singer AS T1 JOIN singer_in_concert AS T3 ON T1.Singer_ID = T3.Singer_ID JOIN concert AS T2 ON T3.concert_ID = T2.concert_ID WHERE T2.concert_Name LIKE "%Hey%"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pet_type = "dog" ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE pettype = "dog" ORDER BY pet_age LIMIT 1
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT pettype, MAX(weight) FROM Pets GROUP BY pettype
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T2.pettype = "dog" AND T3.sex = "F"
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T2.pettype = "dog" AND T3.sex = "F"
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat" OR T3.pet_type = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Dog"
SELECT T1.major, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID WHERE T2.petID NOT IN (SELECT petID FROM Pets WHERE pettype = "Cat")
SELECT T1.Lname, T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID WHERE T2.petID NOT IN (SELECT petID FROM Pets WHERE pettype = "Cat")
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE pet_type = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE pet_type = "Cat"))
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = "cat"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = "cat"
SELECT pettype, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT pettype, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pettype
SELECT pettype, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM Pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM Pets GROUP BY pettype
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID
SELECT T2.petID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T1.lname = 'Smith'
SELECT T2.petID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T1.lname = 'Smith'
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID GROUP BY T2.stuID HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID GROUP BY T2.stuID HAVING COUNT(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T3.pet_type = "Cat"
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT continent, COUNT(*) FROM countries GROUP BY continent
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.id, T1.maker, T1.fullname, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM car_names ORDER BY horsepower LIMIT 1
SELECT model FROM car_names ORDER BY horsepower LIMIT 1
SELECT model FROM car_names WHERE weight < (SELECT AVG(weight) FROM cars_data)
SELECT model FROM car_names WHERE weight < (SELECT AVG(weight) FROM cars_data)
SELECT T1.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Year = 1970
SELECT DISTINCT T1.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year = 1970
SELECT T1.Model, T1.Make, T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Year LIMIT 1
SELECT T1.Maker, T1.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year LIMIT 1
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year > 1980
SELECT continent, COUNT(*) FROM car_makers GROUP BY continent
SELECT continent, COUNT(*) FROM car_makers GROUP BY continent
SELECT CountryName FROM countries ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryName FROM countries ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.FullName
SELECT T1.id, T1.maker, T1.fullname, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM cars_data WHERE id IN (SELECT makeid FROM car_names WHERE model = "amc hornet sportabout (sw)")
SELECT accelerate FROM cars_data WHERE id IN (SELECT makeid FROM car_names WHERE model = "AMC Hornet Sportabout (SW)")
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Country = "USA"
SELECT COUNT(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Maker = (SELECT Id FROM car_makers WHERE Country = "United States")
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker, T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id
SELECT CountryName, CountryId FROM countries WHERE CountryId IN (SELECT Country FROM car_makers)
SELECT CountryName, CountryId FROM countries WHERE CountryId IN (SELECT Country FROM car_makers)
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT CountryName FROM countries WHERE Continent = 1 GROUP BY CountryName HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE Continent = (SELECT ContId FROM continents WHERE Continent = "Europe") GROUP BY CountryName HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM car_names WHERE Cylinders = 3
SELECT T1.Model, T1.Make FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN cars_data AS T3 ON T1.MakeId = T3.Id WHERE T3.Cylinders = 3 ORDER BY T3.Horsepower DESC LIMIT 1
SELECT model FROM model_list ORDER BY mpg DESC LIMIT 1
SELECT model FROM model_list ORDER BY mpg DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "volvo"
SELECT AVG(Edispl) FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Maker = "Volvo"
SELECT MAX(accelerate), cylinders FROM cars_data GROUP BY cylinders
SELECT MAX(accelerate), cylinders FROM cars_data GROUP BY cylinders
SELECT model FROM car_names GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM car_names GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "American Motor Company"
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE COUNT(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE COUNT(*) > 3
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.FullName = "General Motors" OR T1.Weight > 3500
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Maker = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT cylinders FROM cars_data WHERE model = "volvo" ORDER BY accelerate LIMIT 1
SELECT cylinders FROM cars_data WHERE model = "Volvo" ORDER BY accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM car_makers WHERE Country IN (SELECT CountryId FROM countries GROUP BY CountryId HAVING COUNT(*) > 2)
SELECT COUNT(*) FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 2)
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.MakeId, T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = (SELECT Id FROM car_makers WHERE Maker = "Toyota") AND T1.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND T1.Cylinders <= 3
SELECT T1.MakeId, T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = T1.Make AND T2.Cylinders < 4
SELECT MPG FROM cars_data WHERE cylinders = 8 AND YEAR < 1980 ORDER BY MPG DESC LIMIT 1
SELECT MAX(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT model FROM car_names WHERE make = 'Ford Motor Company'
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Make <> "Ford" AND T1.Weight < 3500
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT id, maker FROM car_makers WHERE id IN (SELECT maker FROM model_list GROUP BY maker HAVING COUNT(*) >= 2) INTERSECT SELECT id, maker FROM car_makers WHERE id > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.maker = T1.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 3) OR CountryId IN (SELECT Country FROM car_names WHERE Model = "fiat")
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 3) OR CountryName IN (SELECT Country FROM car_makers WHERE Maker = "Fiat")
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "JB"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT city, country FROM airports WHERE airportcode = "ALN"
SELECT city, country FROM airports WHERE airportcode = "ALN"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Abereen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABZ"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.DestAirport = (SELECT AirportCode FROM airports AS T3 WHERE T3.City = 'Ashley')
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABE" AND DestAirport = "ASH"
SELECT COUNT(*) FROM flights WHERE airline = (SELECT UID FROM airlines WHERE Airline = 'JetBlue Airways')
SELECT COUNT(*) FROM flights WHERE airline = (SELECT UID FROM airlines WHERE Airline = "JetBlue Airways")
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Airline = "United Airlines" AND T1.DestAirport = "ASY"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Asyut Airport" AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Airline = "United Airlines" AND T1.SourceAirport = "AHD"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD" AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = 'United Airlines')
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY COUNT(*) LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY COUNT(*) LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = 'AHD'
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportCode = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportCode = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "APG" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "CVO"
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T3.AirportCode = 'CVO' EXCEPT SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T3.AirportCode = 'APG'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "CVO" EXCEPT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "APG"
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) < 200
SELECT airline FROM flights GROUP BY airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport = "ABZ"
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = "ABZ"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Abilene" OR T2.City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABE" OR DestAirport = "ABI"
SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT destairport FROM flights) INTERSECT SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT sourceairport FROM flights)
SELECT airportcode FROM airports EXCEPT SELECT sourceairport FROM flights UNION SELECT destairport FROM flights
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM Employee ORDER BY Age ASC
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY SUM(T2.Bonus) DESC LIMIT 1
SELECT T2.Name FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T1.Bonus DESC LIMIT 1
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM Evaluation)
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM Evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T2.name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T2.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 INTERSECT SELECT DISTINCT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T2.Number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_name, template_id FROM documents WHERE document_description LIKE "%w%"
SELECT document_name, template_id FROM documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT T1.template_id, COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.template_id, COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_type_code, T1.template_type_description, T2.template_id FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT T1.template_type_code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "CV"
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(version_number), template_type_code FROM templates GROUP BY template_type_code
SELECT T2.template_type_code, T1.version_number FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code ORDER BY T1.version_number LIMIT 1
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T2.template_type_code FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT DISTINCT T2.document_name FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_id = T3.template_id WHERE T1.template_type_code = "BK"
SELECT document_name FROM documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT T1.template_type_code, COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T2.template_type_code = T3.template_type_code GROUP BY T1.template_type_code
SELECT T1.template_type_code, COUNT(*) FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_type_code = T3.template_type_code GROUP BY T1.template_type_code
SELECT T1.template_type_code FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_type_code = T3.template_type_code GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_type_code FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_type_code = T3.template_type_code GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.template_type_code FROM ref_template_types AS t1 EXCEPT SELECT t2.template_type_code FROM templates AS t2 JOIN documents AS t3 ON t2.template_id = t3.template_id
SELECT template_type_code FROM ref_template_types EXCEPT SELECT template_type_code FROM templates
SELECT * FROM ref_template_types
SELECT template_type_code, template_type_description FROM ref_template_types
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT Template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT Template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T2.template_type_description FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T1.template_id IN (SELECT DISTINCT template_id FROM documents)
SELECT DISTINCT T2.template_type_description FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T1.template_id IN (SELECT template_id FROM paragraphs)
SELECT template_id FROM templates WHERE template_type_code = (SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Presentation")
SELECT template_id FROM templates WHERE template_type_code = (SELECT template_type_code FROM ref_template_types WHERE template_type_description = 'Presentation')
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT COUNT(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT T2.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T2.template_id = T3.template_id WHERE T3.template_type_code = 'Ref' AND T1.paragraph_text LIKE '%Korea%'
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = 'Welcome to NY')
SELECT T2.paragraph_id, T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = "Customer reviews")
SELECT paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = 'Customer reviews')
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM documents ORDER BY (SELECT COUNT(*) FROM paragraphs WHERE document_id = documents.document_id) DESC LIMIT 1
SELECT document_id, document_name FROM documents ORDER BY (SELECT COUNT(*) FROM paragraphs WHERE document_id = documents.document_id) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT T1.document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.template_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.template_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT age, hometown FROM teacher
SELECT age, hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(*) >= 2)
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(*) >= 2)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < "2009"
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.total_spent DESC LIMIT 1
SELECT T1.museum_id, T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T2.museum_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T2.Name, T2.Age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID GROUP BY T1.visitor_ID ORDER BY SUM(T1.Num_of_Ticket) DESC LIMIT 1
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit
SELECT SUM(num_of_ticket) FROM visit WHERE visitor_id IN (SELECT id FROM visitor WHERE level_of_membership = 1)
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.museum_id IN (SELECT museum_id FROM museum WHERE open_year < 2009) INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.museum_id IN (SELECT museum_id FROM museum WHERE open_year > 2011)
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
SELECT AVG(winner_rank) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT MIN(winner_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT country_code, first_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT winner_id FROM matches WHERE tourney_name = "Australian Open")
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_id = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_id = "australian_open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT first_name, AVG(ranking) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name
SELECT T1.first_name, T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id
SELECT first_name, SUM(ranking_points) FROM rankings GROUP BY first_name
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT SUM(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(DISTINCT winner_name) FROM matches WHERE winner_hand = "L" INTERSECT SELECT DISTINCT winner_name FROM matches WHERE tourney_id = "WTA Championships"
SELECT COUNT(*) FROM matches WHERE winner_hand = "L" AND tourney_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY SUM(T2.winner_rank_points) DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT T1.note, T1.killed, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = "Brig"
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.bulgarian_commander = 'Kaloyan' AND T2.latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta'
SELECT T1.name, T1.result, T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location <> 'English Channel'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE "Math%"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM degree_program GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM degree_program GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM degree_program AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT COUNT(*) FROM degree_program AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT SECTION_NAME, SECTION_DESCRIPTION FROM Sections
SELECT SECTION_NAME, SECTION_DESCRIPTION FROM Sections
SELECT course_name, course_id FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) > 2)
SELECT course_name, course_id FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) >= 2)
SELECT SECTION_NAME FROM sections ORDER BY SECTION_NAME DESC
SELECT SECTION_NAME FROM Sections ORDER BY SECTION_NAME DESC
SELECT semester_name, semester_id FROM semesters ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name, semester_id FROM semesters ORDER BY (SELECT COUNT(*) FROM student_enrolment WHERE semester_id = semester_id) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%the computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor of Science" INTERSECT SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor of Arts"
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM degree_program WHERE department_id IN (SELECT department_id FROM departments WHERE department_name = "Computer Science"))
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT degree_summary_name FROM student_enrolment GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM student_enrolment GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM student_enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM student_enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT student_id, first_name, middle_name, last_name, COUNT(*), student_id FROM student_enrolment GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM student_enrolment AS T2 JOIN students AS T1 ON T2.student_id = T1.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN student_enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN student_enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN student_enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN student_enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id IN (SELECT semester_id FROM semesters WHERE semester_name = "Fall" OR semester_name = "Spring" OR semester_name = "Summer" OR semester_name = "Winter" OR semester_name = "Fall" OR semester_name = "Spring" OR semester_name = "Summer" OR semester_name = "Winter" OR semester_name = "Fall" OR semester_name = "Spring" OR semester_name = "Summer" OR semester_name = "Winter" OR semester_name = "Fall" OR semester_name = "Spring" OR semester_name = "Summer" OR semester_name = "Winter" OR semester_name = "Fall" OR semester_name = "Spring" OR semester_name = "Summer" OR semester_name = "Winter" OR semester_name = "Fall" OR semester_name = "Spring" OR semester_name = "Summer" OR semester_name = "Winter" OR semester_name = "Fall
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.state_province_county = "North Carolina"
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T2.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T2.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT address_id, line_1, line_2, line_3 FROM addresses ORDER BY (SELECT COUNT(*) FROM students WHERE current_address_id = addresses.address_id) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts WHERE other_details = 'Released'
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT student_course_id, COUNT(*) FROM Transcript_Contents GROUP BY student_course_id HAVING COUNT(*) <= 3
SELECT T1.course_id, COUNT(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN transcripts AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id IN (SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Master" INTERSECT SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Bachelor"))
SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Masters") INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Bachelors")
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM Students ORDER BY first_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT * FROM Sections WHERE SECTION_NAME = "h"
SELECT SECTION_DESCRIPTION FROM sections WHERE SECTION_NAME = "h"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti" ) OR cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE written_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_Channel WHERE id = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT DISTINCT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT language, COUNT(*) FROM TV_Channel GROUP BY language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T2.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.id = (SELECT T1.id FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle!")
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Episode, T1.Rating FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id ORDER BY T1.Rating DESC LIMIT 3
SELECT T1.id, T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.rating DESC LIMIT 3
SELECT MIN(share), MAX(share) FROM TV_series
SELECT MAX(share), MIN(share) FROM tv_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT episode FROM tv_series WHERE channel = (SELECT id FROM tv_channel WHERE series_name = "Sky Radio")
SELECT COUNT(*), directed_by FROM cartoon WHERE directed_by IN ("Seth MacFarlane", "Bill Plympton", "Don Hertzfeldt") GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_Channel WHERE hight_definition_tv = 'Yes'
SELECT package_option, series_name FROM TV_Channel WHERE hight_definition_tv = 'Yes'
SELECT Country FROM TV_Channel WHERE id IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT Country FROM TV_Channel WHERE id IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Michael Chang"
SELECT pixel_aspect_ratio, country FROM TV_Channel WHERE language <> 'English'
SELECT pixel_aspect_ratio, country FROM TV_Channel WHERE language <> 'English'
SELECT id FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_Channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT DISTINCT package_option FROM TV_Channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones")
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
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Name, T1.Height, T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
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
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT MAX(created) FROM votes WHERE state = 'CA'
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM votes
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM votes GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = 'Tabatha Gehling')
SELECT T1.area_code FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(surfacearea) FROM country WHERE region = "Caribbean"
SELECT SUM(surfacearea) FROM country WHERE continent = "Carribean"
SELECT Continent FROM country WHERE Code = "AIA"
SELECT Continent FROM country WHERE Code = "AIA"
SELECT T1.District FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT District FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "ABW" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "ABW" ORDER BY Percentage DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Code = "BRA"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Code = "AGO"
SELECT Region, Population FROM country WHERE Code = "AGO"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SUM(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT SUM(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "US territory"
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code2 = 'US'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "ABW"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "ABW"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AFG" AND IsOfficial = "T"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AFG" AND IsOfficial = "T"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "English" INTERSECT SELECT CountryCode FROM countrylanguage WHERE Language = "Dutch"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "T"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE language = "Chinese"
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE language = "Chinese"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch" AND IsOfficial = "T"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch" AND IsOfficial = "T"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'Republic') GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'Republic') GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')
SELECT SUM(population) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT SUM(population) FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE indepyear < 1930) AND isofficial = 'T'
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE indepyear < 1930)
SELECT Name FROM country WHERE SurfaceArea > (SELECT MIN(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MIN(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia')
SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.Continent = 'Asia' WHERE T1.Population < (SELECT MIN(T2.Population) FROM country AS T2 JOIN country AS T3 ON T2.Continent = 'Asia' WHERE T3.Continent = 'Africa')
SELECT Name FROM country WHERE Continent = 'Africa' ORDER BY Population DESC LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" AND IsOfficial = "T")
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Code FROM country WHERE GovernmentForm <> "Republic")
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND NOT GovernmentForm = "Republic"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' EXCEPT SELECT T1.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'English' AND T1.IsOfficial = 'T'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' EXCEPT SELECT T1.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'English'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "Chinese" AND T3.IsOfficial = "T"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = 'Chinese' AND T3.IsOfficial = 'T'
SELECT name, indepyear, surfacearea FROM country ORDER BY population LIMIT 1
SELECT name, indepyear, surfacearea FROM country ORDER BY population LIMIT 1
SELECT name, population, leader FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT COUNT(*), District FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT COUNT(*), District FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT T1.GovernmentForm, SUM(T2.Population) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.LifeExpectancy > 72 GROUP BY T1.GovernmentForm
SELECT GovernmentForm, SUM(Population) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT Continent, AVG(LifeExpectancy), SUM(Population) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT Name FROM country WHERE Continent = 'Europe' AND Population > 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" AND IsOfficial = "T"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" AND IsOfficial = "T"
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE type <> 'Live final'
SELECT MAX(share), MIN(share) FROM performance WHERE type <> 'Live final'
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT record_company, COUNT(*) FROM orchestra GROUP BY record_company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT YEAR_of_founded FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM performance GROUP BY orchestra_id HAVING COUNT(*) > 1)
SELECT YEAR_OF_FOUNDED FROM orchestra WHERE ORCHESTRA_ID IN (SELECT ORCHESTRA_ID FROM performance GROUP BY ORCHESTRA_ID HAVING COUNT(*) > 1)
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler WHERE name = "Kyle"
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
SELECT name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT name FROM Highschooler ORDER BY (SELECT COUNT(*) FROM Friend WHERE friend_id = Highschooler.ID) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = "Kyle"
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Highschooler AS T3 ON T2.friend_id = T3.id WHERE T1.name = "Kyle"
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T1.id = T3.student_id WHERE T3.student_id IN (SELECT student_id FROM friend)
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id WHERE T2.student_id IN (SELECT student_id FROM Friend) INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id WHERE T2.student_id IN (SELECT student_id FROM Friend)
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT name FROM Highschooler ORDER BY (SELECT COUNT(*) FROM Likes WHERE liked_id = Highschooler.ID) DESC LIMIT 1
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.ID WHERE T2.name = "Kyle"
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.ID WHERE T2.name = "Kyle"
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT AVG(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT DISTINCT state FROM Owners INTERSECT SELECT DISTINCT state FROM Professionals
SELECT AVG(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_of_treatment IS NOT NULL
SELECT AVG(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "IN" OR (SELECT COUNT(*) FROM treatments WHERE professional_id = professional_id) > 2
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "IN" OR (SELECT COUNT(*) FROM treatments WHERE professional_id = professionals.professional_id) > 2
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment < 1000
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT first_name FROM dogs
SELECT professional_id, role, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT professional_id, role, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT owner_id, first_name, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT professional_id, role, first_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY SUM(t2.cost_of_treatment) LIMIT 1
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY SUM(t2.cost_of_treatment) LIMIT 1
SELECT owner_id, zip_code FROM Owners ORDER BY SUM(T1.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.weight) DESC LIMIT 1
SELECT professional_id, cell_number FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT t1.professional_id, t1.cell_number FROM professionals AS t1 JOIN treatments AS t2 ON t1.professional_id = t2.professional_id GROUP BY t2.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment, T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT date_of_treatment, t1.first_name FROM treatments AS t1 JOIN professionals AS t2 ON t1.professional_id = t2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT cost_of_treatment, treatment_type_description FROM treatments JOIN treatment_types ON treatment_types.treatment_type_code = treatments.treatment_type_code
SELECT T1.first_name, T1.last_name, COUNT(*) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name, T1.last_name, COUNT(*) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = "Rare"
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = "Rare"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth DESC LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth DESC LIMIT 1
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
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
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT T1.first_name, T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*) > 1)
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = "T1"
SELECT property_name FROM Properties WHERE room_count > 1 AND (hse_feature_1 <> 'No' OR apt_feature_1 <> 'No')
