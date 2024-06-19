SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T1.Name, T2.Song_release_year FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age DESC LIMIT 1
SELECT T1.Name, T2.Song_Name, T2.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T1.Age = (SELECT MIN(Age) FROM singer)
SELECT DISTINCT T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT T2.Song_Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > (SELECT AVG(Age) FROM singer)
SELECT T1.Song_Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T1.Age > (SELECT AVG(Age) FROM singer)
SELECT LOCATION, NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION, NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT stadium_id, COUNT(*) FROM concert GROUP BY stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= "2014" GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM concert GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT Name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE year = "2014")
SELECT Name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE year = "2014")
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.year = "2014"
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.year = "2014"
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID JOIN singer_in_concert AS T4 ON T3.concert_ID = T4.concert_ID JOIN singer AS T5 ON T4.Singer_ID = T5.Singer_ID WHERE T5.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014" INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2015"
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014" INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2015"
SELECT COUNT(*) FROM stadium ORDER BY Capacity DESC LIMIT 1
SELECT COUNT(*) FROM stadium ORDER BY Capacity DESC LIMIT 1
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pettype = "Dog" ORDER BY pet_age DESC LIMIT 1
SELECT weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets WHERE pettype = "Dog")
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT pettype, MAX(weight), MAX(pet_age) FROM Pets GROUP BY pettype
SELECT COUNT(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T1.sex = "F" AND T3.pettype = "Dog"
SELECT COUNT(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Dog" AND T1.StuID IN (SELECT StuID FROM Student WHERE Sex = "F")
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet WHERE PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet WHERE PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet WHERE PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog" EXCEPT SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat"
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog")) EXCEPT SELECT StuID FROM Has_pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat")
SELECT pettype, weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT pettype, weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT pettype, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pettype
SELECT pettype, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM Pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM Pets GROUP BY pettype
SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID
SELECT DISTINCT T1.Fname, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID
SELECT T1.petid FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T3.stuid = T2.stuid WHERE T3.lname = "Smith"
SELECT T1.petid FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T3.stuid = T2.stuid WHERE T3.lname = "Smith"
SELECT StuID, COUNT(*) FROM Has_pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_pet GROUP BY StuID
SELECT T1.Fname, T1.Sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T1.Fname, T1.Sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING COUNT(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" AND T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" AND T3.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT continent, COUNT(*) FROM countries GROUP BY continent
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT T1.Id, T1.FullName, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT Model FROM model_list ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM model_list ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM car_names WHERE NOT Id IN (SELECT MakeId FROM cars_data WHERE Weight > (SELECT AVG(Weight) FROM cars_data))
SELECT Model FROM car_names WHERE NOT Id IN (SELECT MakeId FROM cars_data WHERE Weight > (SELECT AVG(Weight) FROM cars_data))
SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T2.MakeId = T3.Id WHERE T3.Year = 1970
SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T2.MakeId = T3.Id WHERE T3.Year = 1970 GROUP BY T1.Maker
SELECT T1.Make, T1.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Year = (SELECT MIN(Year) FROM cars_data)
SELECT T1.Maker, T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT Model FROM model_list WHERE ModelId IN (SELECT Model FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Year > 1980))
SELECT DISTINCT Model FROM model_list WHERE ModelId IN (SELECT Model FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Year > 1980))
SELECT continent, COUNT(*) FROM car_makers GROUP BY continent
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Maker, COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T1.Maker, COUNT(*), T2.Maker, T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Make = "amc" AND T1.Model = "hornet sportabout"
SELECT Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Model = "amc hornet sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_names WHERE country = "USA"
SELECT COUNT(*) FROM car_names AS T1 JOIN countries AS T2 ON T1.Country = T2.Country WHERE T2.Continent = "North America"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT year, AVG(weight) FROM cars_data GROUP BY year
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT country FROM car_makers WHERE country IN (SELECT country FROM countries WHERE continent = "Europe") GROUP BY country HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T2.Country HAVING COUNT(*) >= 3
SELECT T1.Make, T1.Horsepower FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 3 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 3 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Make = "Volvo"
SELECT AVG(Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Make = "Volvo"
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT Model FROM car_names GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE year = 1980
SELECT COUNT(*) FROM cars_data WHERE year = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE Maker = "American Motor Company")
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "General Motors") OR Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.MakeId JOIN cars_data AS T3 ON T2.MakeId = T3.Id WHERE T2.Maker = "General Motors" OR T3.Weight > 3500
SELECT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT Year FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T1.Cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Model = "volvo" ORDER BY T2.Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data WHERE MakeId = (SELECT MakeId FROM car_names WHERE Make = "Volvo" ORDER BY Accelerate DESC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data ORDER BY Horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data ORDER BY Horsepower DESC LIMIT 1)
SELECT COUNT(DISTINCT maker) FROM car_makers WHERE maker IN (SELECT maker FROM car_makers GROUP BY maker HAVING COUNT(*) > 2)
SELECT COUNT(DISTINCT maker) FROM car_makers WHERE maker IN (SELECT maker FROM car_makers GROUP BY maker HAVING COUNT(*) > 2)
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Model FROM model_list WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM model_list WHERE Id IN (SELECT Model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1)
SELECT T1.MakeId, T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) EXCEPT SELECT T1.MakeId, T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders > 3
SELECT T1.MakeId, T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Horsepower <> "Minimum" AND T2.Cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT Model FROM model_list WHERE NOT Maker = (SELECT Id FROM car_makers WHERE Maker = 'Ford Motor Company') INTERSECT SELECT Model FROM car_names WHERE Weight < 3500
SELECT DISTINCT Model FROM model_list WHERE NOT Maker = (SELECT Id FROM car_makers WHERE Maker = "Ford") INTERSECT SELECT DISTINCT Model FROM car_names WHERE Weight < 3500
SELECT Country FROM countries WHERE NOT Country IN (SELECT Country FROM car_makers)
SELECT Country FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) > 3
SELECT Maker, COUNT(*) FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT Maker FROM car_makers GROUP BY Maker HAVING COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker > 3 OR T2.Maker = 'fiat'
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Country WHERE T2.Model = "Fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
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
SELECT City, Country FROM airports WHERE AirportCode = "ALTON"
SELECT City, Country FROM airports WHERE AirportCode = "ALTON"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABT"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABT"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' INTERSECT SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Ashley'
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABT" AND DestAirport = "ASL"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "Jetblue Airways")
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines" AND T1.DestAirport = "ASY"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines") AND T2.AirportName = "Asyut Airport"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines" AND T1.SourceAirport = "AHD"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD Airport" AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines") AND T2.City = "Aberdeen"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines") AND T2.City = "Aberdeen"
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT Airline FROM flights WHERE DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = "APG" INTERSECT SELECT Airline FROM flights WHERE SourceAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT Airline FROM flights WHERE SourceAirport = "CVO" EXCEPT SELECT Airline FROM flights WHERE SourceAirport = "APG"
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport = "ABT"
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = "ABT"
SELECT COUNT(*) FROM flights WHERE DestAirport IN ('ABT', 'ABE')
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABT" OR DestAirport = "ABE"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT Name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id
SELECT COUNT(*), T1.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT DISTINCT T1.district FROM shop AS T1 JOIN shop AS T2 ON T1.district = T2.district WHERE T1.number_products < 3000 AND T2.number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM documents
SELECT COUNT(*) FROM documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_name, template_id FROM documents WHERE document_description LIKE "%w%"
SELECT document_name, document_id FROM documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT t1.template_type_code) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id
SELECT COUNT(DISTINCT template_type_code) FROM documents
SELECT COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT T1.template_id, COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT Template_ID, COUNT(*) FROM documents GROUP BY Template_ID
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT Template_Type_Code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM templates WHERE template_type_code = "CV"
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT Template_Type_Code FROM Ref_template_types GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT Version_Number, Template_Type_Code FROM Templates ORDER BY Version_Number ASC LIMIT 1
SELECT t1.version_number, t1.template_type_code FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code ORDER BY t1.version_number ASC LIMIT 1
SELECT T1.Template_Type_Code FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN documents AS T3 ON T2.Template_ID = T3.Template_ID WHERE T3.Document_Name = "Data base"
SELECT T1.Template_Type_Code FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN documents AS T3 ON T2.Template_ID = T3.Template_ID WHERE T3.Document_Name = "Data base"
SELECT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_code, COUNT(*) FROM Ref_template_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT Template_Type_Code, COUNT(*) FROM Documents GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Documents GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Documents GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Template_Type_Code FROM Ref_template_types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM documents)
SELECT Template_Type_Code FROM Ref_template_types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM templates)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_template_types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_template_types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_template_types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_template_types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_template_types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_id = T3.template_id
SELECT DISTINCT T1.Template_Details FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT T1.template_id FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Presentation"
SELECT template_id FROM templates WHERE template_details = 'Presentation'
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT COUNT(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT Paragraph_Text FROM paragraphs WHERE Paragraph_Text = 'Korea'
SELECT Other_Details FROM paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT Paragraph_ID, Paragraph_Text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Welcome to NY"
SELECT T1.Paragraph_ID, T1.Paragraph_Text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Welcome to NY"
SELECT Paragraph_Text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT Paragraph_Text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.document_id, T1.document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs WHERE paragraph_id BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
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
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT hometown FROM teacher GROUP BY hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T2.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T3.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT Name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > "2010")
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID HAVING COUNT(*) > 1
SELECT T1.ID, T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID ORDER BY T2.Total_spent DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T2.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID ORDER BY T2.Num_of_Ticket DESC LIMIT 1
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit
SELECT SUM(Total_spent) FROM visit WHERE visitor_ID IN (SELECT ID FROM visitor WHERE Level_of_membership = 1)
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < "2009" INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year > "2011"
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE museum_id IN (SELECT museum_id FROM museum WHERE open_year > "2010"))
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
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
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN tournaments AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN tournaments AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "Left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_id = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_id = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM players JOIN rankings ON player_id = player_id GROUP BY player_id
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE winner_hand = "Left" INTERSECT SELECT COUNT(DISTINCT loser_id) FROM matches WHERE loser_hand = "Left"
SELECT COUNT(*) FROM matches WHERE winner_hand = "Left"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY SUM(T2.winner_rank_points) DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT note, killed, injured FROM death WHERE caused_by_ship_id = (SELECT id FROM ship WHERE tonnage = 't')
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = "Brig" GROUP BY T1.id
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id HAVING SUM(T2.killed) > 10
SELECT caused_by_ship_id, SUM(injured) FROM death GROUP BY caused_by_ship_id ORDER BY SUM(injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T1.bulgarian_commander = 'Kaloyan' AND T1.latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE name = "English Channel")
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea"
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT COUNT(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT course_name, course_id FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) > 2)
SELECT course_name, course_id FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) >= 2)
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT semester_id, semester_name FROM Semesters ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_id, semester_name FROM Semesters ORDER BY student_enrolment_id DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%the computer%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN semesters AS T4 ON T2.semester_id = T4.semester_id WHERE T3.degree_summary_name = "Bachelor of Science" AND T4.semester_name = "Fall" INTERSECT SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN semesters AS T4 ON T2.semester_id = T4.semester_id WHERE T3.degree_summary_name = "Bachelor of
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Semesters AS T4 ON T2.semester_id = T4.semester_id WHERE T3.degree_program_id = 2 AND T4.semester_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor's Degree"
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM student_enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM students AS T1 JOIN degree_programs AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM students AS T1 JOIN degree_programs AS T2 ON T1.student_id = T2.student_id
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND middle_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.current_address_id <> T1.permanent_address_id
SELECT current_address_id, line_1, line_2, line_3 FROM Students GROUP BY current_address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM transcripts
SELECT AVG(transcript_date) FROM transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT COUNT(*) FROM transcripts
SELECT COUNT(*) FROM transcripts
SELECT MAX(transcript_date) FROM transcripts
SELECT MAX(transcript_date) FROM transcripts
SELECT student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT student_course_id, COUNT(*) FROM transcript_contents GROUP BY student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_id FROM Transcripts ORDER BY COUNT(*) ASC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 1 INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = 2
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 1 INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = 2
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id UNION SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM Students ORDER BY last_name DESC
DESCRIBE sections
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE id = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_channel WHERE Language = "English"
SELECT Language FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(share), MAX(share) FROM TV_series
SELECT MAX(share), MIN(share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE id = (SELECT id FROM TV_series WHERE Series_name = "Sky Radio")
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT production_code, channel FROM Cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code, channel FROM Cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_Channel WHERE height_definition_tv = "High Definition"
SELECT Package_Option, Series_name FROM TV_Channel WHERE Hight_definition_TV = "Yes"
SELECT T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT DISTINCT Country FROM TV_channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT DISTINCT Country FROM TV_channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" OR T2.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT country FROM TV_Channel GROUP BY country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
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
SELECT Name FROM poker_player
SELECT Name FROM poker_player
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE Earnings > 300000)
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC
SELECT Birth_Date FROM poker_player ORDER BY Earnings ASC LIMIT 1
SELECT Birth_Date FROM people JOIN poker_player ON people_id = people_id ORDER BY earnings ASC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE people_id IN (SELECT people_id FROM people WHERE Height > 200)
SELECT AVG(Earnings) FROM poker_player WHERE people_id IN (SELECT people_id FROM people WHERE Height > 200)
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
SELECT contestant_number, contestant_name FROM CONTESTANTS WHERE contestant_number IN (SELECT contestant_number FROM Votes GROUP BY contestant_number HAVING COUNT(*) >= 2)
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_number DESC LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT state FROM votes GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = "Tabatha Gehling")
SELECT T1.phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republican"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "ABW" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "ABW"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = "Asia"
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = "Asia"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" UNION SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Europe"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(gnp), SUM(population) FROM country WHERE governmentform = "US Territory"
SELECT AVG(gnp), SUM(population) FROM country WHERE code2 = "US"
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
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY Language ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = "Republican") GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = "Republic") GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" AND IsOfficial = "T")
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" AND IsOfficial = "T")
SELECT SUM(population) FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT SUM(population) FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = "T"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = "T"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT Name FROM country WHERE Continent = "Africa" INTERSECT SELECT Name FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = 'Africa' INTERSECT SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY Population DESC LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" INTERSECT SELECT Name FROM country WHERE Continent = "Africa"
SELECT Name FROM country WHERE Continent = "Asia" AND Population > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND GovernmentForm <> "Republic"
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND GovernmentForm <> "Republic"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "Chinese" AND T3.IsOfficial = "T" AND T2.Continent = "Asia"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = "Asia" AND T3.Language = "Chinese" AND T3.IsOfficial = "T"
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population DESC LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population DESC LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT continent, AVG(lifeexpectancy), SUM(population) FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT continent, SUM(population), AVG(lifeexpectancy) FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" AND Percentage > 99
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode HAVING COUNT(*) > 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(attendance) FROM show
SELECT AVG(attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_record_format = "CD" OR Major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_record_format = "CD" OR Major_record_format = "DVD"
SELECT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING COUNT(*) > 1
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
SELECT ID FROM Highschooler WHERE name = "Kyle"
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
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.name = "Kyle"
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.name = "Kyle"
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.student_id
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes)
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T1.ID = T3.student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = "Indiana" UNION SELECT professional_id, last_name, cell_number FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) > 2)
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = "Indiana" UNION SELECT professional_id, last_name, cell_number FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) > 2)
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment < 1000
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING SUM(T2.cost_of_treatment) <= 1000
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT name FROM Dogs
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT name FROM Dogs
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT owner_id, first_name, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT breed_name FROM Breeds ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM Breeds ORDER BY breed_code DESC LIMIT 1
SELECT owner_id, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM owners ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT treatment_type_description FROM Treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT owner_id, zip_code FROM Charges GROUP BY owner_id ORDER BY SUM(charge_amount) DESC LIMIT 1
SELECT owner_id, zip_code FROM Charges GROUP BY owner_id ORDER BY SUM(charge_amount) DESC LIMIT 1
SELECT professional_id, cell_number FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT date_of_treatment, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT cost_of_treatment, treatment_type_description FROM Treatments JOIN Treatment_types ON treatment_type_code = treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Breeds ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Breeds ORDER BY RAND() LIMIT 1)
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE age = "Young"
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE age = "Young"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = "1"
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = "1"
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT MAX(charge_amount) FROM Charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT breed_code, size_code FROM Dogs
SELECT DISTINCT breed_code, size_code FROM Dogs
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
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
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT Name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = "T1"
SELECT property_name FROM properties WHERE property_type_code = "hse" OR property_type_code = "apt" AND room_count > 1
