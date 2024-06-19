SELECT COUNT(*) FROM Singer
SELECT COUNT(*) FROM Singer
SELECT Name, Country, Age FROM Singer ORDER BY age FROM Singer ORDER BY age DESC
SELECT Name, Country, Age FROM Singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM Singer WHERE Country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT Name, Song_release_year FROM Singer ORDER BY Age LIMIT 1
SELECT Name, Song_release_year FROM Singer WHERE Age = (SELECT MIN(age) FROM Singer)
SELECT DISTINCT T1.Country FROM Singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 20
SELECT DISTINCT T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 20
SELECT Country, COUNT(*) FROM Singer GROUP BY Country
SELECT Country, COUNT(*) FROM Singer GROUP BY Country
SELECT Song_Name FROM Singer WHERE Age > (SELECT AVG(age) FROM Singer)
SELECT Song_Name FROM Singer WHERE Age > (SELECT AVG(age) FROM Singer)
SELECT Location, Name FROM Stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM Stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Average) FROM Stadium
SELECT AVG(Capacity), MAX(Capacity) FROM Stadium
SELECT Name, Capacity FROM Stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM Stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT T1.Name, COUNT(*) FROM Stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID
SELECT Stadium_ID, COUNT(*) FROM concert GROUP BY Stadium_ID
SELECT T1.Name, T1.Capacity FROM Stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year >= 2014 GROUP BY T2.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T1.Capacity FROM Stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013 GROUP BY T2.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT Stadium_Name FROM Stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM Stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM Singer WHERE Age > 40 INTERSECT SELECT Country FROM Singer WHERE Age < 30
SELECT Name FROM Stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT Name FROM Stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T2.Name, T2.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.Name, COUNT(*) FROM Singer AS T1 JOIN Singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name, COUNT(*) FROM Singer AS T1 JOIN Singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.Year = 2014
SELECT T1.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.Year = 2014
SELECT T1.Name, T1.Country FROM Singer AS T1 JOIN Song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM Singer AS T1 JOIN Song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Title LIKE '%Hey%'
SELECT T1.Name, T1.Location FROM Stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014" OR T2.Year = "2015"
SELECT T1.Name, T1.Location FROM Stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014" INTERSECT SELECT T1.Name, T1.Location FROM Stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2015"
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM Stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM Stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pettype = "dog" ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE pettype = "dog" ORDER BY pet_age LIMIT 1
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT COUNT(*) FROM Pets WHERE StuID IN (SELECT StuID FROM Student WHERE age > 20)
SELECT COUNT(*) FROM Pets WHERE StuID IN (SELECT StuID FROM Student WHERE age > 20)
SELECT COUNT(*) FROM Pets WHERE Pettype = "dog" AND Sex = "F"
SELECT COUNT(*) FROM Pets WHERE Pettype = "dog" AND Sex = "F"
SELECT COUNT(DISTINCT Pettype) FROM Pets
SELECT COUNT(DISTINCT Pettype) FROM Pets
SELECT Fname FROM Student WHERE Pettype = "Cat" OR Pettype = "Dog"
SELECT Fname FROM Student WHERE Pettype = "Cat" OR Pettype = "Dog"
SELECT Fname FROM Student WHERE Pettype = "Cat" INTERSECT SELECT Fname FROM Student WHERE Pettype = "Dog"
SELECT Fname FROM Student WHERE Pettype = "Cat" INTERSECT SELECT Fname FROM Student WHERE Pettype = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE Pettype = "Cat"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE Pettype = "Cat"
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE Pettype = "Cat"
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE Pettype = "Cat"
SELECT Fname, age FROM Student WHERE Sex = 'M' EXCEPT SELECT Fname, age FROM Student WHERE Pettype = 'Cat'
SELECT Fname FROM Student WHERE Sex = 'M' INTERSECT SELECT Fname FROM Student WHERE Pettype = 'Cat'
SELECT Pettype, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT Pettype, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pettype
SELECT AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pettype
SELECT AVG(weight) FROM Pets GROUP BY pettype
SELECT AVG(weight) FROM Pets GROUP BY pettype
SELECT Fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT Fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT PetID FROM Pets WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT PetID FROM Pets WHERE StuID = (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT T1.StuID, COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID
SELECT StuID FROM Has_Pet
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT LName FROM Student WHERE age = 3
SELECT LName FROM Student WHERE age = 3 AND Sex = 'M'
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(DISTINCT Continent) FROM continents
SELECT COUNT(*) FROM continents
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T1.Model
SELECT T1.Maker, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT Model FROM model_list ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM model_list ORDER BY Horsepower LIMIT 1
SELECT Model FROM model_list WHERE Weight < (SELECT AVG(Weight) FROM model_list)
SELECT Model FROM model_list WHERE Weight < (SELECT AVG(Weight) FROM model_list)
SELECT T2.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Year = 1970
SELECT Make, Production FROM cars_data ORDER BY YEAR LIMIT 1
SELECT T2.Maker, T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.Year LIMIT 1
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Year > 1980
SELECT DISTINCT Model FROM cars_data WHERE YEAR > 1980
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT CountryName FROM countries ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryName FROM countries ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Make GROUP BY T2.Make
SELECT T1.Maker, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT Accelerate FROM cars_data WHERE Make = "amc hornet sportabout"
SELECT Accelerate FROM cars_data WHERE Make = "amc hornet sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(DISTINCT Maker) FROM car_names WHERE Country = "France"
SELECT COUNT(*) FROM model_list WHERE Maker = 1
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_names WHERE Country = "United States")
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker, T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model
SELECT T1.Maker, T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model
SELECT CountryName, CountryId FROM countries WHERE CountryId IN (SELECT DISTINCT Country FROM car_makers)
SELECT T2.CountryName, T2.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country FROM countries GROUP BY T2.Country HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight) FROM cars_data
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT Country FROM countries WHERE Continent = 3
SELECT T2.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3
SELECT Horsepower FROM cars_data WHERE Cylinders = 3 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT Model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "volvo"
SELECT AVG(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate) FROM cars_data
SELECT Model FROM car_names GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_names WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "American Motor Company")
SELECT COUNT(*) FROM model_list WHERE Maker = 1
SELECT T2.FullName, T2.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T2.Maker, T2.Id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT DISTINCT Model FROM model_list WHERE Maker = (SELECT Id FROM car_names WHERE Make = "General Motors" OR Weight > 3500)
SELECT DISTINCT Model FROM model_list WHERE Maker = 1 OR Weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Weight < 4000 INTERSECT SELECT DISTINCT T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate = (SELECT MIN(Accelerate) FROM cars_data WHERE Model = "volvo")
SELECT COUNT(*) FROM cars_data WHERE Accelerate = (SELECT MIN(Accelerate) FROM cars_data WHERE Model = "Volvo")
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Horsepower FROM cars_data ORDER BY Horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Horsepower FROM cars_data ORDER BY Horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Model FROM model_list WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM model_list ORDER BY Horsepower DESC LIMIT 1
SELECT MakeId, Make FROM car_names WHERE Horsepower > (SELECT MIN(Horsepower) FROM car_names) INTERSECT SELECT MakeId, Make FROM car_names WHERE Cylinders > 3
SELECT MakeId, Make FROM car_names WHERE Horsepower < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM model_list WHERE Maker <> 11 AND Weight < 3500
SELECT DISTINCT Model FROM model_list WHERE Weight < 3500 AND NOT Maker = 1
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id, T1.Maker FROM car_makers AS T1 GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T2.Id, T2.Maker FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T2.Maker HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id FROM car_makers GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T2.CountryId, T2.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T2.Country HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.Continent = T2.Maker WHERE T2.Model = "fiat"
SELECT T2.CountryId, T2.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T2.Country HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.Continent = T2.Maker WHERE T2.Model = "Fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "United States"
SELECT AirportCode, AirportName FROM airports WHERE city = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT COUNT(*) FROM airlines WHERE Country = "United States"
SELECT T1.City, T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.DestAirport = "T1.AirportCode" AND T1.AirportName = "Alton"
SELECT City, Country FROM airports WHERE AirportCode = "TAL"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE Country = "United Kingdom" AND City = "Aberdeen"
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "ABER"
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "ABQ"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABER"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABER"
SELECT COUNT(*) FROM flights WHERE SourceCity = "Aberdeen" AND DestCity = "Ashley"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABQ" AND DestAirport = "ASL"
SELECT COUNT(*) FROM flights WHERE Airline = 1
SELECT COUNT(*) FROM flights WHERE Airline = 1
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "ASY" AND Airline = "United Airlines"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ASY"
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "AHD" AND Airline = "United"
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "AHD"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABERDEEN" AND Airline = "UNITED"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABER" AND Airline = "United"
SELECT T1.City FROM Flight AS T1 JOIN Airport AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM Flight AS T1 JOIN Airport AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM Flight AS T1 JOIN Airport AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM Flight AS T1 JOIN Airport AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY COUNT(*) LIMIT 1
SELECT Abbreviation FROM airlines ORDER BY COUNT(*) LIMIT 1
SELECT DISTINCT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT DISTINCT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestAirport = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportCode = "AHD"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.AirportCode = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.AirportCode = "CVO"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "APG" INTERSECT SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "CVO"
SELECT DISTINCT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "CVO" AND T1.DestAirport <> "APG"
SELECT DISTINCT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName <> "APG" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Abbreviation = "CVO"
SELECT DISTINCT T1.Airline FROM Flight AS T1 JOIN Airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT DISTINCT T1.Airline FROM Flight AS T1 JOIN Airlines AS T2 ON T1.Airline = T2.uid WHERE COUNT(*) < 200
SELECT DISTINCT T1.Airline FROM Flight AS T1 JOIN Flight AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = 1
SELECT FlightNo FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Abbreviation = "UA")
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE SourceAirport = "ABQ"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "ABER"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABERDEEN" OR DestAirport = "ABILENE"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABE" OR DestAirport = "ABI"
SELECT DISTINCT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport OR T1.AirportCode = T2.DestAirport
SELECT DISTINCT T1.AirportCode FROM Flight AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN Airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.AirportName <> T3.AirportName
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY age ASC
SELECT Name FROM Employee ORDER BY age ASC
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT DISTINCT T1.City FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.age > 30
SELECT DISTINCT T1.City FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.age > 30
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.Bonus = 0
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM Employee)
SELECT T1.Name, COUNT(*) FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Shop_ID
SELECT T1.Name, COUNT(*) FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Shop_ID
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT T1.Shop_ID, T1.Employee_ID, T1.Start_from, T1.Is_full_time FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT T1.Shop_ID, T1.Employee_ID, T1.Start_from, T1.Is_full_time FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_products > 10000
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = "Robbin CV"
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = "Robbin CV"
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(DISTINCT Template_type_code) FROM Documents
SELECT COUNT(*) FROM Documents WHERE Template_type_code = "PPT"
SELECT COUNT(*) FROM Documents WHERE Template_type_code = "PPT"
SELECT T1.Template_ID, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT DISTINCT T1.Template_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID
SELECT Template_ID, Template_type_code FROM Documents GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID, Template_type_code FROM Documents GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT Template_ID, Version_Number, Template_type_code FROM Templates
SELECT Template_ID, Version_Number, Template_type_code FROM Templates
SELECT DISTINCT T1.Template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_type_code = T2.Template_type_code
SELECT DISTINCT Template_type_code FROM Ref_Template_Types
SELECT Template_ID FROM Templates WHERE Template_type_code = "PP" OR Template_type_code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_type_code = "PP" OR Template_type_code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT Version_Number, Template_type_code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_type_code FROM Templates WHERE Version_Number > 5
SELECT T1.Template_type_code, COUNT(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_type_code = T2.Template_type_code GROUP BY T1.Template_type_code
SELECT Template_type_code, COUNT(*) FROM Templates GROUP BY Template_type_code
SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Ref_Template_Types GROUP BY Template_type_code HAVING COUNT(*) < 3
SELECT Template_type_code FROM Ref_Template_Types WHERE COUNT(*) < 3
SELECT MIN(Version_Number), Template_type_code FROM Templates GROUP BY Template_type_code
SELECT MIN(Version_Number), Template_type_code FROM Templates GROUP BY Template_type_code
SELECT Template_type_code FROM Templates WHERE Document_Name = "Data base"
SELECT Template_type_code FROM Templates WHERE Document_Name = "Data base"
SELECT Document_Name FROM Documents WHERE Template_type_code = "BK"
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_type_code = "BK")
SELECT T1.Template_type_code, COUNT(*) FROM Templates AS T1 JOIN Document AS T2 ON T1.Template_type_code = T2.Template_type_code GROUP BY T1.Template_type_code
SELECT Template_type_code, COUNT(*) FROM Templates GROUP BY Template_type_code
SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Documents GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Template_type_code FROM Templates
SELECT Template_type_code FROM Ref_Template_Types WHERE NOT Template_type_code IN (SELECT Template_type_code FROM Templates)
SELECT Template_type_code, template_type_description FROM Ref_Template_Types
SELECT Template_type_code, Template_type_description FROM Ref_Template_Types
SELECT Template_type_description FROM Ref_Template_Types WHERE Template_type_code = "AD"
SELECT Template_type_description FROM Ref_Template_Types WHERE Template_type_code = "AD"
SELECT Template_type_code FROM Ref_Template_Types WHERE Template_type_description = "Book"
SELECT Template_type_code FROM Ref_Template_Types WHERE Template_type_description = "Book"
SELECT DISTINCT T2.Template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_type_code = T2.Template_type_code
SELECT DISTINCT T2.Template_type_description FROM Paragraphs AS T1 JOIN Templates AS T2 ON T1.Document_ID = T2.Template_ID
SELECT Template_ID FROM Templates WHERE Template_type_code = "Presentation"
SELECT Template_ID FROM Templates WHERE Template_type_code = (SELECT Template_type_code FROM Ref_Template_Types WHERE Template_type_description = 'Presentation')
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = "Summer Show"
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = "Summer Show"
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text = "Korea"
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Welcome to NY'
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_Name = "Welcome to NY"
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Customer reviews'
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM Paragraphs GROUP BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM Paragraphs GROUP BY Document_ID
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID, Document_Name FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID, Document_Name FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Paragraphs WHERE Paragraph_ID BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_ID BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = "Brazil" INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = "Ireland"
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = "Brazil" OR Paragraph_Text = "Ireland"
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY age ASC
SELECT Name FROM teacher ORDER BY age ASC
SELECT age, hometown FROM teacher
SELECT T1.Name, T1.Age, T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.age = 32 OR T1.age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID ORDER BY COUNT(*) LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT T1.Hometown, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T2.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID WHERE T1.Course = "math"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course = "Math"
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID NOT IN (SELECT Course_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership < 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY age FROM old to young
SELECT Museum_ID, name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.ID, T1.Name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID HAVING COUNT(*) > 1
SELECT T1.ID, T1.Name, T2.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID ORDER BY T2.Total_spent DESC LIMIT 1
SELECT Museum_ID, name FROM visit GROUP BY Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT T1.Name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(num_ticket), MAX(num_ticket) FROM visit
SELECT Total_spent FROM visit WHERE Level_of_membership = 1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T2.Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year < 2009 UNION SELECT Museum_ID FROM museum WHERE Open_Year > 2011)
SELECT COUNT(*) FROM visitor WHERE NOT ID IN (SELECT visitor_ID FROM visit WHERE Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > 2010)
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
SELECT AVG(winner_rank_points) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT DISTINCT T2.tourney_name FROM matches AS T1 JOIN tournament AS T2 ON T1.tourney_id = T2.tourney_id WHERE T1.tourney_name <> "T20" INTERSECT SELECT DISTINCT T2.tourney_name FROM matches AS T1 JOIN tournament AS T2 ON T1.tourney_id = T2.tourney_name WHERE T2.tourney_name <> "T20" INTERSECT SELECT DISTINCT T2.tourney_name FROM matches AS T1 JOIN tournament AS T2 ON T1.tourney_id = T2.tourney_name WHERE T2.tourney_name <> "T20" INTERSECT SELECT DISTINCT T2.tourney_name FROM matches AS T1 JOIN tournament AS T2 ON T1.tourney_id = T2.tourney_name WHERE T2.tourney_name <> "T20" INTERSECT SELECT DISTINCT T2.tourney_name FROM matches AS T1 JOIN tournament AS T2 ON T1.tourney_id = T2.tourney_name WHERE T2.tourney_name <> "T20" INTERSECT SELECT
SELECT winner_name FROM matches WHERE tourney_date BETWEEN "2013-01-01" AND "2016-12-31"
SELECT winner_name FROM matches WHERE tourney_date BETWEEN "2013-01-01" AND "2016-12-31"
SELECT COUNT(*) FROM matches WHERE YEAR IN (2013, 2016)
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_name WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT T2.year FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM rankings GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM rankings WHERE ranking_points = (SELECT MAX(ranking_points) FROM rankings WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_id = "tourney_id" WHERE tourney_level = "tourney_level" AND tourney_name = "Australian Open")
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM rankings GROUP BY player_id
SELECT first_name, AVG(ranking_points) FROM players GROUP BY first_name
SELECT ranking_points, first_name FROM rankings GROUP BY player_id
SELECT first_name, SUM(ranking_points) FROM players GROUP BY first_name
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT COUNT(*) FROM matches GROUP BY YEAR
SELECT COUNT(*) FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches GROUP BY winner_name ORDER BY COUNT(*) LIMIT 3
SELECT winner_name, winner_rank FROM matches GROUP BY winner_name ORDER BY COUNT(*) LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE tourney_id = "WTA" AND winner_hand = "L"
SELECT COUNT(*) FROM matches WHERE winner_hand = "left" AND tourney_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = "Captured"
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT note, killed, injured FROM death WHERE caused_by_ship_id = (SELECT id FROM ship WHERE tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T2.id, T2.name FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T1.ship_type = "Brig"
SELECT id, name FROM battle WHERE result > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T2.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T1.bulgarian_commander = "Kaloyan" INTERSECT SELECT DISTINCT T2.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T1.latin_commander = "Baldwin I"
SELECT COUNT(DISTINCT RESULT) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = 225)
SELECT name, date FROM battle WHERE lost_in_battle = (SELECT id FROM ship WHERE name = 'Lettice' INTERSECT SELECT id FROM ship WHERE name = 'HMS Atalanta')
SELECT name, result, bulgarian_commander FROM battle WHERE lost_in_battle <> (SELECT id FROM ship WHERE location = "English Channel")
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Chelsea"
SELECT department_name, department_id FROM degree_programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM degree_programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Degree_Programs
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM degree_programs WHERE department_id = 1
SELECT COUNT(*) FROM degree_programs WHERE department_id = 1
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT course_name, course_id FROM courses GROUP BY course_name HAVING COUNT(*) >= 2
SELECT course_name, course_id FROM courses WHERE NOT IN (SELECT course_id FROM sections)
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program_id = 2 JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.semester_id = 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program_id = 2 WHERE T2.semester_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program_id = 1 WHERE T2.degree_program_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program_id = 1 WHERE T2.degree_program_id = 1
SELECT T2.degree_summary_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_program_id, degree_summary_name FROM Student_Enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT IN (SELECT semester_id FROM student_enrolment)
SELECT DISTINCT T2.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT course_name FROM courses WHERE student_course_id <> 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_county = "North Carolina" INTERSECT SELECT T2.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_county = "North Carolina"
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE city = "North Carolina" EXCEPT SELECT student_id FROM student_enrolment)
SELECT transcript_date, transcript_id FROM Transcripts WHERE COUNT(*) >= 2
SELECT transcript_date, transcript_id FROM Transcripts WHERE COUNT(*) >= 2
SELECT T1.cell_mobile_number FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T2.first_name = "Timothy" AND T2.last_name = "Ward"
SELECT T1.cell_mobile_number FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T2.first_name = "Timmothy" AND T2.last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT T1.first_name FROM addresses AS T1 JOIN addresses AS T2 ON T1.address_id <> T2.address_id
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3 FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(DISTINCT T1.student_course_id) FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id
SELECT COUNT(DISTINCT T1.student_course_id), T2.course_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT T1.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 1 INTERSECT SELECT T1.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 1 INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = 2
SELECT COUNT(DISTINCT T1.line_1, T1.line_2, T1.line_3, T1.city, T1.zip_postcode, T1.state_county, T1.country FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT first_name, middle_name, last_name FROM students ORDER BY first_name DESC
SELECT other_student_details FROM students ORDER BY last_name DESC
SELECT COUNT(*) FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti" INTERSECT SELECT address_id FROM addresses WHERE cell_mobile_number = "0970016582"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE city = "Haiti" OR cell_mobile_number = "0970016582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name, Content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name, Content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE id = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT series_name FROM TV_Channel WHERE id = (SELECT Channel FROM Cartoon WHERE Title = "The Rise of the Blue Beetle!")
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Title = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
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
SELECT series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series WHERE id = (SELECT id FROM TV_series WHERE Series_Name = "Sky Radio")
SELECT Directed_by FROM Cartoon GROUP BY Directed_by
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = "Yes"
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = "Yes"
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT DISTINCT T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT DISTINCT T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = "Todd Casey"
SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Michael Chang"
SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT id FROM TV_Channel WHERE Country IN (SELECT Country FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2)
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT Channel IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT DISTINCT Package_Option FROM TV_Channel WHERE NOT Channel IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT COUNT(*) FROM Poker_Player
SELECT COUNT(*) FROM Poker_Player
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM Poker_Player
SELECT AVG(Earnings) FROM Poker_Player
SELECT AVG(Earnings) FROM Poker_Player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM Poker_Player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(Final_Table_Made) FROM Poker_Player WHERE earnings < 2000000
SELECT MAX(Final_Table_Made) FROM poker_player WHERE earnings < 2000000
SELECT Name FROM Poker_Player
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT Name FROM people WHERE earnings > 300000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 3000000
SELECT T2.Name FROM Poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T1.Name FROM Poker_Player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T1.Birth_Date FROM people AS T1 JOINpoker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOINpoker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Final_Table_Made DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM Poker_Player WHERE Height > 200
SELECT AVG(Earnings) FROM Poker_Player WHERE Height > 200
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT nationality FROM people
SELECT DISTINCT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROMpoker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROMpoker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = "CA" ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT T1.state, T2.created FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.area_code = T2.state
SELECT contestant_number, contestant_name FROM votes GROUP BY contestant_number HAVING COUNT(*) >= 2
SELECT contestant_number, contestant_name FROM votes GROUP BY contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = "NY" OR state = "CA"
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM AREA_CODE_STATE ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = 'Tabatha Gehling')
SELECT DISTINCT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 1 AND T2.contestant_number = 2
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Code IN (SELECT Code FROM city WHERE District = "Caribbean")
SELECT Continent FROM country WHERE Code = "AI"
SELECT Continent FROM country WHERE Code = "AI"
SELECT District FROM city WHERE Name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "ABW" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "ABW" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM city WHERE CountryCode = "BR"
SELECT Population, LifeExpectancy FROM city WHERE CountryCode = "BRA"
SELECT Region, Population FROM city WHERE CountryCode = "AO"
SELECT District, Population FROM city WHERE CountryCode = "AO"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM city WHERE CountryCode = "C"
SELECT Name FROM country ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM city WHERE CountryCode = "AS"
SELECT Population, MAX(GNP) FROM city GROUP BY CountryCode = "AS"
SELECT AVG(LifeExpectancy) FROM country WHERE Code IN (SELECT Code FROM country WHERE GovernmentForm = "Republic")
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT COUNT(*) FROM city WHERE District = "Gelderland"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "US"
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code IN (SELECT Code FROM city WHERE District = "US")
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Code IN (SELECT Code FROM city WHERE District = "Africa")
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Code2 = "AF"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "ABW"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "ABW"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AF"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AF" AND IsOfficial = "T"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T2.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch"
SELECT COUNT(*) FROM city WHERE CountryCode IN (SELECT Code FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Code FROM countrylanguage WHERE Language = "Dutch"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT COUNT(*) FROM country WHERE Continent = "Asia" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Chinese"
SELECT DISTINCT Region FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT DISTINCT T1.Region FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT Code FROM countrylanguage WHERE IsOfficial = "T" OR Language = "Dutch"
SELECT Code FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE CountryCode = "AS" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE NOT CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = "Republic")
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE GovernmentForm = "Republic" GROUP BY Language HAVING COUNT(*) = 1)
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country ORDER BY Population DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT SUM(Population) FROM city WHERE NOT CountryCode IN (SELECT Code FROM countrylanguage WHERE Language = "English")
SELECT COUNT(*) FROM city WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T2.Language FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.HeadOfState = "Beatrix"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IndepYear < 1930
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IndepYear < 1930
SELECT Code FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = "Europe")
SELECT Code FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = "Europe")
SELECT Code FROM country WHERE Population < (SELECT Population FROM country WHERE Continent = "Asia"
SELECT Code FROM country WHERE Population < (SELECT Population FROM country WHERE Continent = "Asia" INTERSECT SELECT Code FROM city)
SELECT Code FROM country WHERE Population > (SELECT Population FROM country WHERE Continent = "Africa")
SELECT Code FROM country WHERE Population > (SELECT Population FROM country WHERE Continent = "Africa")
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT Code FROM country WHERE NOT Code IN (SELECT Code FROM countrylanguage WHERE Language = "English")
SELECT Code FROM countrylanguage WHERE Language <> "English"
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND GovernmentForm <> "Republic"
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") INTERSECT SELECT Code FROM city WHERE NOT District = "Republic"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language <> "English"
SELECT Name FROM city WHERE CountryCode = "EU" EXCEPT SELECT Language FROM countrylanguage WHERE IsOfficial = "T"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "Chinese" AND T2.Continent = "Asia"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" INTERSECT SELECT T1.Name FROM city WHERE T1.CountryCode = "Asia"
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM city ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) > 2
SELECT COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city)
SELECT COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city)
SELECT T1.GovernmentForm, T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode JOIN countrylanguage AS T3 ON T2.CountryCode = T3.CountryCode WHERE T3.Percentage > (SELECT AVG(T3.Percentage) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode JOIN countrylanguage AS T3 ON T2.CountryCode = T3.CountryCode WHERE T3.LifeExpectancy > 72)
SELECT DISTINCT GovernmentForm FROM country WHERE LifeExpectancy > 72
SELECT Continent, AVG(LifeExpectancy), SUM(Population) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT DISTINCT T1.Continent, T1.Population, T1.LifeExpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.LifeExpectancy < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM city ORDER BY Population DESC LIMIT 3
SELECT Name FROM city ORDER BY Population DESC LIMIT 3
SELECT Name FROM city ORDER BY Population ASC LIMIT 3
SELECT Name FROM city GROUP BY city.CountryCode ORDER BY COUNT(*) LIMIT 3
SELECT COUNT(*) FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = "Asia")
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Region = "North America" AND SurfaceArea > 3000)
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.CountryCode, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage DESC
SELECT COUNT(*) FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1)
SELECT COUNT(*) FROM country WHERE Language = "Spanish"
SELECT Code FROM countrylanguage WHERE Percentage > (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = "Spanish")
SELECT Code FROM countrylanguage WHERE Language = "Spanish" GROUP BY Code HAVING COUNT(*) >= (SELECT COUNT(*) FROM countrylanguage GROUP BY Code HAVING COUNT(*) >= (SELECT COUNT(*) FROM country GROUP BY Code HAVING COUNT(*) / COUNT(*) >= 0.5)
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY age ASC
SELECT Name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_Founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT COUNT(DISTINCT nationality) FROM conductor
SELECT COUNT(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEARS_OF_WORK DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_Founded < 2003 UNION SELECT Record_Company FROM orchestra WHERE YEAR_OF_Founded > 2003
SELECT Record_Company FROM orchestra WHERE (Year_of_Founded < 2003 INTERSECT SELECT Year_of_Founded FROM orchestra WHERE Year_of_Founded > 2003)
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT DISTINCT T2.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Share > 1
SELECT T2.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
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
SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT T1.student_id, COUNT(*) FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.liked_id GROUP BY T1.student_id
SELECT COUNT(*) FROM Friend
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.ID WHERE T1.student_id = 1
SELECT name FROM Friend WHERE student_id = 1
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.liked_id
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T2.student_id = T3.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T2.student_id = T3.student_id WHERE T1.id <> T3.liked_id INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT COUNT(*) FROM Likes
SELECT COUNT(*) FROM Likes
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = 1
SELECT COUNT(*) FROM Likes WHERE liked_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT DISTINCT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.professional_id WHERE T1.state <> T2.state
SELECT DISTINCT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT DISTINCT dog_id FROM treatments)
SELECT AVG(age) FROM Dogs WHERE treatment_id <> 0
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" INTERSECT SELECT Treatments.professional_id FROM treatments GROUP BY Treatments.professional_id HAVING COUNT(*) > 2
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR COUNT(*) > 2
SELECT name FROM Dogs WHERE NOT owner_id IN (SELECT owner_id FROM Treatments GROUP BY owner_id HAVING COUNT(*) > 10000)
SELECT name FROM Dogs WHERE owner_id NOT IN (SELECT owner_id FROM Treatments WHERE cost_of_treatment > 1000)
SELECT DISTINCT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name <> T1.first_name
SELECT DISTINCT first_name FROM Professionals UNION SELECT DISTINCT first_name FROM Owners
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT owner_id, first_name, last_name FROM Dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM Dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT Treatments.professional_id, Treatments.treatment_type_code, Treatments.date_of_treatment, Treatments.cost_of_treatment FROM Treatments GROUP BY Treatments.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM treatments GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Treatments.dog_id, Treatments.professional_id, Treatments.date_of_treatment FROM Treatments GROUP BY Treatments.dog_id ORDER BY SUM(Treatments.cost_of_treatment) DESC LIMIT 1
SELECT t_type_description FROM treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT t_type_description FROM treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT owner_id, zip_code FROM Dogs ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT owner_id, zip_code FROM Dogs ORDER BY cost_of_treatment DESC LIMIT 1
SELECT professional_id, cell_number FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(T2.cost_of_treatment) FROM Treatments AS T2)
SELECT T1.first_name, T1.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT AVG(T2.cost_of_treatment) FROM Treatments AS T2)
SELECT date_of_treatment, Treatments.professional_id, Treatments.first_name FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id
SELECT date_of_treatment, first_name FROM treatments
SELECT Treatment_type_description, cost_of_treatment FROM treatments
SELECT Treatment_type_description, cost_of_treatment FROM treatments
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.age LIMIT 1
SELECT name, date_of_treatment FROM treatments ORDER BY cost_of_treatment LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_arrived, date_departed FROM treatments
SELECT date_arrived, date_departed FROM treatments
SELECT last_name FROM owners WHERE dog_id = (SELECT dog_id FROM Dogs ORDER BY age LIMIT 1)
SELECT last_name FROM Dogs ORDER BY age LIMIT 1
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(*) FROM Dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT COUNT(*) FROM Professionals WHERE professional_id IN (SELECT DISTINCT professional_id FROM treatments)
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT DISTINCT dog_id FROM treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT DISTINCT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, SUM(charge_amount) FROM charges GROUP BY charge_type ORDER BY SUM(charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, home_phone, cell_number FROM professionals
SELECT email_address, home_phone, cell_number FROM professionals
SELECT DISTINCT T1.breed_type, T2.size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_type, T2.size_type FROM Dogs AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT Treatment_type_description FROM Treatments JOIN Treatment_Types ON Treatment_type_code = Treatment_type_code JOIN Professionals ON professional_id = Treatment_type_type_code GROUP BY Treatment_type_code
SELECT Treatment_type_description, Treatment_type_code FROM Treatments JOIN Treatment_Types ON Treatment_type_code = Treatment_type_code JOIN Professionals ON Treatment_type_code = role_code
SELECT COUNT(*) FROM Singer
SELECT COUNT(*) FROM Singer
SELECT Name FROM Singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM Singer ORDER BY Net_Worth_Millions ASC
SELECT T1.Birth_Year, T1.Citizenship FROM Singer AS T1 JOIN Citizen AS T2 ON T1.Citizen = T2.Citizenship
SELECT T1.Birth_Year, T1.Citizenship FROM Singer AS T1 JOIN Citizen AS T2 ON T1.Citizen = T2.Citizenship
SELECT Name FROM Singer WHERE Citship <> "France"
SELECT Name FROM Singer WHERE Citship <> "French"
SELECT Name FROM Singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM Singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM Singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM Singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM Singer GROUP BY Citizenship
SELECT Citship, COUNT(*) FROM Singer GROUP BY Citship
SELECT Citizenship FROM Singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM Singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM Singer GROUP BY Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) FROM Singer GROUP BY Citizenship
SELECT Title, Name FROM song JOIN singer ON song.Singer_ID = singer.Singer_ID
SELECT Title, Singer_Name FROM song
SELECT DISTINCT T1.Name FROM Singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 3000000
SELECT DISTINCT T1.Name FROM Singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 3000000
SELECT T1.Name FROM Singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM Singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM Singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name, SUM(T2.Sales) FROM Singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT Name FROM Singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT T1.Name FROM Singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Singer_ID = 0
SELECT Citizenship FROM Singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM Singer WHERE Birth_Year > 1955
SELECT DISTINCT Citizenship FROM Singer WHERE Birth_Year < 1945 INTERSECT SELECT DISTINCT Citizenship FROM Singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Other_Available_Features WHERE feature_name = "AirCon"
SELECT property_type_description FROM Properties WHERE property_type_code = "T1"
SELECT property_name FROM Properties WHERE room_count > 1 UNION SELECT property_name FROM Other_Available_Features WHERE feature_type_code = "hse" OR feature_type_code = "apt"
