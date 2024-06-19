SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT Song_Name, Song_release_year FROM singer WHERE Age = (SELECT MIN(Age) FROM singer)
SELECT Song_Name, Song_release_year FROM singer WHERE Age = (SELECT MIN(Age) FROM singer)
SELECT DISTINCT T2.Country FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 20
SELECT DISTINCT T2.Country FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT T2.Song_Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > (SELECT AVG(Age) FROM singer)
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.Name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID
SELECT T1.Name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year >= 2014 GROUP BY T2.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013 GROUP BY T2.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM stadium AS T1 LEFT JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Stadium_ID IS NULL
SELECT T1.Name FROM stadium AS T1 LEFT JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Stadium_ID IS NULL
SELECT T1.Country FROM singer AS T1 JOIN singer AS T2 ON T1.Country = T2.Country WHERE T1.Age > 40 AND T2.Age < 30
SELECT T1.Name FROM stadium AS T1 EXCEPT SELECT T2.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014"
SELECT T1.Name FROM stadium AS T1 LEFT JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year <> "2014"
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.Year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.Year = "2014"
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT Stadium_ID FROM stadium ORDER BY Capacity LIMIT 1)
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT Stadium_ID FROM stadium ORDER BY Capacity LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE PetType = "dog" ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT PetType, MAX(weight), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT COUNT(*) FROM Pets WHERE PetID IN (SELECT PetID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE age > 20))
SELECT COUNT(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T3.StuID = T2.StuID WHERE T3.age > 20
SELECT COUNT(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T3.StuID = T2.StuID WHERE T1.Pettype = "dog" AND T3.Sex = "F"
SELECT COUNT(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T3.StuID = T2.StuID WHERE T1.PetType = "dog" AND T3.Sex = "F"
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat") INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat") INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog"))
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT Fname, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat")) INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog")
SELECT Fname FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat")) INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog")
SELECT PetType, weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)
SELECT PetType, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pet_type
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT T2.PetID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = 'Smith'
SELECT T2.PetID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = "Smith"
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" AND Pet_age = 3))
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" AND Pet_age = 3))
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(DISTINCT Continent) FROM countries
SELECT COUNT(DISTINCT Continent) FROM countries
SELECT T1.Continent, T2.Continent, COUNT(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.ContId GROUP BY T1.Continent
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T2.Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT T1.Id, T1.FullName, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT Model FROM model_list WHERE Model = (SELECT Model FROM car_names WHERE Make = (SELECT MIN(Horsepower) FROM cars_data) LIMIT 1) LIMIT 1)
SELECT Model FROM model_list WHERE Model = (SELECT Model FROM car_names WHERE Make = (SELECT MIN(Horsepower) FROM cars_data) LIMIT 1) LIMIT 1)
SELECT Model FROM model_list WHERE NOT Model IN (SELECT Model FROM model_list WHERE Model NOT IN (SELECT Model FROM car_names WHERE NOT Weight >= (SELECT AVG(Weight) FROM car_names)
SELECT Model FROM model_list WHERE Model NOT IN (SELECT Model FROM model_list JOIN car_names ON Model = Model WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT T1.Maker FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Year = 1970
SELECT T1.Maker FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Year = 1970 GROUP BY T1.Maker
SELECT T1.Make, T1.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Year = (SELECT MIN(Year) FROM cars_data)
SELECT T1.Maker, T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Year = (SELECT MIN(Year) FROM cars_data) LIMIT 1
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Continent
SELECT T1.Continent, COUNT(*) FROM car_makers AS T2 JOIN continents AS T1 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT T1.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.Country GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Country FROM car_makers AS T1 GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS count, T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T1.Maker, COUNT(*) AS Models FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T2.Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Make = "amc" AND T1.Model = "hornet sportabout"
SELECT T2.Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Make = "AMC" AND T1.Model = "Hornet Sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM model_list WHERE maker = (SELECT Id FROM car_makers WHERE Country = "USA")
SELECT COUNT(*) FROM model_list JOIN car_makers ON model_list.Maker = car_makers.Id WHERE car_makers.Country = "United States"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 0
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country HAVING COUNT(*) > 0
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR, AVG(WEIGHT) FROM cars_data GROUP BY YEAR
SELECT YEAR, AVG(WEIGHT), AVG(Edispl) FROM cars_data GROUP BY YEAR
SELECT T1.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.Country WHERE T2.Continent = "Europe" GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT T1.Country FROM car_makers AS T2 JOIN countries AS T1 ON T1.CountryId = T2.ContId WHERE T2.Continent = "Europe" GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT T1.Horsepower FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 3 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.Make, T2.Horsepower FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T1.MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Edispl) FROM car_names JOIN cars_data ON MakeId = Id WHERE Model = "volvo"
SELECT AVG(Edispl) FROM car_names JOIN cars_data ON MakeId = Id WHERE Model = "Volvo"
SELECT Cylinders, MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT Cylinders, MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_names WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE maker = (SELECT Id FROM car_makers WHERE FullName = "American Motor Company")
SELECT COUNT(*) FROM model_list WHERE maker = (SELECT Id FROM car_makers WHERE Maker = "American Motor Company")
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T1.Maker FROM model_list AS T2 JOIN car_makers AS T1 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" OR T2.Country = "USA" AND T1.Model NOT IN (SELECT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "General Motors" OR Country = "USA") EXCEPT SELECT Model FROM car_names) EXCEPT SELECT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "General Motors" OR Country = "USA") EXCEPT SELECT Model FROM car_names) EXCEPT SELECT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "General Motors" OR Country = "USA") EXCEPT SELECT Model FROM car_names) EXCEPT SELECT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "General Motors" OR Country = "USA") EXCEPT SELECT Model FROM car_names) EXCEPT SELECT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "General Motors" OR Country = "USA") EXCEPT SELECT Model FROM car_names) EXCEPT SELECT Model FROM model
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Make = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT >= 3000 AND WEIGHT <= 4000
SELECT DISTINCT T1.Year FROM cars_data AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T1.Weight < 4000 AND T2.Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T1.Cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Model = "Volvo" ORDER BY T2.Accelerate LIMIT 1
SELECT T1.Cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Model = "Volvo" ORDER BY T2.Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM countries WHERE (SELECT COUNT(*) FROM car_makers WHERE Country = ContId) > 2
SELECT COUNT(*) FROM countries WHERE (SELECT COUNT(*) FROM car_makers WHERE Country = CountryId) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Model FROM model_list WHERE Model IN (SELECT Model FROM car_names WHERE Cylinders = 4) ORDER BY (SELECT MAX(Horsepower) FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names WHERE Model = Model) LIMIT 1) DESC LIMIT 1) LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY AVG(T2.Horsepower) DESC LIMIT 1
SELECT T1.MakeId, T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND T2.Cylinders <= 3
SELECT T1.MakeId, T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Horsepower <> (SELECT MIN(Horsepower) FROM cars_data) AND T2.Cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Weight < 3500 AND T2.Make <> 'Ford Motor Company'
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < 3500 AND T1.Make <> "Ford"
SELECT T1.Country FROM countries AS T1 LEFT JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country IS NULL
SELECT T1.CountryName FROM countries AS T1 LEFT JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country IS NULL
SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 3
SELECT T1.Id, T1.Maker FROM model_list AS T2 JOIN car_makers AS T1 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'fiat' GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Fiat" GROUP BY T1.CountryId HAVING COUNT(*) > 3
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT CountryAbbrev FROM airports WHERE AirportName = "Jetblue Airways"
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
SELECT City, Country FROM airports WHERE AirportName = "Alton"
SELECT City, Country FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATL"
SELECT COUNT(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABT"
SELECT COUNT(*) FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABT"
SELECT COUNT(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen') AND DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Ashley')
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABT" AND DestAirport = "ASH"
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = 'JetBlue Airways')
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Abbreviation = "JetBlue")
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = 'United Airlines') AND DestAirport = 'ASY'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ASY" AND Airline = (SELECT UID FROM airlines WHERE Abbreviation = "UA")
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Abbreviation = 'UA') AND SourceAirport = 'AHD'
SELECT COUNT(*) FROM flights WHERE SourceAirport = "AHD" AND Airline = (SELECT UID FROM airlines WHERE Abbreviation = "UA")
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Abbreviation = "UA") AND DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Abbreviation = "UA") AND DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM flights WHERE DestAirport = T1.AirportCode GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Abbreviation, T2.Country FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID GROUP BY T1.Airline ORDER BY COUNT(*) LIMIT 1
SELECT T2.Abbreviation FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID GROUP BY T1.Airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO'
SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO"
SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT Airline FROM flights WHERE SourceAirport = "CVO" EXCEPT SELECT Airline FROM flights WHERE SourceAirport = "APG"
SELECT T1.Airline FROM flights AS T2 JOIN airlines AS T1 ON T1.uid = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT Airline FROM airlines WHERE NOT UID IN (SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 200)
SELECT FlightNo FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Abbreviation = "UA")
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport = "ABER"
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = "ABER"
SELECT COUNT(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen") OR DestAirport IN (SELECT AirportCode FROM airports WHERE City = "Abilene")
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABT" OR DestAirport = "ABI"
SELECT T1.AirportName FROM airports AS T1 LEFT JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport OR T1.AirportCode = T2.DestAirport WHERE T2.FlightNo IS NULL GROUP BY T1.AirportName HAVING COUNT(*) = 0
SELECT T1.AirportName FROM airports AS T1 LEFT JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport OR T1.AirportCode = T2.DestAirport WHERE T2.FlightNo IS NULL GROUP BY T1.AirportName HAVING COUNT(*) = 2
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT COUNT(*) FROM employee GROUP BY City
SELECT COUNT(*) FROM employee GROUP BY City
SELECT T1.City FROM employee AS T1 WHERE T1.Age < 30 GROUP BY T1.City HAVING COUNT(*) > 1
SELECT T1.City FROM employee AS T1 WHERE T1.Age < 30 GROUP BY T1.City HAVING COUNT(*) > 1
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
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.Bonus = (SELECT MAX(Bonus) FROM evaluation WHERE Bonus <> 0) LIMIT 1)
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM Evaluation)
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM Evaluation)
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM shop AS T1 LEFT JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID WHERE T2.Employee_ID IS NULL
SELECT T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID WHERE T1.Employee_ID IS NULL
SELECT T1.Name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID
SELECT T1.Name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT DISTINCT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 AND T2.Number_products > 10000
SELECT DISTINCT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 AND T2.Number_products > 10000
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT T1.Document_Name, T2.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = "Robbin CV"
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = "Robbin CV"
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(DISTINCT Template_ID) FROM Documents
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_type_code = 'PPT'
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_type_code = "PPT"
SELECT T1.Template_ID, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types
SELECT Template_ID FROM Templates WHERE Template_type_code = "PP" OR Template_type_code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_type_code = "PP" OR Template_type_code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT T1.Template_Type_Code, COUNT(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code
SELECT Template_Type_Code, COUNT(*) FROM Ref_Template_Types JOIN Templates ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Ref_Template_Types GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) >= 3)
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) >= 3)
SELECT Version_Number, Template_Type_Code FROM Templates ORDER BY Version_Number LIMIT 1
SELECT T1.Template_Type_Code, MIN(T2.Version_Number) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_type_code ORDER BY MIN(T2.Version_Number) LIMIT 1
SELECT T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_type_code = "BK"
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_type_code = "BK"
SELECT T1.Template_Type_Code, COUNT(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID GROUP BY T1.Template_Type_Code
SELECT T1.Template_Type_Code, COUNT(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T2.Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_type_code = T2.Template_type_code WHERE T2.Template_ID IN (SELECT Template_ID FROM Documents)
SELECT DISTINCT T1.Template_Details FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_type_code = T2.Template_type_code WHERE T2.Template_type_description = "Presentation"
SELECT Template_ID FROM Templates WHERE Template_Details = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show')
SELECT COUNT(*) FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show')
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY')
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY')
SELECT Paragraph_Text FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Document_Name = 'Customer reviews'
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT T1.Document_ID, T1.Document_Name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID
SELECT T1.Document_ID, T1.Document_Name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Documents WHERE NOT Document_ID IN (SELECT Document_ID FROM Paragraphs) LIMIT 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Ireland'
SELECT T1.Document_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Paragraph_Text = 'Brazil' OR T1.Paragraph_Text = 'Ireland'
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
SELECT Hometown FROM teacher WHERE Age = (SELECT MIN(Age) FROM teacher)
SELECT Hometown FROM teacher WHERE Age = (SELECT MIN(Age) FROM teacher)
SELECT T1.Hometown, COUNT(*) FROM teacher AS T1 GROUP BY T1.Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T.Name FROM teacher AS T JOIN course_arrange AS CA ON T.Teacher_ID = CA.Teacher_ID JOIN course AS C ON CA.Course_ID = C.Course_ID WHERE C.Course = "Math"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT T1.Name FROM teacher AS T1 LEFT JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Teacher_ID IS NULL
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > "2010")
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID HAVING COUNT(*) > 1
SELECT T1.ID, T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY SUM(T2.Total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM visit AS T2 JOIN museum AS T1 ON T1.Museum_ID = T2.Museum_ID GROUP BY T2.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(Total_spent) FROM visit WHERE visitor_ID IN (SELECT ID FROM visitor WHERE Level_of_membership = 1)
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.museum_id = T3.Museum_ID WHERE T3.Open_Year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.museum_id = T3.Museum_ID WHERE T3.Open_Year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT ID IN (SELECT visitor_ID FROM visit WHERE museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > 2010))
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
SELECT AVG(ranking) FROM rankings WHERE player_id IN (SELECT winner_id FROM matches)
SELECT MAX(loser_rank) FROM matches
SELECT MAX(ranking) FROM rankings
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date = "2013-01-01" INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date = "2016-01-01"
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking = 1 AND T2.tours = 2 INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships"
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "Left" ORDER BY birth_date
SELECT T1.first_name, T2.tours FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, SUM(winner_rank_points) FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T2.ranking_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM players JOIN rankings ON player_id = player_id GROUP BY player_id
SELECT T1.first_name, AVG(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT COUNT(*) FROM players GROUP BY country_code
SELECT COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT COUNT(*) FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "Left" AND T2.tourney_name = "WTA Championships"
SELECT COUNT(*) FROM matches WHERE winner_hand = "Left" AND tourney_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(injured), MIN(injured) FROM death GROUP BY note
SELECT AVG(injured) FROM death
SELECT T1.note, T1.injured, T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = "Brig"
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id HAVING SUM(T2.killed) > 10
SELECT caused_by_ship_id, COUNT(*) FROM death GROUP BY caused_by_ship_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T1.bulgarian_commander = 'Kaloyan' AND T1.latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE location = "English Channel")
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM Addresses
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE "Math%"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea"
SELECT T1.department_id, T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_id, T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT COUNT(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT course_name, course_id FROM courses WHERE course_id NOT IN (SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) > 2)
SELECT course_name, course_id FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) >= 2)
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT semester_id, semester_name FROM semesters GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%the computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_program_id = 2 AND T2.semester_id = 2
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN semesters AS T4 ON T2.semester_id = T4.semester_id WHERE T3.degree_program_id = 2 AND T4.semester_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, COUNT(*) FROM student_enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM student_enrolment AS T2 JOIN students AS T1 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM student_enrolment AS T2 JOIN students AS T1 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 LEFT JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.semester_id IS NULL
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT student_id FROM degree_programs
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "North Carolina") EXCEPT SELECT last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment)
SELECT transcript_date, transcript_id FROM Transcripts WHERE COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM students)
SELECT first_name, middle_name, last_name FROM students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM students) LIMIT 1
SELECT first_name, middle_name, last_name FROM students WHERE date_left IS NOT NULL ORDER BY date_left LIMIT 1
SELECT first_name, middle_name, last_name FROM students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM students)
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3, T1.city, T1.zip_postcode, T1.state_province_county, T1.country FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts WHERE transcript_id = 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT COUNT(*) FROM student_enrolment_courses GROUP BY course_id ORDER BY COUNT(*) LIMIT 1
SELECT T1.course_id, COUNT(*) FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, COUNT(*) FROM Transcript_Contents GROUP BY transcript_date ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT semester_id FROM student_enrolment WHERE degree_program_id = (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Master") INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Bachelor")
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 1 INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = 2
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id
SELECT * FROM Students ORDER BY last_name DESC, first_name DESC
SELECT other_student_details FROM students ORDER BY last_name DESC
SELECT section_name FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id = (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
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
SELECT COUNT(DISTINCT Series_name), COUNT(DISTINCT Content) FROM TV_Channel
SELECT COUNT(DISTINCT Series_name), COUNT(DISTINCT Content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE id = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T1.Series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle!"
SELECT T1.Series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
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
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE Channel = (SELECT id FROM TV_channel WHERE Series_name = "Sky Radio")
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, Series_name FROM TV_Channel WHERE Hight_definition_TV = "Yes"
SELECT T1.Package_Option, T2.Series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Hight_definition_TV = "Yes"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by <> "Todd Casey" GROUP BY T1.Country
SELECT DISTINCT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by <> "Todd Casey"
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Country FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2
SELECT Channel FROM TV_series GROUP BY Channel HAVING COUNT(*) > 2
SELECT T1.id FROM TV_Channel AS T1 LEFT JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by <> "Ben Jones"
SELECT T1.id FROM TV_Channel AS T1 LEFT JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by <> "Ben Jones"
SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by <> "Ben Jones"
SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
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
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE Earnings > 300000)
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE Earnings > 300000)
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player) ORDER BY Final_Table_Made ASC
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player WHERE People_ID IN (SELECT MAX(Height) FROM people)
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE PEOPLE_ID IN (SELECT PEOPLE_ID FROM people WHERE Height > 200)
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player) ORDER BY Earnings DESC
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player) ORDER BY Earnings DESC
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
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT MAX(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT contestant_number, contestant_name FROM CONTESTANTS WHERE contestant_number IN (SELECT contestant_number FROM VOTES) GROUP BY contestant_number HAVING COUNT(*) >= 2)
SELECT contestant_number, contestant_name FROM CONTESTANTS WHERE contestant_number IN (SELECT contestant_number FROM VOTES) GROUP BY contestant_number ORDER BY COUNT(*) LIMIT 1)
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM AREA_CODE_STATE GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM VOTES WHERE contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Tabatha Gehling')
SELECT T1.area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT Continent FROM country WHERE Code = 'AG'
SELECT Continent FROM country WHERE Code = "ABW"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT Region FROM country WHERE Name = "Afghanistan"
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia'
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = "Asia"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(population) FROM city WHERE district = "Gelderland"
SELECT SUM(population) FROM city WHERE district = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "US Territory"
SELECT AVG(GNP), SUM(Population) FROM country WHERE Continent = "United States"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") INTERSECT SELECT CountryCode FROM countrylanguage WHERE Language = "Dutch"
SELECT COUNT(*) FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "Dutch")
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'French' AND T2.IsOfficial = 'T'
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Dutch' OR T2.Language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = "Asia") GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY Population DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" AND IsOfficial = "T")
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" AND IsOfficial = "T")
SELECT SUM(population) FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT SUM(population) FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix" AND T2.IsOfficial = "T"
SELECT T1.Language FROM country AS T2 JOIN countrylanguage AS T1 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = "T"
SELECT COUNT(DISTINCT T1.Language) FROM country AS T2 JOIN countrylanguage AS T1 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT COUNT(*) FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT COUNT(*) FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT COUNT(*) FROM country WHERE Continent = "Africa" AND Population < (SELECT MIN(Population) FROM country WHERE Continent = "Asia")
SELECT COUNT(*) FROM country WHERE Continent = "Africa" AND Population < (SELECT MIN(Population) FROM country WHERE Continent = "Asia")
SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.Continent = T2.Continent WHERE T1.Continent = "Asia" GROUP BY T1.Continent HAVING MAX(T1.Population) > MAX(T2.Population) WHERE T2.Continent = "Africa"
SELECT Name FROM country WHERE Continent = "Asia" AND Population > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm <> 'Republic'
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm <> 'Republic'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" INTERSECT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T1.CountryCode = T3.CountryCode WHERE T3.Language = "English" AND T3.IsOfficial = "T"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' JOIN countrylanguage AS T3 ON T1.CountryCode = T3.CountryCode WHERE T3.Language = 'English'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "Chinese" AND IsOfficial = "T")
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T2.IsOfficial = "T"
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT COUNT(*) FROM city WHERE district = T1.district AND population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT governmentform, SUM(population) FROM country GROUP BY governmentform HAVING AVG(lifeexpectancy) > 72
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT continent, AVG(lifeexpectancy), SUM(population) FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT continent, SUM(population), AVG(lifeexpectancy) FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT Name FROM country WHERE Continent = "Europe" AND Population > 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country AS T2 JOIN countrylanguage AS T1 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Code, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language ORDER BY MAX(T2.Percentage) DESC LIMIT 1
SELECT COUNT(*) FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1)
SELECT COUNT(*) FROM country WHERE NOT Code = (SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode HAVING COUNT(*) = MAX(COUNT(*)) LIMIT 1)
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T2.CountryCode HAVING COUNT(*) > 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
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
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Orchestra FROM orchestra AS T1 LEFT JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Orchestra_ID IS NULL
SELECT T1.Orchestra FROM orchestra AS T1 LEFT JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Orchestra_ID IS NULL
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
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
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(*) FROM Friend WHERE student_id = ID
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.name = "Kyle"
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT T1.ID FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T1.ID = T3.student_id WHERE T2.friend_id <> T3.liked_id
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.student_id
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) INTERSECT SELECT student_id FROM Likes)
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T1.ID = T3.student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT state FROM owners GROUP BY state HAVING COUNT(*) > 0 INTERSECT SELECT state FROM professionals GROUP BY state HAVING COUNT(*) > 0
SELECT DISTINCT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.state = T2.state
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = "Indiana" OR COUNT(*) > 2 FROM Treatments GROUP BY professional_id HAVING COUNT(*) > 2
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = "Indiana" OR professional_id IN (SELECT professional_id FROM Treatments) GROUP BY professional_id HAVING COUNT(*) > 2)
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment <= 1000
SELECT T1.first_name FROM Professionals AS T1 UNION SELECT T2.first_name FROM Owners AS T2 EXCEPT SELECT T3.name FROM Dogs AS T3
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT name FROM Dogs
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 WHERE NOT T1.professional_id IN (SELECT T2.professional_id FROM Treatments AS T2)
SELECT owner_id, first_name, last_name FROM owners GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM owners GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments) GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM breeds WHERE breed_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.owner_id, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T2.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T2.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM treatment_types WHERE treatment_type_code IN (SELECT treatment_type_code FROM treatments GROUP BY treatment_type_code ORDER BY SUM(cost_of_treatment) LIMIT 1)
SELECT treatment_type_code FROM treatment_types JOIN treatments ON treatment_types.treatment_type_code = treatments.treatment_type_code GROUP BY treatment_type_code ORDER BY SUM(cost_of_treatment) LIMIT 1
SELECT owner_id, zip_code FROM dogs JOIN treatments ON dogs.dog_id = treatments.dog_id GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT owner_id, zip_code FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT first_name, last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT date_of_treatment, first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT cost_of_treatment, treatment_type_description FROM Treatments JOIN Treatment_Types ON treatment_type_code = treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY COUNT(*) LIMIT 1)
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY COUNT(*) LIMIT 1)
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived, T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT MIN(age) FROM dogs)
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT MIN(age) FROM dogs)
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(*) FROM dogs JOIN treatments ON dogs.dog_id = treatments.dog_id
SELECT COUNT(*) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
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
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, SUM(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_type, SUM(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT T1.breed_name, T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_type, T2.size_type FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_type = T2.size_type
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE NOT Citizenship = "France"
SELECT Name FROM singer WHERE NOT Citizenship = "French"
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
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000 GROUP BY T2.Singer_ID
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT T1.Name FROM singer AS T1 LEFT JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_ID IS NULL
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = (SELECT feature_type_code FROM Other_Available_Features WHERE feature_name = "AirCon")
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties WHERE property_id = 1)
SELECT property_name FROM Properties WHERE property_type_code = "hse" OR property_type_code = "apt" AND room_count > 1
