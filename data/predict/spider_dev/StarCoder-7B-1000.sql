SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "French"
SELECT Name, Song_release_year FROM singer ORDER BY Age DESC LIMIT 1
SELECT Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT DISTINCT T1.country FROM singer AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id WHERE T1.age > 20
SELECT DISTINCT T1.country FROM singer AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id WHERE T1.age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT T2.Song_Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T3.Singer_ID = T2.Singer_ID WHERE T3.age > (SELECT AVG(T3.age) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T3.Singer_ID = T2.Singer_ID)
SELECT T2.Song_Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T3.Singer_ID = T2.Singer_ID WHERE T3.age > T3.age AVG(T3.age)
SELECT LOCATION, Name FROM Stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION, Name FROM station WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM Stadium
SELECT AVG(capacity), MAX(capacity) FROM Stadium
SELECT name, capacity FROM Stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM Stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE year = "2014" OR year = "2015"
SELECT COUNT(*) FROM concert WHERE year = "2014" OR year = "2015"
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT Stadium_ID, COUNT(*) FROM concert GROUP BY Stadium_ID
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM concert GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM concert GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Stadium_Name FROM Stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM Stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT Name FROM Stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT Name FROM Stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.concert_Name, T2.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.Name, COUNT(*) FROM concert AS T2 JOIN singer_in_concert AS T3 ON T3.concert_ID = T2.concert_ID JOIN singer AS T1 ON T1.Singer_ID = T3.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, COUNT(*) FROM concert AS T2 JOIN singer_in_concert AS T3 ON T3.concert_ID = T2.concert_ID JOIN singer AS T1 ON T1.Singer_ID = T3.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T3.Singer_ID = T2.Singer_ID WHERE T1.Year = "2014"
SELECT T1.Name FROM concert AS T2 JOIN singer_in_concert AS T3 ON T3.concert_ID = T2.concert_ID JOIN singer AS T1 ON T1.Singer_ID = T3.Singer_ID WHERE T2.Year = "2014"
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT T1.name, T1.location FROM concert AS T2 JOIN stadium AS T1 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2014" INTERSECT SELECT T1.name, T1.location FROM concert AS T2 JOIN stadium AS T1 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2015"
SELECT T1.name, T1.location FROM concert AS T2 JOIN stadium AS T1 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2014" INTERSECT SELECT T1.name, T1.location FROM concert AS T2 JOIN stadium AS T1 ON T1.stadium_id = T2.stadium_id WHERE T2.year = "2015"
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM Stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM Stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T2.PetType = "Dog" AND T3.sex = "F"
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T2.PetType = "Dog" AND T3.sex = "F"
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" OR T3SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Cat_Pet)
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Cat)
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1)
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Cat_as_Pet)
SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog" EXCEPT SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog" AND T3.PetID <> T3.PetID WHERE T3.PetType = "Cat"
SELECT pettype, weight FROM pets ORDER BY pet_age DESC LIMIT 1
SELECT PetType, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age) FROM Pets
SELECT AVG(pet_age), MAX(pet_age) FROM Pets
SELECT AVG(weight) FROM Pets
SELECT AVG(weight) FROM Pets
SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID LIMIT 1
SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT PetID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT PetID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING COUNT(*) > 1
SELECT T1.Fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Cat AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.CatID WHERE T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Cat AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.CatID WHERE T3.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(DISTINCT Continent) FROM continents
SELECT COUNT(*) FROM continents
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T1.Maker, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT Model FROM car_names ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM car_names ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM model_list WHERE Weight < (SELECT AVG(Weight) FROM model_list)
SELECT Model FROM model_list WHERE Weight < (SELECT AVG(Weight) FROM model_list)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Maker WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T3.MakeId = T2.Id WHERE T3.Make = "1970"
SELECT Make, Production_time FROM cars_data ORDER BY year ASC LIMIT 1
SELECT T1.Maker, T1.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Year LIMIT 1
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model JOIN cars_data AS T3 ON T2.MakeId = T3.Id WHERE T3.Year > 1980
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT country FROM car_makers GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T1.Maker, COUNT(T1.ModelId), T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT Accelerate FROM cars_data WHERE Make = "amc hornet sportabout" AND Model = "sw"
SELECT Accelerate FROM cars_data WHERE Make = "AMC Hornet Sportabout" AND Model = "sw"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(DISTINCT Maker) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM model_list WHERE Maker = "USA"
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE Country = "USA")
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974 ORDER BY Weight ASC LIMIT 1
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.country, T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.country = T2.country WHERE T1.countryid IN (SELECT T3.countryid FROM countries AS T3 JOIN car_makers AS T4 ON T3.country = T4.country GROUP BY T3.countryid HAVING COUNT(*) >= 1)
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country = T2.Country WHERE T1.countryid IN (SELECT T3.countryid FROM countries AS T3 JOIN car_makers AS T4 ON T3.country = T4.country WHERE T4.countryid IN (SELECT T5.countryid FROM countries AS T5 JOIN car_names AS T6 ON T5.country = T6.country WHERE T6.model = "Maserati" UNION SELECT T5.countryid FROM countries AS T5 JOIN car_names AS T6 ON T5.country = T6.country WHERE T6.model = "Ducati" UNION SELECT T5.countryid FROM countries AS T5 JOIN car_names AS T6 ON T5.country = T6.country WHERE T6.model = "Ferrari" UNION SELECT T5.countryid FROM countries AS T5 JOIN car_names AS T6 ON T5.country = T6.country WHERE T6.model = "Lamborghini" UNION SELECT T5.countryid FROM countries AS T5 JOIN car_
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight) FROM cars_data
SELECT AVG(Weight), AVG(Year) FROM cars_data
SELECT country FROM car_makers GROUP BY country HAVING COUNT(*) >= 3
SELECT T1.country_name FROM countries AS T1 JOIN car_makers AS T2 ON T1.country_id = T2.country_id WHERE T1.continent = "Europe" GROUP BY T1.country_name HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3
SELECT Horsepower, Make FROM cars_data WHERE Cylinders = 3 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE year < 1980
SELECT AVG(horsepower) FROM cars_data WHERE year < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT AVG(edispl) FROM cars_data WHERE Make = "Volvo"
SELECT MAX(accelerate) FROM cars_data
SELECT MAX(accelerate) FROM cars_data
SELECT Model FROM car_names GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE year = 1980
SELECT COUNT(*) FROM car_names
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT COUNT(*) FROM model_list WHERE Maker = "American Motor Company"
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.MakeId WHERE T1.FullName = "General Motors" OR T1.Weight > 3500
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = "General Motors" INTERSECT SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Weight > 3500
SELECT year FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T3.Model = T2.Model WHERE T1.Weight < 4000 INTERSECT SELECT DISTINCT T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T3.Model = T2.Model WHERE T1.Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Accelerate = (SELECT MIN(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data ORDER BY Horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data ORDER BY Horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM countries WHERE COUNT(*) > 2
SELECT COUNT(*) FROM countries WHERE COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM cars_data WHERE Cylinders = 4 GROUP BY Model ORDER BY MAX(Horsepower) DESC LIMIT 1
SELECT MakeId, Make FROM car_names WHERE Horsepower > (SELECT MIN(Horsepower) FROM car_names) INTERSECT SELECT MakeId, Make FROM car_names WHERE Cylinders > 3
SELECT MakeId, Make FROM car_names WHERE Horsepower < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM model_list WHERE Weight < 3500 AND Maker <> 'Ford Motor Company'
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < 3500 AND T1.Maker <> "Ford Motor Company"
SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.country = T2.country GROUP BY T1.country HAVING COUNT(*) = 1
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country = T2.Country WHERE T2.Maker > 3 OR T2.Model = "fiat"
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country = T2.Country WHERE T2.Maker > 3 INTERSECT SELECT T3.CountryId, T3.CountryName FROM countries AS T3 JOIN model_list AS T4 ON T3.Country = T4.Country WHERE T4.Model = "Fiat"
SELECT country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT COUNT(DISTINCT Airline) FROM flights
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT City, Country FROM airports WHERE AirportCode = "A2"
SELECT City, Country FROM airports WHERE AirportCode = "ALTON"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceCity = "Aberdeen" AND DestCity = "Ashley"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM flights WHERE Airline = "JetBlue Airways"
SELECT COUNT(*) FROM flights WHERE Airline = "Jetblue Airways"
SELECT COUNT(*) FROM flights WHERE Airline = "United Airlines" AND DestAirport = "ASY"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ASY" AND Airline = "United"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "AHD" AND Airline = "United Airlines"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "AHD" AND Airline = "United"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "Aberdeen" AND Airline = "United"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen" AND Airline = "United"
SELECT city FROM flights GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport, COUNT(*) FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM flights GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport, COUNT(*) FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) LIMIT 1
SELECT T2.Abbreviation, T2.country FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Austin"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportCode = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Uid WHERE T1.DestAirport = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportCode = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.AirportCode = "APG" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T3.AirportCode = "CVO"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.AirportCode = "APG" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.AirportCode = "CVO"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "CVO" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "APG"
SELECT Airline FROM flights WHERE SourceAirport = "CVO" INTERSECT SELECT Airline FROM flights WHERE SourceAirport = "APG"
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = "United"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABERDEEN" OR DestAirport = "ABILENE"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY Age ASC
SELECT Name FROM Employee ORDER BY Age ASC
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT COUNT(*), city FROM Employee GROUP BY city
SELECT city FROM Employee WHERE age > 30 GROUP BY city HOP(DISTINCT city) > 1
SELECT city FROM Employee GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Employee_ID, Name FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Employee_name FROM evaluation GROUP BY Employee_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Employee_name FROM Employee ORDER BY Bonus DESC LIMIT 1
SELECT Employee_name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT Name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT shop_name, COUNT(*) FROM hiring GROUP BY shop_name
SELECT T1.number_employees, T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT DISTINCT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID WHERE T1.Number_products < 3000 INTERSECT SELECT DISTINCT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID WHERE T1.Number_products > 1000
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
SELECT COUNT(DISTINCT T1.Template_ID) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT COUNT(DISTINCT T1.Template_ID) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID JOIN Ref_Template_Types AS T3 ON T3.Template_Type_Code = T2.Template_Type_Code WHERE T3.Template_Type_Code = "PPT"
SELECT COUNT(*) FROM Documents WHERE Template_type_code = "PPT"
SELECT T1.Template_ID, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT template_id, COUNT(*) FROM documents GROUP BY template_id
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_type_code, COUNT(*) FROM Templates GROUP BY Template_type_code
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Ref_Template_types GROUP BY Template_type_code HAVING COUNT(*) < 3
SELECT Template_type_code FROM Ref_Template_types WHERE COUNT(*) < 3
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY MIN(Version_Number) ASC LIMIT 1
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY MIN(Version_Number) ASC LIMIT 1
SELECT T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name = "Data base"
SELECT T2.Template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name = "Data base"
SELECT T2.Document_Name FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN Ref_Template_Types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T3.Template_Type_Code = "BK"
SELECT T2.Document_Name FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN Ref_Template_Types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T3.Template_Type_Code = "BK"
SELECT T1.Template_type_code, COUNT(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_type_code = T2.Template_type_code GROUP BY T1.Template_type_code
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_type_code FROM Documents GROUP BY Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT T2.Template_Type_Description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.Template_Type_Description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Details FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT template_id FROM templates WHERE template_type_code = (SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Presentation")
SELECT template_id FROM templates WHERE template_details = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = "Summer Show"
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = "Summer Show"
SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text = "Korea"
SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text = "Korea"
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Welcome to NY'
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Welcome to NY'
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = "customer reviews"
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = "Customer reviews"
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT T1.Document_ID, T1.Document_Name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs WHERE paragraph_id BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = "Brazil" INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = "Ireland"
SELECT document_id FROM paragraphs WHERE paragraph_text = "Brazil" INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = "Ireland"
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = "32" OR Age = "33"
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT hometown FROM teacher GROUP BY hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T1.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.name, T1.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T3.course_id = T2.course_id
SELECT T2.Name, T1.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T2.Name, T1.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = 'Math'
SELECT T2.name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT T2.name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <> 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age FROM old to young
SELECT Museum_ID, Name FROM Museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT visitor_id, name, age FROM visitor WHERE visitor_id IN (SELECT visitor_id FROM visit)
SELECT visitor_id, name, level_of_membership FROM visit ORDER BY total_spent DESC LIMIT 1
SELECT Museum_ID, Name FROM visit GROUP BY Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM Museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT Name, Age FROM visitor ORDER BY Num_of_Ticket DESC LIMIT 1
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit
SELECT SUM(total_spent) FROM visit WHERE level_of_membership = 1
SELECT Name FROM visitor WHERE visitor_id IN (SELECT visitor_id FROM visit WHERE Museum_ID IN (SELECT Museum_ID FROM museum WHERE open_year < 2009 UNION SELECT Museum_ID FROM museum WHERE open_year > 2011)
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit)
SELECT COUNT(*) FROM Museum WHERE open_year > 2013 OR open_year < 2008
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
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY COUNT(*) DESC LIMIT 1
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE tourney_date = "2013-12-31" INTERSECT SELECT winner_name FROM matches WHERE tourney_date = "2016-12-31"
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date ASC
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'Left' ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, ranking_points FROM rankings GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, ranking_points FROM players ORDER BY tours DESC LIMIT 1
SELECT winner_name FROM players ORDER BY ranking_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM players GROUP BY first_name
SELECT T1.first_name, AVG(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT ranking_points, first_name FROM players GROUP BY ranking_points ORDER BY ranking_points DESC
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY SUM(T2.ranking_points) DESC LIMIT 1
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(*) FROM matches GROUP BY ranking_date
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT COUNT(DISTINCT winner_id, winner_hand) FROM matches WHERE tourney_name = "WTA Championships"
SELECT COUNT(*) FROM matches WHERE winner_hand = 'Left' AND tourney_name = 'WTA Championships'
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(T2.killed), MIN(T2.injured) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT AVG(injured) FROM death
SELECT * FROM death WHERE caused_by_ship_id = t
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT id, name FROM battle WHERE bulgarian_commander = "Brig"
SELECT id, name FROM battle WHERE killed > 10
SELECT caused_by_ship_id, name FROM death GROUP BY caused_by_ship_id ORDER BY SUM(injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN ship AS T3 ON T3.id = T2.caused_by_ship_id JOIN death AS T4 ON T4.caused_by_ship_id = T3.id WHERE T1.bulgarian_commander = "Kaloyan" AND T1.latin_commander = "Baldwin I"
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE lost_in_battle = 0 AND tonnage = 225
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "Lettice" INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS Atalanta"
SELECT name, result, bulgarian_commander FROM battle WHERE lost_in_battle = 'English Channel'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_name, course_description FROM courses WHERE course_id = 1
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = 1
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = 1
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT course_name, course_id FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections) LIMIT 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T2.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM Student_Enrolment AS T2 JOIN Students AS T1 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T3.degree_program_id = T2.degree_program_id JOIN Semesters AS T4 ON T4.semester_id = T2.semester_id WHERE T3.degree_program_id = 2 AND T4.semester_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN Semesters AS T3 ON T1.semester_id = T3.semester_id WHERE T2.degree_summary_name = "Bachelor of Science" AND T3.semester_name = "Fall"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Student_Enrolment AS T2 JOIN Students AS T1 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.department_id = 1
SELECT degree_program_id, COUNT(*) FROM Student_Enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM Student_Enrolment GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Student_Enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Student_Enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT student_id, first_name, middle_name, last_name, COUNT(*) FROM Student_Enrolment GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" AND NOT T2.student_id IN (SELECT T3.student_id FROM student_enrolment AS T3 JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id WHERE T4.department_id = "1"
SELECT T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN student_enrolment AS T3 ON T2.student_id = T3.student_id WHERE T1.state_province_county = "North Carolina" AND T3.degree_program_id = "No degree program"
SELECT T1.date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT t1.date, t1.transcript_id FROM Transcripts AS t1 JOIN Transcript_Contents AS t2 ON t1.transcript_id = t2.transcript_id GROUP BY t1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.first_name FROM addresses AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.address_id <> T2.address_id
SELECT T1.first_name FROM addresses AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.address_id <> T2.address_id
SELECT current_address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country FROM addresses GROUP BY current_address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT COUNT(*) FROM Transcripts WHERE transcript_date = "2018-01-01"
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT MAX(DISTINCT student_course_id), COUNT(*) FROM Transcripts
SELECT MAX(T1.student_course_id), T1.course_id FROM student_course AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.course_id HAVING COUNT(*) >= 10
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) ASC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Master") INTERSECT SELECT student_id FROM Student_Enrolment WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Bachelor")
SELECT semester_id FROM semesters WHERE semester_name = "Masters" INTERSECT SELECT semester_id FROM semesters WHERE semester_name = "Bachelors"
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN students AS T3 ON T1.address_id = T3.current_address_id
SELECT * FROM Students ORDER BY first_name DESC, middle_name DESC, last_name DESC
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT section_name FROM sections
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti" UNION SELECT address_id FROM addresses WHERE cell_mobile_number = "09700166582"
SELECT first_name FROM Students WHERE current_address_id = 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Written_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT country, COUNT(*) FROM TV_Channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_Channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name, content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name, content) FROM TV_Channel
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
SELECT Channel FROM Cartoon WHERE Title = "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Title = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Rating, COUNT(*) FROM TV_series GROUP BY Rating ORDER BY COUNT(*) DESC LIMIT 3
SELECT MIN(share), MAX(share) FROM TV_series
SELECT MAX(share), MIN(share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Channel FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY id DESC LIMIT 1
SELECT package_option, series_name FROM TV_Channel WHERE hight_definition_TV = 'Yes'
SELECT package_option, series_name FROM TV_Channel WHERE hight_definition_tv = 'Yes'
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT Written_by FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT country FROM tv_channel WHERE NOT id IN (SELECT channel FROM cartoon) WHERE written_by = "Todd Casey"
SELECT DISTINCT T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel JOIN Written_by AS T3 ON T2.written_by = T3.id WHERE T3.name = "Todd Casey"
SELECT T2.series_name, T2.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id JOIN Directed_by AS T3 ON T1.directed_by = T3.id JOIN Written_by AS T4 ON T1.written_by = T4.id WHERE T3.name = "Ben Jones" AND T4.name = "Michael Chang"
SELECT T2.series_name, T2.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel JOIN Directed_by AS T3 ON T3.id = T2.directed_by JOIN Written_by AS T4 ON T4.id = T2.written_by WHERE T3.name = "Ben Jones" INTERSECT SELECT T2.series_name, T2.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel JOIN Directed_by AS T3 ON T3.id = T2.directed_by JOIN Written_by AS T4 ON T4.id = T2.written_by WHERE T3.name = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT id FROM TV_Channel GROUP BY country HAVING COUNT(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_Channel WHERE Directed_by <> 'Ben Jones'
SELECT Package_Option FROM TV_Channel WHERE Directed_by <> 'Ben Jones'
SELECT Package_Option FROM TV_Channel WHERE Directed_by <> 'Ben Jones'
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(Final_Table_Made) FROM poker_player WHERE earnings < 20000
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 20000
SELECT Name FROM people
SELECT Name FROM people
SELECT Name FROM poker_player WHERE earnings > 30000
SELECT Name FROM poker_player WHERE earnings > 30000
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC
SELECT birth_date FROM people ORDER BY earnings ASC LIMIT 1
SELECT birth_date FROM people ORDER BY earnings ASC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT Name FROM poker_player ORDER BY earnings DESC
SELECT Name FROM poker_player ORDER BY earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationality FROM people GROUP BY nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT nationality) FROM people
SELECT COUNT(DISTINCT nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT T1.state, T1.created FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state
SELECT contestant_number, contestant_name FROM votes GROUP BY contestant_number HAVING COUNT(*) >= 2
SELECT contestant_number, contestant_name FROM votes ORDER BY vote_id ASC LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = "NY" OR state = "CA"
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM AREA_CODE_STATE GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE governmentform = "Republic"
SELECT COUNT(*) FROM country WHERE governmentform = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Carribean"
SELECT Continent FROM country WHERE Code = "AI"
SELECT Continent FROM country WHERE Code = "AG"
SELECT District FROM city WHERE Name = "Kabul"
SELECT Region FROM country WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "AW" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "AW" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Code = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Code = "AO"
SELECT Region, Population FROM country WHERE Code = "AO"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Code = "CA"
SELECT Name FROM country ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Population, MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT Population, MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SurfaceArea FROM country WHERE Continent = "Asia" UNION SELECT SurfaceArea FROM country WHERE Continent = "Europe"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "Territory of the United States"
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code = "USA" INTERSECT SELECT AVG(GNP), SUM(Population) FROM country WHERE Code = "TERR"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT COUNT(*) FROM language WHERE CountryCode = "AW"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "AF" AND IsOfficial = "T"
SELECT COUNT(*) FROM language WHERE CountryCode = "AF" AND IsOfficial = "T"
SELECT Name FROM country WHERE Code = (SELECT Code FROM countrylanguage GROUP BY Code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT Name FROM country ORDER BY GNP DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country AS t1 JOIN language AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "English" INTERSECT SELECT t2.Language FROM language AS t2 JOIN country AS t1 ON t1.Code = t2.CountryCode WHERE t2.Language = "Dutch"
SELECT COUNT(*) FROM country AS t1 JOIN language AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "English" INTERSECT SELECT COUNT(*) FROM country AS t1 JOIN language AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "Dutch"
SELECT Name FROM country AS T1 JOIN language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT Name FROM country AS T1 JOIN language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT Name FROM country AS T1 JOIN language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT Name FROM country AS T1 JOIN language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT Name FROM country WHERE Code = "EN" INTERSECT SELECT Name FROM country WHERE Code = "FR"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT Region FROM country WHERE Language = "English" OR Language = "Dutch"
SELECT Region FROM country WHERE Language = "Dutch" OR Language = "English"
SELECT Code FROM country WHERE Language = "English" OR Language = "Dutch"
SELECT Code FROM country WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "AS" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode = "USA" AND GovernmentForm = "Republic" GROUP BY Language HAVING COUNT(*) = 1
SELECT Name FROM city ORDER BY Population DESC LIMIT 1
SELECT Name FROM city WHERE CountryCode = "USA" INTERSECT SELECT Name FROM city WHERE CountryCode = "Canada" INTERSECT SELECT Name FROM city WHERE CountryCode = "Mexico" INTERSECT SELECT Name FROM city WHERE CountryCode = "Brazil" INTERSECT SELECT Name FROM city WHERE CountryCode = "Argentina" INTERSECT SELECT Name FROM city WHERE CountryCode = "Chile" INTERSECT SELECT Name FROM city WHERE CountryCode = "Peru" INTERSECT SELECT Name FROM city WHERE CountryCode = "Venezuela" INTERSECT SELECT Name FROM city WHERE CountryCode = "Colombia" INTERSECT SELECT Name FROM city WHERE CountryCode = "Kenya" INTERSECT SELECT Name FROM city WHERE CountryCode = "Tanzania" INTERSECT SELECT Name FROM city WHERE CountryCode = "Nigeria" INTERSECT SELECT Name FROM city WHERE CountryCode = "Zambia" INTERSECT SELECT Name FROM city WHERE CountryCode = "Zimbabwe" INTERSECT SELECT Name FROM city WHERE CountryCode = "Tanzania" INTERSECT SELECT Name FROM city WHERE CountryCode = "Uganda" INTERSECT SELECT Name FROM city WHERE CountryCode = "Vietnam" INTERSECT SELECT Name FROM city WHERE
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE Language <> 'English'
SELECT AVG(LifeExpectancy) FROM country WHERE Language <> 'English'
SELECT Population FROM country WHERE Code <> "USA" AND NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT COUNT(*) FROM city WHERE countrycode <> "USA" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE language = "English"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'T' AND T1.HeadOfState = "Beatrix"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN government AS T3 ON T1.Code = T3.CountryCode WHERE T3.HeadOfState = "Beatrix" AND T2.IsOfficial = "T"
SELECT COUNT(DISTINCT T1.Language) FROM country AS T1 JOIN language AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930 AND T2.IsOfficial = 'T'
SELECT COUNT(DISTINCT T1.Language) FROM country AS T1 JOIN language AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930
SELECT Code FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = "Europe")
SELECT Code FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = "Europe")
SELECT Code FROM country WHERE Population < (SELECT Population FROM country WHERE Continent = "Asia")
SELECT Code FROM country WHERE Population < (SELECT Population FROM country WHERE Continent = "Asia")
SELECT Code FROM country WHERE Population > (SELECT Population FROM country WHERE Continent = "Africa")
SELECT Code FROM country WHERE Population > (SELECT Population FROM country WHERE Continent = "Africa")
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM language WHERE Language = "English")
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT countrycode FROM countrylanguage WHERE language <> 'English'
SELECT Code FROM country WHERE Language <> 'English'
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND GovernmentForm <> "Republic"
SELECT Code FROM country WHERE NOT Code = "USA" INTERSECT SELECT Code FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Code FROM country WHERE GovernmentForm = "Republic"
SELECT Name FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Language = "English")
SELECT Name FROM city WHERE CountryCode = "EU" AND Language <> "English"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN language AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "Chinese" AND T2.Continent = "Asia"
SELECT Name FROM city WHERE CountryCode = "AS" INTERSECT SELECT Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population ASC LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population ASC LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN language AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN language AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT district, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY district
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT AVG(LifeExpectancy), SUM(Population) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Population, AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000 GROUP BY Population
SELECT Population, AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000 GROUP BY Population
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 90000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 90000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT t1.Code, t2.Language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode GROUP BY t1.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT Code) FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM country AS t1 JOIN language AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "Spanish"
SELECT Code FROM country WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT Code FROM country WHERE Language = "Spanish" GROUP BY Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_Founded DESC
SELECT AVG(attendance) FROM show
SELECT AVG(attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE type <> "Live final"
SELECT MAX(share), MIN(share) FROM performance WHERE type <> "Live final"
SELECT COUNT(DISTINCT nationality) FROM conductor
SELECT COUNT(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra) GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra) GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor WHERE year_of_work > 2008
SELECT Name FROM conductor WHERE year_of_work > 2008
SELECT record_company, COUNT(*) FROM orchestra GROUP BY record_company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra_id FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE year_of_founded < 2003 UNION SELECT Record_Company FROM orchestra WHERE year_of_founded > 2003
SELECT DISTINCT T1.Record_Company FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Record_Company = T2.Record_Company WHERE T1.Year_of_Founded < 2003 INTERSECT SELECT DISTINCT T1.Record_Company FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Record_Company = T2.Record_Company WHERE T1.Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT year_of_founded FROM orchestra GROUP BY year_of_founded HAVING COUNT(*) > 1
SELECT year_of_founded FROM orchestra GROUP BY year_of_founded HAVING COUNT(*) > 1
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
SELECT id FROM Highschooler WHERE name = "Kyle"
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
SELECT T1.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID GROUP BY T1.student_id
SELECT T1.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID GROUP BY T1.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.ID WHERE T1.student_id = 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.ID WHERE T1.student_id = 1
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.student_id JOIN Highschooler AS T3 ON T3.id = T1.friend_id JOIN Likes AS T4 ON T3.id = T4.liked_id WHERE T1.student_id <> T4.student_id
SELECT student_id FROM Friend INTERSECT SELECT liked_id FROM Likes
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id WHERE T1.id = T3.liked_id
SELECT student_id, COUNT(*) FROM likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 5
SELECT COUNT(*) FROM Likes WHERE student_id = 1
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT state FROM Owners UNION SELECT state FROM Professionals
SELECT state FROM owners UNION SELECT state FROM professionals
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT professional_id, last_name, home_phone FROM professionals WHERE state = "Indiana" OR t_id > 2
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR t_id > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.owner_id > 1000
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T3.professional_id = T2.professional_id WHERE T3.role_code = "Treatment" AND T2.cost_of_treatment > 1000
SELECT first_name FROM professionals UNION SELECT first_name FROM owners
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT professional_professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT owner_id, first_name, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT professional_professional_id, role_code, first_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY SUM(T1.cost_of_treatment) DESC LIMIT 1
SELECT t_type_description FROM treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT t_type_description FROM Treatment_Types ORDER BY SUM(cost_of_treatment) ASC LIMIT 1
SELECT owner_id, zip_code FROM Dogs WHERE cost_of_treatment > (SELECT SUM(cost_of_of_treatment) FROM Dogs)
SELECT owner_id, zip_code FROM Dogs JOIN treatments ON dog_id = t_id GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT professional_professional_id, cell_number FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM professionals WHERE role_code = "Treatment" INTERSECT SELECT professional_id, cell_number FROM professionals WHERE role_code = "Treatment" GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T2.cost_of_treatment < (SELECT AVG(T2.cost_of_treatment) FROM Treatments AS T2 JOIN Dogs AS T3 ON T3.dog_id = T2.dog_id)
SELECT T1.first_name, T1.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.cost_of_treatment < (SELECT AVG(T1.cost_of_treatment) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT date_of_treatment, T1.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT date_of_treatment, T1.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT t_type_description, cost_of_treatment FROM treatments
SELECT cost_of_treatment, t_type_description FROM treatments
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes ASizes AS T3 ON T3.size_code = T2.size_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes ASizes AS T3 ON T3.size_code = T2.size_code
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T3.t_type_code = T2.t_type_code JOIN Professionals AS T4 ON T4.professional_id = T2.professional_id JOIN Breeds AS T5 ON T1.breed_code = T5.breed_code WHERE T5.breed_code = (SELECT T1.breed_code FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T3.t_type_code = T2.t_type_code WHERE T3.t_type_description = "Treatment" ORDER BY T2.cost_of_treatment ASC LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_of_arrived, date_departed FROM treatments
SELECT date_of_treatment, date_arrived, date_departed FROM treatments
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT T1.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age DESC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT T1.dog_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT COUNT(DISTINCT professional_professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_professional_id) FROM treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE abandoned_yn = 'No'
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, SUM(charge_amount) FROM Charges GROUP BY charge_type ORDER BY SUM(charge_amount) DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, home_phone, cell_number FROM Professionals
SELECT email_address, home_phone, cell_number FROM Professionals
SELECT DISTINCT T1.breed_type, T2.size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code JOIN Treatment_types AS T3 ON T1.breed_code = T3.breed_code JOIN Treatment_types AS T4 ON T2.size_code = T4.size_code WHERE T1.breed_type = "Mixed" AND T2.size_type = "Small"
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes ASizes AS T2 ON T2.size_code = T2.size_code
SELECT T1.first_name, T2.t_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_types AS T3 ON T3.t_type_code = T2.t_type_code
SELECT T1.first_name, T2.t_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T3.t_type_code = T2.t_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT birth_year, citizenship FROM singer
SELECT birth_year, citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship, MAX(net_worth_Millions) FROM singer GROUP BY citizenship
SELECT citizenship, MAX(net_worth_Millions) FROM singer GROUP BY citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 30000
SELECT Name FROM singer WHERE Sales > 30000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT DISTINCT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT DISTINCT citizenship FROM singer WHERE birth_year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = "T2"
SELECT property_name FROM Properties WHERE room_count > 1 UNION SELECT property_name FROM Properties WHERE property_type_code = "A"
