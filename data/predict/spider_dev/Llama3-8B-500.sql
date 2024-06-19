SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY age FROM oldest to youngest
SELECT Name, Country, Age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE Country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE Country = "France"
SELECT T2.Name, T2.song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.singer_ID = T2.singer_ID ORDER BY T1.age LIMIT 1
SELECT Song_Name, Song_release_year FROM singer WHERE Age = (SELECT MIN(age) FROM singer)
SELECT DISTINCT T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 20
SELECT DISTINCT T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT DISTINCT T2.song_Name FROM singer AS T1 JOIN song_release AS T2 ON T1.singer_ID = T2.singer_ID WHERE T1.age > (SELECT AVG(age) FROM singer)
SELECT DISTINCT T2.song_Name FROM singer AS T1 JOIN song_release AS T2 ON T1.singer_ID = T2.singer_ID WHERE T1.age > (SELECT AVG(age) FROM singer)
SELECT Location, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM station WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN attendance AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.stadium_ID ORDER BY AVG(T2.attendance) DESC LIMIT 1
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID ORDER BY AVG(T2.attendance) DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_ID = T2.stadium_ID GROUP BY T2.stadium_ID
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_ID = T2.stadium_ID GROUP BY T2.stadium_ID
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 OR T2.Year > 2014 GROUP BY T2.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013 GROUP BY T2.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE NOT T2.concert_ID IN (SELECT DISTINCT T2.concert_ID) FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 40 INTERSECT SELECT T2.Country FROM singer_in_concert WHERE T2.age < 30
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T2.Name, T2.Theme FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.Name, T2.Theme, COUNT(*) FROM concert AS T2 JOIN singer_in_concert AS T1 ON T2.Stadium_ID = T1.Stadium_ID GROUP BY T2.Stadium_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = 2014
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.song_Name LIKE '%Hey%'
SELECT T1.Name, T2.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.song_title LIKE '%Hey%'
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE capacity = (SELECT MAX(Capacity) FROM stadium)
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT weight FROM pets WHERE pet_age = (SELECT MIN(age) FROM pets)
SELECT MIN(weight) FROM pets WHERE pet_age = (SELECT MIN(age) FROM Student)
SELECT MAX(weight), pet_type FROM pets GROUP BY pet_type
SELECT MAX(weight), pet_type FROM pets GROUP BY pet_type
SELECT COUNT(*) FROM pets WHERE pet_age > 20
SELECT COUNT(*) FROM pets WHERE age > 20
SELECT COUNT(*) FROM pets WHERE pet_type = "dog" AND sex = 'F'
SELECT COUNT(*) FROM pets WHERE pet_type = "dog" AND Sex = "F"
SELECT COUNT(DISTINCT pet_type) FROM pets
SELECT COUNT(DISTINCT pet_type) FROM pets
SELECT Fname FROM Student WHERE pet_type = "Cat" OR pet_type = "Dog"
SELECT Fname FROM Student WHERE pet_type = "Cat" OR pet_type = "Dog"
SELECT Fname FROM Student WHERE pet_type = "Cat" INTERSECT SELECT Fname FROM Student WHERE pet_type = "Dog"
SELECT Fname FROM Student WHERE pet_type = "Cat" INTERSECT SELECT Fname FROM Student WHERE pet_type = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM cats)
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM pets WHERE pet_type = "Cat")
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM pets WHERE pet_type = "Cat")
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Pets WHERE Pettype = "Cat")
SELECT Fname, Lname, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM cats)
SELECT Fname FROM Student WHERE NOT StuID IN (SELECT StuID FROM cats)
SELECT pet_type, weight FROM pets WHERE pet_age = (SELECT MIN(age) FROM pets)
SELECT pet_type, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT AVG(age), MAX(age) FROM pets GROUP BY pet_type
SELECT AVG(age), MAX(age) FROM pets GROUP BY pet_type
SELECT AVG(weight) FROM pets GROUP BY pet_type
SELECT AVG(weight) FROM pets GROUP BY pet_type
SELECT Fname, Lname, Age FROM Student WHERE StuID IN (SELECT StuID FROM has_pet)
SELECT DISTINCT Fname, pet_age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID
SELECT pet_id FROM pets WHERE T2.LName = 'Smith'
SELECT pet_id FROM pets WHERE LName = 'Smith'
SELECT COUNT(*) FROM pets GROUP BY pet_id
SELECT StuID, COUNT(*) FROM pets
SELECT Fname, Sex FROM Student GROUP BY Fname HAVING COUNT(*) > 1
SELECT Fname, Sex FROM Student WHERE COUNT(*) > 1
SELECT LName FROM Student WHERE pet_type = "Cat" AND pet_age = 3
SELECT LName FROM Student WHERE pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.Contid, T2.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Contid = T2.Continent GROUP BY T2.Continent
SELECT T1.Contid, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent GROUP BY T2.Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T2.id, T2.name, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker
SELECT T1.id, T1.FullName, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker
SELECT Model FROM car_names ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT T2.Maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE T1.Year = 1970
SELECT DISTINCT T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T1.Year = 1970
SELECT T2.make, T2.production_time FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Make WHERE T1.Year = (SELECT MIN(T2.Year) FROM cars_data JOIN car_names)
SELECT T2.Maker, T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Make WHERE T1.Year = (SELECT MIN(T2.Year) FROM cars_data JOIN car_names)
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Maker WHERE T2.Year > 1980
SELECT DISTINCT T2.Model FROM cards_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980
SELECT T1.continent, COUNT(*) FROM car_makers AS T2 JOIN continents AS T1 ON T2.Continent = T1.Continent GROUP BY T2.Continent
SELECT T2.name, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Continent GROUP BY T2.Continent
SELECT country_name FROM car_makers GROUP BY country_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.Continent GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM model_list GROUP BY Maker
SELECT T2.id, T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker
SELECT accelerate FROM cars_data WHERE Make = "Hornet Sportabout"
SELECT accelerate FROM cars_data WHERE Model = "AMC Hornet Sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM model_list WHERE Maker = 1
SELECT COUNT(*) FROM model_list WHERE Maker = 1
SELECT AVG(mpg) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT DISTINCT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.name, T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.continent = T2.continent
SELECT T2.name, T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.continent = T2.continent
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight) FROM cars_data GROUP BY YEAR
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T2.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.Continent GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT T2.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Continent GROUP BY T2.Continent HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3
SELECT T2.Model, T1.Horsepower FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.cylinders = 3 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT Model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(edispl) FROM cars_data WHERE Model = "volvo"
SELECT AVG(edispl) FROM cars_data WHERE Model = "Volvo"
SELECT MAX(accelerate) FROM cars_data GROUP BY Cylinders
SELECT MAX(DISTINCT Accelerate) FROM cars_data
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.MakeId GROUP BY T2.Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Maker GROUP BY T2.Maker ORDER BY COUNT(DISTINCT T2.Maker) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Maker FROM car_makers WHERE Fullname = "American Motor Company")
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Maker FROM car_makers WHERE Country = "USA")
SELECT T1.FullName, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T2.Maker, T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker WHERE T2.Weight > 3500
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker WHERE T2.weight > 3500 AND T1.Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight > 3000 AND Weight < 4000
SELECT DISTINCT T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Year = T2.Year WHERE T1.weight < 4000 INTERSECT SELECT DISTINCT T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Year = T2.Year WHERE T1.weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT T2.Horsepower FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Make ORDER BY T1.Accelerate DESC LIMIT 1
SELECT COUNT(*) FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate = (SELECT MIN(accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT COUNT(*) FROM cars_data)
SELECT COUNT(*) FROM countries WHERE COUNT(*) > 2
SELECT COUNT(*) FROM countries GROUP BY CountryName HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Model FROM car_names WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.cylinders = 4 GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Makeid, T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Makeid = T2.Makeid WHERE T1.Horsepower > (SELECT MIN(T1.Horsepower) FROM cars_data) AND T1.Cylinders <> "3"
SELECT MakeId, Model FROM car_names WHERE Horsepower < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM model_list WHERE Weight < 3500 EXCEPT SELECT Model FROM car_names WHERE Maker = 'Ford Motor Company'
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < 3500 EXCEPT SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Country = "United States"
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT CountryId FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT CountryId FROM car_makers)
SELECT T2.id, T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T2.id, T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T2.country_id, T2.country_name FROM countries AS T1 JOIN car_makers AS T2 ON T1.continent = T2.continent GROUP BY T2.continent HAVING COUNT(*) > 3 OR SELECT T2.country_id, T2.country_name FROM countries AS T1 JOIN car_makers AS T2 ON T1.continent = T2.continent WHERE T2.model = "fiat"
SELECT T2.country_id, T2.country_name FROM countries AS T1 JOIN car_makers AS T2 ON T1.continent = T2.continent GROUP BY T2.continent HAVING COUNT(*) > 3 OR SELECT T2.country_id FROM model_list AS T3 JOIN countries AS T1 ON T2.continent = T3.continent WHERE T3.model = "fiat"
SELECT T2.country FROM airlines AS T1 JOIN airports AS T2 ON T1.country = T2.country WHERE T1.name = "JetBlue Airways"
SELECT T2.country FROM airlines AS T1 JOIN airports AS T2 ON T1.country = T2.country WHERE T1.name = "Jetblue Airways"
SELECT T2.Abbrev FROM airlines AS T1 JOIN airports AS T2 ON T1.uid = T2.uid WHERE T1.name = "JetBlue Airways"
SELECT T1.id FROM airlines AS T1 JOIN airports AS T2 ON T1.Abbreviation = T2.country WHERE T2.country = "Blue"
SELECT T1.name, T2.abbreviation FROM airlines AS T1 JOIN airline_names AS T2 ON T1.uid = T2.uid WHERE T2.country = "USA"
SELECT T2.name, T2.abbreviation FROM airlines AS T1 JOIN airlines AS T2 ON T1.uid = T2.uid WHERE T1.Country = "USA"
SELECT T1.airport_code, T1.airport_name FROM airports AS T1 JOIN airports AS T2 ON T1.uid = T2.uid WHERE T2.city = "Anthony"
SELECT airport_code, airport_name FROM airports WHERE city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT SUM(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.dest_airport_code = "UAL"
SELECT T1 FROM airlines AS T1 JOIN airports AS T2 ON T1.Abbreviation = T2.CountryAbbrev WHERE T2.airportName = "United Airlines"
SELECT COUNT(*) FROM airlines WHERE Country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT T1.City, T1.Country FROM airports AS T1 JOIN airports AS T2 ON T1.airportCode = T2.airportCode WHERE T2.airportName = "Alton"
SELECT city, country FROM airports WHERE airport_code = "Alton"
SELECT T2.name FROM airports AS T1 JOIN airports AS T2 ON T1.airportCode = T2.airportCode WHERE T1.airportCode = "AKO"
SELECT T2.name FROM airports AS T1 JOIN airports AS T2 ON T1.airportCode = T2.airportCode WHERE T1.airportCode = "AKO"
SELECT DISTINCT T2.name FROM city AS T1 JOIN airport AS T2 ON T1.id = T2.id WHERE T1.city = 'Aberdeen'
SELECT name FROM airports WHERE city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE origin = "APG"
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = 'APG')
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE destination = "ATO"
SELECT COUNT(*) FROM flights WHERE Source_city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE origin = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE Dest_city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE Dest_airport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE Source_city = "Aberdeen" AND Dest_city = "Ashley"
SELECT COUNT(*) FROM flights WHERE Source_airport = "Aberdeen" AND Dest_airport = "Ashley"
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = 'JetBlue Airways')
SELECT COUNT(*) FROM flights WHERE Airline = 1
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND Dest_airport = "ASY"
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND Destairport = "ASY"
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND destination = "AHD"
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND Source_airport = "AHD Airport"
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND Dest_city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND Destairport = "Aberdeen"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.Source_airportcode GROUP BY T2.Source_airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.dest_airportcode GROUP BY T2.dest_airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.Source_airportcode GROUP BY T2.Source_airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.Source_airportcode GROUP BY T2.Source_airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airport_code FROM airports AS T1 JOIN flights AS T2 ON T1.airport_code = T2.source_airport_code GROUP BY T2.source_airport_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airport_code FROM airports AS T1 JOIN flights AS T2 ON T1.airport_code = T2.source_airport_code GROUP BY T2.source_airport_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.airport_code FROM airports AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.airport_code FROM flights AS T1 JOIN airports AS T2 ON T1.dest_airport_code = T2.airport_code GROUP BY T1.dest_airport_code ORDER BY COUNT(*) LIMIT 1
SELECT T1.name FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T2.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.name, T2.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) LIMIT 1
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.dest_airport = "AHD"
SELECT T1.name FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.source_airport = "AHD"
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.dest_airport = "AHD"
SELECT T1.name FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.dest_airport = "AHD"
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.Source_airport = "APG" INTERSECT SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.Dest_airport = "CVO"
SELECT T1.uid FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.uid FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.Destairport = "CVO"
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.dest_airport = "CVO" EXCEPT SELECT T1.uid FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.dest_airport = "APG"
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.dest_airport_name = "CVO" EXCEPT SELECT T3.uid FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.dest_airport_code = T3.airport_code WHERE T3.country = "APG"
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline HAVING COUNT(*) >= 10
SELECT T1.uid FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline HAVING COUNT(*) >= 10
SELECT T1 FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline HAVING COUNT(*) < 200
SELECT T1.uid FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline HAVING COUNT(*) < 200
SELECT Flightno FROM flights WHERE airline = (SELECT UID FROM airlines WHERE Airline = "United Airlines")
SELECT Flightno FROM flights WHERE airline = 1
SELECT Flightno FROM flights WHERE Source_airport = "APG"
SELECT Flightno FROM flights WHERE origin = "APG"
SELECT Flightno FROM flights WHERE dest_airport = "APG"
SELECT Flightno FROM flights WHERE Dest_airport = "APG"
SELECT Flightno FROM flights WHERE Source_city = "Aberdeen"
SELECT Flightno FROM flights WHERE Source_airport = "Aberdeen"
SELECT Flightno FROM flights WHERE Dest_city = "Aberdeen"
SELECT Flightno FROM flights WHERE Destairport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE destination_city = "Aberdeen" OR destination_city = "Abilene"
SELECT COUNT(*) FROM flights WHERE destination = "Abilene" OR destination = "Aberdeen"
SELECT T2.name FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.source_airport AND T1.airportCode = T2.dest_airport
SELECT DISTINCT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportCode = T2.Source_airportCode OR T2.Dest_airportCode = T1.airportCode
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY age ASC
SELECT Name FROM Employee ORDER BY age ASC
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city FROM Employee GROUP BY city HAVING COUNT(*) > 1 WHERE age < 30
SELECT city FROM Employee GROUP BY city HAVING COUNT(*) > 1 WHERE age < 30
SELECT location, COUNT(*) FROM shop GROUP BY location
SELECT location, COUNT(*) FROM shop GROUP BY location
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT T2.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id HAVING AVG(T2.Number_products) > (SELECT AVG(T1.Number_products) FROM shop)
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T2 JOIN shop AS T1 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT T1.shop_name, COUNT(*) FROM Employee AS T1 JOIN hiring AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.shop_name
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT T1, T2 FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id
SELECT DISTINCT T1 FROM Employee AS T2 JOIN hiring AS T1 ON T2.Employee_ID = T1.Employee_ID
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(*) FROM documents
SELECT COUNT(*) FROM documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_name, template_id FROM documents WHERE document_description LIKE '%w%'
SELECT T2.document_name, T1.template_id FROM documents AS T2 JOIN templates AS T1 ON T2.template_id = T1.template_id WHERE T2.document_description LIKE '%w%'
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_type_code) FROM documents
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(*) FROM documents WHERE template_type_code = 'PPT'
SELECT COUNT(*) FROM documents WHERE template_type_code = "PPT"
SELECT t1.template_id, COUNT(*) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id GROUP BY t2.template_id
SELECT DISTINCT T1.template_id, COUNT(*) FROM documents AS T2 JOIN templates AS T1 ON T2.template_id = T1.template_id GROUP BY T2.template_id
SELECT t1.template_id, t1.template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id GROUP BY t2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.template_id, t1.template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id GROUP BY t2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id HAVING COUNT(*) > 1
SELECT T2.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT T2.template_type_code FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM templates
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM templates WHERE template_type_code = "CV"
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT t2.template_type_code, COUNT(*) FROM templates AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code
SELECT DISTINCT T2.template_type_code, COUNT(*) FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.template_type_code
SELECT t2.template_type_code FROM templates AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t2.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT t2.template_type_code FROM templates AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t2.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT t2.template_type_code FROM templates AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code HAVING COUNT(*) < 3
SELECT t2.template_type_code FROM templates AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code HAVING COUNT(*) < 3
SELECT MIN(version_number), template_type_code FROM templates
SELECT MIN(version_number), template_type_code FROM templates
SELECT t2.template_type_code FROM templates AS t1 JOIN Ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.document_name = "Data base"
SELECT T2.template_type_code FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.document_name = "Data base"
SELECT DISTINCT T2.Document_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "BK"
SELECT T2.Document_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "BK"
SELECT t2.template_type_code, COUNT(*) FROM templates AS t1 JOIN Ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code
SELECT DISTINCT T2.template_type_code, COUNT(*) FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t2.template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t2.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT t2.template_type_code FROM documents AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM templates EXCEPT SELECT DISTINCT template_type_code FROM documents
SELECT DISTINCT T2.template_type_code FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE NOT T1.template_type_code IN (SELECT DISTINCT T2.template_type_code FROM documents)
SELECT DISTINCT T2.template_type_code, T2.template_type_description FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T2.template_type_code, T2.template_type_description FROM Ref_template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T2.template_type_description FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_code = "AD"
SELECT t2.template_type_description FROM templates AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_code = "AD"
SELECT t2.template_type_code FROM templates AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_description = "Book"
SELECT t2.template_type_code FROM templates AS t1 JOIN ref_template_Types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_description = "Book"
SELECT DISTINCT T2.template_type_description FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T1.template_id = T3.template_id
SELECT DISTINCT T2.description FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T1.template_id = T3.template_id
SELECT DISTINCT T1.template_id FROM templates AS T1 JOIN ref_template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Presentation"
SELECT template_id FROM templates WHERE template_type_code = "Presentation"
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE document_name = 'Summer Show'
SELECT COUNT(*) FROM Paragraphs WHERE document_name = 'Summer Show'
SELECT Other_details FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT Other_details FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT paragraph_id, paragraph_text FROM Paragraphs WHERE document_name = 'Welcome to NY'
SELECT paragraph_id, paragraph_text FROM Paragraphs WHERE document_name = 'Welcome to NY'
SELECT paragraph_text FROM Paragraphs WHERE document_id = (SELECT document_id FROM documents WHERE document_name = "Customer reviews")
SELECT paragraph_text FROM Paragraphs WHERE document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT DISTINCT document_id, COUNT(*) FROM Paragraphs ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM Paragraphs GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM Paragraphs GROUP BY document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM Paragraphs WHERE paragraph_id BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs WHERE COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text LIKE '%Ireland%'
SELECT document_id FROM Paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text LIKE '%Ireland%'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY age ASC
SELECT Name FROM teacher ORDER BY age ASC
SELECT Age, Hometown FROM teacher
SELECT age, hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR age = 33
SELECT Name FROM teacher WHERE Age = 32 OR age = 33
SELECT Hometown FROM teacher WHERE age = (SELECT MIN(age) FROM teacher)
SELECT Hometown FROM teacher ORDER BY age LIMIT 1
SELECT hometown, COUNT(*) FROM teacher GROUP BY hometown
SELECT hometown, COUNT(*) FROM teacher GROUP BY hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.Name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.Name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name ASC
SELECT T1.Name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course = "math"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.course = "math"
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT T2.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE NOT T2.course_id IN (SELECT course_id FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership FROM high to low
SELECT AVG(age) FROM visitor WHERE Level_of_membership <> 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age FROM old TO young
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID GROUP BY T2.visitor_ID HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID ORDER BY T2.Total_spent DESC LIMIT 1
SELECT T1.Museum_ID, T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT T1.Name, T2.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.num_of_ticket DESC LIMIT 1
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit
SELECT SUM(num_of_ticket) FROM visit WHERE visitor_id IN (SELECT visitor_id FROM visit WHERE level_of_membership = 1)
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > 2011)
SELECT COUNT(*) FROM visitor WHERE NOT ID IN (SELECT visitor_ID FROM visit WHERE Open_Year > 2010)
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT SUM(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT AVG(age) FROM matches
SELECT AVG(age) FROM matches
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
SELECT T2.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T2.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T2.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = 1 INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = 1 INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = 1 INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = 1 INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = 1 INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = 1 INTERSECT SELECT T1.country_code, T1.first_name
SELECT T1.first_name, T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "World Table Tennis Championships" INTERSECT SELECT T1.first_name, T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY age DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY age DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "Left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = "Australian Open tourney" ORDER BY T2-ranking_points DESC LIMIT 1
SELECT T2.name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = 1 GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT AVG(ranking) FROM rankings WHERE first_name = "John"
SELECT T1.player_id, T2.tours FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id
SELECT T1.first_name, SUM(T2-ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, SUM(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date, SUM(*) FROM rankings GROUP BY ranking_date
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT T2.name, T2.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.birth_date LIMIT 3
SELECT T2.name, T2.rank FROM players AS T1 JOIN match_results AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE surface = "WTA Championships" INTERSECT SELECT COUNT(DISTINCT winner_id) FROM matches WHERE hand = "Left Handed"
SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM winners WHERE hand = "left" INTERSECT SELECT COUNT(*) FROM
SELECT T1.first_name, T2.country_code, T3.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2-ranking_points DESC LIMIT 1
SELECT T1.first_name, T2.country_code, T2.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE ship_type = "Captured"
SELECT name, tonnage ORDER BY name DESC
SELECT name, date, RESULT FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT T2.id, T2.killed, T2.injured FROM death AS T2 JOIN ship AS T1 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name, RESULT FROM battle WHERE NOT bulgarian_commander = 'Boril'
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T2.lost_in_battle = T1.id WHERE T2.ship_type = "Brig"
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id HAVING SUM(T2.killed) > 10
SELECT T2.id, T2.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT T2.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T1.bulgarian_commander = "Kaloyan" AND T2.latin_commander = "Baldwin I"
SELECT COUNT(DISTINCT RESULT) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT id FROM ship WHERE tonnage = "225")
SELECT name, date FROM battle WHERE lost_in_battle = (SELECT lost_in_battle FROM ship WHERE name = 'Lettice' OR name = 'HMS Atalanta')
SELECT name, RESULT, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE location = "English Channel")
SELECT note FROM death WHERE LIKE '%East%'
SELECT DISTINCT T1.address FROM addresses AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T2.line_1 = "Yes" AND T2.line_2 = "Yes"
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM degree_programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM degree_programs
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(DISTINCT degree_name) FROM degree_programs
SELECT COUNT(*) FROM courses WHERE department_id = (SELECT department_id FROM degree_programs)
SELECT COUNT(*) FROM degrees WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT T2.name, T2.description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id
SELECT T2.name, T2.description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id
SELECT T2.course_name, T2.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) >= 2
SELECT T2.course_name, T2.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING COUNT(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T2.name, T2.id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.student_id, T2.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = T2.degree_program_id GROUP BY T2.student_id HAVING COUNT(*) = 2
SELECT T1.student_id, T2.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2
SELECT T1.first_name, T2.middle_name, T3.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T2.middle_name, T3.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.course_name = "Bachelors"
SELECT T2.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_id, T2.degree_summary_name FROM courses AS T1 JOIN degree_programs AS T2 ON T1.course_id = T2.department_id GROUP BY T2.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.degree_program_id, T2.degree_summary_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id WHERE NOT T1.student_id IN (SELECT student_id FROM student_enrolment AS T3) JOIN student_enrolment_courses AS T4 ON T3.student_id = T4.student_id)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T2.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T2.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.degree_program_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 1 EXCEPT SELECT T3.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id JOIN degree_programs AS T3 ON T1.department_id = T3.department_id WHERE T3.state_province_county = 1
SELECT T2.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 1 EXCEPT SELECT T3.last_name FROM students AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id JOIN courses AS T3 ON T2.department_id = T3.course_id WHERE T3.zip_postcode = "1"
SELECT T2.transcript_date, T2.transcript_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING COUNT(*) >= 2
SELECT transcript_date, transcript_id FROM transcript_contents GROUP BY student_course_id HAVING COUNT(*) >= 2
SELECT T1.cell_mobile_number FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.first_name = 'Timmothy' AND T1.last_name = 'Ward'
SELECT T1.cell_mobile_number FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.first_name = 'Timmothy'
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students WHERE date_first_registered = (SELECT date_first_registered FROM students)
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.student_id FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.current_address_id <> T2.address_id
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id <> T2.address_id
SELECT T1.address_id, COUNT(*) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.current_address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM transcripts
SELECT AVG(transcript_date) FROM transcripts
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM transcripts
SELECT COUNT(*) FROM transcripts
SELECT transcript_date FROM transcripts
SELECT transcript_date FROM transcripts
SELECT COUNT(DISTINCT T2.student_course_id) FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name, T2.student_course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM transcripts ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM transcript_contents GROUP BY transcript_id ORDER BY COUNT(*) LIMIT 1
SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = T2.degree_program_id
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 1 AND degree_program_id = 2
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT reversed FROM Student_details
SELECT other_details FROM students ORDER BY first_name REVERSE
SELECT section_name, section_description FROM sections WHERE section_id = H
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" INTERSECT SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.cell_mobile_number = 09700166582
SELECT first_name FROM students WHERE permanent_address_id = (SELECT permanent_address_id FROM addresses WHERE country = "Haiti" OR cell_mobile_number = 09700166582)
SELECT Title FROM cartoon ORDER BY Title ASC
SELECT Title FROM cartoon ORDER BY Title ASC
SELECT DISTINCT T1.id FROM cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM cartoon ORDER BY Original_air_date
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), DISTINCT Content) FROM TV_channel
SELECT COUNT(DISTINCT text) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT language, COUNT(*) FROM TV_channel GROUP BY language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT language, COUNT(*) FROM TV_channel GROUP BY language
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.Channel WHERE T1.Title = "The Rise of the Blue Beetle"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.id = (SELECT T3.id FROM cartoon AS T3 JOIN TV_series AS T2 ON T2.id = T3.channel WHERE T3.Title = "The Rise of the Blue Beetle")
SELECT Title FROM Cartoon WHERE Channel = "Sky Radio"
SELECT Title FROM cartoon WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT DISTINCT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT T3.id, T3.rating FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T2.rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Channel FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T2.Title FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT T1.id, COUNT(*) FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.directed_by = T2.id GROUP BY T2.id
SELECT director, COUNT(*) FROM cartoon GROUP BY director
SELECT Production_code, Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, Series_Name FROM TV_channel WHERE Hight_definition_TV = "Yes"
SELECT Package_Option, Series_name FROM TV_channel WHERE Hight_definition_TV = 'Yes'
SELECT T1.id FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT DISTINCT T2.Country FROM TV_cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.Channel WHERE T1.Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT id FROM cartoon WHERE Written_by = "Todd Casey")
SELECT DISTINCT Country FROM cartoon WHERE NOT Country = "USA"
SELECT T2.series_name, T2.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Ben Jones" OR T2.directed_by = "Michael Chang"
SELECT T2.series_name, T2.Country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.Country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language <> "English"
SELECT id FROM TV_channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT id FROM cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE NOT id IN (SELECT id FROM cartoon) AND Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT id FROM cartoon WHERE Directed_by = "Ben Jones")
SELECT DISTINCT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT DISTINCT id FROM Cartoon)
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT MAX(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT Name FROM poker_player
SELECT name FROM poker_player
SELECT name FROM poker_player WHERE earnings > 300000
SELECT name FROM poker_player WHERE earnings > 300000
SELECT name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT T1.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.Peoples_ID = T2.Peoples_ID ORDER BY T2.final_table_made ASC
SELECT T2.birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.Peoples_ID = T2.Peoples_ID ORDER BY T1.earnings ASC LIMIT 1
SELECT T2.birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.Peoples_ID = T2.Peoples_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE height > 200
SELECT AVG(Earnings) FROM poker_player WHERE height > 200
SELECT name FROM poker_player ORDER BY earnings DESC
SELECT name FROM poker_player ORDER BY earnings DESC
SELECT DISTINCT T1.Nationality, COUNT(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Nationality
SELECT nationality, COUNT(*) FROM people GROUP BY nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DIST Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM votes
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_code_state
SELECT created FROM votes WHERE state = 'CA'
SELECT DISTINCT T2.contestant_name FROM Contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name <> "Jessie Alloway"
SELECT DISTINCT T2.state, T2.created FROM votes AS T1 JOIN AREA_code_state AS T2 ON T1.state = T2.area_code
SELECT T2.contestant_number, T2.contestant_name FROM CONTESTants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2
SELECT T2.contestant_number, T2.contestant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS EXCEPT SELECT COUNT(*) FROM VOTES
SELECT area_code FROM votes GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_name = 'Tabatha Gehling'
SELECT DISTINCT T1.area_code FROM AREA_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling" INTERSECT SELECT DISTINCT T1.area_code FROM AREA_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.contestant_code WHERE T2.contestant_name = "Kelly Clauss"
SELECT T2.name FROM Contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.name LIKE '%Al%'
SELECT name FROM country WHERE indepYear > 1950
SELECT name FROM country WHERE founded > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(surfacearea) FROM country WHERE region = "Caribbean"
SELECT SUM(surface_area) FROM country WHERE region = "Caribbean"
SELECT T2.Continent FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Anguilla"
SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.name = "Anguilla"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT Region FROM country WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aru" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Aru" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE country = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Code = "BRA"
SELECT Region, Population FROM country WHERE Code = "ANG"
SELECT Region, Population FROM country WHERE Code = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(Lifeexpectancy) FROM country WHERE Region = "Central Africa"
SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode ORDER BY T2.life_expectancy LIMIT 1
SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country ORDER BY T2.life_expectancy LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE region = 'Asia'
SELECT COUNT(*) FROM country WHERE region = 'Asia' ORDER BY GNP DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT AVG(LifeExpectancy) FROM country WHERE region = 'Africa' AND GovernmentForm = 'Republic'
SELECT SUM(surface_area) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT SUM(SurfaceArea) FROM country WHERE region = "Asia" OR region = "Europe"
SELECT COUNT(*) FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code = "US"
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code = 'US'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(*) FROM government_form WHERE continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE continent = 'Africa'
SELECT SUM(*) FROM countrylanguage WHERE country = "Aruba"
SELECT COUNT(*) FROM countrylanguage WHERE country = "Aruba"
SELECT COUNT(*) FROM countrylanguage WHERE country = "Afghanistan"
SELECT COUNT(*) FROM countrylanguage WHERE country = "Afghanistan"
SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code GROUP BY T2.country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code GROUP BY T2.country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.Language = "French"
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Chinese"
SELECT DISTINCT T2.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT DISTINCT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT DISTINCT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE GovernmentForm = 'Republic' GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode = "R"
SELECT T1.Name FROM city AS T1 JOIN citylanguage AS T2 ON T1.id = T2.country_code ORDER BY T2.percentage DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.id = T2.country_code GROUP BY T2.country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT name, Population, LifeExpectancy FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name, Population, LifeExpectancy FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM countrylanguage WHERE Language <> "English"
SELECT AVG(LifeExpectancy) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage)
SELECT SUM(Population) FROM city WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage)
SELECT COUNT(*) FROM city WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage)
SELECT Official FROM countrylanguage WHERE country = "Beatrix"
SELECT Official FROM countrylanguage WHERE country = "Beatrix"
SELECT COUNT(DISTINCT Official) FROM countrylanguage WHERE foundedBefore = 1930
SELECT COUNT(DISTINCT Official) FROM countrylanguage WHERE FoundationYear < 1930
SELECT DISTINCT T1.code FROM country AS T1 JOIN surface_area AS T2 ON T1.code = T2.code WHERE T2.surface_area > (SELECT MAX(T2.surface_area) FROM country AS T1 JOIN surface_area AS T2 ON T1.code = T2.code WHERE T2.country = "Europe")
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.SurfaceArea > (SELECT MAX(T2.SurfaceArea) FROM countrylanguage WHERE T2.country = "Europe")
SELECT DISTINCT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.Population < (SELECT MIN(T2.Population) FROM countrylanguage)
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.CountryCode WHERE T2.Population < (SELECT MIN(T2.Population) FROM city)
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.CountryCode WHERE T2.Population > (SELECT MAX(T2.Population) FROM city WHERE T2.CountryCode = "Africa")
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T1.Population > (SELECT MAX(T2.Population) FROM countrylanguage WHERE T2.country = 'Africa')
SELECT DISTINCT T2.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language <> "English"
SELECT DISTINCT T2.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language <> "English"
SELECT DISTINCT T2.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language <> "English"
SELECT DISTINCT T2.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language <> "English"
SELECT Code FROM country WHERE NOT Code2 IN (SELECT Code2 FROM countrylanguage WHERE Language = "English") AND NOT GovernmentForm = "Republic")
SELECT Code FROM country WHERE NOT Code2 IN (SELECT code FROM countrylanguage WHERE Language = "English") AND NOT code FROM country WHERE GovernmentForm = "Republic"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language <> "English"
SELECT Name FROM city WHERE CountryCode = "Europe" EXCEPT SELECT Language FROM countrylanguage WHERE IsOfficial = "F"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT name, indep_year, surface_area FROM country ORDER BY Population LIMIT 1
SELECT name, indep_year, surface_area FROM country ORDER BY Population ASC LIMIT 1
SELECT Population, Name, HeadOf_State FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name, Population, head_of_state FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code GROUP BY T2.country_code HAVING COUNT(*) >= 3
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code GROUP BY T2.country_code HAVING COUNT(*) > 2
SELECT district, COUNT(*) FROM city GROUP BY district HAVING AVG(Population) > (SELECT AVG(Population) FROM city)
SELECT district, COUNT(*) FROM city GROUP BY district HAVING Population > (SELECT AVG(Population) FROM city)
SELECT government_form, SUM(Population) FROM country WHERE life_expectancy > 72 GROUP BY government_form
SELECT DISTINCT GovernmentForm, SUM(Population) FROM country WHERE LifeExpectancy > 72
SELECT AVG(Lifeexpectancy), SUM(Population) FROM country WHERE lifeexpectancy < 72
SELECT DISTINCT T1.Continent, SUM(T2.Population), AVG(T2.Life_expectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Country_code WHERE T2.Life_expectancy < 72
SELECT name, surface_area FROM country ORDER BY surface_area DESC LIMIT 5
SELECT name, surface_area FROM country ORDER BY surface_area DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT name FROM country GROUP BY name ORDER BY COUNT(*) ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE region = 'Asia'
SELECT COUNT(*) FROM country WHERE region = 'Asia'
SELECT Name FROM country WHERE Continent = 'Europe' INTERSECT SELECT Name FROM country WHERE Population = 80000
SELECT Name FROM country WHERE Region = 'Europe' INTERSECT SELECT Name FROM country WHERE Population = 80000
SELECT SUM(Population), AVG(Surface_area) FROM country WHERE continent = "North America" WHERE surface_area > 3000
SELECT SUM(Population), AVG(Surface_area) FROM country WHERE Surface_area > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.country, T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.code, T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code ORDER BY T2.percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE percentage > (SELECT MAX(percentage) FROM countrylanguage)
SELECT COUNT(*) FROM country WHERE Language = "Spanish"
SELECT Code FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT DISTINCT T2.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.country_code WHERE T2.language = "Spanish"
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY age ASC
SELECT Name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE NOT Nationality = "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE NOT Type = "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_founded > 2008
SELECT record_company, COUNT(*) FROM orchestra GROUP BY record_company
SELECT T2.name, COUNT(*) FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID
SELECT Major_Record_Format FROM orchestra ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE NOT T2.id IN (SELECT T3.id FROM performance AS T3 JOIN orchestra AS T2 ON T3.Orchestra_ID = T2.id)
SELECT DISTINCT T1.id FROM orchestra AS T1 JOIN performance AS T2 ON T1.id = T2.Orchestra_ID WHERE NOT T2.id IN (SELECT DISTINCT T2.id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_of_founded < 2003 UNION SELECT Record_Company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT T2.Year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_ID = T2.orchestra_ID GROUP BY T1.orchestra_ID HAVING COUNT(*) > 1
SELECT T2.Year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_ID = T2.orchestra_ID GROUP BY T1.orchestra_ID HAVING COUNT(*) > 1
SELECT COUNT(*) FROM highschooler
SELECT COUNT(*) FROM highschooler
SELECT name, grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT grades FROM highschooler
SELECT T1.name, T2.grade FROM highschooler AS T1 JOIN highschooler AS T2 ON T1.id = T2.id
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = Kyle
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT ID FROM highschooler WHERE name = 'Kyle'
SELECT student_id FROM likes WHERE name = "Kyle"
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(*) FROM Friend
SELECT name, COUNT(*) FROM highschooler
SELECT name, COUNT(*) FROM highschooler
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM highschooler GROUP BY name HAVING COUNT(*) >= 3
SELECT name FROM highschooler WHERE COUNT(*) >= 3
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT name FROM Friend WHERE student_id = (SELECT student_id FROM highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT student_id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE friend_id = (SELECT friend_id FROM likes WHERE student_id = (SELECT student_id FROM likes)
SELECT student_id FROM Student WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT ID FROM highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.student_id = T3.student_id
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM Student AS T1 JOIN Friend AS T2 ON T1.student_id = T2.student_id JOIN likes AS T3 ON T2.student_id = T3.student_id
SELECT name FROM highschooler WHERE student_id IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM likes)
SELECT COUNT(*) FROM likes GROUP BY student_id
SELECT COUNT(*) FROM likes GROUP BY student_id
SELECT T1.name, T2.student_id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT name FROM highschooler WHERE grade > 5 INTERSECT SELECT name FROM Friend GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM highschooler WHERE grade > 5 GROUP BY student_id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM likes WHERE student_id = 1
SELECT COUNT(*) FROM likes WHERE highschooler.name = "Kyle"
SELECT AVG(grade) FROM Highschooler WHERE student_id IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE student_id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT DISTINCT T1.state, T2.state FROM owners AS T1 JOIN professionals AS T2 ON T1.state = T2.state
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" UNION SELECT treatment_id, last_name, cell_number FROM treatments GROUP BY treatment_id HAVING COUNT(*) > 2
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" UNION SELECT t2.treatment_id, t2.last_name, t2.cell_number FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id GROUP BY t1.dog_id HAVING COUNT(*) > 2
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM dogs
SELECT DISTINCT T1.first_name FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id EXCEPT SELECT DISTINCT T3.name FROM dogs AS T3
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT owner_id, first_name, last_name FROM owners GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM professionals GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T2.treatment_id, T2.role_code, T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT dog_id, last_name FROM treatments GROUP BY dog_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.owner_id, T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.cost_of_treatment DESC LIMIT 1
SELECT treatment_type_description FROM treatment_type_codes ORDER BY cost_of_treatment ASC LIMIT 1
SELECT t2.treatment_type_description FROM treatment_type_codes AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY MIN(cost_of_treatment) LIMIT 1
SELECT owner_id, zip_code FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T2.first_name, T2.last_name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment < (SELECT AVG(T2.cost_of_treatment) FROM treatments)
SELECT T2.first_name, T2.last_name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment < (SELECT AVG(T2.cost_of_treatment) FROM treatments)
SELECT date_of_treatment, first_name FROM treatments
SELECT date_of_treatment, T1.first_name FROM treatments AS T2 JOIN professionals AS T1 ON T2.professional_id = T1.professional_id
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT T1.first_name, T2.last_name, T3.size FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name, T2.last_name, T3.size FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT name, date_of_treatment FROM treatments WHERE breed_code = (SELECT breed_code FROM Breeds GROUP BY breed_code ORDER BY COUNT(*) ASC LIMIT 1)
SELECT name, date_of_treatment FROM treatments WHERE breed_code = "Rare"
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT date_of_arrival, date_of_departival FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT date_of_arrival, date_of_departival FROM treatments
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM professionals WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT T2.breed_type_code, T2.size_type_code FROM breeds AS T1 JOIN treatment_type_descriptions AS T2 ON T1.breed_code = T2.breed_type_code JOIN sizes AS T3 ON T1.breed_code = T3.size_type_code
SELECT DISTINCT DISTINCT breed_type_code, size_type_code FROM dogs
SELECT T1.first_name, T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T2.first_name, T2.treatment_type_description FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT birth_Year, citizenship FROM singer
SELECT birth_Year, citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE NOT Citizenship = 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Net_Worth_Millions DESC LIMIT 1
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Title, T1.Name FROM song AS T2 JOIN singer AS T1 ON T2.Singer_ID = T1.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, T2.Total_Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT T2.name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE NOT T2.Singer_ID IN (SELECT DISTINCT T1.Singer_ID FROM song)
SELECT T1.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_Year < 1945 AND T1.birth_Year > 1955
SELECT DISTINCT T1.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_Year < 1945 AND T2.birth_Year > 1955
SELECT COUNT(*) FROM Other_available_features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM ref_property_types WHERE property_type_code = "1"
SELECT property_name FROM properties WHERE room_count > 1
