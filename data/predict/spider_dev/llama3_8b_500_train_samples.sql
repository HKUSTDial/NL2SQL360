SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT T1.Name, T1.Country, T1.Age FROM singer AS T1 ORDER BY T1.Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age LIMIT 1
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age = (SELECT MIN(age) FROM singer)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT Average FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT Average FROM singer)
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Capacity, Average FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE Year = 2014 OR Year = 2015
SELECT COUNT(*) FROM concert WHERE Year = 2014 OR Year = 2015
SELECT T1.Name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT Location, COUNT(*) FROM concert GROUP BY Location
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year >= 2014 GROUP BY T2.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013 GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Year FROM concert GROUP BY Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Year FROM concert GROUP BY Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.concert_ID IS NULL
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT T2.Country FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 40 AND T2.Age < 30
SELECT T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year <> 2014
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = 2014
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT concert_Name, Theme, COUNT(*) FROM concert GROUP BY concert_Name, Theme
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T3.Song_Name = T2.Song_Name WHERE T3.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T2.Song_Name = T3.Song_Name WHERE T3.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pet_type = "dog" ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE pet_type = "dog" ORDER BY pet_age LIMIT 1
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT pettype, MAX(weight), MAX(pet_age) FROM pets GROUP BY pettype
SELECT COUNT(*) FROM Pets WHERE StuID IN (SELECT StuID FROM Student WHERE age > 20
SELECT COUNT(*) FROM Pets WHERE StuID IN (SELECT StuID FROM Student WHERE age > 20
SELECT COUNT(*) FROM Pets WHERE PetType = "Dog" AND StuID IN (SELECT StuID FROM Student WHERE Sex = "F"
SELECT COUNT(*) FROM Pets WHERE PetType = "Dog" AND Sex = "F"
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog"
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog"
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog"
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog"
SELECT T1.Major, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID <> 1
SELECT T1.Major, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID <> (SELECT PetID FROM Pets WHERE PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = 1
SELECT Fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "cat"
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "cat"
SELECT pettype, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT pettype, AVG(pet_age), MAX(pet_age) FROM pets GROUP BY pettype
SELECT pettype, AVG(pet_age), MAX(pet_age) FROM pets GROUP BY pettype
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT pettype, AVG(weight) FROM pets GROUP BY pettype
SELECT Fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet
SELECT Fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY Fname, age
SELECT PetID FROM Pets WHERE StuID = (SELECT StuID FROM Student WHERE LName = 'Smith'
SELECT PetID FROM Has_Pet WHERE StuID = (SELECT StuID FROM Student WHERE LName = 'Smith'
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1
SELECT Lname FROM Student WHERE StuID = (SELECT StuID FROM Has_Pet WHERE PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat" WHERE pet_age = 3
SELECT Lname FROM Student WHERE StuID = (SELECT StuID FROM Has_Pet WHERE PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat" AND pet_age = 3
SELECT AVG(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY ContId
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT FullName, Id, COUNT(*) FROM car_makers GROUP BY Maker
SELECT T1.Id, T1.Maker, T1.FullName, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT Model FROM car_names ORDER BY Horsepower LIMIT 1
SELECT Model FROM car_names ORDER BY Horsepower LIMIT 1
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Maker FROM car_makers WHERE Year = 1970
SELECT Maker FROM car_names WHERE Year = 1970 GROUP BY Maker
SELECT Make, Year FROM cars_data ORDER BY Year LIMIT 1
SELECT Maker, Year FROM cars_data ORDER BY Year LIMIT 1
SELECT DISTINCT Model FROM car_names WHERE Year > 1980
SELECT DISTINCT Model FROM car_names WHERE Year > 1980
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT CountryName FROM countries GROUP BY CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryName FROM countries GROUP BY CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Maker, COUNT(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T1.Maker
SELECT Maker, FullName, COUNT(*) FROM car_makers GROUP BY Maker
SELECT Accelerate FROM cars_data WHERE Make = "amc hornet sportabout (sw)"
SELECT Accelerate FROM cars_data WHERE Model = "AMC Hornet Sportabout (SW)"
SELECT COUNT(*) FROM car_makers WHERE Country = (SELECT CountryId FROM countries WHERE CountryName = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = (SELECT CountryId FROM countries WHERE CountryName = "France"
SELECT COUNT(*) FROM model_list WHERE Country = 1
SELECT COUNT(*) FROM model_list WHERE Country = 1
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND Year = 1974 ORDER BY Weight LIMIT 1
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND Year = 1974 ORDER BY Weight LIMIT 1
SELECT Maker, Model FROM car_names
SELECT T1.Maker, T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT T1.Year, AVG(T1.Weight) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Year
SELECT T1.Year, AVG(T1.Weight), AVG(T1.Year) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Year
SELECT CountryName FROM countries WHERE Continent = 3 GROUP BY CountryName HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE Continent = 3 GROUP BY CountryName HAVING COUNT(*) >= 3
SELECT T1.Model, T1.Make, T1.Horsepower FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT Horsepower, Make FROM cars_data WHERE Cylinders = 3 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT Model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT AVG(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT T1.Cylinders, MAX(T1.Accelerate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Cylinders
SELECT MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT Model FROM car_names GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Year = 1980
SELECT COUNT(*) FROM cars_data WHERE Year = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "American Motor Company"
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE Maker = "American Motor Company"
SELECT FullName, Id FROM car_makers WHERE Id IN (SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Make = T2.Maker AND T1.Make = 3 OR T1.Weight > 3500
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.MakeId = (SELECT Id FROM car_makers WHERE Maker = "General Motors" UNION SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight > 3500
SELECT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT Year FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data WHERE Accelerate = (SELECT MAX(Accelerate) FROM cars_data)
SELECT Horsepower FROM cars_data WHERE Accelerate = (SELECT MAX(Accelerate) FROM cars_data)
SELECT Cylinders FROM cars_data WHERE Model = "volvo" ORDER BY Accelerate LIMIT 1
SELECT Cylinders FROM cars_data WHERE Model = "Volvo" ORDER BY Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Horsepower FROM cars_data ORDER BY Horsepower DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Horsepower FROM cars_data ORDER BY Horsepower DESC LIMIT 1
SELECT COUNT(*) FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Model FROM car_names WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM car_names WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT MakeId, Make FROM car_names WHERE Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND Cylinders <= 3
SELECT MakeId, Model FROM car_names WHERE Horsepower < 100 AND Cylinders < 4
SELECT MPG FROM cars_data WHERE Cylinders = 8 OR Year < 1980 ORDER BY MPG DESC LIMIT 1
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT Model FROM model_list WHERE Weight < 3500 EXCEPT SELECT Model FROM model_list WHERE Maker = 1
SELECT Model FROM car_names WHERE Weight < 3500 EXCEPT SELECT Model FROM car_names WHERE Make = "Ford Motor Company"
SELECT CountryName FROM countries WHERE NOT CountryName IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryName IN (SELECT Country FROM car_makers)
SELECT Id, Maker FROM car_makers WHERE Id IN (SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT Id, Maker FROM car_makers GROUP BY Maker HAVING COUNT(*) >= 3
SELECT Id, Maker FROM car_makers WHERE Maker IN (SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT Id, Maker FROM car_names GROUP BY Id HAVING COUNT(*) >= 3
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 3 UNION SELECT CountryId, CountryName FROM countries WHERE CountryName = 'Italy'
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 3 UNION SELECT CountryId, CountryName FROM countries WHERE Country = (SELECT Country FROM car_makers WHERE Maker = (SELECT Maker FROM model_list WHERE Model = "Fiat"
SELECT Country FROM airlines WHERE Abbreviation = "JBU"
SELECT Country FROM airlines WHERE Abbreviation = 'JBU'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country AND T1.CountryAbbrev = T2.CountryAbbrev WHERE T2.Country = "USA"
SELECT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country AND T1.CountryAbbrev = T2.CountryAbbrev WHERE T2.Country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T1.Abbreviation = 'UAL'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T1.Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT T1.City, T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.FlightNo = 1234
SELECT T1.City, T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.FlightNo = 1234
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABZ"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABZ"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABZ"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABZ"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABZ' AND DestAirport = 'ASH'
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABZ" AND DestAirport = "ASH"
SELECT COUNT(*) FROM flights WHERE airline = (SELECT T1.uid FROM airlines AS T1 JOIN airlines AS T2 ON T1.Abbreviation = T2.Abbreviation WHERE T2.Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM flights WHERE airline = 3
SELECT COUNT(*) FROM flights WHERE airline = 1 AND destairport = 'ASY'
SELECT COUNT(*) FROM flights WHERE airline = 1 AND destairport = "ASY"
SELECT COUNT(*) FROM flights WHERE airline = (SELECT T1.uid FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD' AND T1.abbreviation = 'UAL'
SELECT COUNT(*) FROM flights WHERE airline = (SELECT T1.uid FROM airlines AS T1 JOIN airports AS T2 ON T1.abbreviation = T2.AirportCode WHERE T2.AirportCode = "AHD" AND T1.Airline = "United"
SELECT COUNT(*) FROM flights WHERE airline = (SELECT T1.uid FROM airlines AS T1 JOIN airports AS T2 ON T1.abbreviation = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.Airline = 'United'
SELECT COUNT(*) FROM flights WHERE airline = 1 AND destairport = "ABZ"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY COUNT(*) LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = "APG"
SELECT T1.Airline, T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT T1.Airline, T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = (SELECT T1.uid FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = 1
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "ABZ"
SELECT FlightNo FROM flights WHERE SourceAirport = "ABZ"
SELECT FlightNo FROM flights WHERE DestAirport = "ABZ"
SELECT FlightNo FROM flights WHERE DestAirport = "ABZ"
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABZ' OR DestAirport = 'ABI'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABZ' OR DestAirport = 'ABI'
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) INTERSECT SELECT AirportCode FROM flights)
SELECT AirportCode FROM airports EXCEPT SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY Age
SELECT Name, Age FROM Employee ORDER BY Age
SELECT T1.City, COUNT(*) FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.City
SELECT T1.City, COUNT(*) FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.City
SELECT T2.City FROM Employee AS T1 JOIN Employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.Age < 30 GROUP BY T2.City HAVING COUNT(*) > 1
SELECT T2.City FROM Employee AS T1 JOIN Employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.Age < 30 GROUP BY T2.City HAVING COUNT(*) > 1
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Manager_name, District FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop
SELECT Manager_name, District FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products)) FROM shop
SELECT MIN(Number_products), MAX(Number_products)) FROM shop
SELECT T1.Name, T1.Location, T1.District FROM shop AS T1 ORDER BY T1.Number_products DESC
SELECT T1.Name, T1.Location, T1.District FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID ORDER BY T1.Number_products DESC
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID HAVING AVG(T2.Number_products) < T1.Number_products
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID HAVING AVG(T2.Number_products) < T1.Number_products
SELECT Name FROM Employee WHERE Employee_ID = (SELECT Employee_ID FROM Evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM Employee WHERE Employee_ID = (SELECT Employee_ID FROM Evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM Employee WHERE Employee_ID = (SELECT Employee_ID FROM Evaluation ORDER BY Bonus DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID HAVING COUNT(*) = 1
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.Employee_ID IS NULL
SELECT Name FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop)
SELECT Name FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID WHERE T2.Employee_ID IS NULL
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID WHERE T2.Employee_ID IS NULL
SELECT T1.Name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID
SELECT T1.Name, COUNT(*) FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT Employee_ID, Start_from, Is_full_time FROM hiring
SELECT Employee_ID, Start_from, Is_full_time FROM hiring
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
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
SELECT COUNT(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Documents WHERE Template_type_code = 'PPT'
SELECT T1.Template_ID, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT T1.Template_ID, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID, Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT T1.Template_ID, T1.Version_Number, T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Template_ID, T1.Version_Number, T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT Template_type_code FROM Templates
SELECT DISTINCT Template_type_code FROM templates
SELECT Template_ID FROM Templates WHERE Template_type_code = 'PP' OR Template_type_code = 'PPT'
SELECT Template_ID FROM Templates WHERE Template_type_code = 'PP' OR Template_type_code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_type_code = 'CV'
SELECT COUNT(*) FROM Templates WHERE Template_type_code = 'CV'
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_type_code, COUNT(*) FROM templates GROUP BY Template_type_code
SELECT Template_type_code, COUNT(*) FROM templates GROUP BY Template_type_code
SELECT Template_type_code FROM templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM templates GROUP BY Template_type_code HAVING COUNT(*) < 3
SELECT Template_type_code FROM templates GROUP BY Template_type_code HAVING COUNT(*) < 3
SELECT Version_Number, Template_Type_Code FROM Templates ORDER BY Version_Number LIMIT 1
SELECT Version_Number, Template_Type_Code FROM Templates ORDER BY Version_Number LIMIT 1
SELECT Template_type_code FROM templates WHERE document_name = "Data base"
SELECT Template_type_code FROM templates WHERE template_id = (SELECT template_id FROM documents WHERE document_name = 'Data base'
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_type_code = 'BK'
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'BK'
SELECT Template_type_code, COUNT(*) FROM documents GROUP BY Template_type_code
SELECT Template_type_code, COUNT(*) FROM Documents GROUP BY Template_type_code
SELECT Template_type_code FROM documents GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM documents GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM documents GROUP BY Template_type_code HAVING COUNT(*) = 0
SELECT Template_type_code FROM Ref_template_types EXCEPT SELECT Template_type_code FROM Documents
SELECT Template_type_code, Template_type_description FROM Ref_template_types
SELECT Template_type_code, Template_type_description FROM Ref_template_types
SELECT Template_type_description FROM Ref_template_types WHERE Template_type_code = "AD"
SELECT Template_type_description FROM Ref_template_types WHERE Template_type_code = 'AD'
SELECT Template_type_code FROM Ref_template_types WHERE Template_type_description = "Book"
SELECT Template_type_code FROM Ref_template_types WHERE Template_type_description = "Book"
SELECT DISTINCT T1.Template_Type_Description FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT DISTINCT T1.Template_Type_Description FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Template_ID FROM Templates WHERE Template_type_code = (SELECT Template_type_code FROM Ref_template_types WHERE Template_type_description = "Presentation"
SELECT Template_ID FROM Templates WHERE Template_type_description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Welcome to NY'
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY'
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Customer reviews'
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM Paragraphs GROUP BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM Documents GROUP BY Document_ID
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID, Document_Name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID, Document_Name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Paragraphs WHERE Paragraph_ID BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_ID BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Ireland'
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Ireland'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Hometown <> "Little Lever Urban District"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Grade = 1 AND T1.Hometown <> "Little Lever Urban District"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Age = 32 OR T1.Age = 33
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Age = 32 OR T1.Age = 33
SELECT Hometown FROM teacher WHERE Age = (SELECT MIN(age) FROM teacher)
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID = (SELECT Course_ID FROM course WHERE Course = "Math"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T3.Course_ID = T2.Course_ID WHERE T3.Course = "Math"
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Teacher_ID IS NULL
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID IS NULL
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > 2010
SELECT ID, Name, Age FROM visitor WHERE ID IN (SELECT visitor_ID FROM visit GROUP BY visitor_ID HAVING COUNT(*) > 1
SELECT ID, Name, Level_of_membership FROM visitor WHERE Total_spent = (SELECT MAX(Total_spent) FROM visit)
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T2.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket)) FROM visit
SELECT SUM(num_of_ticket) FROM visit WHERE level_of_membership = 1
SELECT Name FROM visitor WHERE ID IN (SELECT visitor_ID FROM visit WHERE Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year < 2009 INTERSECT SELECT visitor_ID FROM visit WHERE Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT visitor_ID IN (SELECT visitor_ID FROM visit WHERE NOT Open_Year > 2010
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT AVG(winner_age), AVG(loser_age) FROM matches
SELECT AVG(winner_age), AVG(loser_age) FROM matches
SELECT AVG(ranking) FROM rankings WHERE player_id = winner_id
SELECT AVG(ranking) FROM rankings WHERE player_id = winner_id
SELECT MAX(ranking) FROM rankings WHERE player_id = loser_id
SELECT MAX(ranking) FROM rankings WHERE player_id IN (SELECT loser_id FROM matches)
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
SELECT country_code, first_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT winner_id FROM matches WHERE tourney_name = "Australian Open"
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourny_name = "WTA Championships" INTERSECT SELECT winner_id FROM matches WHERE tourny_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tournym_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT first_name, AVG(ranking) FROM rankings GROUP BY player_id
SELECT first_name, AVG(ranking) FROM players GROUP BY first_name
SELECT first_name, SUM(ranking_points) FROM rankings GROUP BY player_id
SELECT first_name, SUM(ranking_points) FROM rankings GROUP BY first_name
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE tourny_name = "WTA Championships" AND winner_hand = "left"
SELECT COUNT(*) FROM players WHERE hand = "left" AND winner_name = "WTA Championships"
SELECT first_name, country_code, birth_date FROM players WHERE player_id = (SELECT winner_id FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT first_name, country_code, birth_date FROM players WHERE player_id = (SELECT winner_id FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = "Captured"
SELECT name, tonnage FROM ship ORDER BY name DESC, tonnage DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT killed, injured FROM death WHERE caused_by_ship_id IN (SELECT id FROM ship WHERE tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT id, name FROM battle WHERE id IN (SELECT lost_in_battle FROM ship WHERE ship_type = 'Brig'
SELECT id, name FROM battle WHERE result = "Victory" AND killed > 10
SELECT id, name FROM ship ORDER BY injured DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.bulgarian_commander = 'Kaloyan' AND T2.latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT T1.id = T2.lost_in_battle AND T1.tonnage = T2.tonnage) FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle) WHERE T2.tonnage = 225)
SELECT name, date FROM battle WHERE lost_in_battle = 1 AND id IN (SELECT caused_by_ship_id FROM death WHERE killed = 1
SELECT name, result, bulgarian_commander FROM battle WHERE location = "English Channel" AND lost_in_battle = 0
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT section_description FROM sections WHERE course_id = (SELECT course_id FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM departments GROUP BY department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM departments GROUP BY department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Departments WHERE department_name <> 'Other'
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = "Engineering"
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = "Engineering"
SELECT T1.section_name, T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.section_name, T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT semester_name, semester_id FROM semesters ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name, semester_id FROM semesters GROUP BY semester_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%the computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT first_name, middle_name, last_name, student_id FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM student_enrolment WHERE semester_id = 1 GROUP BY student_id HAVING COUNT(*) = 2
SELECT student_id, first_name, middle_name, last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_id IN (SELECT department_id FROM departments WHERE department_name = "Computer Science"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_program ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT student_id, first_name, middle_name, last_name, COUNT(*) FROM student_enrolment GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT student_id, COUNT(*) FROM student_enrolment GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters EXCEPT SELECT semester_name FROM student_enrolment GROUP BY semester_name
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses)
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses)
SELECT course_name FROM courses ORDER BY COUNT(*) DESC LIMIT 1
SELECT course_name FROM courses ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT student_id FROM student_enrolment
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT student_id FROM student_enrolment
SELECT transcript_date, transcript_id FROM transcripts WHERE student_course_id IN (SELECT student_course_id FROM transcript_contents GROUP BY student_course_id HAVING COUNT(*) >= 2
SELECT transcript_date, transcript_id FROM transcripts WHERE student_course_id IN (SELECT student_course_id FROM transcript_contents GROUP BY student_course_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN semester AS T4 ON T2.semester_id = T4.semester_id WHERE T4.semester_name = 'Graduation' ORDER BY T2.date_left LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country, other_address_details FROM addresses GROUP BY address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts WHERE transcript_date > DATE('2022-01-01')
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT student_course_id, COUNT(*) FROM transcript_contents GROUP BY student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_id, T1.student_enrolment_id FROM student_enrolment_courses AS T1 JOIN transcripts AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_id, transcript_date FROM transcripts GROUP BY transcript_id ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM transcripts ORDER BY COUNT(*) LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id = (SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_id = (SELECT department_id FROM degree_programs WHERE degree_summary_name = 'Master' INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_id = (SELECT department_id FROM degree_programs WHERE degree_summary_name = 'Bachelor')
SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_id = 1 INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_id = 2
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T1.last_name DESC
SELECT other_student_details FROM students ORDER BY last_name DESC
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = 'Haiti' OR cell_mobile_number = '09700166582'
SELECT first_name FROM students WHERE permanent_address_id = (SELECT address_id FROM addresses WHERE country = 'Haiti' UNION SELECT first_name FROM students WHERE cell_mobile_number = '09700166582'
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
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT series_name FROM TV_Channel WHERE content = "The Rise of the Blue Beetle!"
SELECT series_name FROM TV_Channel WHERE content = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating DESC
SELECT Episode FROM TV_series ORDER BY Rating DESC
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_Channel WHERE id = (SELECT channel FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT series_name FROM TV_Channel WHERE series_name = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT Directed_by, COUNT(*) FROM Cartoon WHERE Directed_by IN ('Matt Groening', 'Bill Hanna', 'Joe Barbera' GROUP BY Directed_by
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 1
SELECT Country FROM TV_Channel WHERE Title = "The Simpsons" AND Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE Content = "Cartoon" AND Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE NOT Title IN (SELECT Title FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT Country FROM Cartoon WHERE Written_by <> "Todd Casey"
SELECT series_name, country FROM TV_Channel WHERE content LIKE '%Ben Jones, Michael Chang%'
SELECT series_name, country FROM TV_Channel WHERE channel IN (SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones" UNION SELECT series_name, country FROM TV_Channel WHERE channel IN (SELECT channel FROM Cartoon WHERE directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT id FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT Title IN (SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT id FROM Cartoon WHERE Directed_by <> "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT Title IN (SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT Channel IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player WHERE Earnings = (SELECT MAX(Earnings) FROM poker_player)
SELECT Money_Rank FROM poker_player WHERE Earnings = (SELECT MAX(Earnings) FROM poker_player)
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT Name FROM poker_player
SELECT Name FROM poker_player
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT Birth_Date FROM poker_player ORDER BY Earnings LIMIT 1
SELECT Birth_Date FROM poker_player ORDER BY Earnings LIMIT 1
SELECT Money_Rank FROM poker_player WHERE Height = (SELECT MAX(Height) FROM people)
SELECT Money_Rank FROM poker_player WHERE Height = (SELECT MAX(Height) FROM people)
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
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT T1.contestant_number, T1.contestant_name FROM Contestants AS T1 JOIN Votes AS T2 ON T1.contestant_number = T2.contestant_number ORDER BY T1.contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code)) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT T1.contestant_name FROM Contestants AS T1 JOIN Votes AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_number <> 1
SELECT DISTINCT T1.state, T1.created FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state
SELECT T1.contestant_number, T1.contestant_name FROM Contestants AS T1 JOIN Votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS EXCEPT SELECT DISTINCT (contestant_number) FROM VOTES
SELECT area_code FROM AREA_CODE_STATE GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = 'Tabatha Gehling'
SELECT area_code FROM AREA_CODE_STATE WHERE state = 'CA' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'TX' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'FL' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'NY' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'IL' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'PA' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'OH' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'MI' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'WI' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'MN' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'IA' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'MO' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'KS' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'NE' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'SD' INTERSECT SELECT area_code FROM AREA_CODE_STATE WHERE state = 'ND' INTERSECT
SELECT T1.contestant_name FROM Contestants AS T1 JOIN Votes AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.created >= DATEADD(DAY, -30, GETDATE())
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT SUM(surfacearea) FROM country WHERE continent = "Carribean"
SELECT Continent FROM country WHERE Code = 'AI'
SELECT Continent FROM country WHERE Code = 'AI'
SELECT Region FROM city WHERE Name = 'Kabul'
SELECT Region FROM city WHERE Name = 'Kabul'
SELECT Language FROM countrylanguage WHERE CountryCode = 'AB' ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = 'AB' ORDER BY Percentage DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Code = 'BRA'
SELECT Population, LifeExpectancy FROM country WHERE Code = "BRA"
SELECT Region, Population FROM country WHERE Code = 'AGO'
SELECT Region, Population FROM country WHERE Code = 'AGO'
SELECT AVG(lifeexpectancy) FROM country WHERE continent = 'Africa' AND region = 'Central Africa'
SELECT AVG(lifeexpectancy) FROM country WHERE continent = "Central Africa"
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT Population, MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT Population, MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT AVG(lifeexpectancy) FROM country WHERE continent = "Africa" AND governmentform = "Republic"
SELECT AVG(lifeexpectancy) FROM country WHERE continent = "Africa" AND governmentform = "Republic"
SELECT SUM(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT Population FROM city WHERE District = 'Gelderland'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US territory'
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code2 = 'US'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'AB'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AB'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English' AND Language = 'Dutch'
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English' AND Language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' AND T2.IsOfficial = 'T' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French' AND T2.IsOfficial = 'T'
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = 'Chinese'
SELECT Continent FROM countrylanguage WHERE Language = 'Chinese' GROUP BY Continent
SELECT Region FROM country WHERE Language = 'English' UNION SELECT Region FROM country WHERE Language = 'Dutch'
SELECT Region FROM country WHERE Language = 'Dutch' UNION SELECT Region FROM country WHERE Language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Code, T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'T' GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'T' GROUP BY Language HAVING COUNT(*) = 1 INTERSECT SELECT Language FROM countrylanguage WHERE GovernmentForm = 'Republic'
SELECT T1.Name FROM city AS T1 JOIN citylanguage AS T2 ON T1.ID = T2.CityID WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.LifeExpectancy FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT AVG(lifeexpectancy) FROM countrylanguage WHERE isofficial = 'F' AND language = 'English'
SELECT AVG(lifeexpectancy) FROM countrylanguage WHERE language = 'English' AND isofficial <> 'T'
SELECT SUM(Population) FROM country WHERE Language <> 'English'
SELECT COUNT(*) FROM countrylanguage WHERE Language <> 'English'
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = 'Beatrix' AND IsOfficial = 'T'
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = 'Beatrix' AND IsOfficial = 'T'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930 AND IsOfficial = 'T'
SELECT Code FROM country WHERE Continent = 'Europe'
SELECT Code FROM country WHERE Continent = 'Europe'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Continent = 'Asia' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Continent = 'Africa'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Continent = 'Asia' EXCEPT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Continent = 'Africa'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' AND T1.Continent = 'Africa' EXCEPT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' AND T1.Continent = 'Asia'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Continent = 'Africa' GROUP BY T2.CountryCode HAVING COUNT(*) > 1
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT Code FROM country WHERE NOT Language = 'English' AND NOT GovernmentForm = 'Republic'
SELECT Code FROM country WHERE NOT Language = 'English' AND NOT GovernmentForm = 'Republic'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' EXCEPT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' AND T2.IsOfficial = 'T'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = 'English' AND T2.IsOfficial <> 'T' AND T1.CountryCode = 'EUR'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = 'Chinese' AND T3.IsOfficial = 'T' AND T2.Continent = 'Asia'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = 'Chinese' AND T2.IsOfficial = 'T' AND T1.Continent = 'Asia' GROUP BY T1.Name
SELECT T1.Name, T1.IndepYear, T1.SurfaceArea FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population LIMIT 1
SELECT T1.Name, T1.IndepYear, T1.SurfaceArea FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Population LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, T1.Language, T1.IsOfficial, T1.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Percentage > 2
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city GROUP BY District
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city GROUP BY District
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT GovernmentForm, SUM(Population) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT Continent, AVG(LifeExpectancy), SUM(Population) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country WHERE Continent <> 'Antarctica' GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT T1.Name FROM city AS T1 JOIN city AS T2 ON T1.ID = T2.ID WHERE T2.Population BETWEEN 160000 AND 900000
SELECT T1.Name FROM city AS T1 JOIN city AS T2 ON T1.ID = T2.ID WHERE T2.Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT T1.Code, T2.Language, T2.Percentage FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 3
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish' ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish' AND Percentage > 50
SELECT Code FROM country WHERE Language = 'Spanish' ORDER BY Percentage DESC LIMIT 3
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' GROUP BY Language HAVING COUNT(*) > (SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish'
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE type <> "Live final"
SELECT MAX(share), MIN(share) FROM performance WHERE type <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT Name FROM conductor ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra WHERE Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded >= 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded >= 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM performance GROUP BY Orchestra_ID HAVING COUNT(*) > 1
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM performance GROUP BY Orchestra_ID HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT T1.name, T1.grade FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id JOIN Friend AS T3 ON T2.student_id = T3.student_id JOIN Friend AS T4 ON T3.friend_id = T4.student_id
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
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler GROUP BY name
SELECT name, COUNT(*) FROM Highschooler GROUP BY name
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT ID FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT ID FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler EXCEPT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Friend AS T3 ON T2.friend_id = T3.student_id GROUP BY T1.name HAVING COUNT(*) = 0
SELECT name FROM Highschooler EXCEPT SELECT friend_id FROM Friend
SELECT ID FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.liked_id GROUP BY Likes.liked_id
SELECT name, COUNT(*) FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.liked_id GROUP BY Likes.liked_id
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = 3
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT grade FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend) ORDER BY grade LIMIT 1
SELECT grade FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend ORDER BY grade LIMIT 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners UNION SELECT state FROM professionals
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = 'IN' OR (SELECT COUNT(*) FROM treatments WHERE professional_id = professional_id) > 2
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = 'IN' UNION SELECT professional_id, last_name, cell_number FROM treatments GROUP BY professional_id HAVING COUNT(*) > 2
SELECT name FROM dogs WHERE NOT cost_of_treatment > 1000
SELECT name FROM dogs WHERE owner_id = 1 AND cost_of_treatment < 1000
SELECT first_name FROM owners UNION SELECT first_name FROM professionals EXCEPT SELECT name FROM dogs
SELECT first_name FROM owners UNION SELECT first_name FROM professionals EXCEPT SELECT name FROM dogs
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT owner_id, first_name, last_name FROM owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, role_code, first_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM owners ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM treatment_types WHERE treatment_type_code = (SELECT treatment_type_code FROM treatments ORDER BY cost_of_treatment LIMIT 1
SELECT treatment_type_description FROM treatment_types WHERE cost_of_treatment = (SELECT MIN(cost_of_treatment) FROM treatments)
SELECT owner_id, zip_code FROM owners WHERE owner_id = (SELECT owner_id FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT owner_id, zip_code FROM owners ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM professionals WHERE treatment_type_code IN (SELECT treatment_type_code FROM treatments GROUP BY treatment_type_code HAVING COUNT(*) >= 2
SELECT first_name, last_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT first_name, last_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT date_of_treatment, first_name FROM treatments JOIN professionals ON treatments.professional_id = professionals.professional_id
SELECT date_of_treatment, first_name FROM treatments JOIN professionals ON treatments.professional_id = professionals.professional_id
SELECT T1.treatment_type_description, T1.cost_of_treatment FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT first_name, last_name, size_description FROM owners JOIN dogs USING (owner_id) JOIN sizes USING (size_code)
SELECT first_name, last_name, size_description FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id JOIN sizes ON dogs.size_code = sizes.size_code
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT name, date_of_treatment FROM treatments WHERE breed_code = (SELECT breed_code FROM breeds ORDER BY COUNT(*) DESC LIMIT 1
SELECT name, date_of_treatment FROM treatments WHERE treatment_type_code = 1 GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id WHERE state = "Virginia"
SELECT first_name, name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id WHERE state = 'Virginia'
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT last_name FROM owners WHERE owner_id = (SELECT owner_id FROM dogs ORDER BY age DESC LIMIT 1
SELECT last_name FROM owners WHERE owner_id = (SELECT owner_id FROM dogs ORDER BY age LIMIT 1
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments WHERE dog_id <> 0
SELECT COUNT(*) FROM Treatments WHERE dog_id <> 0
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT treatment_id IS NOT NULL
SELECT COUNT(*) FROM Owners WHERE NOT T1.dog_id IS NULL EXCEPT SELECT T1.dog_id FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT TREATMENT_ID IN (SELECT TREATMENT_ID FROM TREATMENTS)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM charges
SELECT charge_amount FROM charges WHERE charge_type = (SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges WHERE charge_type = (SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT breed_type, size_type FROM dogs GROUP BY breed_type, size_type
SELECT DISTINCT T1.breed_type, T2.size_type FROM dogs AS T1 JOIN sizes AS T2 ON T1.size_type = T2.size_type
SELECT first_name, treatment_type_description FROM professionals JOIN treatments ON professionals.professional_id = treatments.professional_id
SELECT first_name, treatment_type_description FROM professionals JOIN treatments ON professionals.professional_id = treatments.professional_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> "France"
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
SELECT Title, Name FROM song JOIN singer ON song.Singer_ID = singer.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*) > 1
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Singer_ID IS NULL
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = 'AirCon'
SELECT property_type_description FROM ref_property_types WHERE property_type_code = 3
SELECT property_name FROM properties WHERE room_count > 1 INTERSECT SELECT property_name FROM properties WHERE property_type_code = 'HSE' UNION SELECT property_name FROM properties WHERE property_type_code = 'APT'
