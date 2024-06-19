SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT name, song_release_year FROM singer WHERE age = (SELECT MIN(age) FROM singer)
SELECT name, song_release_year FROM singer WHERE age = (SELECT MIN(age) FROM singer)
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT COUNT(*), T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name, T2.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR >= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT T2.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name, T2.theme, COUNT(*) FROM concert AS T1 JOIN singer AS T2 ON T1.stadiumn_id = T2.stadium_id GROUP BY T1.stadiumn_id
SELECT T2.Name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name FROM concert AS T1 JOIN singer AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = "2014"
SELECT T2.Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = "2014"
SELECT name, country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name, country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T2.name, T2.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2014" INTERSECT SELECT T2.name, T2.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2015"
SELECT T2.name, T2.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2014" INTERSECT SELECT T2.name, T2.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2015"
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE age = (SELECT MIN(age) FROM Student)
SELECT weight FROM Pets WHERE age = (SELECT MIN(age) FROM Student)
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T1.StuID > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T1.StuID > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T1.StuID = SELECT StuID FROM Student WHERE sex = 'F'
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T1.StuID = (SELECT StuID FROM Student WHERE Sex = 'F') AND T2.pet_age = (SELECT pet_age FROM Pets WHERE PetType = 'Dog')
SELECT COUNT(DISTINCT pet_type) FROM Pets
SELECT COUNT(DISTINCT pet_type) FROM Pets
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat" OR SELECT StuID FROM Has_Pet WHERE PetType = "Dog")
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat" OR SELECT StuID FROM Has_Pet WHERE PetType = "Dog")
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_type = "Cat") INTERSECT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_type = "Dog")
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_type = "Cat") INTERSECT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_type = "Dog")
SELECT major, age FROM Student EXCEPT SELECT major, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT major, age FROM Student EXCEPT SELECT major, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_type = "Cat")
SELECT StuID FROM Has_Pet EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT StuID FROM Has_Pet EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT Fname, age FROM Student WHERE city_code = "Tucson" AND Has_Pet = "1" EXCEPT SELECT Fname, age FROM Student WHERE City_code = "Tucson" AND Has_Pet = "1" INTERSECT SELECT Fname, age FROM Student WHERE City_code = "Tucson" AND Has_Pet = "1" INTERSECT SELECT Fname, age FROM Student WHERE City_code = "Tucson" AND Has_Pet = "1" INTERSECT SELECT Fname, age FROM Student WHERE City_code = "Tucson" AND Has_Pet = "1" INTERSECT SELECT Fname, age FROM Student WHERE City_code = "Tucson" AND Has_Pet = "1" INTERSECT SELECT Fname, age FROM Student WHERE City_code = "Tucson" AND Has_Pet = "1" INTERSECT SELECT Fname, age FROM Student WHERE City_code = "Tucson" AND Has_Pet = "1" INTERSECT SELECT Fname, age FROM Student WHERE City_code = "Tucson"
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Dog") EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT PetType, weight FROM Pets WHERE age = (SELECT MIN(age) FROM Student)
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT PetID, weight FROM Pets WHERE age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(weight), MAX(weight) FROM Pets GROUP BY PetType
SELECT AVG(weight), MAX(weight) FROM Pets GROUP BY PetType
SELECT AVG(weight), PetType FROM Pets GROUP BY PetType
SELECT AVG(weight), PetType FROM Pets GROUP BY PetType
SELECT T2.Fname, T2.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID
SELECT DISTINCT T1.Fname, T1.Lname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT pet_id FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.pet_id = T2.pet_id WHERE T1.StuID = T2.StuID AND T1.LName = "Smith"
SELECT PetID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T1.StuID = "Smith"
SELECT COUNT(*), StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1
SELECT COUNT(DISTINCT StuID) FROM Has_Pet
SELECT T1.Fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T1.Fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT LName FROM Student WHERE city_code = "Los Angeles" AND age = 3 INTERSECT SELECT LName FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_age = 3 INTERSECT SELECT LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 3 INTERSECT SELECT LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 3 INTERSECT SELECT LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 3 INTERSECT SELECT LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 3 INTERSECT SELECT LName FROM Student AS T1 JOIN Has_P
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_age = 3)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT Continent, COUNT(*), T1.Continent FROM countries AS T1 JOIN continents AS T2 ON T1.ContinentId = T2.ContId GROUP BY T1.Continent
SELECT Continent, COUNT(*), name FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT Maker, COUNT(*) FROM model_list GROUP BY Maker
SELECT Maker, COUNT(*) FROM model_list GROUP BY Maker
SELECT MIN(Horsepower) FROM cars_data
SELECT Model FROM cars_data ORDER BY Horsepower LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE Weight < (SELECT AVG(weight) FROM cars_data)
SELECT Maker FROM cars_data WHERE YEAR = 1970 GROUP BY Maker HAVING COUNT(*) > 1
SELECT DISTINCT T1.Make FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE YEAR = 1970
SELECT Maker, ProductionTime FROM cars WHERE YEAR = 1911
SELECT Maker, YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT DISTINCT model_list.Model FROM model_list WHERE YEAR >= 1980
SELECT DISTINCT model FROM cards WHERE YEAR >= 1980
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN continents AS T2 ON T1.Country = T2.Continent GROUP BY T1.Continent
SELECT CountryName FROM countries ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryName FROM countries ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), Maker FROM model_list GROUP BY Maker
SELECT Maker, COUNT(*) FROM model_list GROUP BY Maker
SELECT Accelerate FROM cars_data WHERE Make = "amc" AND Model = "hornet sportabout" (sw)
SELECT Accelerate FROM cars_data WHERE Maker = "AMC" AND Model = "Hornet Sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM model_list WHERE Country = "USA"
SELECT COUNT(*) FROM model_list WHERE Country = "USA"
SELECT AVG(mpg) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT Maker, model FROM model_list
SELECT Maker, model FROM model_list
SELECT CountryName, CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Continent GROUP BY T1.CountryName HAVING COUNT(*) >= 1
SELECT T2.CountryName, T1.Id FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country JOIN countries AS T3 ON T1.CountryId = T3.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(weight) FROM cars_data GROUP BY YEAR
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT Country FROM countries WHERE Continent = "Europe" GROUP BY Country HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE COUNT(*) >= 3 INTERSECT SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Maker FROM cars_data WHERE Cylinders = 3
SELECT MIN(Horsepower), Make FROM cars_data WHERE Cylinders = 3
SELECT model_list.Model FROM cars_data GROUP BY model_list.Model ORDER BY AVG(MPG) DESC LIMIT 1
SELECT model_list.Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Edispl) FROM cars_data WHERE model = "Volvo"
SELECT AVG(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(DISTINCT model) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Country = "USA"
SELECT Maker, Id FROM model_list GROUP BY Maker HAVING COUNT(*) > 3
SELECT Maker, Id FROM model_list GROUP BY Maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Name = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT model FROM cars_data WHERE Mpg > 10 OR Weight > 3500 INTERSECT SELECT DISTINCT model FROM model_list WHERE Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT COUNT(*) FROM cars_data ORDER BY Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate = (SELECT MIN(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MIN(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE COUNT(*) > 2
SELECT COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT MakeId, Make FROM cars_data WHERE Horsepower > (SELECT MIN(Horsepower) FROM cars_data) EXCEPT SELECT MakeId, Make FROM cars_data WHERE Cylinders > (SELECT MIN(Cylinders) FROM cars_data)
SELECT MakeId, Make FROM cars_data WHERE Cylinders < 4 GROUP BY MakeId HAVING COUNT(*) < 1
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE Weight < 3500 EXCEPT SELECT model FROM cars_data WHERE Maker = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE Weight < 3500 EXCEPT SELECT DISTINCT model FROM cars_data WHERE Maker = "Ford Motor Company"
SELECT CountryName FROM countries EXCEPT SELECT CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.CountryId GROUP BY T1.ContId HAVING COUNT(*) = 1
SELECT CountryName FROM countries EXCEPT SELECT CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Continent
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id, T1.Maker FROM cars AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Id, T2.Name FROM countries AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.CountryId GROUP BY T1.Id HAVING COUNT(*) > 3 OR T1.Name = "fiat"
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country JOIN model_list AS T3 ON T1.CountryId = T3.CountryId WHERE T3.Model = "Fiat" GROUP BY T1.CountryId HAVING COUNT(*) > 3
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM Airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T2.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airlines AS T2 ON T1.uid = T2.uid WHERE T1.Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM Airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM Airlines WHERE Abbreviation = "UAL"
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT city, Country FROM airports WHERE AirportName = "Alton"
SELECT City, Country FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE City = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SOURCEAirport = "APG"
SELECT COUNT(*) FROM flights WHERE SOURCEAirport = "APG"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE SOURCEAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SOURCEAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.DestAirport = "Ashley"
SELECT COUNT(*) FROM flights WHERE SOURCEAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT COUNT(*) FROM Flights WHERE Airline = "Jetblue Airways"
SELECT COUNT(*) FROM Flights AS T1 JOIN Airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestAirport = "ASY"
SELECT COUNT(*) FROM Flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestAirport = "ASY"
SELECT COUNT(*) FROM Flights AS T1 JOIN Airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT COUNT(*) FROM Flights AS T1 JOIN Airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines" AND T1.DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestAirport = "Aberdeen"
SELECT city FROM flights GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM flights GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT AirportCode FROM airports ORDER BY COUNT(*) LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "Air India" AND T2.SourceAirport = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T3.City = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T3.City = "AHD"
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "APG" INTERSECT SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "CVO"
SELECT T1 FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T3.City = "APG" INTERSECT SELECT T1 FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T3.City = "CVO"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T3.City = "CVO" EXCEPT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T3.City = "APG"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "CVO" EXCEPT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "APG"
SELECT COUNT(*) FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT COUNT(*) FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT COUNT(*) FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT COUNT(*) FROM flights WHERE COUNT(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE SOURCEAirport = "APG"
SELECT FlightNo FROM Flights WHERE SOURCEAirport = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = "APG"
SELECT FlightNo FROM Flights WHERE SOURCEAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SOURCEAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT AirportName FROM airports EXCEPT SELECT AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport EXCEPT SELECT AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport
SELECT airports FROM flights EXCEPT SELECT airports FROM flights WHERE SOURCEAirport = "Los Angeles" OR DESTAirport = "Los Angeles"
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY Age ASC
SELECT Name FROM Employee ORDER BY Age ASC
SELECT COUNT(*), city FROM Employee GROUP BY City
SELECT COUNT(*), city FROM Employee GROUP BY City
SELECT city FROM Employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1
SELECT city FROM Employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT MANAGER_name, DISTRICT FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MANAGER_name, DISTRICT FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, LOCATION, DISTRICT FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T2.Name FROM evaluation AS T1 JOIN Employee AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Employee ORDER BY bonus DESC LIMIT 1
SELECT name FROM Employee ORDER BY bonus DESC LIMIT 1
SELECT Name FROM Employee EXCEPT SELECT Name FROM Employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop EXCEPT SELECT name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT COUNT(*), shop_name FROM hiring GROUP BY shop_name
SELECT COUNT(*), name FROM shop AS T1 JOIN Employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT DISTRICT FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTRICT FROM shop WHERE Number_products > 1000
SELECT DISTRICT FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTRICT FROM shop WHERE Number_products > 1000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT T1.Document_Name, T2.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name LIKE "%w%"
SELECT T2.Document_Name, T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name LIKE "%w%"
SELECT Document_ID, Template_ID, Document_Name FROM Documents WHERE Document_Name = "Robbin CV"
SELECT Document_ID, Template_ID, Document_Name FROM Documents WHERE Document_Name = "Robbin CV"
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "PPT"
SELECT T1.Template_ID, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT T1.Template_ID, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Templates
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT T1.Version_Number, T2.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) LIMIT 1
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY MIN(Version_Number) ASC
SELECT TYPE_CODE FROM Templates WHERE Document_Name = "Data base"
SELECT TYPE_CODE FROM Templates WHERE Document_Name = "Data base"
SELECT DISTINCT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "BK"
SELECT DISTINCT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "BK"
SELECT TYPE_Code, COUNT(*) FROM Templates GROUP BY TYPE_Code
SELECT TYPE_Code, COUNT(*) FROM Templates GROUP BY TYPE_Code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates EXCEPT SELECT Template_Type_Code FROM Documents
SELECT Template_Type_Code FROM Templates EXCEPT SELECT Template_Type_Code FROM Documents
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Templates WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Templates WHERE Template_Type_Description = "Book"
SELECT DISTINCT TYPE_Description FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT DISTINCT T1.Template_Description FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE Template_Type_Description = "Presentation"
SELECT Template_ID FROM Templates WHERE Template_Type_Description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Summer Show'
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Summer Show'
SELECT T2.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Paragraph_Text = "Korea"
SELECT * FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT T1.Paragraph_ID, T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Welcome to NY'
SELECT T1.Paragraph_ID, T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Welcome to NY'
SELECT DISTINCT T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID = 1 AND Document_Name = 'Customer reviews'
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*)
SELECT Document_ID, Document_Name, COUNT(*) FROM Paragraphs GROUP BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM Paragraphs GROUP BY Document_ID
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Documents GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Documents GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Documents GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Documents WHERE COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = "Brazil" OR Paragraph_Text = "Ireland"
SELECT Document_ID FROM Documents WHERE Paragraph_Text LIKE '%Brazil%' INTERSECT SELECT Document_ID FROM Documents WHERE Paragraph_Text LIKE '%Ireland%'
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
SELECT Hometown FROM teacher WHERE Age = "youngest"
SELECT Hometown FROM teacher WHERE Age = (SELECT MIN(Age) FROM teacher)
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T3.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT name, course FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T3.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name ASC
SELECT T2.Name, T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Course_ID ORDER BY T2.Name ASC
SELECT name FROM teacher WHERE course = "Math"
SELECT Name FROM teacher WHERE course = "Math"
SELECT T2.Name, COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT COUNT(*), name FROM teacher GROUP BY name
SELECT Name FROM teacher GROUP BY Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher GROUP BY Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher EXCEPT SELECT Name FROM teacher WHERE Course_ID IN (SELECT Course_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership
SELECT AVG(T2.Age) FROM visitor AS T1 JOIN visits AS T2 ON T1.ID = T2.visitor_ID WHERE T1.Level_of_membership <> 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT MUSEUM_ID, name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year = 2010)
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id ORDER BY SUM(T1.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID ORDER BY T2.Num_of_Ticket DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(T1.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.museum_id = T2.museum_id WHERE T2.level_of_membership = 1
SELECT name FROM visitor WHERE museum_id IN (SELECT museum_id FROM visit WHERE open_year < 2009) INTERSECT SELECT museum_id FROM visit WHERE open_year > 2011)
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE open_year >= 2010)
SELECT COUNT(*) FROM museum WHERE open_year >= 2013 OR open_year <= 2008
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
SELECT MIN(loser_rank) FROM matches
SELECT MIN(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT T1.tourney_name FROM tournaments AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING COUNT(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = 2016
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN tourney_championships AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN tourney_championships AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN champions AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN champions AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN tournament AS T2 ON T1.tourney_id = T2.tourney_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id = T2.tourney_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name, T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1
SELECT AVG(ranking), first_name FROM players GROUP BY first_name
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT SUM(ranking_points), first_name FROM rankings GROUP BY first_name
SELECT T1.first_name, T1.total_ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT COUNT(*), T1.ranking_date FROM rankings AS T1 JOIN tours AS T2 ON T1.ranking = T2.ranking GROUP BY T1.ranking_date
SELECT COUNT(*), T1.ranking_date FROM rankings AS T1 JOIN tours AS T2 ON T1.ranking = T2.ranking GROUP BY T1.ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date DESC LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date DESC LIMIT 3
SELECT COUNT(DISTINCT winner_hand) FROM matches WHERE tourney_name = "WTA Championships" AND winner_hand = "left"
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death GROUP BY injured
SELECT DISTINCT T1.id, T2.killed, T2.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.ship_type = "Brig"
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING COUNT(*) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY COUNT(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT name, date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "Lettice" INTERSECT SELECT name, date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS Atalanta"
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE LOCATION = "English Channel")
SELECT note FROM death WHERE note LIKE "%East%"
SELECT address_id, line_1, line_2 FROM Addresses
SELECT first_line, second_line FROM Addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_name FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT COUNT(*), department_name, department_id FROM Degree_Programs GROUP BY department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs GROUP BY department_id HAVING COUNT(*) > 1
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = "Engineering"
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = "Engineering"
SELECT name, description FROM SECTIONS
SELECT name, description FROM SECTIONS
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) >= 2
SELECT course_name, course_id FROM courses WHERE COUNT(*) < 2
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT semester_name, semester_id FROM Student_Enrolment GROUP BY semester_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name, semester_id FROM Students GROUP BY semester_name, semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%the computer%"
SELECT DISTINCT department_description FROM Departments WHERE name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T1.student_id = T3.degree_program_id WHERE T2.semester_id = 1
SELECT T1.first_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T2.semester_id = 1 GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT first_name, middle_name, last_name FROM students WHERE degree_program_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Degree_Programs AS T2 ON T1.student_id = T2.degree_program_id WHERE T2.degree_summary_name = "Bachelors"
SELECT degree_program_name FROM Degree_Programs GROUP BY degree_program_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Students AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_enrolment_id, T1.semester_id, T1.student_id, COUNT(*) FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM Semesters EXCEPT SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) >= 1
SELECT course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) > 1
SELECT course_name FROM courses GROUP BY course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT course_name FROM courses GROUP BY course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT address_id FROM Student_Enrolment_Courses)
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT last_name FROM students WHERE student_id IN (SELECT student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id)
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT address_id, line_1, line_2, line_3 FROM Addresses GROUP BY address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT T1.transcript_date, T1.other_details FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id ORDER BY T1.transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(*), course_id FROM Student_Enrolment_Courses GROUP BY course_id HAVING COUNT(*) >= 1
SELECT COUNT(*), T1.course_id FROM SECTIONS AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT semester_name FROM Semesters WHERE COUNT(*) IN (SELECT COUNT(*) FROM Student_Enrolment AS T1 JOIN Master_Studies AS T2 ON T1.student_enrolment_id = T2.student_id) INTERSECT SELECT COUNT(*) FROM Student_Enrolment AS T1 JOIN Bachelor_Studies AS T2 ON T1.student_enrolment_id = T2.student_id)
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 1 AND semester_id = 1
SELECT COUNT(DISTINCT address_id) FROM Students
SELECT DISTINCT address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM Students ORDER BY first_name, last_name
SELECT other_details FROM Students ORDER BY last_name DESC
SELECT DISTINCT T1.section_name FROM SECTIONS AS T1 JOIN SECTIONS AS T2 ON T1.section_id = T2.section_id WHERE T1.section_name = "h"
SELECT section_description FROM SECTIONS WHERE name = "h"
SELECT first_name FROM students WHERE permanent_address_id = 1 AND country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id = 1 AND country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT COUNT(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.title = T2.title WHERE T2.name = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon AS T1 JOIN Written_by AS T2 ON T1.Written_by = T2.id WHERE T2.Name = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE title = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id JOIN Cartoon AS T3 ON T1.channel = T3.channel WHERE T3.title = "The Rise of the Blue Beetle"
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN series_name AS T3 ON T1.series_name = T3.series_name WHERE T3.title = "Sky Radio"
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
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT title FROM tv_series WHERE episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE title = "Sky Radio"
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT COUNT(*), directed_by FROM cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes'
SELECT T1.Package_Option, T2.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_definition_TV = 'Yes'
SELECT Country FROM TV_Channel WHERE Content = "Todd Casey" INTERSECT SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey" INTERSECT SELECT Country FROM TV_Channel WHERE Content = "Cartoon"
SELECT Country FROM TV_Channel EXCEPT SELECT Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.id = T2.id WHERE T1.Title = "Todd Casey"
SELECT Country FROM TV_Channel EXCEPT SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" OR T2.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT id FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel EXCEPT SELECT id FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.directed_by = T2.id WHERE T1.title = "Ben Jones"
SELECT id FROM TV_Channel EXCEPT SELECT id FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id JOIN Ben Jones AS T3 ON T1.Directed_by = T3.id
SELECT Package_Option FROM TV_Channel EXCEPT SELECT Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel EXCEPT SELECT Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
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
SELECT COUNT(*) FROM poker_player WHERE Earnings < 200000 AND Final_Table_Made >= 1
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT Name FROM poker_player
SELECT Name FROM poker_player
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT COUNT(*), Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people EXCEPT SELECT Name FROM poker_player
SELECT Name FROM people EXCEPT SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM Votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM Votes WHERE state = "CA" ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM Votes
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN Votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN Votes AS T2 ON T1.contestant_number = T2.contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM Votes WHERE state = "NY" OR state = "CA"
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM Votes)
SELECT area_code FROM Votes GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM Votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM Votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling" INTERSECT SELECT T1.area_code FROM Votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Kelly Clauss"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT Name FROM country WHERE IndepYear >= 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GouvernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GouvernementForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Carribean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Kabul"
SELECT Region FROM country WHERE Name = "Afghanistan" AND Capital = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT name FROM country WHERE region = "Asia" ORDER BY lifeExpectancy LIMIT 1
SELECT name FROM country WHERE region = "Asia" ORDER BY lifeexpectancy LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT COUNT(*), GNP FROM country WHERE Continent = "Asia" ORDER BY GNP DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Africa" AND GouvernementForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Africa" AND GouvernementForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT COUNT(*) FROM city WHERE DISTRICT = "Gelderland"
SELECT SUM(Population) FROM city WHERE DISTRICT = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GouvernementForm = 'USA'
SELECT AVG(GNP), SUM(Population) FROM country WHERE Continent = "North America"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GouvernementForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT GouvernementForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "Afghanistan" AND IsOfficial = 'F'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "Afghanistan" AND IsOfficial = 'F'
SELECT CountryCode FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryCode FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(DISTINCT Language) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Dutch'
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Name FROM country WHERE Language = 'English' INTERSECT SELECT Name FROM country WHERE Language = 'French'
SELECT CountryName FROM country WHERE Language = 'English' INTERSECT SELECT CountryName FROM country WHERE Language = 'French'
SELECT CountryName FROM country WHERE Language = 'English' AND IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE Language = 'French' AND IsOfficial = 'F'
SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT
SELECT COUNT(DISTINCT continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "China"
SELECT COUNT(DISTINCT CountryCode) FROM countrylanguage WHERE Language = "Chinese"
SELECT Region FROM country WHERE Language = 'English' OR Language = 'Dutch'
SELECT Region FROM country WHERE Language = "Dutch" OR Language = "English"
SELECT CountryCode FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch' AND IsOfficial = 'F'
SELECT CountryCode FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch' AND IsOfficial = 'F'
SELECT Language FROM countrylanguage WHERE Continent = "Asia" ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM country WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = 'USA' AND GouvernementForm = 'Republic'
SELECT Language FROM countrylanguage WHERE CountryCode = 'USA' AND GouvernementForm = 'Republic'
SELECT name FROM city WHERE population = (SELECT MAX(population) FROM city WHERE language = 'English')
SELECT city FROM countrylanguage WHERE Language = 'English' ORDER BY Population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY population DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE Language <> 'English'
SELECT AVG(LifeExpectancy) FROM country WHERE Language <> 'English' AND IsOfficial = 'F'
SELECT COUNT(*) FROM country WHERE Language <> 'English'
SELECT COUNT(*) FROM country WHERE Language <> 'English'
SELECT Language FROM countrylanguage WHERE CountryCode = "USA" AND IsOfficial = 'F'
SELECT Language FROM countrylanguage WHERE CountryCode = "Switzerland" AND IsOfficial = 'F' AND HeadOfState = "Beatrix"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IndepYear < 1930 GROUP BY Language HAVING COUNT(DISTINCT Language) = COUNT(DISTINCT Language) FROM countrylanguage WHERE IndepYear < 1930
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IndefYear < 1930 GROUP BY Language HAVING COUNT(DISTINCT Language) > 1
SELECT COUNT(*) FROM country WHERE SurfaceArea > (SELECT MIN(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT COUNT(*) FROM country WHERE SurfaceArea > (SELECT MIN(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT CountryCode FROM country WHERE Population < (SELECT MIN(Population) FROM country WHERE Continent = "Asia")
SELECT COUNT(*) FROM country WHERE Population < (SELECT MIN(Population) FROM country WHERE Continent = "Asia") INTERSECT SELECT COUNT(*) FROM country WHERE Continent = "Africa")
SELECT CountryCode FROM country WHERE Population > (SELECT MIN(Population) FROM country WHERE Continent = 'Africa')
SELECT CountryCode FROM country WHERE Population > (SELECT MIN(Population) FROM country WHERE Continent = 'Africa')
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = 'English'
SELECT CountryCode FROM countrylanguage EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country WHERE GouvernementForm = 'Republic'
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country WHERE GouvernementForm = 'Republic'
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM city WHERE countrycode = "Europe" AND Language = "English"
SELECT Name FROM city WHERE CountryCode = "Europe" EXCEPT SELECT Name FROM city WHERE Language = "English" AND IsOfficial = 'F'
SELECT DISTINCT city FROM country WHERE Code = "Asia" AND Language = "Chinese"
SELECT DISTINCT name FROM city WHERE CONTINENT = "Asia" AND LANGUAGE = "Chinese"
SELECT name, indy, surfacearea FROM country ORDER BY population LIMIT 1
SELECT name, indy, surfacearea FROM country ORDER BY population LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT Country, COUNT(*) FROM countrylanguage GROUP BY Country HAVING COUNT(*) >= 3
SELECT CountryCode, COUNT(*) FROM countrylanguage GROUP BY CountryCode HAVING COUNT(*) > 2
SELECT COUNT(*), DISTRICT FROM city GROUP BY DISTRICT HAVING AVG(Population) > (SELECT AVG(Population) FROM city)
SELECT COUNT(*), DISTRICT FROM city GROUP BY DISTRICT HAVING AVG(Population) > (SELECT AVG(Population) FROM city)
SELECT GouvernementForm, SUM(Population) FROM country GROUP BY GouvernementForm HAVING AVG(LifeExpectancy) > 72
SELECT GouvernementForm, SUM(Population) FROM country GROUP BY GouvernementForm HAVING AVG(LifeExpectancy) > 72
SELECT T1.Continent, AVG(T2.LifeExpectancy), SUM(T1.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent HAVING AVG(T2.LifeExpectancy) < 72
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM city ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000"
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, Language FROM countrylanguage GROUP BY Country, Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" AND IsOfficial = 'F'
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
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
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T2.Name, T3.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID
SELECT T2.Name, T1.Orchestra_ID FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT COUNT(*), Record_Company FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT ORCHESTRA FROM orchestra EXCEPT SELECT ORCHESTRA FROM performance
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, friend_id FROM Friend
SELECT COUNT(*) FROM Friend
SELECT name, COUNT(*) FROM Highschooler GROUP BY name
SELECT name, COUNT(*) FROM Highschooler GROUP BY name
SELECT name FROM highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM highschooler GROUP BY name HAVING COUNT(*) >= 3
SELECT name FROM highschooler GROUP BY name HAVING COUNT(*) >= 3
SELECT name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = "Kyle"
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = "Kyle"
SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM Highschooler EXCEPT SELECT id FROM High
SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEPT SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM highschooler EXCEpt SELECT id FROM high
SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEPT SELECT name FROM highschooler EXCEpt SELECT name FROM highschooler EXCEpt SELECT name FROM highschooler EXCEpt SELECT name FROM highschooler EXCEpt SELECT name FROM highschooler EXCEpt SELECT name FROM highschooler EXCEpt SELECT name FROM highschooler EXCEpt SELECT name FROM highschooler EXCEpt SELECT name FROM high
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT name FROM Highschooler WHERE COUNT(*) IN (SELECT COUNT(*) FROM Friend) INTERSECT SELECT COUNT(*) FROM Likes)
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend) INTERSECT SELECT student_id FROM likes)
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID HAVING COUNT(*) > 1
SELECT COUNT(*), name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID HAVING COUNT(*) > 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = "Kyle"
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = "Kyle"
SELECT AVG(grade) FROM Highschooler WHERE COUNT(*) IN (SELECT COUNT(*) FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT AVG(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING COUNT(*) >= 1
SELECT AVG(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING COUNT(*) = (SELECT COUNT(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "Treatment")
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "IN" OR COUNT(*) > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "IN" OR COUNT(*) > 2
SELECT name FROM Dogs EXCEPT SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT name FROM Dogs EXCEPT SELECT name FROM Dogs WHERE owner_id IN (SELECT owner_id FROM Treatments GROUP BY owner_id HAVING SUM(cost_of_treatment) > 1000)
SELECT first_name FROM Professionals EXCEPT SELECT first_name FROM Dogs EXCEPT SELECT first_name FROM Owners EXCEPT SELECT first_name FROM Dogs
SELECT first_name FROM Professionals EXCEPT SELECT first_name FROM Dogs EXCEPT SELECT first_name FROM Owners EXCEPT SELECT first_name FROM Dogs
SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT professional_id, role_code, email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.professional_id = T3.owner_id
SELECT owner_id, first_name, last_name FROM Dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.treatment_id, T2.professional_id, T3.role_code, T1.name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT name FROM Dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.owner_id = T3.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatments AS T1 JOIN T2.treatment_type_code ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T1.cost_of_treatment) LIMIT 1
SELECT T1.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T1.cost_of_treatment) LIMIT 1
SELECT owner_id, zip_code FROM Owners ORDER BY SUM(weight) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id, T2.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T2.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment, T1.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT date_of_treatment, T1.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment, treatment_type_description FROM Treatments
SELECT cost_of_treatment, treatment_type_description FROM Treatments
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T1.owner_id = T3.owner_id
SELECT T1.first_name, T1.last_name, T2.weight FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T1.size_code = T3.size_code
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T1.breed_code = T3.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T1.breed_code = T3.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT MIN(age) FROM Dogs)
SELECT name FROM Dogs WHERE age = (SELECT MIN(age) FROM Dogs)
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT T1.professional_id) FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT COUNT(DISTINCT T1.professional_id) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, cost_of_treatment FROM Treatments GROUP BY charge_type
SELECT charge_type, charge_amount FROM Charges
SELECT MIN(charge_amount) FROM Charges WHERE charge_type = "Expensive"
SELECT charge_amount FROM Charges ORDER BY charge_type DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT T1.breed_type, T2.size_code FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_type, T2.size_code FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T1.size_code = T3.size_code
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id
SELECT T1.first_name, T1.description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
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
SELECT COUNT(*), Citizenship FROM singer GROUP BY Citizenship
SELECT CITIZENSHIP FROM singer GROUP BY CITIZENSHIP ORDER BY COUNT(*) DESC LIMIT 1
SELECT CITIZENSHIP FROM singer GROUP BY CITIZENSHIP ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer EXCEPT SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT DISTINCT property_type_description FROM Properties WHERE property_type_code = "1111"
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = "House" OR property_type_code = "Apartment"
