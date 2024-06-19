SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age ASC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "French"
SELECT name, song_release_year FROM singer ORDER BY age LIMIT 1
SELECT name, song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE is_male = true AND age > 20
SELECT DISTINCT country FROM singer WHERE is_male = true AND age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT COUNT(*), country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT song_name FROM singer WHERE is_male = true AND age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year <= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE is_male = true AND age > 40 INTERSECT SELECT country FROM singer WHERE is_male = true AND age < 30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T3.concert_ID = T2.concert_ID WHERE T3.year = 2014
SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID = T3.Singer_ID WHERE T2.Year = 2014
SELECT Name, Country FROM singer WHERE Song_Name LIKE "%Hey%"
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN song_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_Name LIKE "%Hey%"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT MAX(Capacity) FROM stadium)
SELECT COUNT(*) FROM Has_Pet WHERE weight > 10
SELECT COUNT(*) FROM Has_Pet WHERE weight > 10
SELECT weight FROM Has_Pet JOIN Student ON Has_Pet.StuID = Student.StuID JOIN Pets ON Has_Pet.PetID = Student.PetID WHERE Student.sex = 'F' AND Student.age = (SELECT MIN(age) FROM Student WHERE sex = 'F')
SELECT weight FROM Has_Pet JOIN Student ON Has_Pet.StuID = Student.StuID JOIN Pets ON Has_Pet.PetID = Student.PetID WHERE Student.age = (SELECT MIN(age) FROM Student)
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT MAX(weight), MAX(pet_type) FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Has_Pet WHERE Student.age > 20
SELECT COUNT(*) FROM Has_Pet WHERE Student.age > 20
SELECT COUNT(*) FROM Has_Pet WHERE Sex = 'F' AND pet_type = 'Dog'
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pet_type = 'Dog'
SELECT COUNT(DISTINCT pet_type) FROM Pets
SELECT COUNT(DISTINCT pet_type) FROM Pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Dog"
SELECT major, age FROM Student EXCEPT SELECT T1.Major, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.pet_id = T2.pet_id WHERE T3.pet_type = "Cat"
SELECT major, age FROM Student EXCEPT SELECT major, age FROM Has_Pet WHERE pettype = "Cat"
SELECT StuID FROM Has_Pet EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "cat"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "dog" EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "cat"
SELECT pet_type, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age), pet_type FROM Pets GROUP BY pet_type
SELECT AVG(pet_age), MAX(pet_age), pet_type FROM Pets GROUP BY pet_type
SELECT AVG(weight), pet_type FROM Pets GROUP BY pet_type
SELECT AVG(weight), pet_type FROM Pets GROUP BY pet_type
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT T2.petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT T2.petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT COUNT(*), T1.stuid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid
SELECT StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Cat" AND T2.pet_age = 3
SELECT T3.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContinentId GROUP BY T1.ContId
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContinentId GROUP BY T1.ContId
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.fullname, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.fullname, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM car_names ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT AVG(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT AVG(weight) FROM cars_data)
SELECT T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Year = 1970
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = 1970
SELECT T1.make, T1.production_time FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.year = (SELECT MIN(YEAR) FROM cars_data)
SELECT T1.Maker, T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year = (SELECT MIN(YEAR) FROM cars_data)
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.full_name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT COUNT(*), T1.maker, T1.full_name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT Accelerate FROM car_names WHERE Model = "amc hornet sportabout"
SELECT Accelerate FROM cars_data WHERE Model = "AMC Hornet Sportabout"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM model_list WHERE country = "USA"
SELECT COUNT(*) FROM model_list WHERE country = "USA"
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT maker, model FROM model_list
SELECT maker, model FROM model_list
SELECT Country, Id FROM car_makers GROUP BY Country HAVING COUNT(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(weight), AVG(year) FROM cars_data GROUP BY YEAR
SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE COUNT(DISTINCT Country) >= 3
SELECT MAX(T2.horsepower), T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 3
SELECT T2.Maker, T1.Horsepower FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId WHERE T1.Cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(edispl) FROM car_names WHERE model = "volvo"
SELECT AVG(edispl) FROM car_names WHERE model = "Volvo"
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT model FROM car_names GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(DISTINCT model) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE maker = "American Motor Company"
SELECT COUNT(*) FROM model_list WHERE maker = "American Motor Company"
SELECT T1.full_name, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = "General Motors" OR T2.Model > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.ModelId WHERE T2.Weight > 3500 OR T1.Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT t1.model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.model = t2.model WHERE t2.cylinders = 4 ORDER BY t2.horsepower DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId WHERE T1.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT MakeId, Make FROM car_names WHERE Horsepower > (SELECT MIN(Horsepower) FROM car_names) AND Cylinders < 3
SELECT MakeId, Make FROM car_names WHERE Cylinders < 4
SELECT MAX(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT MAX(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM car_names WHERE weight < 3500 EXCEPT SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.ModelId JOIN car_makers AS T3 ON T3.Id = T2.Maker WHERE T3.Maker = "Ford Motor Company"
SELECT DISTINCT model FROM car_names WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.ModelId JOIN car_data AS T3 ON T3.Id = T2.ModelId JOIN car_makers AS T4 ON T4.Id = T3.ModelId WHERE T4.Maker = "Ford Motor Company"
SELECT CountryName FROM countries EXCEPT SELECT Country FROM car_makers
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.CountryId WHERE T2.Model = 'fiat' GROUP BY T1.CountryId HAVING COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.CountryId JOIN car_makers AS T3 ON T3.Id = T2.Maker WHERE T3.Maker = "Fiat" GROUP BY T1.CountryId HAVING COUNT(*) > 3
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT city, country FROM airports WHERE airportcode = "Alton"
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "APG"
SELECT COUNT(*) FROM flights WHERE sourceairport = "APG"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE destination = "ATO"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen" AND destinationairport = "Ashley"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen" AND destinationairport = "Ashley"
SELECT COUNT(*) FROM flights WHERE airline = "JetBlue Airways"
SELECT COUNT(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT COUNT(*) FROM flights WHERE airline = "United Airlines" AND destination = "ASY"
SELECT COUNT(*) FROM flights WHERE airline = "United Airlines" AND sourceairport = "ASY"
SELECT COUNT(*) FROM flights WHERE airline = "United Airlines" AND sourceairport = "AHD"
SELECT COUNT(*) FROM flights WHERE airline = "United Airlines" AND sourceairport = "AHD"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.destinationairport = "Aberdeen" AND T2.airportname = "City"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.destairport = "Aberdeen" AND T2.airportname = "Aberdeen" AND T1.airline = "United Airlines"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY sourceairport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T1.airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.abbreviation, T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY COUNT(*) LIMIT 1
SELECT T1.abbreviation, T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aldan"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "AHD"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG" INTERSECT SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "CVO"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG" INTERSECT SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "CVO"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "CVO" EXCEPT SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = "CVO" EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = "APG"
SELECT T1.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T1.airline HAVING COUNT(*) >= 10
SELECT T1.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T1.airline HAVING COUNT(*) >= 10
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline HAVING COUNT(*) < 200
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen" OR destinationairport = "Abilene"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen" OR destinationairport = "Abilene"
SELECT airportname FROM airports WHERE NOT airportcode IN (SELECT sourceairport FROM flights) INTERSECT SELECT destairport FROM flights)
SELECT airport FROM flights EXCEPT SELECT sourceairport FROM flights UNION SELECT destairport FROM flights
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT name FROM employee ORDER BY age
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, District FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, District FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT t3.name FROM hiring AS t1 JOIN shop AS t2 ON t1.shop_id = t2.shop_id JOIN employee AS t3 ON t1.employee_id = t3.employee_id GROUP BY t1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT shop_name, COUNT(*) FROM hiring GROUP BY shop_name
SELECT shop_id, COUNT(DISTINCT employee_id) FROM hiring GROUP BY shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT T1.document_name, T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE "%w%"
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT T1.template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT COUNT(DISTINCT T1.template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT COUNT(DISTINCT document_id) FROM Documents WHERE template_id = (SELECT template_id FROM Templates WHERE template_type_code = "PPT")
SELECT COUNT(*) FROM Documents WHERE Template_ID = (SELECT Template_ID FROM Ref_Template_Types WHERE Template_Type_Code = "PPT")
SELECT T1.template_id, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.template_id, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT T1.template_id, T1.version_number, T1.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id, T1.version_number, T1.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "PP" OR T2.template_type_description = "PPT"
SELECT Template_ID FROM Ref_Template_Types WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT COUNT(*) FROM Ref_Template_Types WHERE Template_Type_Code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT MIN(version_number), template_type_code FROM Templates
SELECT MIN(version_number), template_type_code FROM Templates
SELECT T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T2.template_type_code, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.template_type_code
SELECT T2.template_type_code, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.template_type_code
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Documents
SELECT Template_Type_Code FROM Ref_Template_Types EXCEPT SELECT Template_Type_Code FROM Documents
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Ref_Template_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT DISTINCT T2.template_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Template_ID FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation"
SELECT Template_ID FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation"
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Summer Show"
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Summer Show"
SELECT * FROM Paragraphs WHERE Paragraph_Text = "Korea "
SELECT T1.paragraph_details FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name LIKE "%Korea%"
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Welcome to NY"
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Welcome to NY"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT T1.document_id, T1.document_name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id, T1.document_name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = "Brazil" INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = "Ireland"
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "%Brazil%" INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "%Ireland%"
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM Teacher ORDER BY Age ASC
SELECT Name FROM Teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM Teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM Teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM Teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM Teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Name FROM Teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT COUNT(*), T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T3.Name, T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID
SELECT T3.Name, T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID
SELECT T3.Name, T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name
SELECT T3.Name, T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID WHERE T2.Course = "Math"
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID WHERE T2.Course = "Math"
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM Teacher EXCEPT SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID WHERE NOT T1.Course_ID IN (SELECT T1.Course_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID WHERE T1.Course_ID IN (SELECT T1.Course_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID WHERE T1.Course_ID IN (SELECT T1.Course_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teach
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership
SELECT AVG(age) FROM visitor WHERE level_of_membership < 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY SUM(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit
SELECT SUM(total_spent) FROM visitor WHERE level_of_membership = 1
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE museum_id > 2010)
SELECT COUNT(*) FROM museum WHERE open_year BETWEEN 2013 AND 2008
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
SELECT T1.loser_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.loser_id = T2.loser_id ORDER BY T2.loser_rank LIMIT 1
SELECT T1.loser_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.loser_id = T2.loser_id GROUP BY T1.loser_id ORDER BY AVG(T2.loser_rank) DESC LIMIT 1
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM losers
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.tourney_name HAVING COUNT(*) > 10
SELECT T1.tourney_name FROM tournaments AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING COUNT(*) > 10
SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id WHERE T2.ranking_date = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.loser_id = T2.loser_id WHERE T3.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.loser_id = T2.loser_id WHERE T3.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.loser_id = T2.loser_id WHERE T3.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.loser_id = T2.loser_id WHERE T3.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.year FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.year ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id JOIN matches AS T3 ON T3.loser_id = T2.loser_id JOIN tours AS T4 ON T4.tourney_id = T3.tourney_id WHERE T4.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id JOIN tournaments AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.tournament_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.loser_name, T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT AVG(ranking), T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id GROUP BY T1.player_id
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.match_num = T2.match_num ORDER BY T2.winner_age ASC LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.match_num = T2.match_num ORDER BY T2.winner_age ASC LIMIT 3
SELECT COUNT(DISTINCT T1.winner_name) FROM rankings AS T1 JOIN matches AS T2 ON T1.winner_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.winner_hand = "left"
SELECT COUNT(*) FROM players WHERE hand = "left" AND T1.year = T2.year AND T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.Player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(death), MIN(death) FROM death
SELECT AVG(injured), ship_id FROM death GROUP BY ship_id
SELECT T1.caused_by_ship_id, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING COUNT(*) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = 225)
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "Lettice" INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS Atalanta"
SELECT name, result, bulgarian_commander FROM battle EXCEPT SELECT T1.name, T1.result, T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel'
SELECT note FROM death WHERE note LIKE "%East%"
SELECT address_id FROM Addresses WHERE line_1 <> "null" INTERSECT SELECT address_id FROM Addresses WHERE line_2 <> "null"
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(*) FROM COURSES
SELECT COUNT(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT T2.department_name, T1.department_id FROM Courses AS T1 JOIN Degree_Programs AS T2 ON T1.course_id = T2.course_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.department_name, T1.department_id FROM Courses AS T1 JOIN Degree_Programs AS T2 ON T1.course_id = T2.course_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_name) FROM Degree_Programs
SELECT COUNT(DISTINCT department_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT T1.degree_summary_name) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT COUNT(DISTINCT T1.degree_summary_name) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT T1.section_name, T1.section_description FROM SECTIONS AS T1 JOIN COURSES AS T2 ON T1.course_id = T2.course_id
SELECT T1.section_name, T1.section_description FROM SECTIONS AS T1 JOIN COURSES AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name, semester_id FROM Student_Enrolment GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%Comp.%"
SELECT department_description FROM Departments WHERE department_name LIKE "%Comp.%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Student_Enrolment_Courses AS T3 ON T2.course_id = T3.course_id WHERE T3.degree_program_id = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Student_Enrolment_Courses AS T3 ON T2.student_course_id = T3.student_course_id WHERE T3.course_name = "Bachelors"
SELECT T1.degree_program_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.student_course_id GROUP BY T1.degree_program_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.student_course_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment_Courses AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_description FROM Student_Enrolment_Courses AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM Semesters EXCEPT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.semester_id = T2.semester_id
SELECT semester_name FROM Semesters EXCEPT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.semester_id = T2.semester_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id IN (SELECT T3.degree_program_id FROM Courses AS T3 JOIN Student_Enrolment_Courses AS T4 ON T3.course_id = T4.course_id WHERE T4.semester_id = "Fall 2014")
SELECT last_name FROM Students WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = "Engineering"
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.student_course_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.student_course_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students ORDER BY date_first_registered LIMIT 1)
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT T1.transcript_date, T1.transcript_details FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id WHERE T2.student_course_id = (SELECT student_course_id FROM Student_Enrolment_Courses ORDER BY student_course_id LIMIT 1)
SELECT T1.transcript_date, T1.transcript_details FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id ORDER BY T1.transcript_date ASC LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT T1.course_id, COUNT(*) FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.course_id, COUNT(*) FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = "MA" INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = "Bachelor"
SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.course_name = "MA" INTERSECT SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.course_name = "Bachelor"
SELECT COUNT(DISTINCT T1.address_id) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM Students ORDER BY first_name, last_name
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id
SELECT section_description FROM SECTIONS WHERE SECTION_NAME = "h"
SELECT first_name FROM Students WHERE permanent_address_id = "Addresses" AND cell_mobile_number = "0970016582"
SELECT first_name FROM Students WHERE permanent_address_id = 4000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT COUNT(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT t1.package_option FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t2.series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "english"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "english"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT COUNT(*), Language FROM TV_Channel GROUP BY Language
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T3.title FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id JOIN cartoon AS T3 ON T2.id = T3.channel WHERE T1.series_name = "Sky Radio"
SELECT episode FROM TV_series ORDER BY rating
SELECT episode FROM TV_series ORDER BY rating
SELECT episode, rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT id, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT COUNT(*), directed_by FROM cartoon GROUP BY directed_by
SELECT COUNT(*), directed_by FROM cartoon GROUP BY directed_by
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT t1.package_option, t1.series_name FROM TV_Channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.high_definition_tv = 'Yes'
SELECT t1.package_option, t2.series_name FROM TV_Channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.high_definition_tv = 'Yes'
SELECT T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT T1.country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT country FROM TV_Channel EXCEPT SELECT T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT Country FROM cartoon EXCEPT SELECT T1.country FROM cartoon AS T1 JOIN written_by AS T2 ON T1.written_by = T2.written_by WHERE T2.written_by = "Todd Casey"
SELECT T3.series_name, T3.country FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel JOIN TV_Channel AS T3 ON T1.channel = T3.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T3.series_name, T3.country FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel JOIN TV_Channel AS T3 ON T1.channel = T3.id WHERE T1.directed_by = "Michael Chang"
SELECT T3.series_name, T3.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T1.id = T3.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T3.series_name, T3.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T1.id = T3.id WHERE T1.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "english"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "english"
SELECT id FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM cartoon EXCEPT SELECT T1.id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN tv_series AS T3 ON T1.id = T3.channel WHERE T3.episode = "2003" AND T2.directed_by = "Ben Jones"
SELECT id FROM cartoon EXCEPT SELECT T1.id FROM cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id JOIN Ben Jones AS T3 ON T3.directed_by = T1.directed_by
SELECT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T1.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T2.earnings LIMIT 1
SELECT T1.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T2.earnings LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT Money_Rank FROM people ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM people WHERE Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT name, Birth_Date FROM people ORDER BY name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russian"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = "CA"
SELECT contestant_name FROM CONTESTANTS EXCEPT SELECT T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.state = "Tennessee" AND T1.contestant_name = "Jessie Alloway"
SELECT DISTINCT T1.state, T1.created FROM VOTES AS T1 JOIN AREA_CODE_STATE AS T2 ON T1.state = T2.state
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = "NY" OR state = "CA"
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = "Tabatha Gehling" INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = "Kelly Clauss"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT Name FROM country WHERE Independence > 1950
SELECT Name FROM country WHERE IndependenceYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Carribean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT District FROM city WHERE Name = "Kabul"
SELECT Region FROM country WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT Population, LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE CountryName = "Brazil"
SELECT Region, Population FROM country WHERE CountryCode = "Angola"
SELECT Region, Population FROM country WHERE CountryCode = "Angola"
SELECT AVG(lifeexpectancy) FROM country WHERE region = 'Central Africa'
SELECT AVG(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT Name FROM country ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT SUM(GNP), CountryCode FROM country WHERE Continent = "Asia" ORDER BY GNP DESC LIMIT 1
SELECT AVG(lifeexpectancy) FROM country WHERE governmentform = 'Republic'
SELECT AVG(lifeexpectancy) FROM country WHERE governmentform = 'Republic'
SELECT SUM(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT SUM(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT COUNT(*) FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "US Territory"
SELECT AVG(GNP), SUM(Population) FROM country WHERE Continent = "USA"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan"
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT COUNT(*) FROM country WHERE Language = "english" INTERSECT SELECT COUNT(*) FROM country WHERE Language = "dutch"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT CountryName FROM country WHERE IsOfficial = 'F' INTERSECT SELECT CountryName FROM country WHERE IsOfficial = 'E'
SELECT Name FROM country WHERE IsOfficial = "F" INTERSECT SELECT Name FROM country WHERE IsOfficial = "E"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT CountryName FROM country WHERE IsOfficial = "E" OR IsOfficial = "D"
SELECT CountryCode FROM countrylanguage WHERE IsOfficial = "E" OR IsOfficial = "D"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" ORDER BY Percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = "Republic"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = "english" ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = "english" ORDER BY T2.Percentage DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(lifeexpectancy) FROM country WHERE isofficial = 'F'
SELECT AVG(lifeexpectancy) FROM country WHERE isofficial = 'F'
SELECT COUNT(*) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "english")
SELECT COUNT(*) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT name FROM country WHERE surfacearea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT CountryName FROM country WHERE Population < (SELECT MAX(Population) FROM country WHERE Continent = "Asia")
SELECT CountryName FROM country WHERE Population < (SELECT MAX(Population) FROM country WHERE Continent = "Asia")
SELECT CountryName FROM country WHERE Population > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT CountryName FROM country WHERE Population > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT CountryCode FROM country WHERE Language <> "english"
SELECT CountryCode FROM country WHERE Language <> "english"
SELECT CountryCode FROM countrylanguage EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = "english"
SELECT CountryCode FROM countrylanguage EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language = "english"
SELECT CountryCode FROM country WHERE IsOfficial = 'F' AND GovernmentForm <> "Republic"
SELECT CountryCode FROM country WHERE IsOfficial = 'F' AND GovernmentForm <> "Republic"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'F' AND T2.Language <> "English"
SELECT Name FROM city WHERE CountryCode IN (SELECT CountryCode FROM countrylanguage EXCEPT SELECT CountryCode FROM countrylanguage WHERE IsOfficial = "English")
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.IsOfficial = "Chinese" AND T2.Continent = "Asia"
SELECT name, independence year, surfacearea FROM country ORDER BY population LIMIT 1
SELECT name, independence, surfacearea FROM country ORDER BY population LIMIT 1
SELECT T1.Population, T1.Name, T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.SurfaceArea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) > 2
SELECT COUNT(*), District FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District)
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District)
SELECT govtform, AVG(population) FROM country GROUP BY govtform HAVING AVG(lifeexpectancy) > 72
SELECT T1.GovernmentForm, AVG(T2.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' AND AVG(T2.Population) > 72 GROUP BY T1.GovernmentForm
SELECT AVG(lifeexpectancy), SUM(population), continent FROM country WHERE AVG(lifeexpectancy) < 72
SELECT T1.Continent, AVG(T2.LifeExpectancy), SUM(T2.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent HAVING AVG(T2.LifeExpectancy) < 72
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage GROUP BY CountryCode ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage GROUP BY CountryCode ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT COUNT(*) FROM country WHERE Language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish"
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY year_of_founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T3.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT COUNT(*), record_company FROM orchestra GROUP BY record_company
SELECT major_record_format FROM orchestra ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*)
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT orchestras FROM performance EXCEPT SELECT T1.orchestras FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
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
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(DISTINCT friend_id) FROM Friend
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.friend_id HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = "Kyle"
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = "Kyle"
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT COUNT(*) FROM Friend WHERE student_id = "Kyle"
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.liked_id
SELECT student_id FROM Friend UNION SELECT student_id FROM Likes
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T2.student_id = T3.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T2.student_id = T3.student_id
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.ID
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.ID
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T2.liked_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T2.liked_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID HAVING COUNT(*) > 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.grade > 5
SELECT name FROM Highschooler WHERE grade > 5 AND COUNT(DISTINCT friend_id) >= 2
SELECT COUNT(*) FROM Likes WHERE liked_id = 1
SELECT COUNT(*) FROM Likes WHERE liked_id = Highschooler.ID AND Highschooler.name = "Kyle"
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT AVG(T2.grade) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)
SELECT AVG(age) FROM Dogs
SELECT T3.professional_id, T3.last_name, T3.cell_number FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T2.state = "Indiana" OR COUNT(*) > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" OR COUNT(*) > 2
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment < 1000
SELECT name FROM Dogs WHERE NOT OWNER_id IN (SELECT OWNER_id FROM Treatments) GROUP BY OWNER_id HAVING SUM(cost_of_treatment) > 1000)
SELECT first_name FROM Professionals EXCEPT SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT first_name FROM Professionals EXCEPT SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE NOT T2.treatment_type_code = "T2.treatment_type_code"
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.owner_id, T2.first_name, T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T2.role_code, T3.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T1.owner_id = T3.owner_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T2.role_code, T3.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T3.treatment_type_description FROM Treatments AS T1 JOIN Charges AS T2 ON T1.treatment_id = T2.treatment_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T2.charge_amount) ASC LIMIT 1
SELECT T3.treatment_type_description FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T1.cost_of_treatment) LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Charges AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T3.first_name, T3.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T3.first_name, T3.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T3.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T3.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT T1.treatment_type_description, T1.cost_of_treatment FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT cost_of_treatment, treatment_type_description FROM Treatments
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T3.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id JOIN Breeds AS T4 ON T4.breed_code = T2.breed_code ORDER BY T4.breed_name LIMIT 1
SELECT T3.name, T3.date_of_treatment FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code ORDER BY T3.breed_code ASC LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T3.date_arrived, T3.date_departed FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id
SELECT T3.date_arrived, T3.date_departed FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = (SELECT MIN(date_of_birth) FROM Dogs)
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT MIN(age) FROM Dogs)
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM Treatments
SELECT COUNT(DISTINCT dog_id) FROM Treatments
SELECT COUNT(DISTINCT T1.professional_id) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "T2.treatment_type_code"
SELECT COUNT(DISTINCT T1.professional_id) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Owners WHERE NOT first_name IN (SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id)
SELECT COUNT(*) FROM Owners WHERE NOT first_name IN (SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY date_of_birth LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth LIMIT 1
SELECT charge_type, SUM(charge_amount) FROM Charges GROUP BY charge_type
SELECT charge_type, SUM(charge_amount) FROM Charges GROUP BY charge_type
SELECT charge_amount FROM Charges ORDER BY charge_type DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_type DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT T1.breed_name, T1.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT T1.breed_name, T1.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code JOIN Dogs AS T3 ON T3.dog_id = T1.dog_id
SELECT T3.first_name, T3.treatment_type_description FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T3.first_name, T3.treatment_type_description FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*), Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT MAX(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_name = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = property_type_code
SELECT property_name FROM Properties WHERE property_type_code = "House" OR property_type_code = "Apartment" AND room_count > 1
