SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age ASC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T1.Name, T1.Song_release_year FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Age DESC LIMIT 1
SELECT song_name, song_release_year FROM song ORDER BY age DESC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T3.name, COUNT(*) FROM concert AS T1 JOIN stadium_in_concert AS T2 ON T1.stadium_id = T2.stadium_id JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id GROUP BY T3.stadium_id
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T3.name FROM concert AS T1 JOIN stadium_in_concert AS T2 ON T1.stadium_id = T2.stadium_id JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.Concert_name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.Concert_ID = T2.Concert_ID GROUP BY T1.Concert_name
SELECT T1.club_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.club_id = T2.club_id GROUP BY T1.club_name
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_name LIKE "%Hey%"
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_name LIKE "%Hey%"
SELECT T3.name, T3.location FROM concert AS T1 JOIN stadium_in_concert AS T2 ON T1.stadium_id = T2.stadium_id JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name, T3.location FROM concert AS T1 JOIN stadium_in_concert AS T2 ON T1.stadium_id = T2.stadium_id JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT T3.name, T3.location FROM concert AS T1 JOIN stadium_in_concert AS T2 ON T1.stadium_id = T2.stadium_id JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name, T3.location FROM concert AS T1 JOIN stadium_in_concert AS T2 ON T1.stadium_id = T2.stadium_id JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T1.Capacity DESC LIMIT 1
SELECT COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T1.Capacity DESC LIMIT 1
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT MAX(weight), pettype FROM pets
SELECT COUNT(*) FROM Has_Pets WHERE StuID > 20
SELECT COUNT(*) FROM Has_Pets WHERE StuID > 20
SELECT COUNT(*) FROM Has_Pets WHERE PetType = "Dog" AND StuID IN (SELECT StuID FROM Student WHERE Sex = "F")
SELECT COUNT(*) FROM Has_Pets WHERE StuID IN (SELECT StuID FROM Student WHERE Sex = 'F')
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT COUNT(DISTINCT pettype) FROM pets
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "Cat" OR T2.PetID = "Dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pets AS T2 ON T1.StuID = T2.StuID WHERE T2.Pet = "Cat" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pets AS T2 ON T1.StuID = T2.StuID WHERE T2.Pet = "Dog"
SELECT major, age FROM student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = "Cat")
SELECT major, age FROM Student EXCEPT SELECT T1.major, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = (SELECT PetID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = (SELECT PetID FROM Has_Pet WHERE PetType = "Cat")
SELECT T1.Fname, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = 1 AND T2.PetID = 2
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = 1 AND T2.CatID = 0
SELECT pettype, weight FROM pets ORDER BY pet_age DESC LIMIT 1
SELECT pettype, weight FROM pets ORDER BY pet_age DESC LIMIT 1
SELECT pet_id, weight FROM pets WHERE age > 1
SELECT pet_id, weight FROM pets WHERE age > 1
SELECT AVG(age), MAX(age), pettype FROM pets GROUP BY pettype
SELECT pettype, AVG(age), MAX(age) FROM pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM pets GROUP BY pettype
SELECT pettype, AVG(weight) FROM pets GROUP BY pettype
SELECT T3.Fname, T3.Age FROM Has_Pets AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID
SELECT T1.Fname, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T1.petid FROM Has_Pets AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT T1.petid FROM Has_Pets AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT COUNT(*), StuID FROM Has_Pets GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pets GROUP BY StuID
SELECT T1.Fname, T1.sex FROM Student AS T1 JOIN Has_Pets AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING COUNT(*) > 1
SELECT T1.Fname, T1.sex FROM Student AS T1 JOIN Has_Pets AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING COUNT(*) > 1
SELECT T3.Lname FROM Has_Pets AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T2.age = 3
SELECT T3.Lname FROM Has_Pets AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T2.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT T1.continent, T1.continent_name, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.continent_id = T2.continent_id GROUP BY T1.continent_id
SELECT T1.continent, T1.name, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.continent = T2.continent_id GROUP BY T1.continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.Model FROM car_names AS T1 JOIN car_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Horsepower ASC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN car_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Horsepower ASC LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(weight) FROM cars_data)
SELECT Model FROM car_data WHERE Weight < (SELECT AVG(height) FROM car_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T2.Year = 1970
SELECT T1.Name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T2.Year = 1970
SELECT T1.Make, T1.Year FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker ORDER BY T1.Year ASC LIMIT 1
SELECT T1.Maker, T1.Year FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT Model FROM car_names WHERE YEAR > 1980
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Year > 1980
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN model_list AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN model_list AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.manufacturer, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.manufacturer GROUP BY T1.manufacturer
SELECT T1.id, T1.manufacturer, T1.manufacturer, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.manufacturer GROUP BY T1.manufacturer
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = "Amc Hornet sportabout"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = "Amc Hornet sportabout"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "USA"
SELECT COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM car_data WHERE Cylinders = 4
SELECT MIN(T1.Weight) FROM car_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = "8 cylinder" AND T1.Year = 1974
SELECT MIN(T1.Weight) FROM car_data AS T1 JOIN cars AS T2 ON T1.Id = T2.MakeId WHERE T2.Cylinders = 8 AND T1.Year = 1974
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakerId
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakerId
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Maker
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data
SELECT AVG(weight), YEAR FROM cars_data
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Maker WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT MAX(T1.Horsepower), T2.Model FROM car_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = "3 Cylinder"
SELECT MAX(T1.Horsepower), T2.Model FROM car_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = "3 Cylinder"
SELECT Model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(T1.Edispl) FROM cars_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = "Volvo"
SELECT AVG(Edispl) FROM cars_data
SELECT MAX(accelerate), cylinders FROM cars_data
SELECT MAX(accelerate), cylinder FROM cars_data
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.MakeId GROUP BY T1.MakeId ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM car_names WHERE cylinders > 4
SELECT COUNT(*) FROM car_names WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_makers WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Country = "American Motor Company"
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Name, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.MakeId JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.FullName = "General Motors" OR T3.Weight < 3500
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.MakeId JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Maker = "General Motors" OR T3.Weight < 3500
SELECT YEAR FROM cars_data WHERE Weight < 3000 AND Weight > 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 3000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 4000
SELECT T1.Horsepower FROM car_data AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Accelerate DESC LIMIT 1
SELECT T1.Horsepower FROM car_data AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Accelerate DESC LIMIT 1
SELECT T1.cylinders FROM car_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId ORDER BY T2.Accelerate ASC LIMIT 1
SELECT T1.Model, T1.Cylinders FROM car_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId ORDER BY T2.Accelerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM car_makers GROUP BY country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_names WHERE Cylinders > 6
SELECT COUNT(*) FROM car_data WHERE Cylinders > 6
SELECT T1.Model FROM car_names AS T1 JOIN car_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN car_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = "4" ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Make, T1.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Horsepower > (SELECT MIN(Horsepower) AND T2.Cylinders > 3)
SELECT T1.Make, T1.Model, T1.MakeId FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Cylinders = 4
SELECT MAX(MPG) FROM car_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM car_names WHERE Weight < 3500 AND Maker <> 'Ford Motor Company'
SELECT Model FROM car_data WHERE Weight < 3500 AND Maker <> "Ford Motor Company"
SELECT T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 1
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT CountryId FROM car_makers)
SELECT T1.id, T2.maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T1.maker HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T2.maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T1.maker HAVING COUNT(*) > 3
SELECT T1.id, T1.manufacturer FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.manufacturer GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.manufacturer FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.manufacturer GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.Country, T1.CountryId, T2.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.Country, T1.CountryId, T2.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = 'fiat'
SELECT T1.country_id, T1.country_name FROM countries AS T1 JOIN model_list AS T2 ON T1.country_id = T2.country_id GROUP BY T1.country_id HAVING COUNT(*) > 3 UNION SELECT T1.country_id, T1.country_name FROM countries AS T1 JOIN car_makers AS T2 ON T1.country_id = T2.country_id JOIN model_list AS T3 ON T2.id = T3.maker WHERE T3.Model = "Fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T1.Country FROM airlines AS T1 JOIN affiliation AS T2 ON T1.uid = T2.uid WHERE T2.Affiliation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T1.Abbreviation FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT city, country FROM airports WHERE airportName = "Alton"
SELECT city, country FROM airports WHERE airportName = "Alton"
SELECT airportName FROM airports WHERE city = "AKO"
SELECT airportName FROM airports WHERE airportCode = 'AKO'
SELECT airportName FROM airports WHERE city = 'Aberdeen'
SELECT airportName FROM airports WHERE city = "Abbotsford"
SELECT COUNT(*) FROM flights WHERE SOURCEAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SOURCEAirport = 'APG'
SELECT FlightNo FROM Flight WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT T1.FlightNo FROM flights AS T1 JOIN city AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Abbotsford"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.city = "Abbotsford"
SELECT T1.flights AS T1 JOIN T2 ON T1.city = T2.city WHERE T2.city = "Abbotsford"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Abbotsford"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.DestAirport = 'Ashley'
SELECT FlightNo FROM Flight WHERE SOURCEAirport = "Abbotsford" AND DestAirport = "Ashley"
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM flights WHERE Airline = "JetBlue Airways"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'ASY' AND T1.Airline = 'United Airlines'
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY Airport" AND T1.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'United Airlines'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD Airport" AND T1.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = 'United States' AND T1.SourceAirport = 'Los Angeles' AND T1.DestAirport = 'Aberdeen'
SELECT T1.Airline, T2.AirportName, COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = "United Kingdom" AND T1.Airline = "United Airlines"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM Flight GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Abbreviation ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN Flight AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN Flight AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airport AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG" INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SOURCEAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.city = "Abbotsford"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Abbotsford"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Abilene" OR T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = "Abilene" OR T2.Country = "Aberdeen"
SELECT airportName FROM airports WHERE NOT UID IN (SELECT SOURCEAirport FROM Flight)
SELECT airportName FROM airports WHERE NOT UID IN (SELECT SOURCEAirport FROM Flight) AND UID IN (SELECT DestAirport FROM Flight)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city, COUNT(*) FROM employee GROUP BY city
SELECT city FROM employee WHERE age > 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM employee WHERE age > 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name FROM store WHERE number_products > (SELECT AVG(number_products) FROM store)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Name FROM employee EXCEPT SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID ORDER BY T2.Number_products DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN employees AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM store
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_name, Document_description FROM Documents
SELECT Document_ID, Document_name, Document_description FROM Documents
SELECT Document_name, template_id FROM Documents WHERE Document_description LIKE '%w%'
SELECT Document_name, template_id FROM Documents WHERE Document_description LIKE "%w%"
SELECT Document_id, template_id, document_description FROM Documents WHERE Document_name = "Robbin CV"
SELECT Document_id, template_id, document_description FROM Documents WHERE Document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_details) FROM Documents
SELECT COUNT(DISTINCT template_type_code) FROM Documents
SELECT COUNT(*) FROM Documents WHERE template_type_code = 'PPT'
SELECT COUNT(*) FROM Documents AS T1 JOIN Ref_document_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "PPT"
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT T1.template_id, T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM documents EXCEPT SELECT template_id FROM paragraphs
SELECT template_id FROM documents EXCEPT SELECT template_id FROM paragraphs
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM Ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT COUNT(*) FROM Templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(T1.version_number), T2.template_type_code FROM Documents AS T1 JOIN Ref_document_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.version_number, T2.template_type_code FROM Documents AS T1 JOIN Ref_document_types AS T2 ON T1.template_id = T2.template_id ORDER BY T1.version_number ASC LIMIT 1
SELECT T1.template_type_code FROM Ref_document_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = "Data base"
SELECT T1.template_type_code FROM Ref_template_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.template_type_code = "BK"
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_document_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code FROM Ref_document_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Ref_template_types AS T2 ON T1.template_id = T2.template_id
SELECT template_id FROM Ref_template_types WHERE template_type_description = "Presentation"
SELECT template_id FROM Ref_template_Types WHERE template_type_description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT T1.paragraph_details FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Korea'
SELECT other_details FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id, T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT Document_id, COUNT(*) FROM Paragraphs GROUP BY Document_id ORDER BY Document_id
SELECT T1.document_id, T1.document_name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id, T1.document_name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Ireland'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teachers ORDER BY Age ASC
SELECT Name FROM teachers ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teachers WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teachers WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teachers WHERE Age = 32 OR Age = 33
SELECT Name FROM teachers WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.Name, T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.Name, T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name
SELECT T2.Name, T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Name = "Math"
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Grade = "Math"
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Course_ID IN (SELECT Course_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership
SELECT AVG(age) FROM visitor WHERE level_of_membership <> 'Higher'
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id, name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, Num_of_Staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.total_spent DESC LIMIT 1
SELECT T1.id, T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID ORDER BY T2.Num_of_Tickets DESC LIMIT 1
SELECT AVG(Num_of_Tickets), MAX(Num_of_Tickets) FROM visit
SELECT SUM(Num_of_Ticket) FROM visit WHERE Level_of_membership = 1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.Visitor_ID WHERE T2.Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.Visitor_ID WHERE T2.Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > 2011)
SELECT COUNT(*) FROM visit WHERE NOT museum_id IN (SELECT museum_id FROM open_year > 2010)
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(T1.loser_age), T2.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT AVG(T1.loser_age), T2.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT AVG(rank) FROM MATCHES WHERE winner_entry = 'Yes'
SELECT AVG(rank) FROM MATCHES WHERE winner_entry = 'Yes'
SELECT MAX(rank) FROM matches
SELECT MAX(rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T1.tournament_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tournament_id = T2.tournament_id GROUP BY T1.tournament_id HAVING COUNT(*) > 10
SELECT T1.tournament_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tournament_id = T2.tournament_id GROUP BY T1.tournament_id HAVING COUNT(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T2.rank_points FROM winners AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T2.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T2.tournament_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tournament_id = T2.tournament_id ORDER BY T2.ranking_date DESC LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN ranking AS T2 ON T1.match_num = T2.match_num WHERE T2.rating_date = (SELECT MAX(ranking_date) FROM ranking AS T2 JOIN matches AS T1 ON T1.match_num = T2.match_num WHERE T1.tournament_name = "Australian Open")
SELECT T1.first_name, T1.last_name, T2.first_name, T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.minutes DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.rank, T2.first_name, AVG(T1.rating) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, AVG(ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T1.ranking_points, T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id
SELECT T1.first_name, SUM(T2.rating_point) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT YEAR, COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name, T2.rank FROM matches AS T1 JOIN rankings AS T2 ON T1.match_num = T2.match_num ORDER BY T2.year DESC LIMIT 3
SELECT T1.first_name, T1.last_name, T2.rank FROM matches AS T1 JOIN rankings AS T2 ON T1.match_num = T2.match_num ORDER BY T2.year DESC LIMIT 3
SELECT COUNT(*) FROM T1 JOIN T2 ON T1.winner_id = T2.winner_id WHERE T1.tournament_name = "WTA Championships" AND T2.hand = "left"
SELECT COUNT(*) FROM matches WHERE T1.winner_hand = "left" AND T1.tournament_name = "WTA Championships"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN MATCH AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.ranking_date DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN MATCH AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name
SELECT name, date, result FROM battle
SELECT MAX(deaths), MIN(deaths), date FROM death
SELECT AVG(injured), date FROM death GROUP BY date
SELECT T1.death, T1.injured FROM death AS T1 JOIN ship AS T2 ON T2.id = T1.caused_by_ship_id WHERE T2.tonnage = 't'
SELECT name, results FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING SUM(T2.killed) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM ship WHERE Tonnage > 225 AND NOT id IN (SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id)
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' AND T2.name = 'HMS Atalanta'
SELECT T1.name, T1.result, T1.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.location = 'English Channel' AND T2.lost_in_battle = 0
SELECT note FROM death WHERE note LIKE "%East%"
SELECT address_id, line_1, line_2 FROM ADDRESSES
SELECT line_1, line_2 FROM ADDRESSES
SELECT COUNT(*) FROM COURSES
SELECT COUNT(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT zip_postcode FROM ADDRESSES WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name, T1.department_id FROM departments AS T1 JOIN degrees AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM departments AS T1 JOIN degrees AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_name) FROM degree_programs
SELECT COUNT(DISTINCT department_name) FROM degrees
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(*) FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT COUNT(*) FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) < 2
SELECT section_name FROM sections ORDER BY section_name
SELECT section_name FROM sections ORDER BY section_name
SELECT semester_name, semester_id FROM Student_Enrolment
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 2 AND T2.year = 2012 AND T2.course_id = T3.course_id AND T3.degree_id = "MA" AND T3.course_id = "MA"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, T2.degree_summary_name, T2.degree_summary_description, T2.degree_summary_id, T2.degree_summary_id, T1.semester_id, T2.degree_summary_id, T1.year FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_id = "B"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_id = "Bachelors"
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM students WHERE state_province_county = "North Carolina" AND NOT student_id IN (SELECT student_id FROM student_enrolment)
SELECT last_name FROM students WHERE state_province_county = "North Carolina" AND NOT student_id IN (SELECT student_id FROM student_enrolment)
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2
SELECT phone_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered DESC LIMIT 1
SELECT first_name FROM Students
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3 FROM addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT T1.date_first_registered, T1.date_first_registered, T1.other_details FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered
SELECT T1.date_first_registered, T1.other_details FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT MAX(transcript_date) FROM Transcripts
SELECT T1.course_name, T1.course_id, COUNT(*) FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name, T1.course_id, MAX(T2.transcript_date) FROM Courses AS T1 JOIN Transcripts AS T2 ON T1.course_id = T2.course_id
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id ORDER BY T2.transcript_contents LIMIT 1
SELECT T1.date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date, T1.transcript_id, T1.transcript_date
SELECT T1.semester_name, T2.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id IN (SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.year = T1.year AND T2.student_id IN (SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.year = T1.year AND T2.student_id IN (SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.year = T1.year AND T2.student_id IN (SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.year = T1.year AND T2.student_id IN (SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.year =
SELECT semester_id FROM Student_Enrolment_Courses WHERE degree_id = "MA" INTERSECT SELECT semester_id FROM Student_Enrolment_Courses WHERE degree_id = "BA"
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.address_id, T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT other_student_details FROM Students ORDER BY other_student_details
SELECT other_student_details FROM Students ORDER BY other_student_details
SELECT section_description FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT first_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT COUNT(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE directed_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), SUM(Contents) FROM TV_channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.language, COUNT(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T1.language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT T1.series_name FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.series_name FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Episode, T1.Rating FROM TV_series AS T1 JOIN TV_rating AS T2 ON T1.id = T2.id ORDER BY T2.rating DESC LIMIT 3
SELECT T1.Episode, T1.Rating FROM TV_series AS T1 JOIN TV_rate AS T2 ON T1.id = T2.id ORDER BY T2.rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_episodes AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT directed_by, COUNT(*) FROM cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT T1.package_option, T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.high_definition_tv = 'Yes'
SELECT T1.package_options, T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.high_definition_tv = 'Yes'
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT DISTINCT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT country FROM TV_series EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language <> 'English'
SELECT pixel_aspect_ratio_PAR, country FROM TV_channel WHERE language <> 'English'
SELECT id FROM TV_channel GROUP BY country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT DISTINCT Package_Option FROM TV_Channel EXCEPT SELECT DISTINCT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel EXCEPT SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
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
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM People ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM area_code_state
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_state
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM votes
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name, MIN(T2.vote_id) FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number
SELECT COUNT(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM contestants WHERE NOT contestant_number IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state GROUP BY T2.state ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T2.state, T3.phone_number FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T1.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state WHERE T2.created = '2004-03-15' AND T2.state = 'IL' INTERSECT SELECT T1.area_code FROM Area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state WHERE T2.created = '2004-03-15' AND T2.state = 'IL'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE "%Al%"
SELECT Name FROM country WHERE Independence > 1950
SELECT Name FROM country WHERE Founded > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT T1.SurfaceArea FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' AND T1.Name = "Caribbean"
SELECT T1.Continent FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' AND T1.Name = 'Anguilla'
SELECT T1.Continent FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Anguilla"
SELECT DISTINCT District FROM city WHERE Name = "Kabul"
SELECT Region FROM country WHERE Name = "Kabul"
SELECT T1.Language FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode JOIN country AS T3 ON T2.CountryCode = T3.Code WHERE T3.Name = 'Aruba' ORDER BY T2.Percentage DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' AND T1.Name = 'Aruba'
SELECT T1.Population, T2.LifeExpectancy FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Brazil"
SELECT T1.Population, T2.LifeExpectancy FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Brazil"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT T1.Name FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T2.Continent = 'Asia' ORDER BY T2.LifeExpectancy ASC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.LifeExpectancy ASC LIMIT 1
SELECT MAX(GNP), SUM(Population) FROM country WHERE continent = 'Asia'
SELECT MAX(GNP), Asia FROM country WHERE Continent = 'Asia'
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = "Republic" AND Continent = "Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" UNION SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Europe"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US'
SELECT AVG(GNP), SUM(Population) FROM country WHERE T1.Code = "USA"
SELECT COUNT(DISTINCT Language) FROM countrylanguages
SELECT COUNT(DISTINCT Language) FROM countrylanguages
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = 'Aruba'
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT COUNT(*) FROM countrylanguages AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Afghanistan'
SELECT COUNT(*) FROM countrylanguages AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Afghanistan'
SELECT T1.Name FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN languages AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN languages AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguages WHERE languages = "English" INTERSECT SELECT COUNT(*) FROM country_languages WHERE languages = "Dutch"
SELECT COUNT(*) FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT COUNT(*) FROM country AS T1 JOIN country_languages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch"
SELECT T1.Name, T2.Name FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name, T2.Name FROM country AS T1 JOIN country_languages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name, T2.Name FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name, T2.Name FROM country AS T1 JOIN country_languages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN country_languages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN country_languages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT COUNT(DISTINCT T1.Continent) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT T1.Region FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' OR T2.IsOfficial = 'D'
SELECT T1.Name FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' OR T2.IsOfficial = 'D'
SELECT T1.Language FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" ORDER BY T2.Percentage DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" ORDER BY T2.Percentage DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' AND T1.GovernmentForm = 'Republic' GROUP BY T1.Code HAVING COUNT(*) = 1
SELECT T1.Language FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' AND T1.GovernmentForm = 'Republic' GROUP BY T1.Code HAVING COUNT(*) = 1
SELECT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(T1.LifeExpectancy) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F'
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage)
SELECT SUM(Population) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage)
SELECT COUNT(*) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguages)
SELECT T1.Official FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = 'Beatrix'
SELECT T1.Official FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = 'Beatrix'
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE founded > 1930
SELECT COUNT(DISTINCT language) FROM countrylanguage WHERE founded > 1930
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Region = "Europe")
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Region = "Europe")
SELECT Name FROM country WHERE Continent = "Africa" AND Population < (SELECT MAX(Population) FROM country WHERE Continent = "Asia")
SELECT Name FROM country WHERE Continent = "Africa" AND Population < (SELECT MAX(Population) FROM country WHERE Continent = "Asia")
SELECT Name FROM country WHERE Continent = "Asia" AND Population > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT Name FROM country WHERE Continent = "Asia" AND Population > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country WHERE Language = "English"
SELECT CountryCode FROM country EXCEPT SELECT CountryCode FROM country WHERE Language = "English"
SELECT CountryCode FROM country WHERE NOT Code = "USA"
SELECT CountryCode FROM country WHERE NOT Code = "USA"
SELECT Code FROM country WHERE NOT CountryCode = "USA" AND NOT Language = "English" AND GovernmentForm <> "Republic"
SELECT Code FROM country WHERE NOT Code IN (SELECT Code FROM country WHERE GovernmentForm = "Republic" AND Language = "English")
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America"
SELECT Name FROM city WHERE Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.ID = T2.CountryCode WHERE T2.IsOfficial = "F"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.Code = T2.Code JOIN countrylanguages AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = 'Asia' AND T3.IsOfficial = 'F'
SELECT name, independence_year, surface_area FROM country ORDER BY population ASC LIMIT 1
SELECT T1.Name, T1.Independ, T1.SurfaceArea FROM country AS T1 ORDER BY T1.Population ASC LIMIT 1
SELECT T1.Population, T1.Name, T1.Leader FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.SurfaceArea DESC LIMIT 1
SELECT name, population, head_of_state FROM country ORDER BY surface_area DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN languages AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) > 2
SELECT COUNT(*) FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY District
SELECT District FROM city WHERE Population > (SELECT AVG(Population) FROM city)
SELECT T1.GovernmentForm, SUM(T2.Population) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.GovernmentForm HAVING AVG(T2.LifeExpectancy) > 72
SELECT T1.GovernmentForm, SUM(T2.Population) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.GovernmentForm HAVING AVG(T2.LifeExpectancy) > 72
SELECT T1.Continent, AVG(T2.LifeExpectancy), SUM(T2.Population) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' AND T2.Name <> 'English' AND T2.Name <> 'Spanish' AND T2.Name <> 'French' AND T2.Name <> 'German' AND T2.Name <> 'Italian' AND T2.Name <> 'Portuguese' AND T2.Name <> 'Dutch' AND T2.Name <> 'Swedish' AND T2.Name <> 'Norwegian' AND T2.Name <> 'Finnish' AND T2.Name <> 'Finnish'
SELECT T1.Continent, SUM(T2.Population), AVG(T2.LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent HAVING AVG(T2.LifeExpectancy) < 72
SELECT Name, District FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE continent = 'North America' AND surface_area > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE continent = 'North America' AND surface_area > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language, MAX(T2.Percentage) FROM country AS T1 JOIN countrylanguages AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code
SELECT CountryCode, Language FROM countrylanguages ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguages WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT T1.Code FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT T1.Code FROM country AS T1 JOIN country_language AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
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
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Years_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM performance GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM performance GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY Major_Record_Format ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Frequency
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT COUNT(*) FROM performance WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM performance WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT T1.Year_of_Founded FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID GROUP BY T1.Year_of_Founded HAVING COUNT(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT COUNT(*) FROM highschooler
SELECT COUNT(*) FROM highschooler
SELECT name, grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT grade FROM Highschooler GROUP BY Grade HAVING COUNT(*) >= 4
SELECT DISTINCT grade FROM highschooler WHERE COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM friend GROUP BY student_id
SELECT COUNT(*) FROM friend GROUP BY student_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id HAVING COUNT(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id HAVING COUNT(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle'
SELECT T1.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM friend WHERE student_id = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE friend_id IN (SELECT student_id FROM likes) INTERSECT SELECT id FROM highschooler WHERE liked_id IN (SELECT student_id FROM likes)
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T3.student_id = T2.friend_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN likes AS T3 ON T2.id = T3.friend_id
SELECT COUNT(*) FROM likes GROUP BY student_id
SELECT COUNT(*) FROM likes GROUP BY student_id
SELECT T1.name, T2.likes_id, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.ID = T2.school_id GROUP BY T2.school_id
SELECT T1.name, COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.ID = T2.school_id GROUP BY T2.school_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.ID = T2.school_id GROUP BY T2.school_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.grade > 5 GROUP BY T2.friend_id HAVING COUNT(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id IN (SELECT id FROM highschooler WHERE grade > 5 GROUP BY T2.student_id HAVING COUNT(*) >= 2)
SELECT COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.school_id = T2.id WHERE T2.name = 'Kyle'
SELECT COUNT(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.ID = T2.school_id WHERE T1.name = "Kyle"
SELECT AVG(DISTINCT grade) FROM highschooler
SELECT AVG(T2.grade) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.ID
SELECT MIN(grade), student_id FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT MIN(grade), student_id FROM highschooler WHERE NOT id IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM T1)
SELECT AVG(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2 UNION SELECT T1.professional_id, T1.last_name, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) <= 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) > 2 UNION SELECT T1.professional_id, T1.last_name, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN T2 ON T1.dog_id = T2.dog_id JOIN T3 ON T2.professional_id = T3.professional_id WHERE T3.cost_of_treatment > 1000
SELECT first_name FROM professionals EXCEPT SELECT name FROM dogs
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT T1.professional_id, T1.role_code, T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T2.first_name FROM Treatment_Types AS T1 JOIN Professionals AS T2 ON T1.treatment_type_code = T2.role_code GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id ORDER BY T2.cost_of_treatment DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.treatment_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.treatment_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment)
SELECT T1.date_of_treatment, T2.first_name FROM T3 AS T1 JOIN T2 AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM T1 AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.breed_code ASC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.breed_code ASC LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatment_Types AS T2 ON T1.size_code = T2.size_code
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth DESC LIMIT 1
SELECT T1.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.date_of_birth DESC LIMIT 1
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM TREATMENTS
SELECT COUNT(DISTINCT dog_id) FROM T1 JOIN T2 ON T1.dog_id = T2.dog_id
SELECT COUNT(DISTINCT professional_id) FROM T1
SELECT COUNT(DISTINCT T1.professional_id) FROM T1 AS T1 JOIN T2 ON T1.professional_id = T2.professional_id
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatment)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatment)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT owner_id FROM dogs)
SELECT COUNT(*) FROM professionals WHERE NOT role_code IN (SELECT treatment_type_code FROM treatment_Types)
SELECT COUNT(*) FROM professionals WHERE NOT role_code IN (SELECT treatment_type_code FROM TREATMENTS)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'Yes'
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T3.treatment_type_description FROM T1 AS T1 JOIN T2 ON T1.professional_id = T2.professional_id JOIN T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Million ASC
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
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Title FROM song WHERE NOT Song_ID IN (SELECT Song_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM song WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM song WHERE Birth_Year > 1955
SELECT COUNT(*) FROM other_available_features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT T1.property_type_description FROM Ref_Properties_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE room_count > 1 AND apt_type_code = "House" OR apt_type_code = "Apartment"
