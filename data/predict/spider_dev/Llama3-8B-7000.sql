SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T2.Song_Name, T2.Song_Release_year FROM singer AS T1 JOIN song AS T2 ON T1.Song_Name = T2.Song_Name ORDER BY T1.age LIMIT 1
SELECT Name, Song_Release_year FROM song ORDER BY Age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT T2.Song_Name FROM singer AS T1 JOIN song AS T2 ON T1.Song_Name = T2.Song_Name WHERE T1.Age > (SELECT AVG(Age) FROM singer)
SELECT T2.Song_Name FROM singer AS T1 JOIN song AS T2 ON T1.Song_Name = T2.Song_Name WHERE T1.age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name, T2.theme, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name FROM concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year = 2014
SELECT T2.Name, T2.Country FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Song_ID WHERE T1.Song_Name LIKE "%Hey%"
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Song_Name = T2.Song_Name WHERE T2.Song_Name LIKE "%Hey%"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT weight FROM pets WHERE pettype = 'dog' AND age = (SELECT MIN(age) FROM pets WHERE pettype = 'dog')
SELECT weight FROM pets WHERE pet_type = 'dog' AND age = (SELECT MIN(age) FROM pets WHERE pet_type = 'dog')
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT COUNT(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE age > 20)
SELECT COUNT(*) FROM Has_Pet WHERE sex = 'F'
SELECT COUNT(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Sex = "F") AND Pettype = "Dog"
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.Pettype = "Cat" OR T2.Pettype = "Dog"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Cat" OR T2.pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.Pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.Pettype = "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.Pettype = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.Pettype = "Dog"
SELECT Major, Age FROM Student EXCEPT SELECT T1.Major, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Cat"
SELECT Major, Age FROM Student EXCEPT SELECT T1.Major, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE Pettype = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE Pettype = "Cat"
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = "Dog" EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.Pettype = "Cat"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.Pettype = "Dog" EXCEPT SELECT DISTINCT fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.Pettype = "Cat"
SELECT pettype, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype, weight FROM pets ORDER BY age LIMIT 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT petid, weight FROM pets WHERE pet_age > 1
SELECT AVG(age), MAX(age), pettype FROM Student GROUP BY pettype
SELECT AVG(age), MAX(age), pettype FROM Student GROUP BY pettype
SELECT pet_type, AVG(weight) FROM pets GROUP BY pet_type
SELECT AVG(weight), pettype FROM pets GROUP BY pettype
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T2.PetID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = 'Smith'
SELECT T2.PetID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = 'Smith'
SELECT COUNT(*), T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT AVG(age) FROM student WHERE NOT StuID IN (SELECT StuID FROM has_pet)
SELECT AVG(age) FROM student WHERE NOT StuID IN (SELECT StuID FROM has_pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.continent, T1.country_name, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.continent
SELECT T1.continent, T2.country_name, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.id, T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.ModelId = T2.ModelId ORDER BY T1.Horses LIMIT 1
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(weight) FROM cars_data)
SELECT T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Year = 1970
SELECT DISTINCT T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Year = 1970
SELECT Make, ProductionTime FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT T1.Maker, T1.Year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makerid JOIN cars_data AS T3 ON T2.makeid = T3.makeid ORDER BY T3.year LIMIT 1
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.ModelId = T2.ModelId WHERE T1.Year > 1980
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T2.id, T2.fullname FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = "amc Hornet sportabout"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.ModelId WHERE T3.Maker = "amc hornet sportabout"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM model_list WHERE country = 'USA'
SELECT COUNT(*) FROM model_list WHERE country = 'United States'
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(T2.weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders = 8 AND T2.year = 1974
SELECT MIN(T2.weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders = 8 AND T2.year = 1974
SELECT DISTINCT maker, model FROM car_makers UNION SELECT DISTINCT maker, model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.CountryName, T2.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName, T2.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.CountryId HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT MAX(T2.Horsespower), T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId WHERE T1.Cylinders = 3
SELECT T2.Horsespower, T2.Make FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId WHERE T1.Cylinders = 3 ORDER BY T2.Horsespower DESC LIMIT 1
SELECT model FROM model_list ORDER BY miles_per_gallon DESC LIMIT 1
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsespower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsespower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.ModelId WHERE T2.Model = "volvo"
SELECT AVG(Edispl) FROM car_names WHERE Make = "Volvo"
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM car_makers WHERE YEAR = 1980
SELECT COUNT(*) FROM car_makers WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.Model WHERE T1.Maker = "American Motor Company"
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "American Motor Company"
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.Model WHERE T2.Maker = "General Motors" OR T1.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.Model WHERE T2.Make = "General Motors" OR T1.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T2.Cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId WHERE T1.Model = "volvo" ORDER BY T2.Accelerate ASC LIMIT 1
SELECT T2.Cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.ModelId = T2.ModelId WHERE T1.Maker = "Volvo" ORDER BY T2.Accelerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM car_makers GROUP BY countryName HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY countryName HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.ModelId WHERE T1.Cylinders = 4 ORDER BY T1.Horsespower DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.ModelId WHERE T1.Cylinders = 4 ORDER BY T1.Horsespower DESC LIMIT 1
SELECT make, name FROM car_names WHERE horsepower > (SELECT MIN(horses) FROM car_names) AND NOT cylinders > 3
SELECT T2.make, T2.model FROM cars_data AS T1 JOIN car_name AS T2 ON T1.makeid = T2.makeid WHERE T1.cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 AND NOT maker = 'Ford Motor Company'
SELECT DISTINCT model FROM model_list WHERE weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.modelid = T2.makeid JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.country = "Ford Motor Company"
SELECT countryName FROM countries EXCEPT SELECT countryName FROM car_makers GROUP BY countryName HAVING COUNT(*) > 1
SELECT countryName FROM countries WHERE NOT countryId IN (SELECT country FROM car_makers)
SELECT T2.id, T2.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id HAVING COUNT(*) >= 2 INTERSECT SELECT T2.id, T2.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id HAVING COUNT(*) > 3
SELECT T2.id, T2.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id HAVING COUNT(*) >= 2 INTERSECT SELECT T2.id, T2.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id HAVING COUNT(*) > 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country JOIN model_list AS T3 ON T2.ModelId = T3.ModelId WHERE T2.Makers > 3 OR T3.Model = 'fiat'
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Maker GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Maker WHERE T2.Model = "Fiat"
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'United States'
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN airport AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.city = "Anthony"
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN airport AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = 'United States'
SELECT COUNT(*) FROM airlines WHERE country = 'United States'
SELECT city, country FROM airports WHERE airportname = 'Alton'
SELECT city, country FROM airports WHERE airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = 'APG'
SELECT COUNT(*) FROM flights WHERE sourceairport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'
SELECT COUNT(*) FROM flights WHERE destinationairport = 'ATO'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Abdeen"
SELECT COUNT(*) FROM flights WHERE sourceairport = 'Abraham Aberdeen'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abraham"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abraham"
SELECT COUNT(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT COUNT(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = "JetBlue Airways"
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = 'United Airlines' AND T2.DestAirport = 'ASY'
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = "United Airlines" AND T2.DestAirport = "ASY"
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = 'United Airlines' AND T2.SourceAirport = 'AHD'
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = "United Airlines" AND T2.SourceAirport = "AHD"
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = 'United Airlines' AND T2.DestAirport = 'Aberdeen'
SELECT COUNT(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = "United Airlines" AND T2.DestAirport = "Aberdeen"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline, T2.Destairport = T1.AirportCode GROUP BY T1.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline, T2.DestAirport = T1.AirportCode GROUP BY T1.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.DestAirport = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'CVO'
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG" INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "CVO"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.city = "CVO" EXCEPT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.city = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.flights < 200 GROUP BY T2.Airline
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.flights < 200 GROUP BY T2.Airline
SELECT T2.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = "United Airlines"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.city = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.city = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.city = "Abraham"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abilene" OR T2.city = "Aberdeen"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Abilene" OR T2.city = "Aberdeen"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) AND NOT AirportCode IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) AND NOT AirportCode IN (SELECT DestAirport FROM flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM employee WHERE NOT employee_id IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.manager_id GROUP BY T1.employee_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T3.name, COUNT(*) FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T1.shop_id = T3.shop_id GROUP BY T1.shop_id
SELECT T2.Name, COUNT(*) FROM evaluation AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
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
SELECT document_name, template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(*) FROM Documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT COUNT(*) FROM Documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT T2.template_id, T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.template_id, T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM Ref_template_types EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Ref_template_types EXCEPT SELECT template_id FROM Documents
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM Templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM CV_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT version_number, template_type_code FROM Templates WHERE version_number > 5
SELECT version_number, template_type_code FROM Templates WHERE version_number > 5
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 4
SELECT version_number, template_type_code FROM Templates ORDER BY version_number ASC LIMIT 1
SELECT version_number, template_type_code FROM Templates ORDER BY version_number ASC LIMIT 1
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T2.template_id = T3.template_id WHERE T3.template_type_code = "BK"
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_id = T2.template_id
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_id = T2.template_id
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Presentation"
SELECT template_id FROM Ref_template_types WHERE template_type_description = "Presentation"
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT COUNT(*) FROM Documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%Korea%'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T2.paragraph_id, T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T2.paragraph_id, T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer Review"
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM Paragraphs GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM Paragraphs GROUP BY document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM Paragraphs GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM Documents GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
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
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Course_ID WHERE T1.Course = "Math"
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1Teacher_ID = T2Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Staring_Date = "8/19/2014" AND T3.Course = "Math"
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1Teacher_ID = T2Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership
SELECT AVG(age) FROM visitor WHERE LEVEL_of_membership < 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id, T2.name, T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY SUM(T2.num_of_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T2.name, T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.num_of_tickets = (SELECT MAX(num_of_tickets) FROM visit)
SELECT AVG(num_of_tickets), MAX(num_of_tickets) FROM visit
SELECT SUM(T2.Num_of_Ticket) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.Museum_ID WHERE T1.Level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT DISTINCT rank FROM matches ORDER BY rank DESC LIMIT 1
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM tours AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_name HAVING COUNT(*) > 10
SELECT T1.tourney_name FROM tournaments AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_name HAVING COUNT(*) > 10
SELECT T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name, T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name, T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T2.first_name FROM tourneys AS T1 JOIN players AS T2 ON T1.tourney_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T2.first_name FROM tourneys AS T1 JOIN players AS T2 ON T1.tourney_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT T2.first_name, T2.country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T2.first_name, T2.country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T2.first_name, T2.country_code FROM ranking AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.first_name, T2.country_code FROM ranking AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.winner_name, t1.winner_rank_points FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id GROUP BY t2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.winner_name, T1.winner_rank_points FROM ranking AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.winner_name FROM ranking AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.tour_rank_points = (SELECT MAX(tour_rank_points) FROM ranking AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open")
SELECT T2.winner_name FROM ranking AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT t1.loser_name, t1.winner_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.loser_id AND t1.player_id = t2.winner_id ORDER BY t2.minutes DESC LIMIT 1
SELECT t1.winner_name, t1.loser_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id AND t1.player_id = t2.loser_id ORDER BY t2.duration DESC LIMIT 1
SELECT T2.first_name, AVG(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name, AVG(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT SUM(ranking_points), first_name FROM rankings GROUP BY first_name
SELECT T2.first_name, SUM(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT SUM(tours), ranking_date FROM ranking GROUP BY ranking_date
SELECT SUM(tours), ranking_date FROM ranking GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT t1.first_name, t1.rank FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id ORDER BY t1.rank LIMIT 3
SELECT t1.first_name, t1.rank FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id ORDER BY t1.rank LIMIT 3
SELECT COUNT(DISTINCT T2.winner_name) FROM left_handed AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.tour_name = "WTA Championships"
SELECT COUNT(*) FROM matches AS T1 JOIN ranking AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id WHERE T2.winner_rank_points = (SELECT MAX(winner_rank_points) FROM ranking)
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE result = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(Death), MIN(Death), date FROM death GROUP BY date
SELECT AVG(injured), date FROM death GROUP BY date
SELECT T1.deaths, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.cause_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander BETWEEN 'Kaloyan' AND 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT T1.id FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.cause_by_ship_id WHERE T1.tonnage = 225)
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id, line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM COURSES
SELECT COUNT(*) FROM COURSES
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.department_name, T2.department_id FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM degrees
SELECT COUNT(DISTINCT department_id) FROM degrees
SELECT COUNT(DISTINCT degree_name) FROM degrees
SELECT COUNT(DISTINCT degree_name) FROM degrees
SELECT COUNT(*) FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT COUNT(*) FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%Computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%Computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 2
SELECT T2.first_name, T2.middle_name, T2.last_name FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = "B"
SELECT T2.first_name, T2.middle_name, T2.last_name FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = "Bachelors"
SELECT T1.degree_summary_name FROM degrees AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM degrees AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T2.first_name, T2.middle_name, T2.last_name, COUNT(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" AND NOT T2.student_id IN (SELECT student_id FROM student_enrolment)
SELECT last_name FROM students WHERE NOT student_id IN (SELECT student_id FROM student_enrolment WHERE semester_id = 1 AND state = "North Carolina")
SELECT T1.date, T1.transcript_id FROM TRANSACTIONS AS T1 JOIN TRANSCRIPTS AS T2 ON T1.transcript_id = T2.transcript_id JOIN transcript_contents AS T3 ON T2.transcript_id = T3.student_course_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.date, T1.transcript_id FROM TRANSACTIONS AS T1 JOIN TRANSCRIPTS AS T2 ON T1.transcript_id = T2.transcript_id JOIN transcript_contents AS T3 ON T2.transcript_id = T3.student_course_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students WHERE date_first_registered > (SELECT date_first_registered FROM students WHERE degree_program_id = 'B') ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT DISTINCT first_name FROM Students
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T2.line_1, T2.line_2 FROM Student_Enrolment AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id GROUP BY T1.current_address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM TRANSACTIONS
SELECT AVG(transcript_date) FROM TRANSACTIONS
SELECT T1.date_first_registered, T2.other_details FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id ORDER BY T2.transcript_date ASC LIMIT 1
SELECT T1.transcript_date, T1.other_details FROM TRANSACTIONS AS T1 JOIN TRANSCRIPTS AS T2 ON T1.transcript_id = T2.transcript_id ORDER BY T2.transcript_date LIMIT 1
SELECT COUNT(*) FROM TRANSACTIONS
SELECT COUNT(*) FROM TRANSACTIONS
SELECT MAX(transcript_date) FROM TRANSACTIONS
SELECT MAX(transcript_date) FROM TRANSACTIONS
SELECT T1.course_id, COUNT(*) FROM Student_Enrolment AS T1 JOIN Transcripts AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT MAX(Enrolment_id), T1.course_name FROM Courses AS T1 JOIN Transcripts AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name
SELECT date, transcript_id FROM TRANSACTIONS ORDER BY COUNT(*) LIMIT 1
SELECT T1.date, T1.transcript_id FROM TRANSACTIONS AS T1 JOIN TRANSCRIPTS AS T2 ON T1.transcript_id = T2.transcript_id JOIN transcript_contents AS T3 ON T2.transcript_id = T3.student_course_id GROUP BY T1.transcript_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'MA' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'B'
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 'M' INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = 'B'
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT section_description FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T2.first_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = "Haiti" OR T2.cell_mobile_number = "09700166582"
SELECT T2.first_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = "Haiti" OR T2.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT Ben Jones FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT T1.title FROM cartoon AS T1 JOIN director AS T2 ON T1.directed_by = T2.id WHERE T2.name = 'Ben Jones'
SELECT COUNT(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM CARToon WHERE written_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country, COUNT(*) FROM TV_channels GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_channels GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT T1.content FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT T1.content FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = 'Sky Radio'
SELECT COUNT(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT COUNT(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT LANGUAGE, COUNT(*) FROM TV_channel GROUP BY LANGUAGE ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.language, COUNT(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T2.language ORDER BY COUNT(*) ASC LIMIT 1
SELECT LANGUAGE, COUNT(*) FROM TV_channel GROUP BY LANGUAGE
SELECT COUNT(*), LANGUAGE FROM TV_channel GROUP BY LANGUAGE
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN tv_series AS T3 ON T3.channel = T2.id WHERE T3.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY rating
SELECT Episode FROM TV_series ORDER BY rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT episode, rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT t1.series_name FROM TV_Channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN episode AS T2 ON T1.id = T2.id WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_channel WHERE high_definition_TV = 'High'
SELECT T1.package_option, T2.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_Definition_TV = 'High'
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN Todd_Casey AS T3 ON T2.written_by = T3.id
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR, country FROM TV_Channel WHERE LANGUAGE <> 'English'
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE LANGUAGE <> 'English'
SELECT T1.id FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.country > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT DISTINCT package_option FROM TV_channel EXCEPT SELECT T1.package_option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
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
SELECT MAX(T2.Final_Table_Made) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
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
SELECT Name, Birth_Date FROM People ORDER BY Name ASC
SELECT Name, Birth_Date FROM People ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russian"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people EXCEPT SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM area_code_state
SELECT contestant_number, contestant_name FROM CONTEST ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM area_code_state
SELECT MAX(created) FROM votes WHERE state = 'CA'
SELECT DISTINCT contestant_name FROM contest WHERE contestant_name <> "Jessie Alloway"
SELECT DISTINCT state, created FROM votes
SELECT T1.contant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contant_number = T2.contant_number GROUP BY T1.contant_number HAVING COUNT(*) >= 2
SELECT T1.contant_number, T1.contant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contant_number = T2.contant_number GROUP BY T1.contant_number ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM contest WHERE NOT contest_number IN (SELECT contest_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = "Tabatha Gehling" INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = "Kelly Clauss"
SELECT contestant_name FROM contest WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independent_year > 1950
SELECT name FROM country WHERE founded > 1950
SELECT COUNT(*) FROM country WHERE government_form = 'Republic'
SELECT COUNT(*) FROM country WHERE government_form = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Anguilla'
SELECT T1.Continent FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Anguilla'
SELECT T2.region FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.code WHERE T1.name = 'Kabul'
SELECT region FROM country WHERE name = 'Kabul'
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Aruba' GROUP BY T2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Aruba' GROUP BY T2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT T1.region, T1.population FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Angola'
SELECT AVG(ifeExpectancy) FROM country WHERE region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT name FROM country WHERE region = 'Asia' AND lifeexpectancy = (SELECT MIN(lifeexpectancy) FROM country WHERE region = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT MIN(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT SUM(Population), MAX(GNP) FROM country WHERE Region = 'Asia'
SELECT SUM(GNP), MAX(GNP) FROM country WHERE Region = 'Asia'
SELECT AVG(T2.LifeExpectancy) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Africa' AND T1.GovernmentForm = 'Republic'
SELECT AVG(T2.LifeExpectancy) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Africa' AND T1.GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Asia' OR Region = 'Europe'
SELECT COUNT(*) FROM city WHERE district = 'Gelderland'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'United States'
SELECT AVG(GNP), SUM(Population) FROM country WHERE region = 'United States'
SELECT COUNT(DISTINCT LANGUAGE) FROM country_language
SELECT COUNT(DISTINCT LANGUAGE) FROM country_language
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Aruba'
SELECT COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.country_code = T2.code WHERE T2.name = 'Aruba'
SELECT COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.country_code = T2.code WHERE T2.name = 'Afghanistan' AND T1.isofficial = 'F'
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Afghanistan' AND T2.isofficial = 'F'
SELECT T2.name FROM country_language AS T1 JOIN country AS T2 ON T1.country_code = T2.code GROUP BY T1.country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM country_language AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country_language WHERE languages = 'English' INTERSECT SELECT COUNT(*) FROM country_language WHERE languages = 'Dutch'
SELECT COUNT(*) FROM country_language WHERE languages = 'English' INTERSECT SELECT COUNT(*) FROM country_language WHERE languages = 'Dutch'
SELECT T2.Name FROM country_language AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'English' INTERSECT SELECT T2.Name FROM country_language AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'French'
SELECT T2.Name FROM country_language AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'English' INTERSECT SELECT T2.Name FROM country_language AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'French'
SELECT T2.Name FROM country_language AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 'F' INTERSECT SELECT T2.Name FROM country_language AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 'F'
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T2.language = 'Chinese'
SELECT DISTINCT T1.region FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT DISTINCT region FROM country_language WHERE languages = 'Dutch' OR languages = 'English'
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT T1.name FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.continent = 'Asia' GROUP BY T2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.continent = 'Asia' GROUP BY T2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.government_form = 'Republic' GROUP BY T2.language HAVING COUNT(*) = 1
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.government_form = 'Republic' GROUP BY T2.language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN country_language AS T2 ON T1.id = T2.country_code WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN country_language AS T2 ON T1.id = T2.country_code WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surface_area DESC LIMIT 1
SELECT name, population, life_expectancy FROM country WHERE region = 'Asia' ORDER BY surface_area DESC LIMIT 1
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English'
SELECT SUM(Population) FROM country WHERE NOT Code IN (SELECT CountryCode FROM country_language WHERE Language = 'English')
SELECT COUNT(*) FROM country WHERE NOT Code IN (SELECT CountryCode FROM country_language WHERE Language = 'English')
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.head_of_state = 'Beatrix'
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.name = 'Beatrix'
SELECT COUNT(DISTINCT T2.language) FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T1.year < 1930
SELECT COUNT(DISTINCT language) FROM country_language WHERE founded_year < 1930
SELECT name FROM country WHERE surface_area > (SELECT MAX(surface_area) FROM country WHERE region = 'Europe')
SELECT name FROM country WHERE surface_area > (SELECT MAX(surface_area) FROM country WHERE region = 'Europe')
SELECT name FROM country WHERE population < (SELECT MIN(migration) FROM country WHERE region = 'Asia') AND region = 'Africa'
SELECT name FROM country WHERE population < (SELECT MIN(migration) FROM country WHERE region = 'Asia') AND region = 'Africa'
SELECT name FROM country WHERE region = 'Asia' AND population > (SELECT MAX(mopopulation) FROM country WHERE region = 'Africa')
SELECT name FROM country WHERE region = 'Asia' AND population > (SELECT MAX(mopopulation) FROM country WHERE region = 'Africa')
SELECT country_code FROM country WHERE NOT code IN (SELECT country_code FROM country_language WHERE language = 'English')
SELECT country_code FROM country WHERE NOT code IN (SELECT country_code FROM country_language WHERE language = 'English')
SELECT country_code FROM country_language WHERE languages <> 'English'
SELECT countrycode FROM country_language WHERE language <> 'English'
SELECT countrycode FROM country WHERE NOT governmentform = 'Republic' AND NOT countrycode IN (SELECT countrycode FROM country_language WHERE language = 'English')
SELECT code FROM country EXCEPT SELECT code FROM country_language WHERE language = 'English' AND government_form = 'Republic'
SELECT T1.name FROM city AS T1 JOIN country_language AS T2 ON T1.id = T2.country_code WHERE T2.language = 'English' AND T1.country_code = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN country_language AS T2 ON T1.id = T2.country_code WHERE T2.language = 'English'
SELECT name FROM city WHERE NOT id IN (SELECT countrycode FROM country_language WHERE isofficial = 'F') AND district = 'Europe'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country_language AS T2 ON T1.id = T2.country_code WHERE T2.language = 'Chinese' AND T1.countrycode = 'Asia'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country_language AS T2 ON T1.id = T2.country_code WHERE T1.continent = 'Asia' AND T2.isofficial = 'F'
SELECT name, independence, surface_area FROM country ORDER BY population ASC LIMIT 1
SELECT name, indip_year, surface_area FROM country ORDER BY population LIMIT 1
SELECT name, population, leader FROM country ORDER BY surface_area DESC LIMIT 1
SELECT name, population, head_of_state FROM country ORDER BY surface_area DESC LIMIT 1
SELECT T2.name, COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.country_code = T2.code GROUP BY T1.country_code HAVING COUNT(*) >= 3
SELECT T2.name, COUNT(*) FROM country_language AS T1 JOIN country AS T2 ON T1.country_code = T2.code GROUP BY T1.country_code HAVING COUNT(*) > 2
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(migration) FROM city) GROUP BY district
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(migration) FROM city) GROUP BY district
SELECT governmentform, SUM(Population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT SUM(Population), GovernmentForm FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT AVG(lifeexpectancy), SUM(Population), continent FROM country WHERE AVG(lifeexpectancy) < 72 GROUP BY continent
SELECT SUM(Population), AVG(LifeExpectancy) FROM country WHERE AVG(LifeExpectancy) < 72 GROUP BY Continent
SELECT name, surface_area FROM country ORDER BY surface_area DESC LIMIT 5
SELECT name, surface_area FROM country ORDER BY surface_area DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE region = 'Europe' AND population = 80000
SELECT name FROM country WHERE region = 'Europe' AND population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Region = 'North America' AND Area > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE SurfaceArea > 3000 AND Region = 'North America'
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code GROUP BY T2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM country_language GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code GROUP BY T2.country_code ORDER BY SUM(T2.percentage) DESC LIMIT 1
SELECT country_code, language FROM country_language GROUP BY country_code ORDER BY SUM(percentage) DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T2.language = 'Spanish' GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.code = T2.country_code WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING AVG(T2.language) > 0.5
SELECT countrycode FROM country_language WHERE language = 'Spanish' GROUP BY countrycode ORDER BY COUNT(*) DESC LIMIT 1
SELECT countrycode FROM country_language WHERE languages = 'Spanish' GROUP BY countrycode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
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
SELECT Name FROM conductor ORDER BY Years_of_Work DESC
SELECT Name FROM conductor ORDER BY Years_of_Work DESC
SELECT Name FROM conductor ORDER BY Years_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Years_of_Work DESC LIMIT 1
SELECT T3.Name, T2.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T3.Name, T2.Orchestra FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
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
SELECT name, grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler WHERE name = 'Kyle'
SELECT DISTINCT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*), grade FROM highschooler GROUP BY grade
SELECT COUNT(*), grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT T1.id, COUNT(*) FROM Student AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT COUNT(*) FROM Friend
SELECT T2.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT COUNT(*) FROM friend WHERE friend_id = Kyle
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT T2.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id INTERSECT SELECT T2.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id INTERSECT SELECT T2.name FROM Likes AS T3 JOIN Highschooler AS T4 ON T3.student_id = T4.id
SELECT COUNT(*), student_id FROM likes GROUP BY student_id
SELECT COUNT(*), student_id FROM likes GROUP BY student_id
SELECT T2.name, COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name, COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.grade > 5 GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.grade > 5 GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT AVG(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT AVG(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT MIN(grade) FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT MIN(grade) FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT AVG(t1.age) FROM Dogs AS t1 JOIN Treatments AS t2 ON t1.dog_id = t2.dog_id
SELECT AVG(t1.age) FROM Dogs AS t1 JOIN Treatments AS t2 ON t1.dog_id = t2.dog_id
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatment AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "Indiana" OR T2.treatment_id > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "Indiana" GROUP BY T1.professional_id HAVING COUNT(*) > 2
SELECT DISTINCT t1.name FROM Dogs AS t1 JOIN Treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.cost_of_treatment > 1000
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM dogs
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT professional_id, role_code, email_address FROM Treatments
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id, T2.first_name, T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.first_name, T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T2.first_name FROM Professions AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatments AS T3 ON T3.professional_id = T1.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.bred_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.bred_code = T2.bred_code GROUP BY T1.bred_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.bred_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.bred_code = T2.bred_code GROUP BY T1.bred_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Treatments AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T1.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T2.cost_of_treatment) LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY SUM(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.treatment_id = T3.treatment_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.treatment_id = T3.treatment_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professions AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatment AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatment)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment, treatment_type_description FROM Treatments
SELECT cost_of_treatment, treatment_type_description FROM Treatments
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.bred_code = (SELECT T1.bred_code FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.bred_code = T2.bred_code GROUP BY T1.bred_code ORDER BY COUNT(*) LIMIT 1)
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.bred_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY COUNT(*) LIMIT 1)
SELECT T2.first_name, T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT T2.first_name, T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT T1.date_of_arrived, T1.date_of_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_of_arrived, T1.date_of_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT t1.last_name FROM Professionals AS t1 JOIN Dogs AS t2 ON t1.professional_id = t2.professional_id ORDER BY t2.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM Treatments
SELECT COUNT(DISTINCT dog_id) FROM Treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT MAX(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
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
SELECT charge_type, SUM(charge_amount) FROM Charges GROUP BY charge_type
SELECT charge_type, MAX(charge_amount) FROM Charges GROUP BY charge_type
SELECT charge_amount FROM Charges WHERE charge_type = (SELECT charge_type FROM charges GROUP BY charge_type ORDER BY MAX(cost_of_treatment) LIMIT 1)
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT T1.bred_type, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT breed_type_code, size_type_code FROM Dogs
SELECT T1.first_name, T4.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN Professionals AS T4 ON T2.professional_id = T4.professional_id
SELECT T1.first_name, T3.treatment_type_description FROM Professions AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
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
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Song_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name, SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT SUM(Sales), T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT T2.feature_type_name FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T1.feature_name = "Aircon"
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE room_count > 1
