SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT T1.name, T2.song_release_year FROM singer AS T1 JOIN song AS T2 ON T1.song_name = T2.name ORDER BY T1.age LIMIT 1
SELECT T1.Song_Name, T1.Song_release_year FROM singer AS T1 JOIN singer AS T2 ON T1.Age = T2.Age ORDER BY T1.Age DESC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT COUNT(*), country FROM singer GROUP BY country
SELECT T1.Song_Name FROM singer AS T1 JOIN singer AS T2 ON T1.Age > AVG(T2.Age)
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION, NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR, COUNT(*) FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR, COUNT(*) FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_Name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT name, country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name, country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT COUNT(*) FROM stadium ORDER BY Capacity DESC LIMIT 1
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T2.Capacity DESC LIMIT 1
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pettype = 'dog' ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE pettype = 'dog' ORDER BY pet_age DESC LIMIT 1
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT COUNT(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T1.PetType = 'dog' AND T3.Sex = 'F'
SELECT COUNT(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T1.PetType = 'dog' AND T3.Sex = 'F'
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog'
SELECT major, age FROM Student EXCEPT SELECT T1.major, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat'
SELECT major FROM Student EXCEPT SELECT T1.major FROM Student AS T1 JOIN Pets AS T2 ON T1.StuID = T2.PetID WHERE T2.PetType = 'cat'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet JOIN Pets ON Has_pet.PetID = Pets.PetID WHERE PetType = 'cat'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet JOIN Pets ON Has_pet.PetID = Pets.PetID WHERE PetType = 'cat'
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog' EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat'
SELECT fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'dog')) EXCEPT SELECT fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat'))
SELECT pettype, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pettype, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age), pettype FROM Pets GROUP BY pettype
SELECT AVG(pet_age), MAX(pet_age), pettype FROM Pets GROUP BY pettype
SELECT AVG(weight), pettype FROM Pets GROUP BY pettype
SELECT AVG(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid
SELECT T1.PetID FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T3.LName = 'Smith'
SELECT T1.PetID FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T3.LName = 'Smith'
SELECT COUNT(*), StuID FROM Has_pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_pet GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat' AND T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Pets AS T2 ON T1.StuID = T2.PetID WHERE T2.PetType = 'cat' AND T2.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.Continent, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, T1.FullName, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id ORDER BY T3.horsepower LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id ORDER BY T3.horsepower LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T3.weight < (SELECT AVG(weight) FROM cars_data)
SELECT T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.weight < (SELECT AVG(weight) FROM cars_data)
SELECT DISTINCT T1.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Make JOIN cars_data AS T3 ON T2.MakeId = T3.Id WHERE T3.Year = 1970
SELECT T1.Make, T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Year LIMIT 1
SELECT T1.Maker, T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Year LIMIT 1
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T3.year > 1980
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T3.year > 1980
SELECT T1.continent, COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.continent
SELECT T1.continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT COUNT(*), T1.Maker, T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker
SELECT T1.Accelerate FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Maker = "amc" AND T2.Model = "hornet sportabout"
SELECT T2.Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id JOIN model_list AS T3 ON T1.Model = T3.Model JOIN car_makers AS T4 ON T3.Maker = T4.Id WHERE T4.Maker = "amc" AND T3.Model = "hornet sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = (SELECT CountryId FROM countries WHERE CountryName = 'France')
SELECT COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = 'France'
SELECT COUNT(*) FROM car_makers WHERE Country = (SELECT CountryId FROM countries WHERE CountryName = 'USA')
SELECT COUNT(*) FROM car_makers WHERE Country = (SELECT CountryId FROM countries WHERE CountryName = 'United States')
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE cylinders = 4
SELECT T1.Weight FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 8 AND T1.Year = 1974 ORDER BY T1.Weight LIMIT 1
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.id FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT AVG(T1.Weight), T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T2.Year
SELECT AVG(Weight), AVG(Year) FROM cars_data GROUP BY Year
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = (SELECT contid FROM continents WHERE continent = 'Europe') GROUP BY T1.countryname HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.horsepower, T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 3 ORDER BY T1.horsepower DESC LIMIT 1
SELECT T1.horsepower, T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 3 ORDER BY T1.horsepower DESC LIMIT 1
SELECT model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id ORDER BY T2.mpg DESC LIMIT 1
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(T1.horsepower) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year < 1980
SELECT AVG(T1.edispl) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.model = 'volvo'
SELECT AVG(T1.edispl) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.maker = (SELECT T3.id FROM car_makers AS T3 WHERE T3.maker = 'volvo')
SELECT MAX(Accelerate), cylinders FROM cars_data GROUP BY cylinders
SELECT MAX(Accelerate) FROM cars_data GROUP BY cylinders
SELECT model FROM car_names GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = 'American Motor Company'
SELECT COUNT(*) FROM model_list WHERE maker = (SELECT id FROM car_makers WHERE maker = 'American Motor Company')
SELECT T1.FullName, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'General Motors' OR T2.fullname = 'Ford Motor Company' OR T2.fullname = 'Dodge' OR T2.fullname = 'Chevrolet' OR T2.fullname = 'Chrysler' OR T2.fullname = 'Buick' OR T2.fullname = 'Pontiac' OR T2.fullname = 'Cadillac' OR T2.fullname = 'Lincoln' OR T2.fullname = 'Mercury' OR T2.fullname = 'Oldsmobile' OR T2.fullname = 'Fiat' OR T2.fullname = 'Plymouth' OR T2.fullname = 'AMC' OR T2.fullname = 'Chevrolet' OR T2.fullname = 'Pontiac' OR T2.fullname = 'Buick' OR T2.fullname = 'Cadillac' OR T2.fullname = 'Lincoln' OR T2.fullname = 'Mercury' OR T2
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T1.maker = T3.id WHERE T3.maker = 'General Motors' OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT T1.horsepower FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid ORDER BY T1.accelerate DESC LIMIT 1
SELECT T1.horsepower FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid ORDER BY T1.accelerate DESC LIMIT 1
SELECT T1.cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN model_list AS T3 ON T2.model = T3.model WHERE T3.model = 'volvo' ORDER BY T1.accelerate LIMIT 1
SELECT T1.cylinders FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.model = 'volvo' ORDER BY T1.accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT MAX(accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT T1.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid GROUP BY T1.country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT T1.makeid, T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.horsepower > (SELECT MIN(horsepower) FROM cars_data) EXCEPT SELECT T1.makeid, T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders > 3
SELECT T1.makeid, T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.horsepower <> (SELECT MIN(horsepower) FROM cars_data) INTERSECT SELECT T1.makeid, T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id JOIN car_makers AS T4 ON T1.maker = T4.id WHERE T3.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id JOIN car_makers AS T4 ON T1.maker = T4.id WHERE T4.maker = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T3.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.makeid = T3.id WHERE T2.make = 'Ford Motor Company'
SELECT T1.countryname FROM countries AS T1 EXCEPT SELECT T2.country FROM car_makers AS T2
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT maker FROM model_list GROUP BY maker HAVING COUNT(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING COUNT(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.countryname, T2.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker > 3 OR T2.maker = (SELECT maker FROM model_list WHERE model = 'fiat')
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker > 3 INTERSECT SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.countryid = T2.maker WHERE T2.model = 'fiat'
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = 'Jetblue Airways'
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT airline FROM airlines WHERE abbreviation = 'UAL'
SELECT airline FROM airlines WHERE abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = 'Aberdeen'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = 'Aberdeen'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airports AS T3 ON T2.DestAirport = T3.AirportCode WHERE T1.City = 'Aberdeen' AND T3.City = 'Ashley'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.City = "Aberdeen" AND T3.City = "Ashley"
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "Jetblue Airways"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.uid WHERE T3.Airline = 'United Airlines' AND T2.AirportName = 'ASY'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.uid WHERE T3.Airline = "United Airlines" AND T2.AirportName = "ASY Airport"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.uid WHERE T3.Airline = 'United Airlines' AND T2.AirportName = 'AHD'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.uid WHERE T3.Airline = "United Airlines" AND T2.AirportName = "AHD Airport"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.uid WHERE T3.Airline = 'United Airlines' AND T2.City = 'Aberdeen'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.uid WHERE T3.Airline = "United Airlines" AND T2.City = "Aberdeen"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.city FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1.Abbreviation FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT airline FROM flights WHERE sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT airline FROM flights WHERE destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode EXCEPT SELECT airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'
SELECT T2.flightno FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE AirportName = 'Aberdeen')
SELECT T2.flightno FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE AirportName = 'Aberdeen')
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = 'Aberdeen' OR T1.City = 'Abilene'
SELECT COUNT(*) FROM airports WHERE city = 'Aberdeen' OR city = 'Abilene'
SELECT airportname FROM airports EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT airportname FROM airports EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop EXCEPT SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT COUNT(*), T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT DISTINCT template_id FROM Documents
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'
SELECT T1.template_id, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT DISTINCT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T1.document_id <> T2.document_id
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM templates WHERE template_type_code = 'PP'
SELECT COUNT(*) FROM Templates WHERE template_type_code = 'CV'
SELECT COUNT(*) FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = 'CV'
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT T1.template_type_code, COUNT(*) FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT DISTINCT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(version_number), template_type_code FROM templates
SELECT MIN(version_number), template_type_code FROM templates
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'BK'
SELECT document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'BK'
SELECT T1.template_type_code, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT DISTINCT T1.template_type_code, COUNT(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = 'AD'
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id
SELECT DISTINCT T1.template_details FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Presentation"
SELECT template_id FROM templates WHERE template_details = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Korea '
SELECT paragraph_text FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id, T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id, T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT T1.document_id, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT T1.document_id, T1.document_name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id, T1.document_name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT name FROM teacher ORDER BY age
SELECT name FROM teacher ORDER BY age
SELECT age, hometown FROM teacher
SELECT age, hometown FROM teacher
SELECT name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT DISTINCT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T3 ON T1.Teacher_ID = T3.Teacher_ID JOIN course AS T2 ON T3.Course_ID = T2.Course_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T3 ON T1.Teacher_ID = T3.Teacher_ID JOIN course AS T2 ON T3.Course_ID = T2.Course_ID ORDER BY T1.Name
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T3 ON T1.Teacher_ID = T3.Teacher_ID JOIN course AS T2 ON T3.Course_ID = T2.Course_ID ORDER BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = "math"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = "math"
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT name FROM teacher EXCEPT SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT name, MAX(num_of_staff) FROM museum
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.total_spent DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.num_of_ticket DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(T1.Total_spent) FROM VISIT AS T1 JOIN VISITOR AS T2 ON T1.visitor_ID = T2.ID WHERE T2.Level_of_membership = 1
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE museum_id IN (SELECT museum_id FROM museum WHERE open_year > 2010))
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
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
SELECT T1.winner_name FROM matches AS T1 JOIN matches AS T2 ON T1.winner_name = T2.winner_name WHERE T1.year = 2013 AND T2.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name, T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.tours DESC LIMIT 1
SELECT T1.first_name, T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.tours DESC LIMIT 1
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN tournaments AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.tourney_name = "Australian Open" ORDER BY T1.rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT first_name, AVG(ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id
SELECT SUM(ranking_points), first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT first_name, SUM(ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "Left"
SELECT COUNT(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT T1.note, T1.killed, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id ORDER BY T2.injured + T2.killed DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.tonnage <> '225'
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM Courses
SELECT COUNT(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name = "Math"
SELECT T1.course_description FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id WHERE T2.section_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea"
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT DISTINCT degree_summary_name FROM Degree_Programs
SELECT COUNT(DISTINCT degree_program_id) FROM Student_Enrolment
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Engineering')
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Engineering')
SELECT section_name, section_description FROM SECTIONS
SELECT section_name, section_description FROM SECTIONS
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%the computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT T1.degree_program_id, T1.degree_summary_name, COUNT(*) FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*), T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM Semesters EXCEPT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id
SELECT semester_name FROM Semesters EXCEPT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.transcript_id ORDER BY T2.transcript_date LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.current_address_id <> T1.permanent_address_id
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.current_address_id <> T1.permanent_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3, T1.city, T1.zip_postcode, T1.state_province_county, T1.country, T1.other_address_details FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT MIN(transcript_date), other_details FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_course_id, COUNT(*) FROM Transcript_Contents AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_date ORDER BY COUNT(*) LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY COUNT(*) LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Master') INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelor')
SELECT semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN Students AS T3 ON T1.student_id = T3.student_id JOIN Degree_Programs AS T4 ON T1.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Bachelors' INTERSECT SELECT semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN Students AS T3 ON T1.student_id = T3.student_id JOIN Degree_Programs AS T4 ON T1.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Masters'
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.* FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM Students ORDER BY last_name DESC
SELECT section_description FROM SECTIONS WHERE section_name = "h"
SELECT section_description FROM SECTIONS WHERE section_name = 'h'
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT first_name FROM Students WHERE permanent_address_id = (SELECT address_id FROM Addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_channel
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_channel WHERE Language = 'English'
SELECT COUNT(*) FROM TV_channel WHERE Language = 'English'
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language FROM TV_channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT T1.series_name FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
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
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT COUNT(*), directed_by FROM cartoon GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_channel WHERE Hight_definition_TV = "yes"
SELECT Package_Option, series_name FROM TV_channel WHERE Hight_definition_TV = "yes"
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' OR T2.directed_by = 'Michael Chang'
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language <> 'English'
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language <> 'English'
SELECT id FROM TV_channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT T1.id FROM TV_channel AS T1 EXCEPT SELECT T2.channel FROM Cartoon AS T2 WHERE T2.directed_by = "Ben Jones"
SELECT T1.package_option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_channel EXCEPT SELECT T1.Package_Option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
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
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id
SELECT T1.name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T2.earnings > 300000
SELECT T1.name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T2.earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T1.name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T2.final_table_made
SELECT T1.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T2.earnings LIMIT 1
SELECT T1.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T2.earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT T1.money_rank FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T2.height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT AVG(Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings DESC
SELECT T2.name FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT name, birth_date FROM people ORDER BY name
SELECT name, birth_date FROM people ORDER BY name
SELECT name FROM people WHERE nationality <> "Russia"
SELECT name FROM people WHERE nationality <> 'Russia'
SELECT name FROM people WHERE NOT people_id IN (SELECT people_id FROM poker_player)
SELECT name FROM people WHERE NOT people_id IN (SELECT people_id FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM VOTES
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT MAX(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM contestants WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE indepyear > 1950
SELECT COUNT(*) FROM country WHERE governmentform = 'republic'
SELECT COUNT(*) FROM country WHERE governmentform = 'republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT SUM(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT T2.district FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.name = 'Kabul'
SELECT district FROM city WHERE name = 'Kabul'
SELECT T2.language FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T1.name = 'Aruba' ORDER BY T2.percentage DESC LIMIT 1
SELECT T2.language FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.name = 'Aruba'
SELECT population, lifeexpectancy FROM country WHERE name = 'Brazil'
SELECT population, lifeexpectancy FROM country WHERE name = 'Brazil'
SELECT region, population FROM country WHERE name = 'Angola'
SELECT region, population FROM country WHERE name = 'Angola'
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia'
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Africa' AND T2.IsOfficial = 'T'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Africa' AND T2.IsOfficial = 'T'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT SUM(population) FROM city WHERE district = 'Gelderland'
SELECT SUM(population) FROM city WHERE district = 'Gelderland'
SELECT AVG(gnp), SUM(population) FROM country WHERE governmentform = 'US Territory'
SELECT AVG(gnp), SUM(population) FROM country WHERE governmentform = 'US Territory'
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT DISTINCT governmentform FROM country WHERE continent = 'Africa'
SELECT DISTINCT governmentform FROM country WHERE continent = 'Africa'
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Aruba'
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Aruba'
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.isofficial = 'T' AND T2.name = 'Afghanistan'
SELECT COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.isofficial = 'T' AND T2.name = 'Afghanistan'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.continent, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch'
SELECT COUNT(*) FROM countrylanguage WHERE language = 'English' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE language = 'Dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'T' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'T'
SELECT COUNT(DISTINCT T1.continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Chinese'
SELECT T1.continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Chinese'
SELECT T2.region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' OR T1.language = 'Dutch'
SELECT T2.region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Dutch' OR T1.language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'T' AND T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'T' AND T2.language = 'Dutch'
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' ORDER BY T2.percentage DESC LIMIT 1
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' GROUP BY T2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.governmentform = 'republic' GROUP BY T2.language HAVING COUNT(*) = 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.governmentform = 'republic' GROUP BY T1.language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT SUM(population) FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.population FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language <> 'English'
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.headofstate = 'Beatrix'
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = 'Beatrix'
SELECT COUNT(DISTINCT T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.indepyear < 1930 AND T2.isofficial = 'T'
SELECT COUNT(DISTINCT T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.indepyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT MIN(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' HAVING population < (SELECT MIN(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' HAVING MAX(population) > (SELECT MAX(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' HAVING population > MAX(SELECT population FROM country WHERE continent = 'Africa')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language <> 'English'
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language <> 'English'
SELECT T1.countrycode FROM countrylanguage AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language <> T2.language
SELECT T1.countrycode FROM countrylanguage AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language <> T2.language AND T2.language = 'English'
SELECT code FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English') AND governmentform <> 'Republic'
SELECT code FROM country WHERE NOT code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English') AND governmentform <> 'Republic'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'T'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.isofficial = 'T'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T1.countrycode = T3.countrycode WHERE T2.continent = 'Asia' AND T3.language = 'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T1.countrycode = T3.countrycode WHERE T2.continent = 'Asia' AND T3.language = 'Chinese'
SELECT name, indepyear, surfacearea FROM country ORDER BY population LIMIT 1
SELECT name, indepyear, surfacearea FROM country ORDER BY population LIMIT 1
SELECT population, name, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) > 2
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT COUNT(*) FROM city GROUP BY district HAVING AVG(population) < (SELECT AVG(population) FROM city)
SELECT T1.governmentform, SUM(T2.population) FROM country AS T1 JOIN country AS T2 ON T1.governmentform = T2.governmentform GROUP BY T1.governmentform HAVING AVG(T2.lifeexpectancy) > 72
SELECT governmentform, SUM(population) FROM country GROUP BY governmentform HAVING AVG(lifeexpectancy) > 72
SELECT AVG(lifeexpectancy), SUM(population), continent FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT DISTINCT continent, SUM(population), AVG(lifeexpectancy) FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM city ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM city ORDER BY population LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.countrycode ORDER BY AVG(T1.percentage) DESC LIMIT 1
SELECT T1.countrycode, T2.language FROM countrylanguage AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode ORDER BY T1.percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' ORDER BY T2.percentage DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' ORDER BY T2.percentage DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality <> "USA"
SELECT name FROM conductor WHERE nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(attendance) FROM show
SELECT AVG(attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T1.name, T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name, T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT record_company, COUNT(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY COUNT(*)
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT T1.record_company FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.record_company = T2.record_company WHERE T1.year_of_founded < 2003 INTERSECT SELECT T1.record_company FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.record_company = T2.record_company WHERE T1.year_of_founded > 2003
SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD'
SELECT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id JOIN Highschooler AS T3 ON T1.student_id = T3.id WHERE T3.name = 'Kyle'
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id JOIN Highschooler AS T3 ON T1.student_id = T3.id WHERE T3.name = 'Kyle'
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id INTERSECT SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.student_id
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes)
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING AVG(T1.grade) > 5
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT AVG(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT AVG(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT AVG(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2 INTERSECT SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2 OR T1.state = 'Indiana'
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment <= 1000
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id JOIN Charges AS T4 ON T2.cost_of_treatment = T4.charge_amount WHERE T3.last_name <> "Smith" GROUP BY T1.name HAVING SUM(T2.cost_of_treatment) <= 1000
SELECT first_name FROM Professionals INTERSECT SELECT name FROM Dogs
SELECT first_name FROM Professionals INTERSECT SELECT first_name FROM Owners EXCEPT SELECT name FROM Dogs
SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 EXCEPT SELECT T2.professional_id, T2.role_code, T2.email_address FROM Professionals AS T2 JOIN Treatments AS T3 ON T2.professional_id = T3.professional_id
SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 EXCEPT SELECT T2.professional_id FROM Treatments AS T2
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_types ORDER BY cost_of_treatment LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T1.breed_code = T3.breed_code GROUP BY T1.name ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.breed_code ORDER BY COUNT(*) LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth DESC LIMIT 1
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(DISTINCT dog_id) FROM Treatments
SELECT COUNT(DISTINCT dog_id) FROM Treatments
SELECT DISTINCT professional_id FROM Treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY date_of_birth LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT breed_code, size_code FROM dogs
SELECT DISTINCT breed_code, size_code FROM dogs
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name FROM singer ORDER BY net_worth_millions
SELECT name FROM singer ORDER BY net_worth_millions
SELECT birth_year, citizenship FROM singer
SELECT birth_year, citizenship FROM singer
SELECT name FROM singer WHERE NOT Citizenship = "France"
SELECT name FROM singer WHERE NOT Citizenship = 'French'
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1
SELECT DISTINCT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT MAX(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship
SELECT T1.title, T2.name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT T1.title, T2.name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT DISTINCT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T2.sales > 300000
SELECT DISTINCT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T2.sales > 300000
SELECT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name, SUM(T2.sales) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id
SELECT T1.name, SUM(T2.sales) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT T1.name FROM singer AS T1 LEFT JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_id IS NULL
SELECT T1.citizenship FROM singer AS T1 JOIN singer AS T2 ON T1.citizenship = T2.citizenship WHERE T1.birth_year < 1945 AND T2.birth_year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT T1.feature_type_name FROM Ref_feature_types AS T1 JOIN Other_available_features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = 'AirCon'
SELECT property_type_description FROM Ref_property_types WHERE property_type_code = "Apartment"
SELECT property_name FROM Properties WHERE property_type_code = 'hse' OR property_type_code = 'apt' AND room_count > 1
