SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT COUNT(*), Country FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT LOCATION, NAME FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, NAME FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2014"
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = "2014")
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T1.concert_ID = T3.concert_ID WHERE T3.Year = "2014"
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T1.concert_ID = T3.concert_ID WHERE T3.Year = "2014"
SELECT name, country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name, country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2014" INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2015"
SELECT COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Highest = (SELECT MAX(Highest) FROM stadium)
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T2.Capacity DESC LIMIT 1
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pettype = "Dog" ORDER BY pet_age ASC LIMIT 1
SELECT MIN(weight) FROM Pets WHERE pettype = "Dog"
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT pet_type, MAX(weight), MAX(pet_age) FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20
SELECT COUNT(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.sex = 'F' AND T1.pettype = 'Dog'
SELECT COUNT(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.sex = "F" AND T1.pettype = "Dog"
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Has_Pet WHERE PetID <> (SELECT PetID FROM Pets WHERE PetType = "Cat")
SELECT StuID FROM Has_Pet WHERE NOT PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat")
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog")) EXCEPT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat")
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog")) EXCEPT SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT pettype, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pettype, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT AVG(T2.age), MAX(T2.age), T1.pettype FROM Pets AS T1 JOIN Student AS T2 ON T1.petid = T2.petid GROUP BY T1.pettype
SELECT AVG(T2.age), MAX(T2.age), T1.pettype FROM pets AS T1 JOIN students AS T2 ON T1.petid = T2.petid GROUP BY T1.pettype
SELECT AVG(weight), pettype FROM Pets GROUP BY pettype
SELECT AVG(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T2.petid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT T2.petid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT COUNT(*), StuID FROM Has_pet
SELECT StuID, COUNT(*) FROM Has_pet GROUP BY StuID
SELECT T1.Fname, T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T1.Fname, T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.PetType = "Cat" AND T3.pet_age = 3
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.PetType = "Cat" AND T3.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, T1.FullName, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.Maker, T1.FullName, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM model_list ORDER BY horsepower LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.model WHERE T2.horsepower = (SELECT MIN(horsepower) FROM cars_data)
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.makeid WHERE T2.weight < (SELECT AVG(weight) FROM cars_data)
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.modelid = T2.makeid JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T3.weight < (SELECT AVG(weight) FROM cars_data)
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.ModelId = T3.MakeId JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T4.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.ModelId = T3.MakeId JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T4.Year = 1970
SELECT T1.Make, T1.Model, T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Year = (SELECT MIN(YEAR) FROM cars_data)
SELECT T1.Maker, T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId ORDER BY T2.Year LIMIT 1
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.model WHERE T2.year > 1980
SELECT T1.Continent, COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.Maker, COUNT(*), T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T1.Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id JOIN model_list AS T3 ON T1.Model = T3.Model WHERE T3.Model = "amc hornet sportabout"
SELECT T1.Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id JOIN model_list AS T3 ON T1.Model = T3.Model WHERE T3.Model = "amc hornet sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE country = "USA"
SELECT COUNT(*) FROM car_makers WHERE Country = "United States"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(Weight), AVG(Year), YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 1 GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 2 GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.Make, T2.Horsepower FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 3 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.make, T2.horsepower FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.cylinders = 3 ORDER BY T2.horsepower DESC LIMIT 1
SELECT model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.makeid ORDER BY T2.mpg DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(T1.Edispl) FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.MakeId WHERE T1.Model = "volvo"
SELECT AVG(Edispl) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = "Volvo"
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "American Motor Company"
SELECT FullName, Id FROM car_makers WHERE COUNT(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = "General Motors" OR T2.country = "USA" AND T1.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.maker = "General Motors" OR T2.maker = "Ford" OR T2.maker = "Chevrolet" OR T2.maker = "Dodge" OR T2.maker = "Chrysler" OR T2.maker = "Buick" OR T2.maker = "Pontiac" OR T2.maker = "Cadillac" OR T2.maker = "Lincoln" OR T2.maker = "GMC" OR T2.maker = "Jeep" OR T2.maker = "HUMMER" OR T2.maker = "Saturn" OR T2.maker = "Saab" OR T2.maker = "MINI" OR T2.maker = "FIAT" OR T2.maker = "Fiat" OR T2.maker = "Alfa Romeo" OR T2.maker = "Lancia" OR T2.maker = "Fiat" OR T2.maker = "Fiat" OR T2.maker = "Alfa Romeo" OR T2
SELECT DISTINCT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT T1.cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.modelid = T2.makeid JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T1.model = "volvo" ORDER BY T3.accelerate ASC LIMIT 1
SELECT T1.cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.modelid = T2.makeid JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T1.maker = "Volvo" ORDER BY T3.accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.makeid WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.makeid WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT T1.MakeId, T2.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Maker WHERE T2.Country = "USA" AND T1.MakeId IN (SELECT MakeId FROM cars_data WHERE Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND T1.MakeId NOT IN (SELECT MakeId FROM cars_data WHERE Cylinders > 3)
SELECT makeid, make FROM car_names WHERE makeid NOT IN (SELECT makeid FROM cars_data WHERE horsepower = (SELECT MIN(horsepower) FROM cars_data)) AND cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 AND YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE maker <> (SELECT id FROM car_makers WHERE maker = 'Ford Motor Company') AND weight < 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.modelid = T2.makeid JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T3.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.modelid = T2.makeid JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T2.make = "Ford Motor Company"
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT maker FROM model_list GROUP BY maker HAVING COUNT(*) >= 2 INTERSECT SELECT maker FROM model_list GROUP BY maker HAVING COUNT(*) > 3
SELECT maker, COUNT(*) FROM model_list GROUP BY maker HAVING COUNT(*) >= 2 INTERSECT SELECT maker FROM car_names GROUP BY maker HAVING COUNT(*) > 3
SELECT T1.CountryName, T2.Country FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'fiat' GROUP BY T2.Country HAVING COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Fiat" OR T2.Maker = "Ford" OR T2.Maker = "Chevrolet" OR T2.Maker = "Toyota" OR T2.Maker = "Honda" OR T2.Maker = "Volkswagen" OR T2.Maker = "Nissan" OR T2.Maker = "Mitsubishi" OR T2.Maker = "Hyundai" OR T2.Maker = "Kia" OR T2.Maker = "Jeep" OR T2.Maker = "Chrysler" OR T2.Maker = "BMW" OR T2.Maker = "Mercedes" OR T2.Maker = "Audi" OR T2.Maker = "Porsche" OR T2.Maker = "Ferrari" OR T2.Maker = "Lamborghini" OR T2.Maker = "Land Rover" OR T2.Maker = "Jaguar" OR T2.Maker = "Subaru" OR T2.Maker = "M
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATL"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATL"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABER"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE AirportName = "Aberdeen" AND Country = "United Kingdom")
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Ashley')
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABERDEEN" AND DestAirport = "ASHLEY"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "Jetblue Airways"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'United Airlines' AND T1.DestAirport = 'ASY'
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestAirport = "ASY" AND T2.Airline = "United Airlines"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = 'AHD' AND T2.Airline = 'United Airlines'
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD" AND T2.Airline = "United Airlines"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.Airline = 'United Airlines' AND T3.City = 'Aberdeen'
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines" AND T1.DestAirport = "ABER"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports WHERE airportcode IN (SELECT destairport FROM flights GROUP BY destairport ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports WHERE airportcode IN (SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY COUNT(*) DESC LIMIT 1)
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid HAVING COUNT(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid HAVING COUNT(*) < 200
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE AirportName = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE AirportName = "Aberdeen" AND Country = "United Kingdom")
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABE" OR DestAirport = "ABI"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) AND NOT AirportCode IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) AND NOT AirportCode IN (SELECT DestAirport FROM flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T2.name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T2.name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 1000
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_name, template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = 'PPT'
SELECT COUNT(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "PPT"
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, COUNT(*) FROM documents GROUP BY template_id
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM templates GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
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
SELECT template_type_code FROM templates ORDER BY version_number LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY MIN(version_number) LIMIT 1
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T2.document_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "BK"
SELECT T1.template_type_code, COUNT(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT T1.template_type_code, COUNT(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Templates
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Templates
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id
SELECT DISTINCT T2.template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T1.template_id = T3.template_id
SELECT T1.template_id FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Presentation"
SELECT template_id FROM templates WHERE template_type_code = (SELECT template_type_code FROM ref_template_types WHERE template_type_description = 'Presentation')
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT COUNT(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text = 'Korea'
SELECT paragraph_text FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id, T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id, T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT T1.document_id, T1.document_name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = "32" OR Age = "33"
SELECT Name FROM teacher WHERE Age = "32" OR Age = "33"
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T3 ON T1.Teacher_ID = T3.Teacher_ID JOIN course AS T2 ON T3.Course_ID = T2.Course_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T3 ON T1.Teacher_ID = T3.Teacher_ID JOIN course AS T2 ON T3.Course_ID = T2.Course_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(Age) FROM visitor WHERE Level_of_membership <= 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY SUM(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T2.Name, T2.Age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID GROUP BY T1.visitor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE museum_id IN (SELECT museum_id FROM museum WHERE open_year > 2010))
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
SELECT MIN(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'Left' ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY tours DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T2.ranking_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id = T2.tourney_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, AVG(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(*) FROM matches WHERE winner_ioc = "ITA" AND winner_hand = "Left"
SELECT COUNT(*) FROM matches WHERE winner_hand = "Left" AND tourney_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT T1.note, T1.killed, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE "%math%"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM departments ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT COUNT(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT section_name, section_description FROM Sections
SELECT section_name, section_description FROM Sections
SELECT course_id, course_name FROM courses WHERE (SELECT COUNT(*) FROM sections WHERE course_id = courses.course_id) <= 2
SELECT course_id, course_name FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) >= 2)
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_id, T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%the computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Semesters AS T4 ON T2.semester_id = T4.semester_id WHERE T4.semester_name = "Fall 2016" GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Semesters AS T4 ON T2.semester_id = T4.semester_id WHERE T4.semester_name = "Fall 2016" GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Degree_Programs AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Degree_Programs AS T2 ON T1.student_id = T2.student_id
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3, T1.city, T1.zip_postcode, T1.state_province_county, T1.country FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT MIN(transcript_date), other_details FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT COUNT(*), student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.course_id, COUNT(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN transcripts_contents AS T3 ON T2.student_course_id = T3.student_course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_id, transcript_date FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY COUNT(*) LIMIT 1
SELECT semester_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor" INTERSECT SELECT semester_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Master"
SELECT semester_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = "Bachelor" INTERSECT SELECT semester_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = "Master"
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT section_description FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT first_name FROM Students WHERE permanent_address_id = (SELECT address_id FROM Addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT Title FROM cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE Channel = (SELECT id FROM TV_channel WHERE series_name = "Sky Radio")
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_channel WHERE Hight_definition_TV = "Yes"
SELECT series_name, package_option FROM TV_Channel WHERE Hight_definition_TV = "Yes"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT DISTINCT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT Country FROM TV_Channel EXCEPT SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE Written_by = "Todd Casey"
SELECT DISTINCT Country FROM TV_channel EXCEPT SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" OR T2.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT id FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM tv_channel EXCEPT SELECT T1.id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT DISTINCT package_option FROM tv_channel EXCEPT SELECT DISTINCT T1.package_option FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
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
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
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
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MIN(area_code), MAX(area_code) FROM AREA_CODE_STATE
SELECT MAX(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM contestants WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT state FROM VOTES GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = 'Tabatha Gehling') INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = 'Kelly Clauss')
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT Region FROM country WHERE Name = "Afghanistan"
SELECT T2.Language FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Aruba" ORDER BY T2.Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" ORDER BY Percentage DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = "Republican" AND Continent = "Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = "Republican" AND Continent = "Africa"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "US Territory"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "US Territory"
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT COUNT(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 'T' AND T2.Name = 'Afghanistan'
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 'T' AND T2.Name = 'Afghanistan'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE language = "Dutch"
SELECT COUNT(*) FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' AND T2.IsOfficial = 'T' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French' AND T2.IsOfficial = 'T'
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'T' AND T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'T' AND T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republican' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republican' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY surfacearea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY Population DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')
SELECT SUM(Population) FROM country WHERE NOT Code = 'USA'
SELECT SUM(Population) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = "T"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = "T"
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 AND T1.IsOfficial = 'T'
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 AND T1.IsOfficial = 'T'
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm <> 'Republican'
SELECT Code FROM country WHERE GovernmentForm <> 'Republican' AND NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' AND T2.GovernmentForm <> 'Federal Republic' AND T2.Capital <> T1.ID AND T2.LocalName <> T1.Name AND T2.GovernmentForm <> 'Federal Republic' AND T2.Capital <> T1.ID AND T2.LocalName <> T1.Name AND T2.GovernmentForm <> 'Federal Republic' AND T2.Capital <> T1.ID AND T2.LocalName <> T1.Name AND T2.GovernmentForm <> 'Federal Republic' AND T2.Capital <> T1.ID AND T2.LocalName <> T1.Name AND T2.GovernmentForm <> 'Federal Republic' AND T2.Capital <> T1.ID AND T2.LocalName <> T1.Name AND T2.GovernmentForm <> 'Federal Republic' AND T2.Capital <> T1.ID AND T2.LocalName <> T1.Name AND T2.GovernmentForm <> 'Federal Republic' AND T2.Capital <> T1.ID AND T2.LocalName <>
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' AND T2.LocalName <> 'English'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "Chinese" AND T3.IsOfficial = "T" AND T2.Continent = "Asia"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.GovernmentForm = "Federal Republic" AND T2.Capital = T1.ID
SELECT name, indepyear, surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name, indepyear, surfacearea FROM country ORDER BY population LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) > 2
SELECT COUNT(*), District FROM city WHERE Population > (SELECT AVG(Population) FROM city)
SELECT COUNT(*), District FROM city WHERE Population > (SELECT AVG(Population) FROM city)
SELECT GovernmentForm, SUM(Population), AVG(LifeExpectancy) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT AVG(LifeExpectancy), SUM(Population), Continent FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T1.Percentage DESC LIMIT 1
SELECT T1.Code, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'Spanish' AND T1.Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish')
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
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
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT ID FROM Highschooler WHERE name = "Kyle"
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
SELECT COUNT(*) FROM Friend
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.student_id
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes)
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT AVG(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT state FROM professionals INTERSECT SELECT state FROM owners
SELECT DISTINCT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.state = T2.state
SELECT AVG(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT AVG(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" OR T2.treatment_id > 2
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = "Indiana" OR professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) > 2)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING SUM(T2.cost_of_treatment) <= 1000
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT first_name FROM dogs
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT professional_id FROM Treatments
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT professional_id FROM Treatments
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM breeds ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.charge_amount, T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.charge_amount, T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code ORDER BY T3.breed_name LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) LIMIT 1
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM Treatments
SELECT COUNT(DISTINCT dog_id) FROM Treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = "1"
SELECT name, age, weight FROM dogs WHERE abandoned_yn = "1"
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges GROUP BY charge_type
SELECT charge_type, charge_amount FROM Charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
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
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name, SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name, SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Ref_Feature_Types
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = "T1"
SELECT property_name FROM Properties WHERE property_type_code = 'House' OR property_type_code = 'Apartment' AND room_count > 1
