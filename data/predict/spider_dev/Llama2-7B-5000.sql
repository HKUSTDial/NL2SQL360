SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T1.name, T1.song_release_year FROM singer AS T1 JOIN song_in_concert AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age DESC LIMIT 1
SELECT song_name, song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT average, MAX(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year <> 2014
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR <> 2014)
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.concert_name
SELECT T1.name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.year = 2014
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.concert_id = 2014
SELECT T1.name, T1.country FROM singer AS T1 JOIN song_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE '%Hey%'
SELECT T1.name, T1.country FROM singer AS T1 JOIN song_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE "%Hey%"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT COUNT(*) FROM stadium WHERE capacity = (SELECT MAX(capacity) FROM stadium)
SELECT COUNT(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT MAX(weight), pet_type FROM pets GROUP BY pet_type
SELECT MAX(weight), pet_type FROM pets GROUP BY pet_type
SELECT COUNT(*) FROM Student WHERE age > 20
SELECT COUNT(*) FROM Student WHERE age > 20
SELECT COUNT(*) FROM Student WHERE sex = 'F' AND Has_Pet.PetType = 'Dog'
SELECT COUNT(*) FROM Has_Pet WHERE Student.sex = "F" AND Pet.pet_type = "Dog"
SELECT COUNT(DISTINCT pet_type) FROM pets
SELECT COUNT(DISTINCT pet_type) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" OR T2.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" OR T2.pettype = "Dog"
SELECT T3.fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = "Cat" INTERSECT SELECT T3.fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = (SELECT pet_id FROM Has_Pet WHERE pet_type = "Dog") EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pet_id = (SELECT pet_id FROM Has_Pet WHERE pet_type = "Cat")
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Dog" EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat"
SELECT pet_type, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age), pet_type FROM pets GROUP BY pet_type
SELECT MAX(age), AVG(age), pet_type FROM pets GROUP BY pet_type
SELECT pet_type, AVG(weight) FROM pets GROUP BY pet_type
SELECT pet_type, AVG(weight) FROM pets GROUP BY pet_type
SELECT T3.fname, T3.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T1.PetID = T3.PetID
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT T1.pet_id FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT T1.pet_id FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT COUNT(*), T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.StuID, COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING COUNT(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = (SELECT PetID FROM Has_Pet WHERE pet_age = 3 AND pet_type = "Cat")
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = (SELECT PetID FROM Has_Pet WHERE pet_age = 3)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.FullName, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.FullName, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower ASC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower ASC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = t2.make WHERE T2.year = 1970
SELECT DISTINCT T1.Make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = t2.make WHERE T2.year = 1970
SELECT T1.Make, T1.Year FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T1.Year ASC LIMIT 1
SELECT T1.Maker, T1.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT Model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = t2.maker GROUP BY t1.fullname
SELECT T1.Model, T1.Maker, T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker
SELECT Accelerate FROM cars_data WHERE Make = "amc" AND Model = "Hornet Sportabout"
SELECT Accelerate FROM cars_data WHERE Make = "AMC" AND Model = "Hornet Sportabout"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM model_list WHERE country = "USA"
SELECT COUNT(*) FROM model_list WHERE country = "USA"
SELECT AVG(mpg) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) >= 3
SELECT CountryName FROM countries WHERE COUNT(*) >= 3
SELECT MAX(T2.Horsepower), T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3
SELECT MAX(Horsepower), T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T2.MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(edispl) FROM cars_data WHERE Model = "Volvo"
SELECT AVG(edispl) FROM cars_data WHERE Make = "Volvo"
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_names WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = "American Motor Company"
SELECT COUNT(*) FROM model_list WHERE Maker = "American Motor Company"
SELECT T1.FullName, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = t2.maker GROUP BY T2.maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T3.Id = T2.MakeId WHERE T3.FullName = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight > 3500 OR T1.Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = "Volvo" ORDER BY T1.Accelerate ASC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = "Volvo" ORDER BY T1.Accelerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Make WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.MakeId WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Make, T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND T2.Cylinders <> 3
SELECT T1.Make, T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders < 4
SELECT MAX(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Make = T2.MakeId WHERE T1.Cylinders = 8 OR T1.Year < 1980
SELECT MAX(mpg) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM cars_data WHERE Weight < 3500 AND Maker <> 'Ford Motor Company'
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < 3500 AND T1.Maker <> "Ford Motor Company"
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 AND SUM(T2.weight) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Country WHERE T2.Model = 'fiat'
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Country WHERE T2.Model = "Fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE AirportName = "John F. Kennedy International Airport"
SELECT airline, abbreviation FROM airlines WHERE country = "USA"
SELECT airline, abbreviation FROM airlines WHERE country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE city = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT airline FROM airlines WHERE abbreviation = "UAL"
SELECT airline FROM airlines WHERE Abbreviation = "UAL"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT city, Country FROM airports WHERE AirportName = "Alton"
SELECT city, Country FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportName = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE city = "Aberdeen"
SELECT AirportName FROM airports WHERE city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "APG"
SELECT COUNT(*) FROM flights WHERE sourceairport = "APG"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE destination = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE destination = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Ashley" AND SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = "Aberdeen" AND destinationairport = "Ashley"
SELECT COUNT(*) FROM flights WHERE airline = "JetBlue Airways"
SELECT COUNT(*) FROM flights WHERE airline = "JetBlue"
SELECT COUNT(*) FROM Flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "ASY" AND T1.Airline = "United Airlines"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "ASY" AND T1.airline = "United Airlines"
SELECT COUNT(*) FROM Flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Ahd" AND T1.Airline = "United Airlines"
SELECT COUNT(*) FROM flights WHERE DestAirport = "AHD" AND FlightNo = "333"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen" AND T1.airline = "United Airlines"
SELECT COUNT(*) FROM flights WHERE destination = "Aberdeen" AND airline = "United Airlines"
SELECT city FROM flights GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM flights GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destination = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Los Angeles" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Tampa"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = "CVO" EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport <> "APG" AND T2.destinationairport <> "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline HAVING COUNT(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T2.airline HAVING COUNT(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = "Los Angeles"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT COUNT(*) FROM flights WHERE destination = "Aberdeen" OR destination = "Abilene"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT AirportCode FROM Flights)
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT AirportCode FROM Flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city FROM employee WHERE Age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE Age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY MAX(T2.bonus) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM employee)
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
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
SELECT document_id, document_name, document_description FROM documents
SELECT T1.document_name, T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE "%w%"
SELECT T1.document_id, T2.template_id, T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT t1.document_id) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id
SELECT COUNT(DISTINCT t1.document_id) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id
SELECT COUNT(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PPT")
SELECT COUNT(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PPT")
SELECT T1.template_id, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT DISTINCT document_id, COUNT(*) FROM Documents GROUP BY document_id
SELECT T1.template_id, T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Templates
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "CV"
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
SELECT MIN(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT DISTINCT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_code, COUNT(*) FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id GROUP BY T1.template_type_code
SELECT T1.Template_Type_Code, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM Ref_Template_Types EXCEPT SELECT DISTINCT template_type_code FROM Documents
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Documents)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id
SELECT template_id FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation"
SELECT template_id FROM templates WHERE template_details = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Documents WHERE Document_Name = 'Summer Show'
SELECT COUNT(*) FROM Documents WHERE Document_Name = 'Summer Show'
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT paragraph_id, paragraph_text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY')
SELECT document_id, paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = 'Welcome to NY')
SELECT DISTINCT t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = "Customer reviews"
SELECT t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM documents GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM documents GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.document_id, t1.document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) <= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT T1.document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT DISTINCT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT DISTINCT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
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
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT T2.Name, COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership
SELECT AVG(age) FROM visitor WHERE level_of_membership <> 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY SUM(T2.total_spent) DESC LIMIT 1
SELECT T1.museum_id, T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T2.museum_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(total_spent) FROM visitor WHERE level_of_membership = 1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit) AND NOT age > 2010
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
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
SELECT T1.tourney_name FROM tourney_name AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING COUNT(*) > 10
SELECT T1.tourname FROM tournaments AS T1 JOIN matches AS T2 ON T1.tournament_id = T2.tournament_id GROUP BY T1.tournament_id HAVING COUNT(*) > 10
SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_date = T1.ranking_date AND T2.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM rankings AS T1 JOIN tournaments AS T2 ON T1.tournament_id = T2.tournament_id WHERE T2.tournament_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name, T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.ranking_date, AVG(T1.ranking_points), T1.player_id, T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, AVG(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T1.ranking_points, T1.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT T1.ranking_date, COUNT(*) FROM rankings AS T1 JOIN tours AS T2 ON T1.player_id = T2.player_id GROUP BY T1.ranking_date
SELECT T1.ranking_date, COUNT(*) FROM rankings AS T1 JOIN tours AS T2 ON T1.player_id = T2.player_id GROUP BY T1.ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date DESC LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date DESC LIMIT 3
SELECT COUNT(DISTINCT T1.winner_name) FROM matches AS T1 JOIN tournaments AS T2 ON T1.tournament_id = T2.tournament_id WHERE T2.tournament_name = "WTA Championships" AND T1.winner_hand = "left"
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY SUM(T2.winner_rank_points) DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonsage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT T1.note, T1.injured, T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander <> 'Kaloyan' AND latin_commander <> 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE Tonnage < 225)
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT id FROM ship WHERE lost_in_battle = 1)
SELECT note FROM death WHERE note LIKE "%East%"
SELECT * FROM ADDRESSES WHERE line_1 <> "null" AND line_2 <> "null"
SELECT line_1, line_2 FROM ADDRESSES
SELECT COUNT(*) FROM COURSES
SELECT COUNT(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name = "Mathematics"
SELECT course_description FROM COURSES WHERE course_name = "Mathematics"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs WHERE department_id = 1
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs WHERE department_id = 1
SELECT section_name, section_description FROM SECTIONS
SELECT section_name, section_description FROM SECTIONS
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT course_name, course_id FROM COURSES WHERE NOT course_id IN (SELECT course_id FROM SECTIONS GROUP BY course_id HAVING COUNT(*) < 2)
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT semester_name, semester_id FROM Semesters ORDER BY date_first_registered DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%Comp.%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T2.course_id IN (SELECT T1.course_id FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "Bachelor")
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T2.course_id = (SELECT T1.course_id FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "Bachelors")
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_description FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Degree_Programs AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM Students WHERE NOT date_first_registered IN (SELECT date_first_registered FROM Students WHERE state_province_county = "North Carolina")
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students WHERE date_graduated = (SELECT MAX(date_graduated) FROM Students)
SELECT first_name, middle_name, last_name FROM Students WHERE date_first_registered = (SELECT MAX(date_first_registered) FROM Students)
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(*), T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Transcript_Contents AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT MAX(DISTINCT student_course_id), student_enrolment_id FROM Student_Enrolment_Courses
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY COUNT(*) LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id IN (SELECT T3.student_id FROM Master_Students AS T3 JOIN Bachelor_Students AS T4 ON T3.student_id = T4.student_id)
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.semester_id = T2.semester_id WHERE T2.course_id = (SELECT T2.course_id FROM Student_Enrolment_Courses AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = "Masters") INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.semester_id = T2.semester_id WHERE T2.course_id = (SELECT T2.course_id FROM Student_Enrolment_Courses AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = "Bachelors")
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT other_student_details FROM Students ORDER BY last_name DESC
SELECT section_description FROM SECTIONS WHERE section_name = "h"
SELECT section_description FROM SECTIONS WHERE section_name = "h"
SELECT first_name FROM Students WHERE permanent_address_id = (SELECT address_id FROM Addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT first_name FROM Students WHERE permanent_address_id = 1 OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT COUNT(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM cartoon WHERE written_by = 'Joseph Kuhr'
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_channel
SELECT COUNT(DISTINCT content), COUNT(DISTINCT series_name) FROM TV_channel
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_series WHERE title = 'Sky Radio'
SELECT Package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_option FROM TV_channel WHERE series_name = 'Sky Radio'
SELECT COUNT(*) FROM TV_channel WHERE Language = "english"
SELECT COUNT(*) FROM TV_channel WHERE Language = "english"
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT COUNT(*), Language FROM TV_channel GROUP BY Language
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = 'The Rise of the Blue Beetle'
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = 'The Rise of the Blue Beetle'
SELECT T1.title FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT T1.episode, T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN Episode AS T2 ON T1.id = T2.series_id WHERE T2.title = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE title = "Sky Radio"
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT T1.directed_by, COUNT(*) FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id GROUP BY T1.directed_by
SELECT T1.production_code, T1.channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.id = T2.id ORDER BY T2.air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_channel WHERE high_definition_tv = 'Yes'
SELECT t1.package_option, t2.series_name FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.high_definition_tv = 'Yes'
SELECT DISTINCT t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = 'Todd Casey'
SELECT DISTINCT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT country FROM TV_channel WHERE NOT id IN (SELECT channel FROM cartoon written by Todd Casey)
SELECT country FROM TV_channel EXCEPT SELECT country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language <> "english"
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE Language <> "english"
SELECT id FROM TV_channel GROUP BY country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT id FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT id FROM TV_channel EXCEPT SELECT id FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT package_option FROM TV_channel EXCEPT SELECT t1.package_option FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones'
SELECT package_option FROM TV_channel WHERE NOT id IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
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
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT AVG(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT AVG(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM People GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM People GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM People GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM People ORDER BY Name ASC
SELECT Name, Birth_Date FROM People ORDER BY Name ASC
SELECT Name FROM People WHERE Nationality <> "Russia"
SELECT Name FROM People WHERE Nationality <> 'Russian'
SELECT Name FROM People WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM People WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM contestants WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.area_code GROUP BY T2.area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT DISTINCT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.area_code JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT DISTINCT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.area_code JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE "%Al%"
SELECT Name FROM country WHERE Independence > 1950
SELECT Name FROM country WHERE Independence > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT Continent FROM country WHERE LOCALNAME = "Anguilla"
SELECT Continent FROM country WHERE LOCATION = (31.333333,-63.333333)
SELECT Region FROM city WHERE Name = 'Kabul'
SELECT Region FROM country WHERE Name = 'Kabul'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT Region, Population FROM country WHERE Name = 'Angola'
SELECT Region, Population FROM country WHERE Name = 'Angola'
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT name FROM country ORDER BY lifeexpectancy LIMIT 1
SELECT Name FROM country ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic'
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'Africa'
SELECT SUM(SurfaceArea) FROM country AS T1 JOIN continent AS T2 ON T1.Continent = T2.Continent WHERE T2.Continent = 'Asia' OR T2.Continent = 'Europe'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'USA'
SELECT AVG(GNP), SUM(Population) FROM country WHERE GNP > 300 AND CountryCode = 'USA'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT t1.language) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.country WHERE t1.name = 'Aruba'
SELECT COUNT(DISTINCT t1.language) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.country WHERE t1.name = 'Aruba'
SELECT COUNT(DISTINCT t1.language) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.country WHERE t1.name = 'Afghanistan'
SELECT COUNT(DISTINCT t1.language) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.country WHERE t1.name = 'Afghanistan'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1
SELECT Continent FROM country GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "english" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "dutch"
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english" INTERSECT SELECT COUNT(*) FROM country AS T1 JOIN Countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'english' INTERSECT SELECT T1.Name FROM Country AS T1 JOIN Countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'french'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'english' INTERSECT SELECT T1.Name FROM Country AS T1 JOIN Countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'french'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' INTERSECT SELECT T1.Name FROM country AS T1 JOIN Countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' INTERSECT SELECT T1.Name FROM Country AS T1 JOIN Countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F'
SELECT COUNT(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.country WHERE t2.language = 'Chinese'
SELECT COUNT(DISTINCT continent) FROM country WHERE Language = 'Chinese'
SELECT Region FROM country WHERE Language = "english" OR Language = "dutch"
SELECT Region FROM country WHERE Language = "Dutch" OR Language = "English"
SELECT CountryCode FROM countrylanguage WHERE Official = 'English' OR Official = 'Dutch'
SELECT CountryCode FROM countrylanguage WHERE Official = 'Yes'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = 'Republic' GROUP BY T2.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = 'Republic' GROUP BY T2.Language HAVING COUNT(*) = 1
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Language = 'english' ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Language = 'english' ORDER BY T2.Population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Official = 'english'
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Official = 'F'
SELECT SUM(Population) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countryLanguage WHERE Language = 'english')
SELECT COUNT(*) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'english')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = 'Beatrix'
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = 'Beatrix'
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT COUNT(DISTINCT Official) FROM countrylanguage WHERE Official = 'F' AND Independence < 1930
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE Population < (SELECT MAX(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT Name FROM country WHERE Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country WHERE Language = 'english'
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country WHERE Language = 'english'
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'english')
SELECT CountryCode FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'english')
SELECT Code FROM country EXCEPT SELECT Code FROM country WHERE GovernmentForm = 'Republic'
SELECT Code FROM country EXCEPT SELECT Code FROM country WHERE GovernmentForm = 'Republic'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' AND T2.Language <> 'english'
SELECT Name FROM city WHERE NOT Official = 'Yes' AND LOCATION <> 'Europe'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IsOfficial = 'F' AND T2.Continent = 'Asia'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 'F' AND T2.Continent = 'Asia'
SELECT name, independence, surfacearea FROM country ORDER BY population LIMIT 1
SELECT name, independence, surfacearea FROM country ORDER BY population LIMIT 1
SELECT T1.Population, T1.Name, T2.HeadOfState FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT District, COUNT(*) FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT T1.GovernmentForm, SUM(T2.Population) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code GROUP BY T1.GovernmentForm HAVING AVG(T2.LifeExpectancy) > 72
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) >= 72
SELECT AVG(lifeexpectancy), SUM(population) FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT COUNT(*) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T1.Continent = 'Asia'
SELECT Name FROM country WHERE Continent = 'Europe' AND Population > 80000
SELECT Name FROM country WHERE Population > 80000 AND Continent = 'Europe'
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE SurfaceArea > 3000 AND Continent = 'North America'
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE SurfaceArea > 3000 AND Continent = 'North America'
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY SUM(T2.Percentage) DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish'
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' GROUP BY CountryCode ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT COUNT(*), Record_Company FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING COUNT(*) > 1
SELECT COUNT(*) FROM highschooler
SELECT COUNT(*) FROM highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT DISTINCT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(DISTINCT friend_id) FROM Friend
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.name = 'Kyle'
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT COUNT(DISTINCT friend_id) FROM Friend WHERE name = 'Kyle'
SELECT COUNT(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.name = 'Kyle'
SELECT id FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT T1.id, T2.id, T3.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T2.id = T3.liked_id
SELECT student_id FROM Friend UNION SELECT student_id FROM Likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.id = T3.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.id = T3.student_id
SELECT COUNT(*), student_id FROM Likes
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2 AND T1.grade > 5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2 AND T1.grade > 5
SELECT COUNT(*) FROM likes WHERE liked_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT AVG(T2.grade) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id
SELECT AVG(T2.grade) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT DISTINCT state FROM Owners INTERSECT SELECT DISTINCT state FROM Professionals
SELECT AVG(age) FROM dogs WHERE date_of_treatment <> "null"
SELECT AVG(age) FROM dogs WHERE date_of_treatment <> "null"
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2 UNION SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "IN"
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2 UNION SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "IN"
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment < 1000
SELECT name FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments GROUP BY dog_id HAVING SUM(cost_of_treatment) > 1000)
SELECT first_name FROM Professionals EXCEPT SELECT first_name FROM Owners WHERE NOT first_name IN (SELECT first_name FROM Dogs)
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT first_name FROM Dogs
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY SUM(cost_of_treatment) LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(cost_of_treatment) LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment, treatment_type_description FROM Treatment_Types
SELECT cost_of_treatment, treatment_type_description FROM Treatment_Types
SELECT T1.first_name, T1.last_name, T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T3.breed_code = T2.breed_code ORDER BY T3.rarity LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id ORDER BY COUNT(*) LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE NOT dog_id IN (SELECT dog_id FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges GROUP BY charge_type
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM Charges GROUP BY charge_type ORDER BY MAX(cost_of_treatment) DESC LIMIT 1
SELECT charge_amount FROM Charges GROUP BY charge_type ORDER BY MAX(charge_amount) DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT T1.breed_type, T2.size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_type, T2.size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT T1.first_name, T1.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
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
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT MAX(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_type_code = "T2.property_type_code"
SELECT property_name FROM Properties WHERE room_count > 1
