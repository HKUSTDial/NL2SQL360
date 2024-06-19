SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age ASC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age ASC LIMIT 1
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age ASC LIMIT 1
SELECT DISTINCT T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T1.Age > 20
SELECT DISTINCT T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Average) FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT COUNT(*) FROM concert WHERE YEAR = "2014" OR YEAR = "2015"
SELECT T1.Name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID
SELECT T1.Name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year >= 2014 GROUP BY T2.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM stadium AS T1 LEFT JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Stadium_ID IS NULL
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = "2014")
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = "2014")
SELECT T1.concert_Name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name, T1.theme
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name, T1.Theme
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = "2014"
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = "2014"
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID JOIN singer_in_concert AS T4 ON T3.concert_ID = T4.concert_ID JOIN singer AS T5 ON T5.Singer_ID = T4.Singer_ID WHERE T5.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014" INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2015"
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014" INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2015"
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM pets WHERE pettype = "dog" ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM pets WHERE pettype = "dog" ORDER BY pet_age ASC LIMIT 1
SELECT MAX(weight), pet_type FROM pets GROUP BY pet_type
SELECT MAX(weight), pet_type FROM pets GROUP BY pet_type
SELECT COUNT(*) FROM Student WHERE age > 20 JOIN Has_Pet ON Student.StuID = Has_Pet.StuID
SELECT COUNT(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID WHERE T1.pet_age > 20
SELECT COUNT(*) FROM Pets WHERE PetType = "dog" INTERSECT SELECT COUNT(*) FROM Student WHERE Sex = "F"
SELECT COUNT(*) FROM Pets WHERE PetType = "dog" JOIN Student ON Student.StuID = Has_Pet.StuID WHERE Student.Sex = "F"
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat") INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog")) LIMIT 1
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat") INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog"))
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT Fname, Lname, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat")) AND Has_Pet IN (SELECT PetID FROM Pets WHERE PetType = "Dog")
SELECT Fname FROM Student WHERE city_code = "1" INTERSECT SELECT Fname FROM Student WHERE city_code = "2" EXCEPT SELECT Fname FROM Student WHERE city_code = "1" INTERSECT SELECT Fname FROM Student WHERE city_code = "2"
SELECT PetType, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age) FROM pets GROUP BY pet_type
SELECT AVG(pet_age), MAX(pet_age) FROM pets GROUP BY pet_type
SELECT AVG(weight) FROM Pets GROUP BY pet_type
SELECT AVG(weight) FROM Pets GROUP BY pet_type
SELECT Fname, Lname, Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT Fname, Lname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet) GROUP BY Fname, Lname, Age HAVING COUNT(*) > 1
SELECT PetID FROM Student WHERE LName = 'Smith'
SELECT PetID FROM Student WHERE LName = 'Smith' JOIN Has_Pet ON Student.StuID = Has_Pet.StuID
SELECT StuID, COUNT(*) FROM has_pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT Fname, Lname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" AND pet_age = 3) ORDER BY pet_age DESC LIMIT 1)
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" AND pet_age = 3)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(DISTINCT Continent) FROM continents
SELECT COUNT(*) FROM continents
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT FullName, Id, COUNT(*) FROM car_makers GROUP BY Id
SELECT Model FROM model_list ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM car_names ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Maker FROM car_names WHERE Model IN (SELECT Model FROM cars_data WHERE YEAR = 1970)
SELECT T1.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year = 1970 GROUP BY T1.MakeId HAVING COUNT(*) > 1
SELECT Make, ProductionTime FROM cars_data ORDER BY ProductionTime ASC LIMIT 1
SELECT Maker, YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT DISTINCT Model FROM cars_data WHERE YEAR > 1980
SELECT DISTINCT Model FROM car_names WHERE MakeId IN (SELECT Id FROM car_names WHERE Model LIKE "Tesla" OR Model LIKE "Tesla Roadster") AND YEAR > 1980
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T2.Country
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT CountryName FROM countries GROUP BY CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryName FROM countries GROUP BY CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM model_list GROUP BY Maker
SELECT Model, MakeId, FullName FROM model_list ORDER BY Model
SELECT Accelerate FROM cars_data WHERE Make = "AMC Hornet Sportabout"
SELECT Accelerate FROM cars_data WHERE Make = "AMC" AND Model = "Hornet Sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM model_list WHERE Country = "USA"
SELECT COUNT(*) FROM car_names WHERE Make = "United States"
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker, T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Maker
SELECT Make, Model FROM car_names
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT CountryName, CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight) FROM cars_data GROUP BY YEAR
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT CountryName FROM countries WHERE Continent = "Europe" GROUP BY CountryName HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE Continent = "Europe" GROUP BY CountryName HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3 GROUP BY Make
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3 GROUP BY Model
SELECT Model FROM car_names ORDER BY Edispl DESC LIMIT 1
SELECT Model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "volvo"
SELECT AVG(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "American Motor Company")
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE Maker = "American Motor Company")
SELECT FullName, Id FROM car_makers WHERE COUNT(*) > 3
SELECT Make, MakeId FROM model_list GROUP BY Make HAVING COUNT(*) > 3
SELECT DISTINCT Model FROM car_names WHERE Make = "General Motors" OR Weight > 3500
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Make = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT T1.Year FROM cars_data AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Weight < 4000 INTERSECT SELECT DISTINCT T1.Year FROM cars_data AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = "volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = "Volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT MAX(horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT MAX(accelerate) FROM cars_data)
SELECT COUNT(*) FROM countries GROUP BY CountryName HAVING COUNT(*) > 2
SELECT COUNT(*) FROM countries GROUP BY CountryName HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT Model FROM car_names WHERE Make = "Ford" AND Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM cars_data WHERE Cylinders = 4 GROUP BY Model ORDER BY Horsepower DESC LIMIT 1
SELECT MakeId, Make FROM cars_data WHERE Horsepower > (SELECT MIN(Horsepower) FROM cars_data) EXCEPT SELECT MakeId, Make FROM cars_data WHERE Cylinders > 3
SELECT MakeId, Make FROM car_names WHERE NOT MakeId IN (SELECT MakeId FROM cars_data GROUP BY Make ORDER BY MIN(Horsepower) LIMIT 1)
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM model_list WHERE NOT Model IN (SELECT Model FROM car_names WHERE Make = 'Ford Motor Company') AND Weight < 3500
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Weight < 3500 AND T2.Make <> "Ford"
SELECT CountryName FROM countries WHERE NOT CountryName IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) = 1)
SELECT CountryName FROM countries WHERE NOT CountryName IN (SELECT Country FROM car_makers)
SELECT Id, Maker FROM car_makers WHERE COUNT(*) >= 2 AND COUNT(*) > 3
SELECT Id, Maker FROM car_makers WHERE COUNT(*) >= 2 AND COUNT(*) > 3
SELECT CountryId, CountryName FROM countries WHERE CountryName IN ('fiat', (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 3))
SELECT CountryId, CountryName FROM countries WHERE CountryName = "Italy" OR CountryName = "Germany" OR CountryName = "France" OR CountryName = "Turkey" GROUP BY CountryName HAVING COUNT(*) > 3 OR CountryName = "Turkey" INTERSECT SELECT CountryId, CountryName FROM car_makers GROUP BY CountryName HAVING COUNT(*) > 3
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "United States"
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
SELECT COUNT(*) FROM airlines WHERE Country = "United States"
SELECT City, Country FROM airports WHERE AirportCode = "ALT"
SELECT City, Country FROM airports WHERE AirportCode = "ALT"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABE"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABERDEEN"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABERDEEN"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABD" AND DestAirport = "ASH"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABD" AND DestAirport = "ASH"
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "JetBlue Airways")
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "Jetblue Airways")
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines") AND DestAirport = "ASY"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "ASY" AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines") AND SourceAirport = "AHD"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Austin, TX" AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT AirportCode FROM airports ORDER BY COUNT(*) LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY COUNT(*) LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY COUNT(*) LIMIT 1
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportCode = "AHD"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportCode = "AHD"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestAirport = "AHD"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN flights AS T3 ON T1.Airline = T3.Airline JOIN airports AS T4 ON T3.DestAirport = T4.AirportCode WHERE T2.City = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN flights AS T3 ON T1.Airline = T3.Airline JOIN airports AS T4 ON T3.DestAirport = T4.AirportCode WHERE T2.City = "CVO"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportCode = "CVO" EXCEPT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportCode = "APG"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.Country = "Czech Republic" EXCEPT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = "Czech Republic"
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
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE DestAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE DestAirport = "ABERDEEN"
SELECT COUNT(*) FROM flights WHERE DestAirport IN ('ABE', 'ABI')
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABE" OR DestAirport = "ABE" OR SourceAirport = "ABI" OR DestAirport = "ABI"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) INTERSECT SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) INTERSECT SELECT DestAirport FROM flights)
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY Age ASC
SELECT Name FROM Employee ORDER BY Age ASC
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city FROM Employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT DISTINCT T1.City FROM Employee AS T1 JOIN Employee AS T2 ON T1.City = T2.City WHERE T1.Age < 30 GROUP BY T1.City HAVING COUNT(*) > 1
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT T1.Name FROM shop AS T1 JOIN (SELECT AVG(Number_products) FROM shop) AS T2 ON T1.Number_products > T2.AVG
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Employee_ID FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM Employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT T1.Name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID
SELECT T1.Name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT T1.Employee_ID, T1.Shop_ID, T1.Start_from, T1.Is_full_time FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID
SELECT T1.Employee_ID, T1.Shop_ID, T1.Start_from, T1.Is_full_time FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID
SELECT DISTINCT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 AND T2.Number_products > 10000
SELECT DISTINCT T1.District INTERSECT SELECT DISTINCT T2.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 AND T2.Number_products > 10000
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_ID, Template_ID, Template_Details FROM Documents WHERE Document_Name = "Robbin CV"
SELECT Document_ID, Template_ID, Template_Details FROM Documents WHERE Document_Name = "Robbin CV"
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_type_code = 'PPT')
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "PPT"
SELECT T1.Template_ID, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT Template_ID, COUNT(*) FROM documents GROUP BY Template_ID
SELECT Template_ID, Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID, Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID FROM documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT DISTINCT T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT Template_type_code FROM Ref_Template_Types
SELECT Template_ID FROM Templates WHERE Template_type_code = "PP" OR Template_type_code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_type_code = "PP" OR Template_type_code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_type_code, COUNT(*) FROM Templates GROUP BY Template_type_code
SELECT Template_type_code, COUNT(*) FROM Templates GROUP BY Template_type_code
SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Ref_Template_Types GROUP BY Template_type_code HAVING COUNT(*) < 3
SELECT Template_type_code FROM Ref_Template_Types GROUP BY Template_type_code HAVING COUNT(*) < 3
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY MIN(Version_Number) ASC LIMIT 1
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT Template_type_code FROM templates WHERE Template_details = "Data base"
SELECT Template_type_code FROM Templates WHERE Template_details = "Data base"
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_type_code = "BK")
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_type_code = "BK")
SELECT Template_type_code, COUNT(*) FROM documents GROUP BY Template_type_code
SELECT Template_type_code, COUNT(*) FROM Templates GROUP BY Template_type_code
SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM documents GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_type_code FROM Documents)
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_type_code FROM Documents)
SELECT Template_type_code, Template_type_description FROM Ref_Template_Types
SELECT Template_type_code, Template_type_description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_type_code FROM Ref_Template_Types WHERE Template_type_description = "Book"
SELECT Template_type_code FROM Ref_Template_Types WHERE Template_type_description = "Book"
SELECT DISTINCT TT.Template_Type_Description FROM Templates AS T JOIN Documents AS D ON T.Template_ID = D.Template_ID JOIN Ref_Template_Types AS TT ON TT.Template_Type_Code = T.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Description FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Template_ID FROM Templates WHERE Template_type_Description = "Presentation"
SELECT Template_ID FROM Ref_Template_Types WHERE Template_Type_Description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = "Summer Show"
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text = "Korea "
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Welcome to NY'
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Welcome to NY'
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = "Customer reviews"
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM Paragraphs GROUP BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM Paragraphs GROUP BY Document_ID
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID, Document_Name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID, Document_Name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM paragraphs WHERE Paragraph_ID BETWEEN 1 AND 2
SELECT Document_ID FROM paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Ireland'
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Ireland'
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
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID WHERE T1.Course = "Math"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course = "Math"
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 LEFT JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Teacher_ID IS NULL
SELECT T1.Name FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Course_ID WHERE NOT T2.Course_ID IN (SELECT Course_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4
SELECT T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Level_of_membership > 4 ORDER BY T1.Age ASC
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > "2010")
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID HAVING COUNT(*) > 1
SELECT T1.ID, T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY SUM(T2.Total_spent) DESC LIMIT 1
SELECT Museum_ID, Name FROM museum GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit
SELECT SUM(Total_spent) FROM visit WHERE visitor_ID IN (SELECT ID FROM visitor WHERE Level_of_membership = 1)
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT ID IN (SELECT visitor_ID FROM visit WHERE open_year > 2010)
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
SELECT MAX(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE tourney_date = "2013" INTERSECT SELECT winner_name FROM matches WHERE tourney_date = "2016"
SELECT winner_name FROM matches WHERE tourney_date = "2013" INTERSECT SELECT winner_name FROM matches WHERE tourney_date = "2016"
SELECT COUNT(*) FROM matches WHERE tourney_date BETWEEN "2013-01-01" AND "2016-12-31"
SELECT COUNT(*) FROM matches WHERE tourney_date BETWEEN "2013-01-01" AND "2016-12-31"
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, COUNT(*) FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT first_name, AVG(ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.player_id, T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT first_name, total_ranking_points FROM players ORDER BY total_ranking_points DESC
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT COUNT(*) FROM rankings GROUP BY ranking_date
SELECT COUNT(*) FROM matches GROUP BY year
SELECT COUNT(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT COUNT(DISTINCT winner_name) FROM matches WHERE tourney_name = "WTA Championships" AND winner_hand = "Left"
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "Left" AND T1.tourney_name = "WTA Championships"
SELECT winner_name, winner_country_code, winner_birth_date FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT first_name, country_code, birth_date FROM players ORDER BY winner_rank_points DESC LIMIT 1
SELECT COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = "Captured"
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(injured), MIN(injured) FROM death
SELECT AVG(injured) FROM death
SELECT note, killed, injured FROM death WHERE caused_by_ship_id IN (SELECT id FROM ship WHERE tonnage = 't')
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = "Brig"
SELECT id, name FROM battle WHERE (SELECT COUNT(*) FROM death) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN battle AS T2 ON T1.name = T2.name WHERE T1.bulgarian_commander = "Kaloyan" AND T2.latin_commander = "Baldwin I"
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT name, date FROM battle WHERE id IN (SELECT lost_in_battle FROM ship WHERE name = "Lettice" INTERSECT SELECT id FROM ship WHERE name = "HMS Atalanta")
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE location = "English Channel")
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM degree_programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM degree_programs GROUP BY department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Departments WHERE department_name IN (SELECT department_name FROM Degree_Programs)
SELECT COUNT(DISTINCT department_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT COUNT(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT course_name, course_id FROM courses ORDER BY COUNT(*) DESC LIMIT 2
SELECT course_name, course_id FROM courses WHERE course_name <> "Course" GROUP BY course_name HAVING COUNT(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.degree_summary_name = "2" INTERSECT SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.degree_summary_name = "2" INTERSECT SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.degree_summary_name = "2" INTERSECT SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.degree_summary_name = "2" INTERSECT SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2
SELECT first_name, middle_name, last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment_courses WHERE course_id IN (SELECT course_id FROM courses WHERE course_name = "Bachelor"
SELECT first_name, middle_name, last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment_courses WHERE course_id IN (SELECT course_id FROM courses WHERE course_name = "Bachelors"))
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT student_id, first_name, middle_name, last_name, COUNT(*) FROM student_enrolment GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses)
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses)
SELECT course_name FROM courses GROUP BY course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT course_name FROM courses ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT last_name FROM students WHERE NOT student_id IN (SELECT student_id FROM student_enrolment)
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE country = "North Carolina") EXCEPT SELECT last_name FROM student_enrolment
SELECT transcript_date, transcript_id FROM transcript_contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT transcript_date, transcript_id FROM transcript_contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students WHERE date_left = (SELECT MIN(date_left) FROM students)
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM transcripts
SELECT AVG(transcript_date) FROM transcripts
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT COUNT(*) FROM transcripts
SELECT COUNT(*) FROM transcripts
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(*) FROM student_enrolment_courses GROUP BY student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT MAX(COUNT(*)), course_id FROM transcript_contents GROUP BY course_id
SELECT transcript_date, transcript_id FROM transcripts ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM transcripts ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN courses AS T3 ON T2.course_id = T3.course_id WHERE T3.course_name = "Master" INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN courses AS T3 ON T2.course_id = T3.course_id WHERE T3.course_name = "Bachelor"
SELECT semester_id FROM student_enrolment_courses AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = "Masters" INTERSECT SELECT semester_id FROM student_enrolment_courses AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = "Bachelors"
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.line_1, T1.line_2, T1.line_3 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT first_name, middle_name, last_name FROM students ORDER BY last_name DESC
SELECT other_student_details FROM students ORDER BY last_name DESC
SELECT section_name FROM sections WHERE section_id = 1
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT T1.Title FROM Cartoon AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T1.Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT TC.series_name FROM Cartoon AS TC JOIN TV_series AS TS ON TC.id = TS.Channel WHERE TC.Title = "The Rise of the Blue Beetle!"
SELECT series_name FROM TV_Channel WHERE id = (SELECT channel FROM cartoon WHERE title = "The Rise of the Blue Beetle")
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.series_name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.Channel WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Episode, T1.Rating FROM TV_series AS T1 JOIN (SELECT Rating FROM TV_series ORDER BY Rating DESC LIMIT 3) AS T2 ON T1.Rating = T2.Rating
SELECT T1.Episode, T1.Rating FROM TV_series AS T1 JOIN (SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3) AS T2 ON T1.Episode = T2.Episode
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Channel FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = "Yes"
SELECT T1.Package_Option, T2.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_definition_TV = "Yes"
SELECT Country FROM TV_Channel WHERE Content = "Cartoon" AND Written_by = "Todd Casey"
SELECT DISTINCT T1.Country FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.Channel WHERE T1.Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE NOT Channel IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT DISTINCT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey" EXCEPT SELECT DISTINCT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by <> "Todd Casey"
SELECT T1.series_name, T1.Country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.Country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Michael Chang"
SELECT T1.series_name, T1.Country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel JOIN Cartoon AS T3 ON T2.id = T3.id JOIN Cartoon AS T4 ON T3.id = T4.id WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.Country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel JOIN Cartoon AS T3 ON T2.id = T3.id WHERE T3.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT id FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT Channel IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
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
SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Birth_Date FROM people ORDER BY Earnings ASC LIMIT 1
SELECT Birth_Date FROM people ORDER BY Earnings ASC LIMIT 1
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
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE NOT contestant_name = 'Jessie Alloway'
SELECT DISTINCT T1.state, T1.created FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number
SELECT contestant_number, contestant_name FROM contestants WHERE contestant_number IN (SELECT contestant_number FROM votes GROUP BY contestant_number HAVING COUNT(*) >= 2)
SELECT contestant_number, contestant_name FROM contestants ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM votes GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_name = 'Tabatha Gehling'
SELECT DISTINCT T1.area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling" INTERSECT SELECT DISTINCT T1.area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Kelly Clauss"
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Carribean"
SELECT T1.Continent FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Anguilla"
SELECT T1.Continent FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Anguilla"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "AW" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "AW" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Code = "BR"
SELECT Population, LifeExpectancy FROM country WHERE Code = "BR"
SELECT Region, Population FROM country WHERE Code = "AO"
SELECT Region, Population FROM country WHERE Code = "AO"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "US Territory"
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code2 = "US"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AW"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AW"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AF" AND IsOfficial = "T"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AF" AND IsOfficial = "T"
SELECT Name FROM country ORDER BY (SELECT COUNT(*) FROM countrylanguage) DESC LIMIT 1
SELECT Name FROM country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN countrylanguage AS T3 ON T1.Code = T3.CountryCode WHERE T2.Language = "English" AND T3.Language = "Dutch"
SELECT COUNT(*) FROM country WHERE Code IN ('NLD', 'GBR') AND Name IN ('United Kingdom', 'Netherlands')
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN countrylanguage AS T3 ON T1.Code = T3.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN countrylanguage AS T3 ON T1.Code = T3.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN countrylanguage AS T3 ON T1.Code = T3.CountryCode WHERE T3.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT COUNT(*) FROM country WHERE Continent = "Asia" AND Name = "China"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT Region FROM country WHERE Code2 IN ('NL', 'GB')
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = "Asia") GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1)
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1 INTERSECT SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) > 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.LifeExpectancy FROM city AS T2 JOIN country AS T1 ON T1.Code = T2.Code WHERE T1.Continent = "Asia" ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT SUM(Population) FROM country WHERE Code <> 'USA' AND Code <> 'GBR'
SELECT COUNT(*) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = "Beatrix") AND IsOfficial = "T"
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM city WHERE LocalName = "Beatrix")
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930) AND IsOfficial = 'T'
SELECT COUNT(DISTINCT Language) FROM country WHERE IndepYear < 1930 AND IsOfficial = 'T'
SELECT Code FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT Code FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.Continent = T2.Continent WHERE T1.Continent = "Africa" AND T1.Population < ANY (SELECT T2.Population FROM country AS T2 WHERE T2.Continent = "Asia")
SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.Continent = T2.Continent WHERE T1.Continent = "Africa" AND T1.Population < (SELECT MIN(Population) FROM country AS T3 WHERE T3.Continent = "Asia")
SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.Continent = T2.Continent WHERE T1.Continent = "Asia" AND T1.Population > ANY (SELECT Population FROM country WHERE Continent = "Africa")
SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.Continent = T2.Continent WHERE T1.Continent = "Asia" AND T2.Continent = "Africa" GROUP BY T1.Name HAVING MAX(T1.Population) > MAX(T2.Population)
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> "English"
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND GovernmentForm <> "Republic"
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND NOT Code IN (SELECT CountryCode FROM country WHERE GovernmentForm = "Republic")
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "Chinese"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T2.IsOfficial = "T" AND T1.CountryCode = "CN" AND T1.CountryCode = T2.CountryCode
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population ASC LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population ASC LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT COUNT(*) FROM city GROUP BY District HAVING AVG(Population) < Population
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT T1.GovernmentForm, SUM(T2.Population) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.GovernmentForm HAVING AVG(T2.LifeExpectancy) > 72
SELECT AVG(LifeExpectancy), SUM(Population) FROM country WHERE Continent <> 'Asia' GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT T1.Continent, SUM(T2.Population), AVG(T1.LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent HAVING AVG(T1.LifeExpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT T1.Name FROM country AS T1 JOIN (SELECT CountryCode FROM country ORDER BY Population DESC LIMIT 3) AS T2 ON T1.Code = T2.CountryCode
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT T1.Name FROM country AS T1 JOIN continent AS T2 ON T1.Continent = T2.Name WHERE T2.Name = "Europe" AND T1.Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT T1.Code, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language ORDER BY MAX(T2.Percentage) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode HAVING COUNT(*) > (SELECT COUNT(*) FROM countrylanguage) / 2
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY MAX(Percentage) DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode HAVING COUNT(*) > (SELECT COUNT(*) FROM countrylanguage) / 2
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE NOT Nationality = "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
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
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT DISTINCT T1.Record_Company FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded < 2003 INTERSECT SELECT DISTINCT T1.Record_Company FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2003
SELECT DISTINCT T1.Record_Company FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded < 2003 INTERSECT SELECT DISTINCT T1.Record_Company FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT name, grade FROM Highschooler
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
SELECT T1.student_id, T1.friend_id FROM Friend AS T1 JOIN Friend AS T2 ON T1.student_id = T2.friend_id
SELECT COUNT(*) FROM Friend
SELECT name, grade, COUNT(*) FROM Highschooler GROUP BY name, grade
SELECT name, COUNT(*) FROM Highschooler GROUP BY name
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.friend_id WHERE T1.name = "Kyle"
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.name = "Kyle"
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT DISTINCT friend_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT T1.ID FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T1.ID = T3.liked_id
SELECT student_id FROM friend INTERSECT SELECT liked_id FROM likes
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T1.ID = T3.liked_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T1.ID = T3.liked_id
SELECT COUNT(*) FROM Likes GROUP BY student_id
SELECT COUNT(*) FROM Likes GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE liked_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Likes WHERE liked_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT AVG(grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id
SELECT AVG(grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT friend_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT DISTINCT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.state = T2.state
SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.state = T2.state
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR (SELECT COUNT(*) FROM treatments GROUP BY professional_id HAVING COUNT(*) > 2)
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR (SELECT COUNT(*) FROM treatments GROUP BY professional_id HAVING COUNT(*) > 2)
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT name FROM dogs WHERE NOT owner_id IN (SELECT owner_id FROM treatments GROUP BY owner_id HAVING MAX(cost_of_treatment) > 1000)
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT professional_id, treatment_type_code, email_address FROM treatments
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT owner_id, first_name, last_name FROM owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM professionals GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, role_code, first_name FROM professionals GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM treatments GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM treatments GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT owner_id, zip_code FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT owner_id, zip_code FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Treatments AS T2 JOIN Professionals AS T1 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT date_of_treatment, first_name FROM treatments AS T JOIN professionals AS P ON T.professional_id = P.professional_id
SELECT date_of_treatment, first_name FROM treatments JOIN professionals ON treatments.professional_id = professionals.professional_id
SELECT cost_of_treatment, treatment_type_description FROM treatments AS T JOIN treatment_types AS TT ON T.treatment_type_code = TT.treatment_type_code
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT T1.first_name, T1.last_name, T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.age ASC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.age ASC LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T1.last_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT last_name FROM owners ORDER BY date_of_birth ASC LIMIT 1
SELECT last_name FROM dogs ORDER BY age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments AS T JOIN professionals AS P ON T.professional_id = P.professional_id
SELECT COUNT(*) FROM treatments GROUP BY professional_id
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE city LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs AS D WHERE NOT D.dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs AS D WHERE NOT D.dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM charges
SELECT MAX(charge_amount) FROM charges WHERE charge_type = "Treatment"
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_code, T2.size_code FROM Dogs AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE NOT Citizenship = "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Citizenship, MAX(T2.Net_Worth_Millions) FROM singer AS T1 JOIN singer AS T2 ON T1.Citizenship = T2.Citizenship GROUP BY T1.Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT T1.Name FROM singer AS T1 LEFT JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_ID IS NULL
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = "T1"
SELECT property_name FROM properties WHERE property_type_code = "House" OR property_type_code = "Apartment" AND room_count > 1
