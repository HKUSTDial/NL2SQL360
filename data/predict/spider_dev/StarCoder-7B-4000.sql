SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "French"
SELECT name, song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT name, song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE age > 20 AND Is_male = 1
SELECT DISTINCT Country FROM singer WHERE age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT COUNT(*), country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT AVG age FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT average, highest FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.name
SELECT T1.Stadium_ID, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.Stadium_ID WHERE T2.Year > 2014 GROUP BY T1.name, T1.capacity ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013 GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE age > 40 INTERSECT SELECT Country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR <> 2014)
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name, T1.Theme
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name, T1.Theme
SELECT T1.Name, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.Name
SELECT T1.Name FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014
SELECT T1.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.Year = 2014
SELECT name, country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name, country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.Stadium_ID WHERE T2.Year = 2014 OR T2.Year = 2015
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.Stadium_ID WHERE T2.Year = 2014 OR T2.Year = 2015
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT COUNT(*) FROM Student WHERE age > 20 GROUP BY advisor
SELECT COUNT(*) FROM Student WHERE age > 20 GROUP BY advisor
SELECT COUNT(*) FROM Student WHERE sex = 'F' AND PetType = 'dog'
SELECT COUNT(*) FROM Student WHERE Sex = 'F' AND PetType = 'dog'
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat' OR T3.PetType = 'dog'
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat' OR T3.PetType = 'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Dog"
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT major, age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Has_Pet WHERE PetType = 'cat'
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT fname, age FROM Student WHERE sex = 'F' EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'dog' EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat'
SELECT fname FROM Student WHERE sex = 'F' AND major = '1' EXCEPT SELECT fname FROM Student WHERE sex = 'F' AND major = '2'
SELECT PetType, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT PetType, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age), pettype FROM Pets GROUP BY pettype
SELECT AVG(pet_age), MAX(pet_age), pettype FROM Pets GROUP BY pettype
SELECT AVG(weight), pettype FROM Pets GROUP BY pettype
SELECT AVG(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID ORDER BY T1.fname ASC, T1.age ASC
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT PetID FROM Has_Pet JOIN Student ON StuID = Student.StuID WHERE Student.Lname = 'Smith'
SELECT PetID FROM Has_Pet JOIN Student ON StuID = Student.StuID WHERE Student.Lname = 'Smith'
SELECT COUNT(*), StuID FROM Has_Pet GROUP BY StuID
SELECT StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.StuID GROUP BY T1.fname, T1.sex HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.StuID GROUP BY T1.fname, T1.sex HAVING COUNT(*) > 1
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" AND T3.pet_age = 3
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat" AND T3.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT Continent, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Maker, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM car_names ORDER BY horsepower ASC LIMIT 1
SELECT model FROM car_names ORDER BY horsepower ASC LIMIT 1
SELECT model FROM model_list ORDER BY weight ASC LIMIT 1
SELECT model FROM model_list ORDER BY weight ASC LIMIT 1
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year = 1970
SELECT T1.Make, T1.Production FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T1.Production ASC LIMIT 1
SELECT T1.Maker, T1.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T1.Year ASC LIMIT 1
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Model WHERE T2.Year > 1980
SELECT continent, COUNT(*) FROM continents JOIN car_makers ON continent = country GROUP BY continent
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.Country GROUP BY T1.Continent
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.country = T2.country GROUP BY T1.country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.FullName
SELECT COUNT(*), T1.id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT Accelerate FROM cars_data WHERE Make = 'amc hornet sportabout' AND Model ='sw'
SELECT Accelerate FROM cars_data WHERE Make = 'amc hornet sportabout' AND Model ='sw'
SELECT COUNT(*) FROM car_makers WHERE country = "france"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM model_list WHERE country = 'USA'
SELECT COUNT(*) FROM car_names WHERE Country = "United States"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT MIN(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker, T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model
SELECT T1.Maker, T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model
SELECT T1.country, T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.country, T1.countryid HAVING COUNT(*) >= 1
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country ONCE
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.country = T2.country WHERE T1.continent = "Europe" GROUP BY T1.country HAVING COUNT(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 1 GROUP BY T1.countryname HAVING COUNT(*) >= 3
SELECT MAX(horsepower), make FROM cars_data WHERE cylinders = 3
SELECT T1.Model, T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 3 ORDER BY T1.Make DESC LIMIT 1
SELECT MAX(MPG) FROM cars_data
SELECT model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "volvo"
SELECT AVG(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT model FROM car_names GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_makers WHERE FullName = 'American Motor Company'
SELECT COUNT(*) FROM car_makers WHERE Maker = 'American Motor Company'
SELECT T1.FullName, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.FullName HAVING COUNT(*) > 3
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT model FROM model_list WHERE maker = (SELECT id FROM car_makers WHERE fullname = 'General Motors') OR weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Model <> "General Motors" AND T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight > 3000 AND Weight < 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Model = "Volvo" ORDER BY Accelerate ASC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY COUNT(*) HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM model_list ORDER BY horsepower DESC LIMIT 1
SELECT model FROM model_list ORDER BY horsepower DESC LIMIT 1
SELECT T1.MakeId, T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Horsepower <> (SELECT MIN(T1.Horsepower) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders > 3)
SELECT Make, Model FROM car_names WHERE Cylinders < 4 AND Horsepower < (SELECT MIN(Horsepower) FROM car_names)
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 AND NOT maker = 'Ford Motor Company'
SELECT DISTINCT model FROM model_list WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list WHERE maker = 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) = 1
SELECT CountryName FROM countries WHERE NOT CountryName IN (SELECT Country FROM car_makers)
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING COUNT(*) > 3 OR T1.countryid = 'fiat'
SELECT T1.countryid, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING COUNT(*) > 3 OR T1.countryname = "Fiat"
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "JetBlue Airways"
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE Country = 'Anthony'
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony'
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT COUNT(*) FROM airlines WHERE country = 'USA'
SELECT T1.City, T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'Alton'
SELECT T1.City, T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE Country = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = 'APG'
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "ATO"
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SOURCE = 'Aberdeen' AND DEST = 'Ashley'
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "Aberdeen" AND DESTAIRPORT = "Ashley"
SELECT COUNT(*) FROM flights WHERE Airline = 'JetBlue Airways'
SELECT COUNT(*) FROM flights WHERE Airline = 1
SELECT COUNT(*) FROM flights WHERE Airline = 'United Airlines' AND DestAirport = 'ASY'
SELECT COUNT(*) FROM flights WHERE Airline = "United" AND SOURCE = "ASY"
SELECT COUNT(*) FROM flights WHERE Airline = 'United Airlines' AND SOURCE = 'AHD'
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND SOURCE = 'AHD'
SELECT COUNT(*) FROM flights WHERE Airline = 'United' AND DestAirport = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE Airline = 'United' AND DestAirport = 'Aberdeen'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT SOURCEAIRPORT FROM flights GROUP BY SOURCEAIRPORT ORDER BY COUNT(*) DESC LIMIT 1
SELECT SOURCEAIRPORT FROM FLIGHTS GROUP BY SOURCEAIRPORT ORDER BY COUNT(*) ASC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Abbreviation, T1.Country ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Abbreviation ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = T2.SourceAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Abbreviation = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Abbreviation = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = (SELECT UID FROM airlines WHERE Airline = 'United Airlines')
SELECT FlightNo FROM flights WHERE SOURCEAIRPORT = "APG"
SELECT FlightNo FROM flights WHERE SOURCEAIRPORT = 'APG'
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'
SELECT FlightNo FROM flights WHERE SOURCEAIRPORT = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SOURCEAIRPORT = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen' OR City = 'Abilene')
SELECT COUNT(*) FROM flights WHERE SOURCEAIRPORT = "Aberdeen" OR SOURCEAIRPORT = "Abilene"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) INTERSECT SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT DestAirport FROM flights)
SELECT DISTINCT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirportCode OR T1.AirportCode = T2.DestAirportCode
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT name FROM Employee ORDER BY age ASC
SELECT name FROM Employee ORDER BY age ASC
SELECT COUNT(*), T1.City FROM Employee AS T1 JOIN Employee AS T2 ON T1.City = T2.City GROUP BY T1.City
SELECT COUNT(*), city FROM Employee GROUP BY city
SELECT DISTINCT T1.City FROM Employee AS T1 JOIN Employee AS T2 ON T1.Employee_ID <> T2.Employee_ID WHERE T1.age > 30 AND T1.City = T2.City
SELECT DISTINCT T1.City FROM Employee AS T1 JOIN Employee AS T2 ON T1.Employee_ID <> T2.Employee_ID WHERE T1.age > 30
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT manager_name, District FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM Employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.name ORDER BY SUM(T2.bonus) DESC LIMIT 1
SELECT name FROM Employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation ORDER BY Bonus DESC LIMIT 1)
SELECT name FROM Employee ORDER BY bonus DESC LIMIT 1
SELECT name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT name FROM shop ORDER BY number_employees DESC LIMIT 1
SELECT name FROM shop ORDER BY number_employees DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT T1.number_products, T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_products > 10000
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT T1.Document_Name, T1.Template_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Paragraph_Text LIKE "%w%"
SELECT document_name, template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = 'Robbin CV'
SELECT COUNT(DISTINCT T1.template_type_code) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT COUNT(DISTINCT T1.template_type_code) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'PPT'
SELECT T1.template_id, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT DISTINCT T1.template_id, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id, T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT template_id FROM Templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM Templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT version_number, template_type_code FROM Templates WHERE version_number > 5
SELECT version_number, template_type_code FROM Templates WHERE version_number > 5
SELECT T1.template_type_code, COUNT(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = 'Data base'
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'BK'
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'BK'
SELECT T1.template_type_code, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT T1.template_type_code, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates EXCEPT SELECT template_type_code FROM documents
SELECT template_type_code FROM templates EXCEPT SELECT template_type_code FROM documents
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT DISTINCT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT template_id FROM Templates WHERE template_type_code = (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Presentation")
SELECT template_id FROM Templates WHERE template_type_code = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT paragraph_text FROM paragraphs WHERE paragraph_text = 'Korea '
SELECT paragraph_text FROM paragraphs WHERE paragraph_text LIKE "%Korea %"
SELECT T1.paragraph_id, T1.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_name = 'Welcome to NY'
SELECT paragraph_text FROM paragraphs WHERE document_name = "Customer reviews"
SELECT paragraph_text FROM paragraphs WHERE document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT T1.Document_ID, T1.Document_Name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID
SELECT T1.Document_ID, T1.Document_Name, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Brazil' OR paragraph_text = 'Ireland'
SELECT document_id FROM Paragraphs WHERE paragraph_text = 'Brazil' OR paragraph_text = 'Ireland'
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT name FROM teacher ORDER BY age ASC
SELECT name FROM teacher ORDER BY age ASC
SELECT age, hometown FROM teacher
SELECT age, hometown FROM teacher
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Hometown FROM teacher ORDER BY age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY age ASC LIMIT 1
SELECT COUNT(*), T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown GROUP BY T1.Hometown
SELECT COUNT(*), Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Hometown FROM teacher
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.name, T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course ='math'
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.course ='math'
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <> 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age ASC
SELECT Museum_ID, name FROM museum WHERE num_of_staff = (SELECT MAX(num_of_staff) FROM museum)
SELECT AVG(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > '2010')
SELECT visitor_id, name, age FROM visit GROUP BY visitor_id HAVING COUNT(*) > 1
SELECT visitor_id, name, level_of_membership FROM visit ORDER BY Total_spent DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE num_of_staff <> (SELECT COUNT(*) FROM visitor)
SELECT name, age FROM visitor ORDER BY num_of_ticket DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(T1.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT name FROM visitor WHERE level_of_membership = 1 AND open_year < 2011 INTERSECT SELECT name FROM visitor WHERE level_of_membership = 1 AND open_year > 2009
SELECT COUNT(*) FROM visitor WHERE NOT id IN (SELECT visitor_id FROM visit WHERE museum_id IN (SELECT museum_id FROM museum WHERE open_year > 2010)
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT SUM(match_num) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT COUNT(DISTINCT country_country_code) FROM players
SELECT COUNT(DISTINCT country_country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM matches AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_name HAVING COUNT(*) > 10
SELECT T1.tourney_name FROM matches AS T1 JOIN matches AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_name HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE match_num IN (SELECT match_num FROM matches WHERE YEAR = 2013 INTERSECT SELECT match_num FROM matches WHERE YEAR = 2016)
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM rankings AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name, T1.country_country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM rankings AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name, T1.country_country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.ranking_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name, T1.last_name, T1.ranking_points ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.ranking_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.tours = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN tournaments AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT first_name, AVG(ranking_points) FROM rankings JOIN players ON rankings.player_id = players.player_id GROUP BY first_name
SELECT first_name, AVG(ranking_points) FROM rankings JOIN players ON rankings.player_id = players.player_id GROUP BY first_name
SELECT SUM(ranking_points), first_name FROM rankings JOIN players ON rankings.player_id = players.player_id GROUP BY first_name
SELECT T1.first_name, SUM(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT COUNT(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT COUNT(*) FROM matches WHERE match_num IN (SELECT match_num FROM matches WHERE tourney_name = 'WTA Championships') AND loser_hand = 'R'
SELECT COUNT(*) FROM matches WHERE match_num IN (SELECT match_num FROM matches WHERE tourney_name = 'WTA Championships') AND winner_hand = 'left'
SELECT T1.first_name, T1.country_code, T1.birth_date FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name, T1.country_country_code, T1.birth_date ORDER BY SUM(T2.ranking_points) DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(Toll), MIN(Toll) FROM death
SELECT AVG(injured) FROM death
SELECT note, killed, injured FROM death JOIN ship ON death.caused_by_ship_id = ship.id WHERE ship.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT id, name FROM battle WHERE result = 'Brig'
SELECT id, name FROM battle WHERE result = "10 people killed"
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT RESULT) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT caused_by_ship_id FROM death WHERE injured = 225 AND tonnage = '225')
SELECT name, date FROM battle WHERE lost_in_battle = (SELECT id FROM ship WHERE name = 'Lettice') INTERSECT SELECT name, date FROM battle WHERE lost_in_battle = (SELECT id FROM ship WHERE name = 'HMS Atalanta')
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT caused_by_ship_id FROM death WHERE note = 'English Channel')
SELECT note FROM death WHERE note LIKE "%East%"
SELECT line_1, line_2 FROM Addresses
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM degree_programs
SELECT COUNT(DISTINCT department_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Engineering')
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Engineering')
SELECT section_name, section_description FROM SECTIONS
SELECT section_name, section_description FROM SECTIONS
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) <= 2
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) < 2
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT semester_name, semester_id FROM Student_Enrolment GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name, semester_id FROM Student_Enrolment GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Semesters AS T4 ON T3.semester_id = T4.semester_id GROUP BY T1.first_name, T1.middle_name, T1.last_name HAVING COUNT(*) = 2
SELECT first_name, middle_name, last_name, student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN Semesters AS T3 ON T1.semester_id = T3.semester_id WHERE T3.semester_name = '2014'
SELECT first_name, middle_name, last_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Bachelor'
SELECT first_name, middle_name, last_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_program_id, T1.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, middle_name, last_name, COUNT(*) FROM Student_Enrolment GROUP BY first_name, middle_name, last_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT last_name FROM Students WHERE state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT transcript_date, transcript_id FROM Transcript_Contents GROUP BY transcript_date HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_date HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT T1.address_id, T1.line_1, T1.line_2, T1.line_3, T1.city, T1.zip_postcode, T1.state_province_county, T1.country, T1.other_address_details FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM Addresses ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC
SELECT COUNT(*) FROM Transcripts WHERE transcript_date > "2017-12-31"
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(*), T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.enrollment_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id JOIN Student_Enrolment_Courses AS T3 ON T2.student_course_id = T3.student_course_id JOIN Courses AS T4 ON T3.course_id = T4.course_id GROUP BY T4.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts GROUP BY transcript_date ORDER BY COUNT(*) ASC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts GROUP BY transcript_date ORDER BY COUNT(*) ASC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE student_id IN (SELECT student_id FROM Students WHERE first_name = 'Master' INTERSECT SELECT student_id FROM Students WHERE first_name = 'Bachelor')
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Masters') INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelors')
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT other_student_details FROM Students ORDER BY last_name DESC
SELECT section_name FROM SECTIONS WHERE SECTION_NAME = 'h.'
SELECT section_description FROM SECTIONS WHERE SECTION_NAME = 'h'
SELECT first_name FROM Students WHERE country = 'Haiti' OR cell_mobile_number = '09700166582'
SELECT first_name FROM Students WHERE state_province_county = 'Haiti' OR cell_mobile_number = '09700166582'
SELECT title FROM Cartoon ORDER BY title
SELECT title FROM Cartoon ORDER BY title
SELECT * FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE directed_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE directed_by = "Joseph Kuhr"
SELECT T1.title, T1.directed_by FROM Cartoon AS T1 JOIN Cartoon AS T2 ON T1.production_code = T2.production_code ORDER BY T1.original_air_date
SELECT T1.title, T1.directed_by FROM Cartoon AS T1 JOIN Cartoon AS T2 ON T1.production_code = T2.production_code ORDER BY T1.original_air_date
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vti"
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Viet"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), CONTENT FROM TV_Channel GROUP BY CONTENT
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_Channel WHERE series_name = 'Sky Radio'
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "english"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT COUNT(*), LANGUAGE FROM TV_Channel GROUP BY LANGUAGE
SELECT T1.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.production_code = T2.id WHERE T2.channel = "Sky Radio"
SELECT T1.title FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.production_code = T2.id WHERE T2.channel = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_Channel ORDER BY hight_definition_TV DESC LIMIT 1
SELECT package_option, series_name FROM TV_Channel WHERE hight_definition_TV = 'Yes'
SELECT T1.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Todd Casey"
SELECT T1.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Todd Casey"
SELECT DISTINCT T1.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by <> 'Todd Casey'
SELECT DISTINCT T1.country FROM Cartoon AS T1 JOIN Cartoon AS T2 ON T1.production_code = T2.production_code WHERE T1.written_by <> 'Todd Casey'
SELECT T1.series_name, T1.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT id FROM TV_Channel GROUP BY Country Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV Hight_definition_TV H
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel EXCEPT SELECT T1.id FROM Cartoon AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.Directed_by = "Ben Jones"
SELECT id FROM TV_Channel EXCEPT SELECT Channel FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT COUNT(*) FROMpoker_player
SELECT COUNT(*) FROMpoker_player
SELECT earnings FROMpoker_player ORDER BY earnings DESC
SELECT earnings FROMpoker_player ORDER BY earnings DESC
SELECT Final_Table_Made, Best_Finish FROMpoker_player
SELECT Final_Table_Made, Best_Finish FROMpoker_player
SELECT AVG(Earnings) FROMpoker_player
SELECT AVG(Earnings) FROMpoker_player
SELECT Money_Rank FROMpoker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROMpoker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(Final_Table_Made) FROMpoker_player WHERE Earnings < 20000
SELECT MAX(Final_Table_Made) FROMpoker_player WHERE Earnings < 20000
SELECT name FROM people WHERE people_id IN (SELECT people_id FROMpoker_player)
SELECT name FROM people WHERE people_id IN (SELECT people_id FROMpoker_player)
SELECT name FROM people WHERE earnings > 30000
SELECT name FROM people WHERE people_id IN (SELECT people_id FROMpoker_player WHERE earnings > 3000)
SELECT name FROM people ORDER BY final_table_made ASC
SELECT T1.Name FROM people AS T1 JOINpoker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC
SELECT T1.birth_date FROM people AS T1 JOINpoker_player AS T2 ON T1.people_ID = T2.people_ID ORDER BY T2.Earnings ASC LIMIT 1
SELECT birth_date FROM people JOINpoker_player ON people_id = people_id ORDER BY earnings ASC LIMIT 1
SELECT Money_Rank FROMpoker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROMpoker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM people WHERE Height > 200 GROUP BY Nationality
SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "USA" INTERSECT SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "Canada" INTERSECT SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "Mexico" INTERSECT SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "Argentina" INTERSECT SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "Brazil" INTERSECT SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "Chile" INTERSECT SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "Colombia" INTERSECT SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "Ecuador" INTERSECT SELECT AVG(Earnings) FROM people WHERE Height > 200 AND Nationality = "El Salvador" INTERSECT SELECT AVG(Earnings)
SELECT name FROM people ORDER BY earnings DESC
SELECT name FROM people ORDER BY earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT name, birth_date FROM people ORDER BY name ASC
SELECT name, birth_date FROM people ORDER BY name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT name FROM people WHERE nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Poker'
SELECT name FROM people WHERE NOT people_id IN (SELECT people_id FROMpoker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM AREA_CODE_STATE ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM VOTES WHERE contestant_name = 'Tabatha Gehling'
SELECT area_code FROM VOTES WHERE contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Tabatha Gehling') INTERSECT SELECT area_code FROM VOTES WHERE contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Kelly Clauss')
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT name FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE indepyear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM countrylanguage WHERE IsOfficial = 'T'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Carribean'
SELECT Continent FROM country WHERE LocalName = "Anguilla"
SELECT Continent FROM country WHERE Code = "ANG"
SELECT Region FROM city WHERE name = 'Kabul'
SELECT Region FROM country WHERE Capital = 114
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Aruba' ORDER BY T1.Percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Aruba'
SELECT Population, LifeExpectancy FROM country WHERE Code = 'BRA'
SELECT Population, LifeExpectancy FROM country WHERE name = 'Brazil'
SELECT Region, Population FROM country WHERE Code = "ANG"
SELECT Region, Population FROM country WHERE Code = "ANG"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT COUNT(*) FROM city WHERE District = 'Gelderland'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(Population) FROM country WHERE Region = 'US Territory'
SELECT AVG(GNP), SUM(Population) FROM country WHERE Region = 'US'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(*) FROM country WHERE Continent = 'Africa' AND GovernmentForm <> 'Constitutional Monarchy'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT SUM(Percentage) FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW' AND Language = 'Arabic'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AF' AND IsOfficial = 'T'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AF' AND IsOfficial = 'T'
SELECT name FROM country ORDER BY SUM(percentage) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY SUM(T2.Percentage) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Dutch' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English'
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'english' OR Language = 'dutch'
SELECT name FROM countrylanguage WHERE isofficial = 'T' INTERSECT SELECT name FROM countrylanguage WHERE isofficial = 'T'
SELECT name FROM countrylanguage WHERE isofficial = 'T' INTERSECT SELECT name FROM countrylanguage WHERE isofficial = 'T'
SELECT name FROM country WHERE isofficial = 'T' INTERSECT SELECT name FROM country WHERE isofficial = 'T'
SELECT name FROM country WHERE isofficial = 'T' INTERSECT SELECT name FROM country WHERE isofficial = 'T'
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE Language = 'Chinese'
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Chinese' AND Continent = 'Asia'
SELECT Region FROM countrylanguage WHERE Language = 'english' OR Language = 'dutch'
SELECT Region FROM countrylanguage WHERE Language = 'Dutch' OR Language = 'English'
SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'T' OR IsOfficial = 'F'
SELECT CountryCode FROM countrylanguage WHERE Language = 'english' OR Language = 'dutch'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' ORDER BY T1.Percentage DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' ORDER BY T2.Percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic'
SELECT name FROM city WHERE countrycode = 'USA' AND name <> "New York" ORDER BY population DESC LIMIT 1
SELECT name FROM city ORDER BY population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'english')
SELECT AVG(LifeExpectancy) FROM country WHERE Language <> 'English' AND IsOfficial = 'F'
SELECT SUM(Population) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'english')
SELECT COUNT(*) FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'english')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = 'Beatrix'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = 'Beatrix'
SELECT SUM(T1.Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 AND T1.IsOfficial = 'T'
SELECT COUNT(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 AND T1.IsOfficial = 'T'
SELECT name FROM country WHERE surfacearea > (SELECT surfacearea FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT surfacearea FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT name FROM country WHERE continent = 'Asia' GROUP BY name HAVING COUNT(*) = 1)
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT MAX(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT MAX(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT SUM(population) FROM country WHERE continent = 'Africa')
SELECT CountryCode FROM countrylanguage WHERE Language <> 'english'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'english'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'english'
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'english') AND GovernmentForm <> 'Republic'
SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'english') AND NOT Code IN (SELECT CountryCode FROM country WHERE GovernmentForm = 'Republic')
SELECT name FROM city WHERE countrycode = 'EU' EXCEPT SELECT name FROM countrylanguage WHERE countrycode = 'EU' AND language = 'english'
SELECT name FROM city WHERE countrycode = 'EU' EXCEPT SELECT name FROM countrylanguage WHERE countrycode = 'EU' AND language = 'english'
SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' AND T2.Language = 'Chinese'
SELECT name FROM city WHERE continent = 'Asia' AND countrylanguage.isofficial = 'T'
SELECT name, indepyear, surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name, indepyear, surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT Population, name, headofstate FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name, population, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) > 2
SELECT COUNT(*), T1.District FROM city AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Population > (SELECT AVG(Population) FROM city)
SELECT COUNT(*), T1.District FROM city AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Population > (SELECT AVG(Population) FROM city)
SELECT T1.GovernmentForm, SUM(T1.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'english' AND T1.LifeExpectancy > 72 GROUP BY T1.GovernmentForm
SELECT GovernorForm, SUM(Population) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernorForm
SELECT continent, AVG(lifeexpectancy), SUM(population) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT continent, SUM(Population), AVG(LifeExpectancy) FROM country WHERE LifeExpectancy < 72 GROUP BY continent
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM city ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode, T1.Language, SUM(T1.Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode, T1.Language ORDER BY SUM(T1.Percentage) DESC LIMIT 1
SELECT T1.Code, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY SUM(T2.Percentage) DESC
SELECT SUM(T1.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish' ORDER BY T2.Percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'T'
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality <> "USA"
SELECT name FROM conductor WHERE nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live"
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor WHERE YEAR_OF_WORK = (SELECT MAX(YEAR_OF_WORK) FROM conductor)
SELECT name FROM conductor WHERE YEAR_OF_WORK = (SELECT MAX(YEAR_OF_WORK) FROM conductor)
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T1.Nationality, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM orchestra GROUP BY conductor_id HAVING COUNT(*) > 1)
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM orchestra GROUP BY conductor_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM conductor WHERE nationality = "USA" AND YEAR_OF_WORK > 2008
SELECT name FROM conductor WHERE nationality = "USA" AND YEAR_OF_WORK > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT COUNT(*), T1.Record_Company FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Record_Company
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT COUNT(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE major_record_format = 'CD' OR major_record_format = 'DVD'
SELECT YEAR_OF_FOUNDED FROM orchestra WHERE YEAR_OF_FOUNDED IN (SELECT YEAR_OF_FOUNDED FROM performance GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*) > 1)
SELECT YEAR_OF_FOUNDED FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance GROUP BY orchestra_id HAVING COUNT(*) > 1)
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
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(*), student_id FROM Friend GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler JOIN Friend ON student_id = id GROUP BY name
SELECT name, COUNT(*) FROM Highschooler JOIN Friend ON student_id = id GROUP BY name
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT name FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT name FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT student_id FROM Friend INTERSECT SELECT liked_id FROM Likes
SELECT student_id FROM Likes JOIN Friend ON student_id = friend_id
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Highschooler WHERE id IN (SELECT liked_id FROM Likes)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend INTERSECT SELECT liked_id FROM Likes)
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT T1.name FROM Friend AS T1 JOIN Friend AS T2 ON T1.student_id = T2.friend_id GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT COUNT(*) FROM Likes WHERE liked_id = (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT DISTINCT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id INTERSECT SELECT DISTINCT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id
SELECT DISTINCT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT DISTINCT dog_id FROM Treatments)
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT DISTINCT dog_id FROM Treatments)
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' OR COUNT(*) > 2
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Treatments AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code JOIN Owners AS T4 ON T1.owner_id = T4.owner_id WHERE T4.state = 'Indiana' OR COUNT(*) > 2
SELECT T1.name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000
SELECT T1.name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Charges AS T3 ON T1.treatment_id = T3.charge_id WHERE T3.charge_type = 'Treatment' AND T3.charge_amount > 1000
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM owners EXCEPT SELECT name FROM Dogs
SELECT first_name FROM owners EXCEPT SELECT first_name FROM dogs
SELECT T1.professional_id, T1.role_code, T1.email_address FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.professional_id HAVING COUNT(*) = 0
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE abandoned_yn = 'N')
SELECT OWNER_ID, first_name, last_name FROM Dogs GROUP BY OWNER_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT OWNER_ID, first_name, last_name FROM Dogs GROUP BY OWNER_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Treatments AS T1 JOIN Treatments AS T2 ON T1.treatment_id <> T2.treatment_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Treatments AS T1 JOIN Treatments AS T2 ON T1.treatment_id <> T2.treatment_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T1.cost_of_treatment) DESC LIMIT 1
SELECT t1.treatment_type_description FROM Treatments AS t1 JOIN Treatment_Types AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t1.cost_of_treatment ASC LIMIT 1
SELECT t1.treatment_type_description FROM Treatments AS t1 JOIN Treatment_Types AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY SUM(t1.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T2.charge_id = T3.charge_id GROUP BY T1.owner_id ORDER BY SUM(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Dogs AS T1 JOIN Charges AS T2 ON T1.dog_id = T2.charge_id GROUP BY T1.owner_id ORDER BY SUM(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Treatments AS T1 JOIN Treatments AS T2 ON T1.treatment_id <> T2.treatment_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Treatments AS T1 JOIN Treatments AS T2 ON T1.treatment_id <> T2.treatment_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT first_name, last_name FROM professionals JOIN treatments ON professionals.professional_id = treatments.professional_id WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT first_name, last_name FROM professionals WHERE role_code = 'T' AND cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T1.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T1.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.date_of_treatment FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived, T1.date_departed FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT last_name FROM owners ORDER BY age ASC LIMIT 1
SELECT last_name FROM Dogs ORDER BY age ASC LIMIT 1
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "T1"
SELECT COUNT(*) FROM Treatments WHERE treatment_type_code = "T1"
SELECT role_code, street, city, state FROM professionals WHERE city LIKE "%West%"
SELECT role_code, street, city, state FROM professionals WHERE city LIKE "%West%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE abandoned_yn = 'N'
SELECT COUNT(*) FROM Dogs WHERE abandoned_yn = 'N'
SELECT COUNT(*) FROM owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM dogs)
SELECT COUNT(*) FROM owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM dogs)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE abandoned_yn = 'N')
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT DISTINCT T1.breed_name, T2.size_description FROM Treatment_Types AS T1 JOIN Sizes AS T2 ON T1.treatment_type_code = T2.size_code
SELECT DISTINCT T1.breed_code, T1.size_code FROM Dogs AS T1 JOIN Dogs AS T2 ON T1.dog_id <> T2.dog_id
SELECT T1.first_name, T1.role_code, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.role_code, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name FROM singer ORDER BY net_worth_millions ASC
SELECT name FROM singer ORDER BY net_worth_millions ASC
SELECT birth_year, citizenship FROM singer
SELECT birth_year, citizenship FROM singer
SELECT name FROM singer WHERE citizenship <> "France"
SELECT name FROM singer WHERE citizenship <> 'French'
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1
SELECT name FROM singer ORDER BY net_worth_millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*), Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T1.title, T2.name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT T1.title, T2.name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 30000
SELECT DISTINCT name FROM singer WHERE sales > 30000
SELECT name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song GROUP BY singer_id HAVING COUNT(*) > 1)
SELECT name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song GROUP BY singer_id HAVING COUNT(*) > 1)
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE birth_year > 1955
SELECT Citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE birth_year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Other_Available_Features WHERE feature_name = 'AirCon'
SELECT property_type_description FROM Properties WHERE property_type_code = "T1"
SELECT property_name FROM Properties WHERE property_type_code = 'HOUSE' OR property_type_code = 'APARTMENT' AND room_count > 1
