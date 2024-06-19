SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT name, song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT name, song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name, COUNT(*) FROM concert_in_stadium AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR <> 2014)
SELECT T2.concert_name, T2.theme, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T2.name, T2.theme, COUNT(*) FROM concert_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.name, T2.theme
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year = 2014
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.concert_ID = 2014
SELECT T2.Name, T2.Nation FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Name LIKE '%Hey%'
SELECT T2.name, T2.country FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.title LIKE '%Hey%'
SELECT T2.name, T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name, T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT weight FROM Dogs ORDER BY age ASC LIMIT 1
SELECT weight FROM Dogs ORDER BY age ASC LIMIT 1
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Sex = "F" AND T2.PetType = "Dog"
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Sex = "F" AND T2.pettype = "Dog"
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Cat" OR T2.PetType = "Dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Cat" OR T2.PetType = "Dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Cat" INTERSECT SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Cat" INTERSECT SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Dog"
SELECT DISTINCT Major, age FROM Student EXCEPT SELECT DISTINCT T1.Major, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Cat"
SELECT age, major FROM Student EXCEPT SELECT T2.age, T2.major FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pettype = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat"
SELECT fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Dog" EXCEPT SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Cat"
SELECT pettype, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pettype, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT petid, weight FROM pets WHERE age > 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT AVG(age), MAX(age), pettype FROM pets GROUP BY pettype
SELECT AVG(age), MAX(age), pettype FROM pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM pets GROUP BY pettype
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT T2.petid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT T2.petid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT COUNT(*), StuID FROM Has_Pet
SELECT StuID FROM Has_Pet
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.Continent, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContinentId = T2.Continent GROUP BY T1.Continent
SELECT T1.continent, T1.name, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.continentid = T2.continent GROUP BY T1.continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Maker = T2.Maker GROUP BY T1.Maker
SELECT Model FROM car_names ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM car_names ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM model_list WHERE Weight < (SELECT AVG(weight) FROM model_list)
SELECT Model FROM model_list WHERE Weight < (SELECT AVG(weight) FROM model_list)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Make WHERE T2.Year = 1970
SELECT Make, Production FROM car_makers ORDER BY YEAR ASC LIMIT 1
SELECT T1.Maker, T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT model FROM model_list WHERE maker > 1980
SELECT DISTINCT T2.Model FROM card_makers AS T1 JOIN model_list AS T2 ON T1.Maker = T2.Maker WHERE T1.Year > 1980
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Contid = T2.Contid GROUP BY T1.Contid
SELECT T2.Continent, COUNT(*) FROM car_makers AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T2.Continent
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.countryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), maker FROM model_list GROUP BY maker
SELECT COUNT(*), maker, fullname FROM model_list GROUP BY maker
SELECT T2.Accelerate FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T1.FullName = "AMC Hornet"
SELECT T2.Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Model = "AMC Hornet"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM model_list WHERE country = "USA"
SELECT COUNT(*) FROM model_list WHERE country = "United States"
SELECT AVG(MPG) FROM car_data WHERE cylinders = 4
SELECT AVG(MPG) FROM car_data WHERE cylinders = 4
SELECT Weight FROM car_data WHERE Cylinders = 8 AND YEAR = 1974 ORDER BY Weight ASC LIMIT 1
SELECT MIN(weight) FROM car_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.countryname, T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT T1.countryname, T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(weight), YEAR FROM car_data GROUP BY YEAR
SELECT AVG(weight), YEAR FROM car_data
SELECT T1.countryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 3 AND T1.continent = "Europe"
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING COUNT(*) >= 3
SELECT MAX(Horsespower), T1.Maker FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.Model WHERE T2.Cylinders = 3
SELECT T1.Maker, T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.MakeId WHERE T2.Cylinders = 3 ORDER BY T2.Horsespower DESC LIMIT 1
SELECT model FROM model_list ORDER BY mpg DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsespower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsespower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(T1.Edispl) FROM car_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = "Volvo"
SELECT AVG(Edispl) FROM car_data WHERE Model = "Volvo"
SELECT MAX(accelerate), cylinders FROM car_data
SELECT MAX(Cylinders) FROM car_data
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(DISTINCT maker) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM car_data WHERE cylinders > 4
SELECT COUNT(*) FROM car_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_names WHERE YEAR = 1980
SELECT COUNT(*) FROM car_makers WHERE Maker = "American Motors Company"
SELECT COUNT(*) FROM car_makers WHERE Maker = "American Motors Company"
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT DISTINCT model FROM model_list WHERE maker = "General Motors" OR weight > 3500
SELECT DISTINCT model FROM model_list WHERE maker = "General Motors" OR weight > 3500
SELECT YEAR FROM car_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM car_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM car_data WHERE Weight > 3000
SELECT Horsepower FROM car_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM car_data ORDER BY Accelerate DESC LIMIT 1
SELECT T1.cylinders FROM model_list AS T1 JOIN car_data AS T2 ON T1.modelid = T2.model WHERE T2.year = (SELECT MIN(YEAR) FROM car_data) AND T1.model = "Volvo")
SELECT T1.cylinders FROM model_list AS T1 JOIN car_data AS T2 ON T1.modelid = T2.model WHERE T2.accelerate = (SELECT MIN(accelerate) FROM car_data) AND T1.maker = "Volvo")
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsespower) FROM car_data)
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM car_data WHERE cylinders > 6
SELECT Model FROM car_names WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM car_names WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT MakeId, Model FROM car_name WHERE Horsepower > (SELECT MIN(Horsespower) FROM cars_data) EXCEPT SELECT MakeId, Model FROM car_name WHERE Cylinders > 3)
SELECT T1.Makeid, T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.Model WHERE T2.Cylinders < 4
SELECT MAX(MPG) FROM car_data WHERE cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM car_data WHERE cylinders = 8 OR YEAR < 1980
SELECT Model FROM model_list WHERE Weight < 3500 AND Maker <> 'Ford Motor Company'
SELECT DISTINCT model FROM model_list WHERE weight < 3500 AND maker <> 'Ford Motor Company'
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) = 1
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING COUNT(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING COUNT(*) > 3
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = "fiat" OR COUNT(*) > 3
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker > 3 OR T1.continent = "Fiat"
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE country = "USA"
SELECT T2.AirportCode, T2.AirportName FROM cities AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.city = "Anthony"
SELECT T2.AirportCode, T2.AirportName FROM cities AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airline
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM Flight
SELECT COUNT(*) FROM Flight
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT city, country FROM airports WHERE airportName = "Alton"
SELECT city, country FROM airports WHERE airportName = "Alton"
SELECT airportName FROM airports WHERE airportCode = "AKO"
SELECT airportName FROM airports WHERE airportCode = "AKO"
SELECT airportName FROM airports WHERE city = "Aberdeen"
SELECT airportName FROM airports WHERE city = "Abderdeen"
SELECT COUNT(*) FROM Flight WHERE origin = "APG"
SELECT COUNT(*) FROM Flight WHERE origin = "APG"
SELECT COUNT(*) FROM Flight WHERE destination = "ATO"
SELECT COUNT(*) FROM Flight WHERE destination = "ATO"
SELECT COUNT(*) FROM Flight WHERE origin = "City Aberdeen"
SELECT COUNT(*) FROM Flight WHERE origin = "Abbotsford"
SELECT COUNT(*) FROM Flight WHERE destinationairport = "Abbotsford"
SELECT COUNT(*) FROM Flight WHERE destinationairport = "Abbotsford"
SELECT COUNT(*) FROM Flight WHERE origin = "Aberdeen" AND destination = "Ashley"
SELECT COUNT(*) FROM Flight WHERE sourceairport = "Abbotsford" AND destinationairport = "Ashley"
SELECT COUNT(*) FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue Airways"
SELECT COUNT(*) FROM Flight WHERE Airline = "Jetblue Airways"
SELECT COUNT(*) FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.Airline = "United Airlines" AND T2.AirportName = "ASY"
SELECT COUNT(*) FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "ASY" AND T1.Airline = "United"
SELECT COUNT(*) FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines" AND T1.SourceAirport = "AHD"
SELECT COUNT(*) FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "AHD" AND T1.Airline = "United"
SELECT COUNT(*) FROM Flight AS T1 JOIN city AS T2 ON T1.Destination = T2.AirportCode WHERE T2.city = "Aberdeen" AND T1.Airline = "United"
SELECT COUNT(*) FROM Flight AS T1 JOIN Aberdeen AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.Airline = "United"
SELECT destinationairport.city FROM Flight
SELECT T1.city FROM airports AS T1 JOIN Flight AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT originAirport city FROM Flight GROUP BY originAirport city ORDER BY COUNT(*) DESC LIMIT 1
SELECT sourceairport.city FROM airports GROUP BY sourceairport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN Flight AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN Flight AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.AirportCode FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.AirportCode FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Abbreviation, T2.country FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.country, T2.abbreviation FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.country ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "AHD"
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T3.AirportName = "AHD"
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestinationAirport = "AHD"
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.SourceAirport = "APG" INTERSECT SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.DestAirport = "CVO"
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.SourceAirport = "APG" INTERSECT SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T1.DestAirport = "CVO"
SELECT DISTINCT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.SourceAirport = "CVO" EXCEPT SELECT DISTINCT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.DestAirport = "APG"
SELECT DISTINCT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.SourceAirport = "CVO" EXCEPT SELECT DISTINCT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.DestAirport = "APG"
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT T2.Airline FROM Flight AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT T1.FlightNo FROM Flight AS T1 JOIN Airline AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM Flight WHERE Airline = "United"
SELECT T1.FlightNo FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM Flight AS T1 JOIN Aberdeen AS T2 ON T1.SourceAirport = T2.AirportCode
SELECT T1.FlightNo FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM Flight AS T1 JOIN Aberdeen AS T2 ON T1.DestAirport = T2.AirportCode
SELECT COUNT(*) FROM Flight AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abilene" OR T2.city = "Aberdeen"
SELECT COUNT(*) FROM Flight WHERE destinationairport = "Abilene" OR destinationairport = "Aberdeen"
SELECT airportName FROM airports WHERE NOT airportCode IN (SELECT sourceAirport FROM Flight) AND NOT airportCode IN (SELECT destinationAirport FROM Flight)
SELECT DISTINCT airportName FROM airports WHERE NOT airportCode IN (SELECT sourceAirport FROM Flight) AND NOT airportCode IN (SELECT destinationAirport FROM Flight)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT COUNT(*), T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT COUNT(*), name FROM shop
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
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT COUNT(*) FROM Documents WHERE template_type_code = "PPT"
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, template_type_code FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM Documents
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM Ref_Template_Types
SELECT DISTINCT template_type_code FROM ref_template_types
SELECT DISTINCT template_type_code FROM ref_template_types
SELECT template_id FROM ref_template_types WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM Ref_Template_Types WHERE template_type_code = "CV"
SELECT COUNT(*) FROM Ref_Template_Types WHERE template_type_code = "CV"
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM ref_template_types GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT version_number, template_type_code FROM templates ORDER BY version_number ASC LIMIT 1
SELECT version_number, template_type_code FROM templates ORDER BY version_number LIMIT 1
SELECT T2.template_type_code FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_id = T2.template_id WHERE document_name = "Data base"
SELECT T2.template_type_code FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_id = T2.template_id WHERE document_name = "Data base"
SELECT document_name FROM templates WHERE template_type_code = "BK"
SELECT document_name FROM Documents WHERE template_id IN (SELECT document_id FROM Ref_Template_Types WHERE template_type_code = "BK")
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.template_type_code FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM ref_template_types WHERE NOT template_type_code IN (SELECT template_type_code FROM Documents)
SELECT template_type_code FROM ref_template_types WHERE NOT template_type_code IN (SELECT template_type_code FROM Documents)
SELECT template_type_code, template_type_description FROM ref_template_types
SELECT template_type_code, template_type_description FROM ref_template_types
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T2.template_description FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT template_id FROM ref_template_types WHERE template_type_description = "Presentation"
SELECT template_id FROM ref_template_types WHERE template_type_description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT Paragraph_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea'
SELECT paragraph_details FROM paragraphs WHERE paragraph_text LIKE '%KKorea%'
SELECT T2.paragraph_id, T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T2.paragraph_id, T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT DISTINCT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY COUNT(*)
SELECT document_id, document_name, COUNT(*) FROM Documents JOIN Paragraphs ON Documents.document_id = Paragraphs.document_id GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM Documents JOIN Paragraphs ON Documents.document_id = Paragraphs.document_id GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM Documents JOIN Paragraphs ON Documents.document_id = Paragraphs.document_id GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM Documents JOIN Paragraphs ON Documents.document_id = Paragraphs.document_id GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
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
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_ID = T2.teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Grade = 2 AND T1.Course = "Math"
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_ID = T2.teacher_ID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <> 4
SELECT name, Membership_level FROM visitor WHERE Membership_level > 4 ORDER BY age
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.id, T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id ORDER BY T2.total_spent DESC LIMIT 1
SELECT T1.museum_id, T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T2.Name, T2.Age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID ORDER BY T1.Num_of_Tickets DESC LIMIT 1
SELECT AVG(num_of_tickets), MAX(num_of_tickets) FROM visit
SELECT T1.Num_of_Tickets FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T2.Level_of_membership = 1
SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T1.Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year < 2009 INTERSECT SELECT Museum_ID FROM museum WHERE Open_Year > 2011)
SELECT COUNT(*) FROM visit WHERE NOT museum_id IN (SELECT museum_id FROM visit WHERE open_year > 2010)
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
SELECT MIN(ranking) FROM match
SELECT MIN(ranking) FROM match
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM tourneys AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING COUNT(*) > 10
SELECT T1.tournament_name FROM tournaments AS T1 JOIN matches AS T2 ON T1.tournament_id = T2.tournament_id GROUP BY T2.tournament_id HAVING COUNT(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.player_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.player_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id WHERE T2.tournament_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id WHERE T2.tournament_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN tournaments AS T3 ON T2.tournament_id = T3.tournament_id WHERE T3.tournament_name = "Australian Open" ORDER BY T2.winner_ht DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.match_num = T3.match_num WHERE T3.tournament_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.loser_name, T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.milliseconds DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year ASC LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year ASC LIMIT 3
SELECT COUNT(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tournament_name = "WTA Championships" AND T2.hand = "left"
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tournament_name = "WTA Championships"
SELECT T1.winner_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN match AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY SUM(T2.winner_rank_points) DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM battle WHERE result = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(T1.caused_by_ship_id), MIN(T1.caused_by_ship_id) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id
SELECT AVG(Injured), TIME FROM death GROUP BY TIME
SELECT T1.deaths, T1.injuries FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = "Kaloyan" AND latin_commander = "Baldwin I"
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT battle_id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM addresses WHERE line_1 = "1" AND line_2 = "2"
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = "Port" AND line_2 = "Chelsea"
SELECT T2.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM degrees
SELECT COUNT(DISTINCT department_id) FROM degrees
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(*) FROM degrees AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = "Engineering"
SELECT COUNT(*) FROM degrees AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = "Engineering"
SELECT section_name, section_description FROM Sections
SELECT section_name, section_description FROM Sections
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%the computer%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name, T2.middle_name, T2.last_name, T1.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.semester_id = 2
SELECT T2.first_name, T2.middle_name, T2.last_name, T1.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.semester_id = 2 AND T1.degree_program_id = 2
SELECT T2.first_name, T2.middle_name, T2.last_name FROM Degree_Programs AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_summary_name = "Bachelor"
SELECT T2.first_name, T2.middle_name, T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 3
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_program AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degrees AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_program AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.degree_program_id, T2.degree_summary_name FROM student_enrolment AS T1 JOIN degrees AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.first_name, T2.middle_name, T2.last_name, T1.student_id, COUNT(*) FROM student_enrolments AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_course AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_course AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_course_enrollments AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_course AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" AND T2.student_id IN (SELECT student_id FROM student_enrolment)
SELECT last_name FROM students WHERE current_address = "North Carolina" AND NOT student_id IN (SELECT student_id FROM student_enrolment)
SELECT T1.date, T1.transcript_id FROM Transcripts AS T1 JOIN student_course AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.date, T1.transcript_id FROM Transcripts AS T1 JOIN student_course_attendance AS T2 ON T1.transcript_id = T2.student_course_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered
SELECT T2.first_name, T2.middle_name, T2.last_name FROM students AS T1 JOIN degrees AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_attendance LIMIT 1
SELECT T2.first_name, T2.middle_name, T2.last_name FROM students AS T1 JOIN degrees AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_attendance LIMIT 1
SELECT DISTINCT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T2.other_address_details <> T1.permanent_address_id
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id WHERE T2.address_id <> T1.permanent_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3 FROM addresses AS T1 JOIN students_addresses AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment_addresses AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT date_first_registered, other_details FROM students UNION SELECT transcript_date, other_details FROM Transcripts ORDER BY date_first_registered LIMIT 1
SELECT T1.transcript_date, T1.other_details FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id ORDER BY T1.transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT date_last_registered FROM Transcripts
SELECT transcribe_date FROM Transcripts ORDER BY transcribe_date DESC LIMIT 1
SELECT T1.course_id, COUNT(*) FROM courses AS T1 JOIN student_course AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_id, MAX(T2.course_id) FROM courses AS T1 JOIN student_course AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT date, transcript_id FROM Transcripts ORDER BY COUNT(*) ASC LIMIT 1
SELECT date, transcript_id FROM Transcripts ORDER BY COUNT(*) ASC LIMIT 1
SELECT semester_id FROM student_enrolment WHERE student_id IN (SELECT student_id FROM students WHERE first_name = "Master" AND last_name = "Master") INTERSECT SELECT semester_id FROM student_enrolment WHERE student_id IN (SELECT student_id FROM students WHERE first_name = "Bachelor" AND last_name = "Bachelor")
SELECT semester_id FROM student_enrolment WHERE student_id IN (SELECT student_id FROM students WHERE degree_type_county = 'Masters') INTERSECT SELECT semester_id FROM student_enrolment WHERE student_id IN (SELECT student_id FROM students WHERE degree_type_county = 'Bachelors')
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T2.address FROM student_addresses AS T1 JOIN addresses AS T2 ON T1.address_id = T2.address_id
SELECT * FROM students ORDER BY other_student_details DESC
SELECT other_details FROM students ORDER BY last_name DESC
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti" OR cell_mobile_number = "09700166582")
SELECT first_name FROM students WHERE permanent_address = "Haiti" OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT COUNT(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM cartoon WHERE written_by = 'Joseph Kuhr'
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT T1.title, T1.directed_by FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel ORDER BY T2.Air_Date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_channel WHERE language = 'English'
SELECT COUNT(*) FROM TV_channels WHERE language = 'English'
SELECT language, COUNT(*) FROM TV_channel GROUP BY language ORDER BY COUNT(*) ASC LIMIT 1
SELECT language, COUNT(*) FROM TV_channels GROUP BY language ORDER BY COUNT(*) ASC LIMIT 1
SELECT language, COUNT(*) FROM TV_channel GROUP BY language
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T2.channel = T3.channel WHERE T3.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(share), MAX(share) FROM TV_series
SELECT MAX(share), MIN(share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN episodes AS T2 ON T1.id = T2.series_id WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE Series_name = "Sky Radio"
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_channel WHERE high_definition_tv = 'Yes'
SELECT series_name, package_options FROM TV_channel WHERE high_definition_tv = 'Yes'
SELECT T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Todd Casey"
SELECT T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T2.series_name, T2.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" AND T2.directed_by = "Michael Chang"
SELECT T2.series_name, T2.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language <> 'English'
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language <> 'English'
SELECT T1.id FROM TV_channel AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.country = T2.country AND T1.series_name = T2.series_name
SELECT T1.id FROM TV_channel AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1.series_name = T2.series_name AND T1.content = T2.content
SELECT id FROM TV_channel WHERE NOT id IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT id FROM TV_channel WHERE NOT id IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT DISTINCT package_options FROM TV_channel EXCEPT SELECT DISTINCT package_options FROM cartoon WHERE directed_by = 'Ben Jones'
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
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT DISTINCT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT AVG(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT AVG(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM AREA_code_state
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = "CA"
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM votes
SELECT T2.contestant_number, T2.contestant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T2.contestant_number, T2.contestant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number ORDER BY votes ASC LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = "NY" OR state = "CA"
SELECT COUNT(*) FROM contestants WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT T2.area_code FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state GROUP BY T1.state ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T2.area_code FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T1.contestant_number = 3 INTERSECT SELECT T2.area_code FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T1.contestant_number = 4
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE Foundation > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT SUM(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = "Caribbean"
SELECT T1.Continent FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Anguilla"
SELECT T1.Continent FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Anguilla"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.country_code WHERE T2.name = 'Kabul'
SELECT region FROM country WHERE Name = 'Kabul'
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Aruba" ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Aruba" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT region, population FROM country WHERE Name = "Angola"
SELECT T2.Population, T2.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT MAX(GNP), SUM(Population) FROM country WHERE Continent = 'Asia'
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic'
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = "Republic" AND Continent = "Africa"
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT COUNT(*) FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.GovernmentForm = "USA"
SELECT AVG(GNP), SUM(Population) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = "USA"
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT language) FROM countrylanguage
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Afghanistan" AND T2.IsOfficial = "1"
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Afghanistan" AND T2.IsOfficial = "1"
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" AND Language = "Dutch"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" AND Dutch"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" AND T1.Language = "French" AND T2.GovernmentForm = "Official"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT region FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT region FROM countrylanguage WHERE language = "Dutch" OR language = "English"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.GovernmentForm = "Republic"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.GovernmentForm = "Republic"
SELECT T2.Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "English" ORDER BY T2.Population DESC LIMIT 1
SELECT T2.Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "English" ORDER BY T2.Population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT AVG(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> "English"
SELECT SUM(Population) FROM country WHERE Language <> 'English'
SELECT SUM(Population) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.HeadOfState = "Beatrix" AND T2.IsOfficial = "1"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.HeadOfState = "Beatrix" AND T2.IsOfficial = "1"
SELECT SUM(DISTINCT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Founded < 1930
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE isofficial = '1' AND countrycode IN (SELECT countrycode FROM country WHERE founded < 1930)
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(surfacearea) FROM country WHERE continent = 'Europe')
SELECT Name FROM country WHERE Population < (SELECT MIN(Population) FROM country) AND Continent = 'Africa')
SELECT Name FROM country WHERE Population < (SELECT MIN(Population) FROM country)
SELECT Name FROM country WHERE Population > (SELECT MAX(Population) FROM country) AND Continent = 'Asia')
SELECT Name FROM country WHERE Population > (SELECT MAX(Population) FROM country) AND Continent = 'Asia')
SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT Code FROM country WHERE NOT GovernmentForm = "Republic" AND NOT Language = "English"
SELECT Code FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") AND NOT GovernmentForm = "Republic")
SELECT Name FROM city WHERE CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language <> "English")
SELECT Name FROM city WHERE CountryCode <> "Europe" AND Language <> "English"
SELECT DISTINCT T2.Name FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode JOIN countrylanguage AS T3 ON T1.CountryCode = T3.CountryCode WHERE T3.Language = "Chinese"
SELECT DISTINCT T2.Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.IsOfficial = 'F' AND T2.Continent = 'Asia'
SELECT name, indyEAR, surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name, indyEAR, surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name, population, leader FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T2.Name, COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode HAVING COUNT(*) >= 3
SELECT T2.Name, COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Name HAVING COUNT(*) > 2
SELECT COUNT(*), District FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District)
SELECT COUNT(*), District FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District)
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT SUM(Population), GovernmentForm FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT AVG(LifeExpectancy), SUM(Population) FROM country WHERE AVG(LifeExpectancy) < 72 GROUP BY Continent
SELECT SUM(Population), Continent FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT Name, Area FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(Population), AVG(Area) FROM country WHERE Continent = "North America" AND Area > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language, T1.CountryCode, T1.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY T1.Percentage DESC LIMIT 1
SELECT T2.CountryCode, T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" AND T2.Percentage = (SELECT MAX(Percentage) FROM countrylanguage)
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish"
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
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
SELECT Name FROM conductor ORDER BY Years_of_Work DESC
SELECT Name FROM conductor ORDER BY Years_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Years_of_Work DESC LIMIT 1
SELECT T2.Name, T3.Orchestra FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T1.Orchestra_ID = T3.Orchestra_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Frequency
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT COUNT(*) FROM highschooler
SELECT COUNT(*) FROM highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT student_id FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(*) FROM Friend GROUP BY student_id
SELECT T2.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Kyle AS T1 JOIN Friend AS T2 ON T1.student_id = T2.student_id WHERE T1.name = "Kyle"
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler WHERE NOT student_id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE NOT student_id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE NOT student_id IN (SELECT student_id FROM friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT student_id FROM friends UNION SELECT student_id FROM likes
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id JOIN Likes AS T3 ON T1.student_id = T3.student_id
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id JOIN Likes AS T3 ON T1.friend_id = T3.student_id
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT T2.name, COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.school_id = T2.id GROUP BY T1.school_id
SELECT T2.name, COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.grade > 5 GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT COUNT(*) FROM Highschoolers AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id WHERE T1.name = "Kyle"
SELECT AVG(t1.grade) FROM Highschooler AS t1 JOIN Friend AS t2 ON t1.id = t2.student_id
SELECT AVG(t1.grade) FROM Highschooler AS t1 JOIN Friend AS t2 ON t1.id = t2.student_id
SELECT MIN(grade) FROM highschooler WHERE NOT student_id IN (SELECT student_id FROM friend)
SELECT MIN(grade) FROM highschooler WHERE NOT student_id IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT DISTINCT T1.state, T2.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.professional_id
SELECT AVG(age) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "Indiana" OR COUNT(*) > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "Indiana" OR COUNT(*) > 2
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T1.dog_id = T3.dog_id WHERE T3.cost_of_treatment > 1000
SELECT DISTINCT first_name FROM professionals EXCEPT SELECT DISTINCT first_name FROM owners
SELECT DISTINCT first_name FROM professionals EXCEPT SELECT DISTINCT first_name FROM owners
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT professional_id FROM treatments
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT professional_id FROM treatments
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatment_Types AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatment_Types AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.treatment_type_code = T3.treatment_type_code ORDER BY T3.cost_of_treatment DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY SUM(cost_of_treatment) ASC LIMIT 1
SELECT T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY SUM(T1.cost_of_treatment) LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T2.first_name, T2.last_name FROM Treatment AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatment)
SELECT T1.date_of_treatment, T2.first_name FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.date_of_treatment, T1.first_name FROM Treatment AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment, treatment_type_code FROM Treatment_Types
SELECT cost_of_treatment, treatment_type_code FROM Treatment_Types
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Sizes AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T1.date_of_birth, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Breeds GROUP BY breed_code ORDER BY COUNT(*) ASC LIMIT 1)
SELECT name, date_of_treatment FROM dogs WHERE breed_code = (SELECT breed_code FROM Breeds GROUP BY breed_code ORDER BY COUNT(*) ASC LIMIT 1)
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_of_arrival, T1.date_of_departure FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.date_of_birth ASC LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.date_of_birth ASC LIMIT 1
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT dog_id) FROM treatments
SELECT COUNT(DISTINCT professional_id) FROM TREATMENTS
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
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
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type, SUM(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_type, SUM(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_type, charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_type, charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_code, T2.size_code FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.role_code = T2.role_code
SELECT T2.first_name, T2.last_name, T1.treatment_type_code FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
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
SELECT Citizenship, MAX(net_worth_millions) FROM singer GROUP BY Citizenship
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_name = "Aircon"
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT T1.property_name FROM Properties AS T1 JOIN Apartments AS T2 ON T1.property_id = T2.property_id WHERE T2.room_count > 1
