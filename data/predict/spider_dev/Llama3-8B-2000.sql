SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age DESC LIMIT 1
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T2.name, T2.song_release_year FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT T2.name, T2.song_release_year FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT DISTINCT T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > 20
SELECT DISTINCT T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT T2.song_name FROM singer AS T1 JOIN song_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT AVG(age) FROM singer)
SELECT T2.song_name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT average(capacity), MAX(capacity) FROM stadium
SELECT T2.name, T2.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY AVG(T2.attendance) DESC LIMIT 1
SELECT T2.name, T2.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY AVG(T2.attendance) DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.concert_name, T2.theme, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.concert_name, T2.theme, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.year = 2014
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.concert_year = 2014
SELECT T2.name, T2.country FROM song_name AS T1 JOIN singer AS T2 ON T1.song_release_year = T2.song_release_year WHERE T1.name LIKE "%Hey%"
SELECT T2.name, T2.country FROM song_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE "%Hey%"
SELECT T2.name, T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name, T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T2.name, T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name, T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T1.capacity DESC LIMIT 1
SELECT COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T1.Capacity DESC LIMIT 1
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Dogs ORDER BY age LIMIT 1
SELECT weight FROM Dogs ORDER BY age LIMIT 1
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pet_type = 'Dog'
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pet_type = 'Dog'
SELECT COUNT(DISTINCT pet_type) FROM pets
SELECT COUNT(DISTINCT pet_type) FROM pets
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T2.pet_id = T3.pet_id WHERE T3.pet_type = "Cat" OR T3.pet_type = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T2.pet_id = T3.pet_id WHERE T3.pet_type = "Cat" OR T3.pet_type = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.pet_id = T3.pet_id WHERE T3.pet_type = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.pet_id = T3.pet_id WHERE T3.pet_type = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Has_Pet AS T3 ON T1.StuID = T3.StuID WHERE T2.pet_type = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Has_Pet AS T3 ON T1.StuID = T3.StuID WHERE T3.pet_type = "Dog"
SELECT major, age FROM Student EXCEPT SELECT T1.major, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pet AS T3 ON T2.pet_id = T3.pet_id WHERE T3.pet_type = "Cat"
SELECT major, age FROM Student EXCEPT SELECT T1.major, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = 1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_id = "dog" EXCEPT SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_id = "cat"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_type = "Cat"
SELECT pet_type, weight FROM pets ORDER BY age LIMIT 1
SELECT pet_type, weight FROM pets ORDER BY age LIMIT 1
SELECT pet_id, weight FROM Pets WHERE age > 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT AVG(age), MAX(age) FROM pets GROUP BY pet_type
SELECT AVG(age), MAX(age) FROM pets GROUP BY pet_type
SELECT AVG(weight), pet_type FROM Pets GROUP BY pet_type
SELECT AVG(weight), pet_type FROM Pets GROUP BY pet_type
SELECT T2.fname, T2.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid
SELECT T1.Fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T1.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Lname = 'Smith'
SELECT T1.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Lname = 'Smith'
SELECT T2.StuID, COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT T2.Fname, T2.sex FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING COUNT(*) > 1
SELECT T1.Fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING COUNT(*) > 1
SELECT T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.cat_age = 3
SELECT T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.cat_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.Contid, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Contid = T2.Continentid GROUP BY T2.Continentid
SELECT T1.Continent, T1.ContinentID, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContinentID = T2.ContinentID GROUP BY T2.ContinentID
SELECT COUNT(*) FROM country
SELECT COUNT(*) FROM country
SELECT T2.Name, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT T2.Name, T1.Id, COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT AVG(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT AVG(weight) FROM cars_data)
SELECT T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Year = 1970
SELECT DISTINCT T1.Name FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT T2.Make, T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id ORDER BY T1.Year LIMIT 1
SELECT T2.Maker, T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id ORDER BY T1.Year LIMIT 1
SELECT DISTINCT T2.Model FROM model_list AS T1 JOIN car_name AS T2 ON T1.ModelId = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT T2.Model FROM cards AS T1 JOIN model_list AS T2 ON T1.Maker = T2.Model WHERE T1.Year > 1980
SELECT T2.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT T2.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT T2.Country_name FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.Country_id GROUP BY T1.Country_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Country_name FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country_id = T2.Country GROUP BY T2.Country_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Id
SELECT T2.Name, T1.id, T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT Accelerate FROM car_name WHERE Make = 'amc hornet sportabout'
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = 'AMc Hornet Sportabout'
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "USA"
SELECT COUNT(*) FROM car_makers WHERE Country = "United States"
SELECT AVG(MPG) FROM cars_data WHERE cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE cylinders = 4
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND year = 1974
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND year = 1974
SELECT Maker, model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T2.Country_name, T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.country_id
SELECT T2.Country_name, T1.Country_id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.Country_id
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Country_name FROM countries AS T1 JOIN car_makers AS T2 ON T1.Country_id = T2.Country GROUP BY T2.Country_name HAVING COUNT(*) >= 3
SELECT T2.Country_name FROM country AS T1 JOIN car_makers AS T2 ON T1.Country_id = T2.Country GROUP BY T2.Country_name HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM car_data WHERE cylinders = 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE cylinders = 3
SELECT model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT model FROM model_list ORDER BY mpg DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars WHERE YEAR < 1980
SELECT AVG(T1.Edispl) FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = "Volvo"
SELECT AVG(edispl) FROM car_name WHERE Make = "Volvo"
SELECT MAX(accelerate), cylinders FROM cars_data GROUP BY cylinders
SELECT MAX(accelerate) FROM car_data GROUP BY cylinder
SELECT T2.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = 'American Motor Company'
SELECT COUNT(*) FROM model_list WHERE Maker = 'American Motor Company'
SELECT T2.Maker, T2.Id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T2.Name, T1.Id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Name HAVING COUNT(*) > 3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker OR T1.weight > 3500 WHERE T1.full_name = 'General Motors'
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.ModelId WHERE T1.Maker = "General Motors" OR T2.weight > 3500
SELECT year FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT T1.Year FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T1.weight < 4000 INTERSECT SELECT DISTINCT T1.Year FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T1.weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T2.Cylinders FROM car_name AS T1 JOIN car_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Model = "Volvo" ORDER BY T2.Accelerate ASC LIMIT 1
SELECT T2.Cylinders FROM car_name AS T1 JOIN car_data AS T2 ON T1.MakeId = T2.Id WHERE T1.Model = "Volvo" ORDER BY T2.Accelerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM country AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country GROUP HAVING COUNT(*) > 2
SELECT COUNT(*) FROM country AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT T2.Model, T1.Horsepower FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T2.Model, T1.Continent FROM countries AS T1 JOIN model_list AS T2 ON T1.Continent = T2.Continent WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT MakeId, Make FROM car_name WHERE Horsepower > (SELECT MIN(Horsepower) FROM cars_data)
SELECT MakeId, Make FROM car_name WHERE cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE cylinders <= 8
SELECT MAX(MPG) FROM cars_data WHERE cylinders <= 8 OR year < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT model FROM car_makers WHERE maker = 'Ford Motor Company'
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN car_name AS T2 ON T1.Id = T2.MakeId WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN car_name AS T2 ON T1.Id = T2.MakeId WHERE T1.maker = 'Ford'
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT CountryName FROM countries EXCEPT SELECT T2.Country_name FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.Country_id
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.CountryId HAVING COUNT(*) > 3 OR T2.Model = 'fiat'
SELECT T2.CountryId, T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) > 3 OR T1.Model = "Fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT T2.Airport_code, T2.Airport_name FROM cities AS T1 JOIN airports AS T2 ON T1.city = T2.city WHERE T1.city = "Anthony"
SELECT T2.Airport_code, T2.Airport_name FROM cities AS T1 JOIN airports AS T2 ON T1.city = T2.city WHERE T1.city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT airline FROM airlines WHERE abbreviation = "UAL"
SELECT airline FROM airlines WHERE abbreviation = "UAL"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT city, country FROM airports WHERE airport_name = "Alton"
SELECT city, country FROM airports WHERE airport_name = "Alton"
SELECT airport_name FROM airports WHERE airport_code = "AKO"
SELECT airport_name FROM airports WHERE airport_code = "AKO"
SELECT airport_name FROM airports WHERE city = "Aberdeen"
SELECT airport_name FROM airports WHERE city = "Abingdon"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE destination = "Ato"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "City Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "Abbotsford"
SELECT COUNT(*) FROM flights WHERE destination_city = "Abingdon"
SELECT COUNT(*) FROM flights WHERE destination = "Abbotsford"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "Abbotsford" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT COUNT(*) FROM flights WHERE airline = "JetBlue Airways"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.Airport_code WHERE T2.airline = "United Airlines" AND T2.city = "ASY"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.Airport WHERE T2.Airline = "United Airlines" AND T2.city = "Los Angeles"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.Airport_code WHERE T2.airline = "United Airlines"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "AHD" AND Airline = "United Airlines"
SELECT COUNT(*) FROM flights WHERE destination = "Aberdeen" AND airline = "United Airlines"
SELECT COUNT(*) FROM United Airlines flights WHERE destination = "Abbotsford"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.source_airport GROUP BY T2.source_airport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Destairport GROUP BY T2.Destairport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Airport_code FROM flights AS T1 JOIN airports AS T2 ON T1.Source_airport = T2.Airport_code GROUP BY T1.Source_airport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Airport_code FROM flights AS T1 JOIN airports AS T2 ON T1.Source_airport = T2.Airport_code GROUP BY T1.Source_airport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Airport_code FROM flights AS T1 JOIN airports AS T2 ON T1.Source_airport = T2.Airport_code GROUP BY T1.Source_airport ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airport_code FROM flights AS T1 JOIN airports AS T2 ON T1.Source_airport = T2.Airport_code GROUP BY T1.Source_airport ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Abbreviation, T2.country FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T1.airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Abbreviation, T1.country FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T1.airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport WHERE T1.city = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.Airport_code WHERE T2.Airport_name = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.Airport_code WHERE T2.Airport_name = "AHD"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "APG" INTERSECT SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestAirport = "CVO"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport AND T1.Airport_code = T2.Dest_airport WHERE T1.city = "APG" INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport AND T1.Airport_code = T2.Dest_airport WHERE T1.city = "CVO"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport WHERE T1.city = "CVO" EXCEPT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport WHERE T1.city = "APG"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport WHERE T1.city = "CVO" EXCEPT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport WHERE T1.city = "APG"
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING COUNT(*) >= 10
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING COUNT(*) >= 10
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING COUNT(*) < 200
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING COUNT(*) < 200
SELECT FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport WHERE T1.city = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Dest_airport WHERE T1.city = "APG"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Destairport WHERE T1.city = "APG"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport WHERE T1.city = "Aberdeen"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Source_airport WHERE T1.city = "Abingdon"
SELECT FlightNo FROM airports WHERE city = "Aberdeen"
SELECT FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.Airport_code = T2.Destairport WHERE T1.city = "Abingdon"
SELECT COUNT(*) FROM flights WHERE destination_city = "Abilene" OR destination_city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE destination = "Abilene" OR destination = "Aberdeen"
SELECT airport_name FROM airports EXCEPT SELECT T1.airport_name FROM airports AS T1 JOIN flights AS T2 ON T1.airport_code = T2.source_airport AND T1.airport_code = T2.dest_airport
SELECT airport_name FROM airports EXCEPT SELECT T1.airport_name FROM airports AS T1 JOIN flights AS T2 ON T1.airport_code = T2.source_airport OR T1.airport_code = T2.dest_airport
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT name FROM Employee ORDER BY age ASC
SELECT name FROM Employee ORDER BY age ASC
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city FROM employee WHERE age > 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age > 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.name, T2.district FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.employee_id ORDER BY T1.number_products DESC LIMIT 1
SELECT MIN(product_number), MAX(product_number) FROM store
SELECT MIN(product_number), MAX(product_number) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T2.name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T2.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM documents
SELECT COUNT(*) FROM documents
SELECT document_id, document_name, document_description FROM documents
SELECT Document_id, document_name, document_description FROM documents
SELECT T2.document_name, T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE "%w%"
SELECT T2.document_name, T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE "%w%"
SELECT T2.Document_id, T1.template_id, T2.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT T2.Document_id, T1.template_id, T2.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(DISTINCT template_id) FROM documents
SELECT COUNT(*) FROM templates AS T1 JOIN documents AS T2 ON T1.Template_id = T2.template_id WHERE T1.template_type_code = 'PPT'
SELECT COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT T2.Template_id, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_id = T2.Template_id GROUP BY T2.Template_id
SELECT T2.Template_id, COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id HAVING COUNT(*) > 1
SELECT T1.Template_id FROM templates AS T1 JOIN documents AS T2 ON T1.Template_id = T2.Template_id GROUP BY T2.Template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM templates WHERE template_type_code = "CV"
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM ref_template_types GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT version_number, template_type_code FROM templates ORDER BY version_number LIMIT 1
SELECT version_number, template_type_code FROM templates ORDER BY version_number LIMIT 1
SELECT T1.Template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.Template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T2.template_type_code FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T2.Document_name FROM templates AS T1 JOIN documents AS T2 ON T1.Template_id = T2.Template_id WHERE T1.template_type_code = "BK"
SELECT T2.Document_name FROM templates AS T1 JOIN documents AS T2 ON T1.Template_id = T2.Template_id WHERE T1.Template_type_code = "BK"
SELECT T2.template_type_code, COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T2.template_type_code, COUNT(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code
SELECT T2.template_type_code FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_id = T2.Template_id GROUP BY T2.Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM ref_template_types EXCEPT SELECT template_type_code FROM documents
SELECT Template_type_code FROM ref_template_types EXCEPT SELECT T2.Template_type_code FROM documents AS T1 JOIN templates AS T2 ON T1.Template_id = T2.Template_id
SELECT template_type_code, template_type_description FROM ref_template_types
SELECT template_type_code, template_type_description FROM ref_template_types
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT Template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT Template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_id
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_id
SELECT template_id FROM ref_template_types WHERE template_type_description = "Presentation"
SELECT template_id FROM templates WHERE template_details = 'Presentation'
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_name = 'Summer Show'
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_name = 'Summer Show'
SELECT paragraph_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT paragraph_details FROM paragraphs WHERE paragraph_text LIKE "%Korea%"
SELECT T2.Paragraph_ID, T2.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_name = 'Welcome to NY'
SELECT T2.Paragraph_ID, T2.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_name = 'Welcome to NY'
SELECT T2.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_id = T2.Document_id WHERE T1.document_name = "Customer reviews"
SELECT T2.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_id = T2.Document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT T2.Document_ID, T2.Document_name, COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.Document_id GROUP BY T2.Document_id
SELECT T2.Document_id, T2.document_name, COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT T2.Document_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID HAVING COUNT(*) >= 2
SELECT T2.Document_id, T2.document_name FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Document_id, T2.document_name FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM paragraphs GROUP BY Document_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM documents ORDER BY COUNT(*) ASC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) = 1
SELECT T2.Document_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_text = 'Brazil' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_text = 'Ireland'
SELECT T2.Document_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Paragraph_text = 'Brazil' INTERSECT SELECT T2.Document_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Paragraph_text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T1.course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Name, T1.course FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_ID = T2.teacher_id
SELECT T2.Name, T1.course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.name
SELECT T2.Name, T1.course FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_ID = T2 Teacher_ID WHERE T1.course = 'Math'
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1 Teacher_ID = T2 Teacher_ID WHERE T1.course = 'Math'
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_ID = T2 Teacher_ID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1 Teacher_ID = T2 Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1 Teacher_ID = T2 Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher EXCEPT SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership < 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id, T2.name, T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id HAVING COUNT(*) > 1
SELECT T2.id, T2.name, T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id ORDER BY T1.total_spent DESC LIMIT 1
SELECT T2.museum_id, T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T2.name, T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(T1.Num_of_Ticket), MAX(T1.Num_of_Ticket) FROM visit AS T1 JOIN ticket AS T2 ON T1.Num_of_Ticket = T2.Num_of_Ticket
SELECT SUM(T1.Num_of_Ticket) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.museum_id < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.museum_id > 2011
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT AVG(T1.age), AVG(T2.age) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT AVG(T1.age), AVG(T2.age) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT AVG(t2.rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT AVG(t2.rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT t2.loser_rank FROM matches AS t1 JOIN players AS t2 ON t1.loser_id = t2.player_id ORDER BY t2.loser_rank DESC LIMIT 1
SELECT t2.loser_rank FROM matches AS t1 JOIN players AS t2 ON t1.loser_id = t2.player_id GROUP BY t1.loser_rank ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T2.tourney_name FROM matches AS T1 JOIN tours AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING COUNT(*) > 10
SELECT T2.tourney_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN tours AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.year FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.year ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.year FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.year ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.winner_name, T1.winner_rank_point FROM match AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.first_name, T2.last_name, T1.winning_rank, T1.winning_rank_point FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.winner_name FROM tours AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open" ORDER BY T1.winner_rank DESC LIMIT 1
SELECT T2.winner_name FROM Australian Open AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_rank_point DESC LIMIT 1
SELECT T1.loser_name, T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T2.loser_id = T3.player_id ORDER BY T2.minutes DESC LIMIT 1
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.total_rating, T2.first_name FROM players AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.total_name, T2.ranking_point FROM players AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT Country_code, COUNT(*) FROM players GROUP BY Country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT Country_code FROM players GROUP BY Country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country_code FROM players GROUP BY Country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country_code FROM players GROUP BY Country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT T1.tours, T2.ranking_date FROM tours AS T1 JOIN ranking AS T2 ON T1.tours = T2.tours GROUP BY T2.ranking_date
SELECT T1.ranking_date, COUNT(*) FROM rankings AS T1 JOIN tours AS T2 ON T1.tours = T2.tourney_id GROUP BY T1.ranking_date
SELECT T1.year, COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.year
SELECT T1.year, COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.year
SELECT T2.tourney_name, T2.rank FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id = T2.tourney_id ORDER BY T1.tourney_date LIMIT 3
SELECT T2.tourney_name, T2.tourney_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" AND winner_hand = "left"
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.ranking_point DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(deaths), MIN(deaths) FROM death GROUP BY MAX(deaths), MIN(deaths)
SELECT AVG(injured), T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.name
SELECT T1.note, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.bulgarian_commander = 'Kaloyan' AND T2.latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT T1.id FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = '225')
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id JOIN ship AS T3 ON T2.id = T3.id WHERE T2.name = 'Lettice' AND T3.name = 'HMS Atalanta'
SELECT T1.name, T1.result, T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.location <> 'English Channel'
SELECT note FROM death WHERE note LIKE "%East%"
SELECT * FROM addresses WHERE line_1 = 'Line 1' AND line_2 = 'Line 2'
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT zip_post_code FROM addresses WHERE city = "Port Chelsea"
SELECT zip_post_code FROM addresses WHERE city = "Port Chelsea"
SELECT T2.department_name, T2.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM degree_program
SELECT COUNT(DISTINCT department_id) FROM degree_program
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_program
SELECT COUNT(DISTINCT degree_program_name) FROM degree_program
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs WHERE department_name = 'Engineering'
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs WHERE department_name = 'Engineering'
SELECT SECTION_name, SECTION_description FROM sections
SELECT SECTION_name, SECTION_description FROM sections
SELECT T2.course_name, T1.course_id FROM Sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT T2.course_name, T1.course_id FROM Sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM sections ORDER BY section_name
SELECT section_name FROM sections ORDER BY section_name
SELECT T2.semester_name, T1.student_id FROM student_enrollment AS T1 JOIN semester AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.semester_name, T1.semester_id FROM student_enrollment AS T1 JOIN SECTION AS T2 ON T1.section_id = T2.section_id GROUP BY T1.section_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name, T2.middle_name, T2.last_name, T1.student_id FROM student_enrollment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T2.first_name, T2.middle_name, T2.last_name, T1.student_id FROM student_enrollment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrollment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 'Bachelor'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrollment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelors"
SELECT T1.degree_summary_name, T1.degree_summary_description FROM Degree_Programs AS T1 JOIN student_enrollment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM student_enrollment AS T1 JOIN degree_program AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_id, T2.degree_summary_name FROM courses AS T1 JOIN student_enrollment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.degree_program_id, T2.degree_summary_name FROM student_enrollment AS T1 JOIN degree_program AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM student_enrollment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.first_name, T2.middle_name, T2.last_name, T1.student_id, COUNT(*) FROM student_enrollment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrollment)
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrollment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrollment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrollment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrollment AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrollment AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM Degree_Programs AS T1 JOIN students AS T2 ON T1.degree_program_id = T2.student_id WHERE T1.state_province_county = "North Carolina"
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrollment AS T2 ON T1.student_id = T2.student_id WHERE T2.state_province_county = "North Carolina"
SELECT T2.transcript_date, T1.transcript_id FROM courses AS T1 JOIN student_course_contents AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN student_course_contents AS T2 ON T1.transcript_id = T2.student_course_id GROUP BY T2.student_course_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T2.first_name, T2.middle_name, T2.last_name FROM students AS T1 JOIN graduates AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered LIMIT 1
SELECT T2.first_name, T2.middle_name, T2.last_name FROM students AS T1 JOIN graduates AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered LIMIT 1
SELECT first_name FROM students WHERE permanent_address <> current_address
SELECT first_name FROM students WHERE permanent_address <> current_address
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.current_address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.current_address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT T1.course_id, COUNT(*) FROM courses AS T1 JOIN student_enrollment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) > 1
SELECT MAX(Enrollment_id), T1.course_name FROM courses AS T1 JOIN student_enrollment AS T2 ON T1.course_id = T2.course_id JOIN student_transcripts AS T3 ON T2.student_enrollment_id = T3.transcript_id
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY transcript_id LIMIT 1
SELECT T2.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.results LIMIT 1
SELECT semester_id FROM student_enrollment WHERE student_id IN (SELECT T1.student_id FROM students AS T1 JOIN student_enrollment_course AS T2 ON T1.student_enrollment_id = T2.student_enrollment_id WHERE T1.first_name = 'Master' INTERSECT SELECT T1.student_enrollment_id FROM students AS T1 JOIN student_enrollment_course AS T2 ON T1.student_enrollment_id = T2.student_enrollment_id WHERE T1.first_name = 'Bachelor')
SELECT semester_id FROM student_enrollment WHERE student_id IN (SELECT T1.student_id FROM students AS T1 JOIN student_enrollment_course AS T2 ON T1.student_enrollment_id = T2.student_enrollment_id WHERE T1.degree_program_id = 'Masters' INTERSECT SELECT T1.student_enrollment_id FROM students AS T1 JOIN student_enrollment_course AS T2 ON T1.student_enrollment_id = T2.student_enrollment_id WHERE T1.degree_program_id = 'Bachelors')
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM students ORDER BY *
SELECT other_student_details FROM students ORDER BY other_student_details
SELECT SECTION_description FROM Sections WHERE SECTION_name = 'h'
SELECT SECTION_description FROM Sections WHERE SECTION_name = 'h'
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE directed_by = 'Ben Jones'
SELECT COUNT(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM cartoon WHERE written_by = 'Joseph Kuhr'
SELECT T2.title, T1.directed_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.air_date
SELECT T2.title, T2.directed_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.air_date
SELECT Title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name, content FROM TV_channel
SELECT COUNT(DISTINCT series_name, content) FROM TV_channel
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_series WHERE series_name = 'Sky Radio'
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_channel WHERE Language = 'English'
SELECT COUNT(*) FROM TV_channel WHERE Language = 'English'
SELECT language, COUNT(*) FROM TV_channel GROUP BY language ORDER BY COUNT(*) ASC LIMIT 1
SELECT language, COUNT(*) FROM TV_channel GROUP BY language ORDER BY COUNT(*) ASC LIMIT 1
SELECT language, COUNT(*) FROM TV_channel GROUP BY language
SELECT language, COUNT(*) FROM TV_channel GROUP BY language
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = 'The Rise of the Blue Beetle'
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = 'The Rise of the Blue Beetle'
SELECT T1.title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT episode, rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT MINshare), MAXshare) FROM TV_series
SELECT MAX(share), MIN(share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_episode AS T2 ON T1.id = T2.id WHERE T2.episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel JOIN T1.series_name = T2.series_name WHERE T1.series_name = "Sky Radio"
SELECT T2.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "Sky Radio"
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT T2.production_code, T1.channel FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel_id ORDER BY T1.air_date DESC LIMIT 1
SELECT T2.production_code, T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel GROUP BY T1.id ORDER BY T1.id DESC LIMIT 1
SELECT T2.package_option, T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T2.channel = T3.channel WHERE T1.hight_definition_tv = 'Yes'
SELECT T2.package_option, T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel JOIN high_definition_TV AS T3 ON T2.id = T3.id
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT Country FROM TV_channel EXCEPT SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE NOT id IN (SELECT T1.id FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.directed_by = "Todd Casey")
SELECT T2.series_name, T2.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language <> 'English'
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language <> 'English'
SELECT T1.id FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T2.channel HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM TV_channel WHERE NOT id IN (SELECT T1.id FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones')
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_table_made, Best_finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT MAX(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT AVG(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT AVG(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM People ORDER BY Name ASC
SELECT Name, Birth_Date FROM People ORDER BY Name ASC
SELECT Name FROM People WHERE Nationality <> 'Russia'
SELECT Name FROM People WHERE Nationality <> 'Russia'
SELECT Name FROM people EXCEPT SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT Name FROM people EXCEPT SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM area_code_state
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM Votes
SELECT MAX(area_code), MIN(area_code) FROM area_code_state
SELECT created FROM votes WHERE state = "CA" ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT T1.state, T2.created FROM AREA_code_state AS T1 JOIN Votes AS T2 ON T1.area_code = T2.contestant_number
SELECT T2.contestant_number, T2.contestant_name FROM Votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T2.contestant_number, T2.contestant_name FROM Votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = "NY" OR state = "CA"
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT T2.area_code FROM Votes AS T1 JOIN Area_code_state AS T2 ON T1.state = T2.state GROUP BY T1.state ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM Votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN candidates AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN candidates AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT Name FROM country WHERE Indep_year > 1950
SELECT Name FROM country WHERE Foundation > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(T2.SurfaceArea) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Region = "Caribbean"
SELECT SUM(T2.SurfaceArea) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Name = "Caribbean"
SELECT T1.Continent FROM country AS T1 JOIN city AS T2 ON T1.ID = T2.ID WHERE T2.Name = "Anguilla"
SELECT T1.Continent FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Name = "Anguilla"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.ID WHERE T2.Name = "Kabul"
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Name = "Aruba" GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Name = "Aruba" GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN region AS T2 ON T1.Region = T2.Name WHERE T2.Name = "Central Africa"
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.ID WHERE T2.District = "Central Africa"
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT COUNT(*), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT AVG(T2.LifeExpectancy) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Name = "Republic" AND T1.Continent = "Africa"
SELECT AVG(T2.LifeExpectancy) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Continent = "Africa" AND T1.GovernmentForm = "Republic"
SELECT SUM(T2.SurfaceArea) FROM country AS T1 JOIN continent AS T2 ON T1.Continent = T2.Name WHERE T1.Name = "Asia" OR T1.Name = "Europe"
SELECT SUM(T2.SurfaceArea) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Continent = "Asia" OR T1.Continent = "Europe"
SELECT COUNT(*) FROM city WHERE District = "Gelderland"
SELECT SUM(T2.Population) FROM city AS T1 JOIN country AS T2 ON T1.ID = T2.Code WHERE T1.District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'USA'
SELECT AVG(GNP), SUM(Population) FROM country WHERE CountryCode = "USA"
SELECT COUNT(DISTINCT Language) FROM country_language
SELECT COUNT(DISTINCT Language) FROM country_language
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Name = "Aruba"
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Name = "Aruba"
SELECT COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Name = "Afghanistan"
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Name = "Afghanistan" AND T2.IsOfficial = 'F'
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code GROUP BY T2.Country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code GROUP BY T2.Country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country_language GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country_language GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country_language WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM country_language WHERE Language = "Dutch"
SELECT COUNT(*) FROM country_language WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM country_language WHERE Language = "Dutch"
SELECT Name FROM country WHERE Country_code = "USA" INTERSECT SELECT Name FROM country WHERE Country_code = "Canada"
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.IsOfficial = 'F' INTERSECT SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.IsOfficial = 'F'
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.IsOfficial = 'F' AND T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.IsOfficial = 'F' AND T2.Language = 'French'
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language = "Chinese"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language = "Chinese"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT Region FROM country_language WHERE Language = "Dutch" OR Language = "English"
SELECT Country_code FROM country_language WHERE Is_official = 'F' AND Language = 'English' OR Language = 'Dutch'
SELECT Country_code FROM country_language WHERE Is_official = 'F' AND Language = 'English' OR Language = 'Dutch'
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Continent = "Asia" GROUP BY T2.code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Continent = "Asia" GROUP BY T2.code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Government_form = 'Republic'
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Government_form = 'Republic'
SELECT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.ID = T2.Country_code WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.ID = T2.Country_code WHERE T2.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surface_area DESC LIMIT 1
SELECT name, population, life expectancy FROM country WHERE continent = 'Asia' ORDER BY surface_area DESC LIMIT 1
SELECT AVG(T2.LifeExpectancy) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T1.Is_official = 'F'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.IsOfficial = 'F'
SELECT SUM(Population) FROM country WHERE NOT Code IN (SELECT T1.Code FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language = 'English')
SELECT COUNT(*) FROM country WHERE NOT Code IN (SELECT Country_code FROM country_language)
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.head_of_state = 'Beatrix'
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.head_of_state = 'Beatrix'
SELECT COUNT(DISTINCT T1.IsOfficial) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Founded < 1930
SELECT COUNT(DISTINCT T1.IsOfficial) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Founded < 1930
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(surface_area) FROM country WHERE continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(surface_area) FROM country WHERE continent = 'Europe')
SELECT T1.Name FROM country AS T1 JOIN population AS T2 ON T1.ID = T2.Country_code WHERE T1.Continent = "Asia" INTERSECT SELECT T1.Name FROM country AS T1 JOIN population AS T2 ON T1.ID = T2.Country_code WHERE T1.Continent = "Africa"
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Continent = "Asia" INTERSECT SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Continent = "Africa" AND T2.Percent = (SELECT MIN(T2.Percent) FROM country_language)
SELECT T1.Name FROM country AS T1 JOIN population AS T2 ON T1.ID = T2.Country_code WHERE T1.Continent = "Asia" AND T2.Population > (SELECT MAX(T2.Population) FROM country AS T1 JOIN population AS T2 ON T1.ID = T2.Country_code WHERE T1.Continent = "Africa")
SELECT Name FROM country WHERE Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT Country_code FROM country EXCEPT SELECT Country_code FROM country_language WHERE Language = 'English'
SELECT Country_code FROM country EXCEPT SELECT Country_code FROM country_language WHERE Language = 'English'
SELECT T1.CountryCode FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language <> 'English'
SELECT T1.CountryCode FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language <> 'English'
SELECT Code FROM country WHERE NOT Code IN (SELECT T1.Code FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Name = 'United States')
SELECT Code FROM country WHERE NOT Code IN (SELECT T1.Code FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T2.Name = 'United States')
SELECT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.ID = T2.Country_code WHERE T2.IsOfficial = 'F' AND T2.Language = 'English' AND T1.Country_code = 'Europe'
SELECT Name FROM city WHERE CountryCode = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.ID = T2.Country_code WHERE T2.IsOfficial = "F"
SELECT DISTINCT T1.Name FROM country AS T1 JOIN city_language AS T2 ON T1.Code = T2.Country_code WHERE T2.IsOfficial = 'F' AND T1.Continent = 'Asia'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.ID = T2.Country_code WHERE T2.IsOfficial = 'F' AND T1.Continent = 'Asia'
SELECT name, independence_year, surface_area FROM country ORDER BY Population LIMIT 1
SELECT T2.Name, T1.Indep_year, T2.Surface_area FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code ORDER BY T1.Population LIMIT 1
SELECT Population, Name, Head_of_state FROM country ORDER BY Surface_area DESC LIMIT 1
SELECT name, population, head_of_state FROM country ORDER BY surface_area DESC LIMIT 1
SELECT T2.Name, COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code GROUP BY T2.Name HAVING COUNT(*) >= 3
SELECT T2.Name, COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code GROUP BY T2.Name HAVING COUNT(*) > 2
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city)
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city)
SELECT T2.GovernmentForm, SUM(T1.Population) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code GROUP BY T2.Country_code HAVING AVG(T1.Population) > 72
SELECT T2.Name, SUM(T1.Population) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code GROUP BY T2.Name HAVING AVG(T1.Population) > 72
SELECT AVG(T1.LifeExpectancy), SUM(T1.Population) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Percent = T1.LifeExpectancy < 72 GROUP BY T2.Country_code
SELECT T2.Name, SUM(T1.Population), AVG(T1.LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Name HAVING AVG(T1.LifeExpectancy) < 72
SELECT Name, Region FROM country ORDER BY Region DESC LIMIT 5
SELECT name, surface_area FROM country ORDER BY surface_area DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Population = 80000 AND Continent = "Europe"
SELECT SUM(T1.Population), AVG(T2.Surface_area) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Continent = "North America" AND T2.Surface_area > 3000
SELECT SUM(T1.Population), AVG(T2.Surface_area) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T1.Name = "Canada" AND T2.Percent = 100 AND T2.Surface_area > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code GROUP BY T2.code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code GROUP BY T2.code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language, T1.Percent FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code GROUP BY T1.Country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.CountryCode, T3.Language FROM country AS T1 JOIN country_language AS T2 ON T1.ID = T2.Country_code JOIN people AS T3 ON T2.Percent = (SELECT MAX(T2.Percent) FROM country_language)
SELECT COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T1.language = "Spanish" ORDER BY T1.percent DESC LIMIT 1
SELECT COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.code WHERE T1.language = "Spanish"
SELECT T1.Code FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language = "Spanish" ORDER BY T2.Percentages DESC LIMIT 1
SELECT T1.Code FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.Country_code WHERE T2.Language = "Spanish" GROUP BY T2.Country_code HAVING COUNT(*) > (SELECT COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.Country_code = T2.Code WHERE T2.Name = "Spain")
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> 'Live final'
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> 'Live final'
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Years_of_Work DESC
SELECT Name FROM conductor ORDER BY Years_of_Work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T2.name, T1.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T2.name, T1.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT record_company, COUNT(*) FROM orchestra GROUP BY record_company
SELECT Record_company, COUNT(*) FROM orchestra GROUP BY Record_company
SELECT Major_Record_Format FROM orchestra ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1
SELECT ORchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT ORchestra FROM orchestra WHERE NOT Orchestra_id IN (SELECT Orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE year_of_founded > 2003
SELECT Record_Company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE year_of_founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT T2.year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT T2.year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT COUNT(*) FROM highschooler
SELECT COUNT(*) FROM highschooler
SELECT name, grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT T2.student_id, T1.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id
SELECT COUNT(*) FROM friend
SELECT T2.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T2.student_id = T3.student_id
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T2.student_id = T3.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.student_id = T3.student_id
SELECT student_id, COUNT(*) FROM likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.like_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.like_id = T2.id WHERE T2.name = 'Kyle'
SELECT AVG(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT AVG(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT MIN(grade) FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT grade FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT AVG(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT AVG(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) > 2
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.first_name FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.professional_id EXCEPT SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT first_name FROM professionals OR owners EXCEPT SELECT first_name FROM dogs
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT professional_id, T1.role_code, T1.email_address FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT professional_id, T1.role_code, T1.email_address FROM Treatment_Types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT owner_id, first_name, last_name FROM Owners ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_types ORDER BY cost_of_treatment LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY SUM(treatment_cost) LIMIT 1
SELECT owner_id, zip_code FROM Treatments GROUP BY owner_id ORDER BY SUM(T1.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Breeds GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T2.name, T1.date_of_treatment FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = (SELECT breed_code FROM Breeds GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.date_of_birth LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges GROUP BY charge_type
SELECT charge_type, charge_amount FROM Charges GROUP BY charge_type
SELECT charge_type, MAX(charge_amount) FROM Charges
SELECT charge_amount FROM Charges GROUP BY charge_amount ORDER BY MAX(charge_amount) DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT breed_name, size_name FROM Breeds
SELECT DISTINCT T1.breed_name, T2.size_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T1.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> 'France'
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, MAX(net_worth_millions) FROM singer GROUP BY Citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2 Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name, SUM(T1.sales) FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name, SUM(T1.sales) FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_year > 1955
SELECT COUNT(*) FROM other_available_features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_property_types WHERE property_type_code = "A"
SELECT property_name FROM Properties WHERE room_count > 1
