SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY age FROM oldest TO youngest
SELECT Name, Country, Age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE Country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T2.Name, T2.Song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age = (SELECT MIN(age) FROM singer)
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Is_male = TRUE AND T1.Age = (SELECT MIN(age) FROM singer)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN singer_in_concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID ORDER BY AVG(T2.Attendance) DESC LIMIT 1
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN singer_in_concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID ORDER BY AVG(T2.Attendance) DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T1.Name, COUNT(*) FROM concert AS T2 JOIN stadium AS T1 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T2.Name, T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Stadium_Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT Name FROM stadium EXCEPT SELECT T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.concert_Name, T2.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.Name, T1.Theme, COUNT(*) FROM concert AS T2 JOIN singer_in_concert AS T1 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.concert_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.concert_ID = (SELECT concert_ID FROM concert WHERE YEAR = 2014)
SELECT Name, Country FROM singer WHERE Song_Name = 'Hey'
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014" INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2015"
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)
SELECT weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)
SELECT MAX(weight), Pettype FROM Pets GROUP BY Pettype
SELECT MAX(weight), MAX(pet_age) FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Pets WHERE Pettype = "Cat" OR Pettype = "Dog" WHERE age > 20
SELECT COUNT(*) FROM Pets WHERE pet_age > 20
SELECT COUNT(*) FROM Pets WHERE Pettype = "dog" AND Sex = "F"
SELECT COUNT(*) FROM Pets WHERE Pettype = "dog" AND Sex = "female"
SELECT COUNT(DISTINCT Pettype) FROM Pets
SELECT COUNT(DISTINCT Pettype) FROM Pets
SELECT Fname FROM Student WHERE Pettype = "Cat" OR Pettype = "Dog"
SELECT Fname FROM Student WHERE Pettype = "Cat" OR Pettype = "Dog"
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE Pettype = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE Pettype = "Dog")
SELECT Fname FROM Student WHERE major = "Veterinary" INTERSECT SELECT Fname FROM Student WHERE major = "Pets"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Pets WHERE Pettype = "Cat")
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Pets WHERE Pettype = "Cat")
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE Pettype = "Cat")
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE Pettype = "Cat")
SELECT Fname, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Pets WHERE Pettype = "Cat")
SELECT Fname FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Cat) INTERSECT SELECT StuID FROM Has_Pet WHERE Pettype = "dog"
SELECT Pettype, Weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)
SELECT Pettype, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT PetID, Weight FROM Pets WHERE Pet_age > 1
SELECT PetID, Weight FROM Pets WHERE Pet_age > 1
SELECT AVG(age), MAX(age) FROM Pets GROUP BY Pettype
SELECT AVG(age), MAX(age) FROM Pets GROUP BY Pettype
SELECT AVG(weight) FROM Pets GROUP BY Pettype
SELECT AVG(weight) FROM Pets GROUP BY Pettype
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT DISTINCT Fname, Lname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT PetID FROM Pets WHERE Pettype = 'Cat' AND LName = 'Smith'
SELECT PetID FROM Pets WHERE Pettype = "Cat" AND LName = "Smith"
SELECT StuID, COUNT(*) FROM has_pet GROUP BY StuID
SELECT StuID FROM Student WHERE has_pet = 1 GROUP BY StuID HAVING COUNT(*) > 1
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet) GROUP BY StuID HAVING COUNT(*) > 1
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT LName FROM Student WHERE major = "Cat" AND age = 3
SELECT LName FROM Student WHERE Pettype = "Cat" AND pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM PetHas)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT continentid, continentname, COUNT(*) FROM countries GROUP BY continent
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T2.FullName, T1.Id, COUNT(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Maker
SELECT T2.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Id GROUP BY T1.Id
SELECT Model FROM model_list ORDER BY horsepower ASC LIMIT 1
SELECT Model FROM model_list ORDER BY Horsepower LIMIT 1
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM car_names)
SELECT Maker FROM car_makers WHERE Country = "United States" IN 1970
SELECT DISTINCT T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeID = T2.MakeID WHERE T2.Year = 1970
SELECT Make, ProductionTime FROM car_names ORDER BY ProductionTime LIMIT 1
SELECT Maker, YEAR FROM car_names ORDER BY MakeId LIMIT 1
SELECT DISTINCT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Country > 1980)
SELECT DISTINCT Model FROM model_list WHERE Maker <> 'Tesla' INTERSECT SELECT DISTINCT Model FROM car_names WHERE Make <> 'Tesla'
SELECT continent, COUNT(*) FROM car_makers GROUP BY continent
SELECT T2.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Id GROUP BY T1.ContId
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM model_list GROUP BY Maker
SELECT COUNT(*) FROM model_list GROUP BY Maker
SELECT Accelerate FROM cars_data WHERE Make = "amc hornet sportabout"
SELECT Accelerate FROM cars_data WHERE Make = "amc" AND Model = "hornet sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM model_list WHERE Maker = "Tesla" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Ford" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Chevrolet" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Toyota" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Honda" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Nissan" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Mazda" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Subaru" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Volkswagen" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "BMW" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Mercedes" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Audi" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Porsche" INTERSECT SELECT
SELECT COUNT(*) FROM model_list WHERE Maker = "Tesla" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Ford" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Chevrolet" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Toyota" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Honda" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Nissan" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Mazda" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Subaru" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Volkswagen" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "BMW" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Mercedes" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Audi" INTERSECT SELECT COUNT(*) FROM model_list WHERE Maker = "Porsche" INTERSECT SELECT
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT Maker, Model FROM model_list UNION SELECT Maker, Model FROM car_names
SELECT Maker, Model FROM model_list
SELECT T2.CountryId, T1.Country FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight) FROM cars_data GROUP BY YEAR
SELECT AVG(Weight), AVG(Year) FROM cars_data GROUP BY YEAR
SELECT COUNT(*) FROM car_makers WHERE Country = "Europe" GROUP BY Country HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE Continent = "Europe" GROUP BY CountryName HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM car_names WHERE Cylinders = 3
SELECT MAX(Horsepower), Make FROM car_names WHERE Cylinders = 3
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE T1.Year < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT AVG(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT MAX(accelerate) FROM cars_data GROUP BY cylinders
SELECT MAX(accelerate) FROM cars_data GROUP BY cylinders
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = "American Motor Company"
SELECT COUNT(*) FROM model_list WHERE Maker = "American Motor Company"
SELECT T2.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Id GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T2.Make, T2.Id FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Make WHERE T2.Maker > 3
SELECT DISTINCT Model FROM model_list WHERE Maker = "General Motors" OR Weight > 3500
SELECT DISTINCT Model FROM model_list WHERE Maker = "General Motors" OR Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight < 3000 OR Weight > 4000
SELECT DISTINCT T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Make WHERE T1.Weight < 4000 INTERSECT SELECT DISTINCT T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Make WHERE T1.Weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT cylinders FROM cars_data ORDER BY accelerate LIMIT 1
SELECT cylinders FROM car_names WHERE Make = "Volvo" ORDER BY accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT MAX(accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT Model FROM model_list ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY MAX(Horsepower) DESC LIMIT 1
SELECT MakeId, Make FROM cars_data WHERE Horsepower > (SELECT MAX(Horsepower) FROM cars_data) EXCEPT SELECT MakeId, Make FROM cars_data WHERE Cylinders > 3
SELECT MakeId, Make FROM cars_data WHERE cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR ProducedBefore = 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR ProducedBefore = 1980
SELECT Model FROM model_list WHERE Make <> 'Ford Motor Company' INTERSECT SELECT Model FROM car_names WHERE Weight < 3500
SELECT DISTINCT Model FROM model_list WHERE Edispl < 3500 EXCEPT SELECT Model FROM car_names WHERE Make = "Ford Motor Company"
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT CountryId FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Continent FROM continents)
SELECT T2.Id, T2.Maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id GROUP BY T1.MakeId HAVING COUNT(*) > 3
SELECT Id, Maker FROM car_makers WHERE COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T2.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.Abbreviation = "Jetblue"
SELECT T2.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.uid = T2.uid WHERE T2.Country = "USA"
SELECT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.uid = T2.uid WHERE T2.Country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM Flights
SELECT COUNT(*) FROM Flights
SELECT T1.Airline FROM airlines AS T1 JOIN abbreviations AS T2 ON T1.Abbreviation = T2.Abbreviation WHERE T2.Abbreviation = 'UAL'
SELECT T1.Airline FROM airlines AS T1 JOIN abbreviations AS T2 ON T1.Abbreviation = T2.Abbreviation WHERE T2.Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT city, country FROM airports WHERE AirportCode = "Alton"
SELECT city, country FROM airports WHERE AirportCode = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM Flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM Flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "ATO"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "City Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM Flights WHERE Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM Flights WHERE Airline = "Jetblue Airways"
SELECT COUNT(*) FROM Flights WHERE Airline = 'United Airlines' AND SourceAirport = 'ASY'
SELECT COUNT(*) FROM Flights WHERE Airline = "United Airlines" AND SourceAirport = "ASY"
SELECT COUNT(*) FROM Flights WHERE Airline = 'United Airlines' AND SourceAirport = 'AHD'
SELECT COUNT(*) FROM Flights WHERE Airline = "United Airlines" AND SourceAirport = "AHD"
SELECT COUNT(*) FROM Flights WHERE Airline = "United Airlines" AND SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE Airline = "United Airlines" AND DestAirport = "Aberdeen"
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM Flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM Flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM Flights GROUP BY SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT AirportCode FROM Flights GROUP BY SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Abbreviation, T2.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) LIMIT 1
SELECT T2.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT DISTINCT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT DISTINCT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG' AND T2.DestAirport = 'CVO'
SELECT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG" AND T2.DestAirport = "CVO"
SELECT DISTINCT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'APG'
SELECT DISTINCT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport <> 'APG' INTERSECT SELECT DISTINCT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport <> 'CVO'
SELECT DISTINCT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline GROUP BY T1.uid HAVING COUNT(*) >= 10
SELECT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline GROUP BY T1.uid HAVING COUNT(*) >= 10
SELECT DISTINCT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline GROUP BY T1.uid HAVING COUNT(*) < 200
SELECT T1.Airline FROM Flights AS T2 JOIN Airlines AS T1 ON T1.uid = T2.Airline GROUP BY T1.uid HAVING COUNT(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT AirportCode FROM Flights)
SELECT DISTINCT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport UNION SELECT DISTINCT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY age ASC
SELECT Name FROM Employee ORDER BY age ASC
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city FROM Employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM Employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT T1.Name FROM Employee AS T1 JOIN Shop AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Shop_ID HAVING AVG(T2.Number_products) > (SELECT AVG(T2.Number_products) FROM Employee AS T1 JOIN Shop AS T2 ON T1.Employee_ID = T2.Employee_ID)
SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Employee_Name FROM Employee WHERE Bonus > (SELECT MAX(Bonus) FROM evaluation)
SELECT Name FROM Employee EXCEPT SELECT Name FROM Employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT T1.Shop_ID, COUNT(*) FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Shop_ID
SELECT T1.Name, COUNT(*) FROM Employee AS T1 JOIN Shop AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Shop_ID
SELECT Total(Bonus) FROM evaluation
SELECT Total(Bonus) FROM evaluation
SELECT T1.Employee_ID, T2.Shop_ID FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT T1.Name, T1.Start_from FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT DISTRICT FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTRICT FROM shop WHERE Number_products > 10000
SELECT DISTRICT FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTRICT FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = "Robbin CV"
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(*) FROM Documents WHERE Template_ID = (SELECT Template_ID FROM Templates WHERE Template_type_code = 'PPT')
SELECT COUNT(*) FROM Documents WHERE Template_ID = 1
SELECT Template_ID, COUNT(*) FROM Templates GROUP BY Template_ID
SELECT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID
SELECT Template_ID, Template_type_code FROM Documents GROUP BY Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID, Template_type_code FROM Documents GROUP BY Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID FROM Templates WHERE Template_ID IN (SELECT Template_ID FROM Documents) GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM templates
SELECT Template_ID, Version_Number, Template_type_code FROM Templates
SELECT Template_ID, Version_Number, Template_type_code FROM Templates
SELECT DISTINCT Template_type_code FROM templates
SELECT DISTINCT Template_type_code FROM Ref_Template_Types
SELECT Template_ID FROM Templates WHERE Template_type_code = "PP" OR Template_type_code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_type_code = "PP" OR Template_type_code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT Template_Version_Number, Template_type_code FROM Templates WHERE Template_Version_Number > 5
SELECT Template_Version_Number, Template_type_code FROM Templates WHERE Version_Number > 5
SELECT Template_type_code, COUNT(*) FROM templates GROUP BY Template_type_code
SELECT Template_type_code, COUNT(*) FROM templates GROUP BY Template_type_code
SELECT Template_type_code FROM templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Ref_Template_Types WHERE Template_type_code < 3
SELECT Template_type_code FROM Ref_Template_Types WHERE COUNT(*) < 3
SELECT MIN(version_number), Template_type_code FROM templates GROUP BY Template_type_code ORDER BY COUNT(*) LIMIT 1
SELECT Template_type_code, MIN(version_number) FROM templates GROUP BY Template_type_code
SELECT Template_type_code FROM templates WHERE Document_name = "Data base"
SELECT Template_type_code FROM templates WHERE Document_name = "Data base"
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_type_code = "BK")
SELECT Document_Name FROM Documents WHERE Template_ID = (SELECT Template_ID FROM Templates WHERE Template_type_code = "BK")
SELECT Template_type_code, COUNT(*) FROM templates GROUP BY Template_type_code
SELECT Template_type_code, COUNT(*) FROM templates GROUP BY Template_type_code
SELECT Template_type_code FROM Documents GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Documents GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Ref_Template_Types WHERE NOT Template_type_code IN (SELECT Template_type_code FROM Documents)
SELECT Template_type_code FROM Ref_Template_Types WHERE NOT Template_type_code IN (SELECT Template_type_code FROM Documents)
SELECT Template_type_code, Template_type_description FROM Ref_Template_Types
SELECT Template_type_code, Template_type_description FROM Ref_Template_Types
SELECT Template_type_description FROM Ref_Template_Types WHERE Template_type_code = "AD"
SELECT Template_type_description FROM Ref_Template_Types WHERE Template_type_code = 'AD'
SELECT Template_type_code FROM Ref_Template_Types WHERE Template_type_description = "Book"
SELECT Template_type_code FROM Ref_Template_Types WHERE Template_type_description = "Book"
SELECT DISTINCT T2.Template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.Template_type_code = T2.Template_type_code
SELECT DISTINCT T2.Template_type_description FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Template_ID FROM Templates WHERE Template_type_description = "Presentation"
SELECT Template_ID FROM Templates WHERE Template_type_code = 'Presentation'
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show')
SELECT COUNT(*) FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show')
SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT Paragraph_ID, Paragraph_Text FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM documents WHERE Document_Name = 'Welcome to NY')
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_id = (SELECT Document_ID FROM documents WHERE Document_Name = 'Welcome to NY')
SELECT Paragraph_Text FROM paragraphs WHERE Document_ID = 3
SELECT Paragraph_Text FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Customer reviews')
SELECT Document_ID, COUNT(*) FROM paragraphs GROUP BY Document_ID ORDER BY COUNT(*) DESC
SELECT Document_ID, COUNT(*) FROM paragraphs GROUP BY Document_ID ORDER BY COUNT(*) DESC
SELECT Document_ID, Document_Name, COUNT(*) FROM paragraphs GROUP BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM paragraphs GROUP BY Document_ID
SELECT Document_ID FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Paragraphs)
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs)
SELECT Document_ID, Document_Name FROM Documents GROUP BY Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID, Document_Name FROM Documents GROUP BY Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Documents GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Documents GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM paragraphs WHERE Paragraph_Text LIKE "1%" OR Paragraph_Text LIKE "2%"
SELECT Document_ID FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Paragraphs)
SELECT Document_ID FROM Documents WHERE Paragraph_Text = 'Brazil' INTERSECT SELECT Document_ID FROM Documents WHERE Paragraph_Text = 'Ireland'
SELECT Document_ID FROM Documents WHERE Paragraph_Text LIKE '%Brazil%' INTERSECT SELECT Document_ID FROM Documents WHERE Paragraph_Text LIKE '%Ireland%'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY age ASC
SELECT Name FROM teacher ORDER BY age ASC
SELECT Age, Hometown FROM Teacher
SELECT T1.Name, T1.Age, T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher WHERE Age = (SELECT MIN(age) FROM teacher)
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Grade LIMIT 1
SELECT T1.Hometown, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT hometown, COUNT(*) FROM teacher GROUP BY hometown
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T3.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Grade = "Math"
SELECT T1.Name, COUNT(*) FROM course AS T2 JOIN teacher AS T1 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T1.Name, COUNT(*) FROM course AS T2 JOIN teacher AS T1 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership FROM visitor
SELECT AVG(age) FROM visitor WHERE level_of_membership <> 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age
SELECT Museum_ID, Name FROM museum GROUP BY Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T3.Museum_ID = T2.Museum_ID GROUP BY T1.ID HAVING COUNT(*) > 1
SELECT ID, Name, Level_of_membership FROM visitor ORDER BY Total_spent DESC LIMIT 1
SELECT Museum_ID, Name FROM museum GROUP BY Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID ORDER BY T2.Total_spent DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT Total_spent FROM visit WHERE Level_of_membership = 1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T3.Museum_ID = T2.Museum_ID WHERE T3.Open_Year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T3.Museum_ID = T2.Museum_ID WHERE T3.Open_Year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT visitor_id IN (SELECT visitor_id FROM visit)
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT AVG(age), T1.type FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id UNION SELECT AVG(age), T1.type FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(ranking) FROM rankings WHERE ranking_type = "winner"
SELECT AVG(ranking) FROM rankings WHERE winner_id IN (SELECT winner_id FROM matches)
SELECT MAX(loser_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T2.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id HAVING COUNT(*) > 10
SELECT T2.name FROM tournaments AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING COUNT(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_date = "2013" INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_date = "2016"
SELECT T1.name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date = "8/8/2013" INTERSECT SELECT T1.name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date = "8/8/2016"
SELECT COUNT(*) FROM matches WHERE tourney_date LIKE "8/%" OR tourney_date LIKE "16/%"
SELECT COUNT(*) FROM matches WHERE tourney_date LIKE "8/%" OR tourney_date LIKE "16/%"
SELECT T2.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = "WTA Championships" INTERSECT SELECT T2.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = "Australian Open"
SELECT first_name, country_code FROM players WHERE player_id = (SELECT winner_id FROM matches)
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name FROM players WHERE hand = "Left" ORDER BY birth_date
SELECT first_name, country_code FROM players GROUP BY first_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT T2.year FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.year FROM matches AS T1 JOIN rankings AS T2 ON T1.match_num = T2.match_num GROUP BY T1.match_num ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM rankings GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM matches AS T2 JOIN rankings AS T1 ON T2.winner_id = T1.player_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM rankings GROUP BY first_name
SELECT first_name, AVG(ranking) FROM players GROUP BY first_name
SELECT T1.player_id, T1.first_name, T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT first_name, ranking_points FROM players GROUP BY first_name
SELECT COUNT(*) FROM players GROUP BY country_code
SELECT COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING COUNT(*) > 50
SELECT T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT T2.year, COUNT(*) FROM matches AS T1 JOIN rankings AS T2 ON T1.match_num = T2.match_num GROUP BY T1.match_num
SELECT T2.year, COUNT(*) FROM matches AS T1 JOIN rankings AS T2 ON T1.match_num = T2.match_num GROUP BY T1.match_num
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE winner_hand = "Left" INTERSECT SELECT COUNT(DISTINCT winner_id) FROM matches WHERE winner_hand = "Right" WHERE tournament_id = "WTA Championships"
SELECT COUNT(*) FROM matches WHERE winner_hand = "Left" INTERSECT SELECT COUNT(*) FROM matches WHERE tournament_id = 1
SELECT first_name, country_code, birth_date FROM players ORDER BY ranking_points DESC LIMIT 1
SELECT first_name, country_code, birth_date FROM players ORDER BY ranking_points DESC LIMIT 1
SELECT T1.hand, COUNT(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_hand
SELECT T1.hand, COUNT(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = "Captured"
SELECT name, tonnage FROM ship ORDER BY tonnage DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT DISTINCT T1.id, T2.note FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = "Brig"
SELECT id, name FROM battle WHERE result = "killed" GROUP BY id HAVING COUNT(*) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T1.bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT T2.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T1.latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT RESULT) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship) WHERE tonnage = '225'
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = "Lettice" INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = "HMS Atalanta"
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship) IN English Channel
SELECT NOTE FROM death WHERE NOTE LIKE '%West%'
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.line_1 = "line_1" AND T1.line_2 = "line_2"
SELECT first_line, second_line FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_id = 1
SELECT DISTINCT T1.course_description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM Degree_Programs GROUP BY department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM Degree_Programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Degree_Programs
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = 1
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = 1
SELECT T1.section_name, T1.section_description FROM addresses AS T1 JOIN student_enrolment_courses AS T2 ON T1.address_id = T2.permanent_address_id
SELECT T1.section_name, T1.section_description FROM addresses AS T1 JOIN student_enrolment_courses AS T2 ON T1.address_id = T2.permanent_address_id
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) >= 2
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM courses ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T2.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM Departments WHERE department_name = "Computer"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T2.student_id HAVING COUNT(*) > 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T2.student_id HAVING COUNT(*) > 1
SELECT first_name, middle_name, last_name FROM students WHERE degree_program_id = (SELECT degree_program_id FROM Student_Enrolment)
SELECT first_name, middle_name, last_name FROM students WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Bachelors")
SELECT degree_program_id FROM student_enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM Degree_Programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Student_Enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, T2.student_enrolment_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT DISTINCT T1.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.student_enrolment_id IS NULL
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.current_address_id <> T2.address_id INTERSECT SELECT T1.last_name FROM students AS T1 JOIN degree_programs AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id <> T1.degree_program_id WHERE T1.current_address_id <> T2.address_id
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT permanent_address_id FROM students WHERE NOT student_id IN (SELECT student_id FROM student_enrolment) INTERSECT SELECT permanent_address_id FROM addresses WHERE state_province_county = "North Carolina")
SELECT transcript_date, transcript_id FROM Transcripts JOIN Transcript_Contents ON transcript_id = transcript_id GROUP BY student_course_id HAVING COUNT(*) >= 2
SELECT transcript_date, transcript_id FROM Transcripts WHERE other_details LIKE '%2 courses%'
SELECT Timmothy Ward FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT Timmothy Ward's cell_mobile_number FROM students WHERE Timmothy Ward = Timmothy Ward
SELECT first_name, middle_name, last_name FROM students WHERE date_first_registered = (SELECT date_first_registered FROM students ORDER BY date_first_registered LIMIT 1)
SELECT first_name, middle_name, last_name FROM students WHERE date_first_registered = (SELECT date_first_registered FROM students ORDER BY date_first_registered LIMIT 1)
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Student_Enrolment_Courses ORDER BY student_course_id LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT address_id, line_1, line_2, line_3 FROM addresses GROUP BY address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses GROUP BY line_1 ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(*) FROM student_enrolment_contents AS T1 JOIN student_course_id AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_id, T2.student_course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts GROUP BY transcript_date ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts GROUP BY transcript_id ORDER BY COUNT(*) LIMIT 1
SELECT semester_id FROM Student_Enrolment_Courses WHERE course_id IN (SELECT course_id FROM Student_Enrolment_Courses WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Master") INTERSECT SELECT course_id FROM Student_Enrolment_Courses WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Bachelor")
SELECT semester_id FROM Student_Enrolment_Courses WHERE course_id IN (SELECT course_id FROM Student_Enrolment_Courses WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Masters" INTERSECT SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Bachelors"
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT student_details FROM students ORDER BY student_details DESC
SELECT other_details FROM students ORDER BY last_name DESC
SELECT section_name FROM sections AS T1 JOIN student_enrolment_courses AS T2 ON T1.section_id = T2.student_course_id WHERE T2.course_id = 3
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE permanent_address_id = 30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT first_name FROM students WHERE permanent_address_id = 30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Title FROM Cartoon ORDER BY T1.Title
SELECT Title FROM Cartoon ORDER BY T1.Title ASC
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Writer = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Writer = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT T1.series_name), COUNT(DISTINCT T1.content) FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id
SELECT COUNT(DISTINCT T1.series_name), COUNT(DISTINCT T1.content) FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id
SELECT Content FROM TV_Channel WHERE Series_Name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = "Sky Radio"
SELECT Title FROM Cartoon WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Rating, Episode FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT T1.Air_Date FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.Channel WHERE T2.Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_episode AS T2 ON T1.id = T2.id WHERE T2.Episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE T1.id = T2.id AND T2.series_name = "Sky Radio"
SELECT T1.Directed_by, COUNT(*) FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id GROUP BY T1.Directed_by
SELECT T1.Directed_by, COUNT(*) FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id GROUP BY T1.Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, Series_Name FROM TV_Channel WHERE Hight_definition_TV = 'Yes'
SELECT Package_Option, Series_Name FROM TV_Channel WHERE Hight_definition_TV = 'Yes'
SELECT Country FROM TV_Channel WHERE Content = "Todd Casey"
SELECT Country FROM TV_Channel WHERE Writer = "Todd Casey"
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon)
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon)
SELECT T1.series_name, T2.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Ben Jones" AND T1.written_by = "Michael Chang"
SELECT T1.series_name, T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT id FROM TV_Channel WHERE Country <> 'United States' GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon) WHERE Director_name = "Ben Jones"
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT T1.id FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon) WHERE Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon)
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
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT name FROM poker_player WHERE earnings > 300000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC
SELECT name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Birth_Date FROM people ORDER BY Earnings ASC LIMIT 1
SELECT Birth_Date FROM people ORDER BY Earnings ASC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT name FROM poker_player ORDER BY earnings DESC
SELECT name FROM poker_player ORDER BY earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) > 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM people WHERE Nationality = "Russia")
SELECT Name FROM people WHERE NOT Person_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT T1.contestant_name FROM CONTESTANTS AS T1 JOIN AREA_CODE_STATE AS T2 ON T1.area_code = T2.area_code WHERE T1.contestant_name <> 'Jessie Alloway'
SELECT DISTINCT T1.state, T2.created FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state
SELECT T2.contestant_number, T2.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM AREA_CODE_STATE GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_number = 3
SELECT DISTINCT area_code FROM AREA_CODE_STATE WHERE state = "California" INTERSECT SELECT DISTINCT area_code FROM AREA_CODE_STATE WHERE state = "California"
SELECT T2.contestant_name FROM CONTESTANTS AS T1 JOIN AREA_CODE_STATE AS T2 ON T1.area_code = T2.area_code WHERE T1.contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SurfaceArea FROM country WHERE Region = "Caribbean"
SELECT SurfaceArea FROM country WHERE Continent = "Carribean"
SELECT Continent FROM country WHERE Code = "Anguilla"
SELECT Continent FROM country WHERE Code = "Anguilla"
SELECT Region FROM country WHERE Code = "Afghanistan"
SELECT Region FROM country WHERE Code = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Code = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Code = "Brazil"
SELECT Region, Population FROM country WHERE Code = "Angola"
SELECT Region, Population FROM country WHERE Code = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT LocalName FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT LocalName FROM country ORDER BY LifeExpectancy LIMIT 1
SELECT TotalPopulation, MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT T1.Continent, T1.Region, T1.GNP FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code GROUP BY T2.Language ORDER BY T2.Percentage DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT TotalSurfaceArea FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT TotalSurfaceArea FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT COUNT(*) FROM city WHERE DISTRICT = "Gelderland"
SELECT COUNT(*) FROM city WHERE DISTRICT = "Gelderland"
SELECT AVG(GNP), TotalPopulation FROM country WHERE GovernmentForm = "US territory"
SELECT AVG(GNP), COUNT(*) FROM country WHERE Continent = "Asia" EXCEPT SELECT AVG(GNP), COUNT(*) FROM country WHERE Continent = "United States"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(*) FROM country WHERE Continent = "Africa" GROUP BY GovernmentForm
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Aruba"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" IN Aruba
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "Afghanistan"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Tajik" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE IsOfficial = 'F' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "Afghanistan"
SELECT CountryCode FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryCode FROM countrylanguage GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT continent FROM country GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM country GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT CountryName FROM country WHERE Language = "English" INTERSECT SELECT CountryName FROM country WHERE Language = "French"
SELECT CountryName FROM countrylanguage WHERE Language = "English" INTERSECT SELECT CountryName FROM countrylanguage WHERE Language = "French"
SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT COUNT(DISTINCT continent) FROM country WHERE Language = "Chinese"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Chinese"
SELECT DISTINCT RESULT.Region FROM country AS RESULT JOIN countrylanguage AS LANG ON RESULT.CountryCode = LANG.CountryCode WHERE LANG.Language = "English" OR LANG.Language = "Dutch"
SELECT R.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code GROUP BY T2.Language
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'F' INTERSECT SELECT Language FROM countrylanguage WHERE GovernmentForm = 'Republic'
SELECT Language FROM countrylanguage WHERE IsOfficial = 'F' AND GovernmentForm = 'Republic'
SELECT city FROM city WHERE Language = "English" ORDER BY Population DESC LIMIT 1
SELECT city FROM city WHERE Language = "English" GROUP BY city ORDER BY Population DESC LIMIT 1
SELECT name, population, lifeExpectancy FROM country ORDER BY surfaceArea DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.LifeExpectancy FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Continent = "Asia" ORDER BY T2.Percentage DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT CountryCode IN (SELECT Code FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'F')
SELECT AVG(LifeExpectancy) FROM country WHERE NOT CountryCode IN (SELECT Code FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'F')
SELECT COUNT(*) FROM city WHERE NOT ID IN (SELECT ID FROM citylanguage)
SELECT COUNT(*) FROM city WHERE NOT ID IN (SELECT ID FROM citylanguage)
SELECT Language FROM countrylanguage WHERE CountryCode = "Switzerland" AND IsOfficial = "T"
SELECT Language FROM countrylanguage WHERE CountryCode = "Switzerland" AND IsOfficial = "T"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'F' INTERSECT SELECT DISTINCT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE FoundingDate < 1930)
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'F' INTERSECT SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T'
SELECT Code FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT CountryCode FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT CountryCode FROM country WHERE Continent = "Africa" INTERSECT SELECT CountryCode FROM country WHERE Population < (SELECT MIN(Population) FROM country WHERE Continent = "Asia")
SELECT CountryCode FROM country WHERE Continent = "Africa" GROUP BY CountryCode HAVING AVG(Population) < MIN(Population) FROM country WHERE Continent = "Asia"
SELECT CountryCode FROM country WHERE Continent = "Asia" GROUP BY CountryCode HAVING MAX(Population) > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code WHERE T1.Population > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage)
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage)
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT Code FROM countrylanguage WHERE Language = 'English')
SELECT Code FROM country WHERE Language <> 'English' AND GovernmentForm <> 'Republic'
SELECT Code FROM country WHERE NOT CountryCode IN (SELECT Code FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Code FROM country WHERE GovernmentForm = "Republic"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language <> 'English' INTERSECT SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent <> 'Europe'
SELECT Name FROM city WHERE NOT CountryCode = "Europe" INTERSECT SELECT Name FROM city WHERE Language <> "English"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" INTERSECT SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" IN Asian
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" INTERSECT SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia"
SELECT name, independence year, surfaceArea FROM country ORDER BY population LIMIT 1
SELECT name, indepYear, surfaceArea FROM country ORDER BY population LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.SurfaceArea DESC LIMIT 1
SELECT T2.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T2.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language HAVING COUNT(*) > 2
SELECT DISTRICT, COUNT(*) FROM city GROUP BY DISTRICT HAVING AVG(Population) > (SELECT AVG(Population) FROM city)
SELECT DISTRICT, COUNT(*) FROM city GROUP BY DISTRICT HAVING AVG(Population) > (SELECT AVG(Population) FROM city)
SELECT T2.GovernmentForm, T1.Population FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code GROUP BY T2.GovernmentForm HAVING AVG(T2.LifeExpectancy) > 72
SELECT governmentform, AVG(population) FROM country GROUP BY governmentform HAVING AVG(lifeexpectancy) > 72
SELECT T1.Continent, AVG(T2.LifeExpectancy), COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code GROUP BY T1.Continent HAVING AVG(T2.LifeExpectancy) < 72
SELECT T1.Continent, T1.Population, AVG(T2.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.Code GROUP BY T2.Language
SELECT T1.Name, T1.Region FROM country AS T1 JOIN sqlite_sequence AS T2 ON T1.Code = T2.name ORDER BY T2.SurfaceArea DESC LIMIT 5
SELECT name, surfaceArea FROM country ORDER BY surfaceArea DESC LIMIT 5
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY Population LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage = 80000 INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English"
SELECT TotalPopulation, AVG(SurfaceArea) FROM country WHERE Continent = "North America" WHERE SurfaceArea > 3000
SELECT T1.Population, T1.SurfaceArea FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Continent = "North America" AND T2.SurfaceArea > 3000 GROUP BY T1.Code
SELECT T1.Name FROM city AS T1 JOIN sqlite_sequence AS T2 ON T1.ID = T2.seq WHERE T2.Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage GROUP BY Language ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT Code FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 3
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish"
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY age ASC
SELECT Name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE NOT Conductor_ID IN (SELECT Conductor_ID FROM conductor WHERE Nationality = "USA")
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE NOT Performance_ID IN (SELECT Performance_ID FROM performance WHERE Type = "Live final")
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor WHERE T2.Year_of_Work > 2008
SELECT Name FROM conductor WHERE T2.Year_of_Work > (SELECT T1.Year_of_Work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > (SELECT T1.Year_of_Work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded < ( SELECT T1.Year_of_Work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > ( SELECT T1.Year_of_Work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded < ( SELECT T1.Year_of_Work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conduct
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC LIMIT 3
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra_ID FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Founded_Date < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Founded_Date > 2003
SELECT DISTINCT Record_Company FROM orchestra WHERE Founded_Date < 2003 INTERSECT SELECT DISTINCT Record_Company FROM orchestra WHERE Founded_Date > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT T2.Year_of_Founded FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Year_of_Founded FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
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
SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT T1.ID FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T2.friend_id = T3.liked_id WHERE T1.name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, friend_id FROM Friend
SELECT COUNT(*) FROM Friend
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.friend_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.friend_id
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler GROUP BY name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE COUNT(*) >= 3
SELECT name FROM Highschooler WHERE COUNT(*) >= 3
SELECT name FROM Friend WHERE friend_id = 3
SELECT name FROM Friend WHERE student_id = 1
SELECT COUNT(*) FROM Friend WHERE student_id = 100
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT T1.ID FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T3.liked_id = T1.ID
SELECT student_id FROM Friend UNION SELECT student_id FROM Likes
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Likes
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Likes
SELECT COUNT(*) FROM likes
SELECT T1.student_id, COUNT(*) FROM likes AS T2 JOIN highschooler AS T1 ON T1.ID = T2.liked_id GROUP BY T1.student_id
SELECT T1.name, T1.likes FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T2.liked_id
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM likes GROUP BY liked_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) > 2)
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT name FROM Friend GROUP BY friend_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT name FROM Friend GROUP BY friend_id HAVING COUNT(*) > 2
SELECT COUNT(*) FROM likes WHERE liked_id = 1
SELECT COUNT(*) FROM likes WHERE liked_id = 1
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT DISTINCT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.professional_id
SELECT DISTINCT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.professional_id
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE date_of_birth <> date_of_death
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) > 2)
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) > 2)
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT name FROM dogs WHERE NOT owner_id IN (SELECT owner_id FROM treatments GROUP BY owner_id HAVING MAX(cost_of_treatment) > 1000)
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM Dogs
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM Dogs
SELECT professional_id, role, email FROM professionals EXCEPT SELECT professional_id, role, email FROM treatments
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT owner_id, first_name, last_name FROM dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT professional_id, role_code, first_name FROM professionals GROUP BY professional_id HAVING COUNT(*) > 2
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM Breeds GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM treatments GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM treatments GROUP BY owner_id ORDER BY cost_of_treatment DESC LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment LIMIT 1
SELECT owner_id, zip_code FROM owners GROUP BY owner_id ORDER BY MAX(cost_of_treatment) DESC LIMIT 1
SELECT owner_id, zip_code FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM professionals GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM professionals WHERE role_code IN (SELECT role_code FROM treatment_types GROUP BY role_code HAVING COUNT(*) > 2)
SELECT first_name, last_name FROM professionals WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT first_name, last_name FROM professionals WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT date_of_treatment, first_name FROM treatments
SELECT date_of_treatment, first_name FROM treatments
SELECT T1.treatment_type_description, T2.cost_of_treatment FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT first_name, last_name, size_code FROM Owners
SELECT first_name, last_name, size_code FROM Owners JOIN Dogs ON owner_id = dog_id
SELECT first_name, name FROM owners, dogs
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT name, date_of_treatment FROM treatments GROUP BY dog_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name, date_of_treatment FROM treatments GROUP BY dog_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, name FROM owners WHERE state = "Virginia"
SELECT first_name, name FROM owners WHERE state = "Virginia"
SELECT date_arrived, date_departed FROM treatments
SELECT date_arrived, date_departed FROM treatments
SELECT last_name FROM owners WHERE age = (SELECT MIN(age) FROM dogs)
SELECT T1.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT MIN(age) FROM dogs)
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE street = "Honolulu" OR street = "Madison"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM professionals WHERE role_code = "Treatment"
SELECT T1.role_code, T1.street, T1.city, T1.state FROM professionals AS T1 JOIN city_profiles AS T2 ON T1.city = T2.city WHERE T2.name LIKE '%West%'
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, cost_of_treatment FROM treatments GROUP BY charge_type
SELECT charge_type, charge_amount FROM Charges GROUP BY charge_type
SELECT MAX(charge_amount) FROM charges GROUP BY charge_type ORDER BY MAX(charge_amount) DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT DISTINCT T1.breed_type, T2.size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_type, T2.size_type FROM dogs AS T1 JOIN sizes AS T2 ON T1.size_code = T2.size_code JOIN breeds AS T3 ON T1.breed_code = T3.breed_code
SELECT first_name, treatment_type_description FROM professionals
SELECT first_name, treatment_type_description FROM treatment_types
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM singer WHERE Citizenship = "French")
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T2.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Citizenship, MAX(T1.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Title, Name FROM song
SELECT Title, Singer_Name FROM song
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, T1.Net_Worth_Millions, T2.Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, T1.Net_Worth_Millions FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties)
SELECT property_name FROM Properties WHERE room_count > 1
