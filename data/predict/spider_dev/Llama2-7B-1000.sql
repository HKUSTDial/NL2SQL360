SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age DESC LIMIT 1
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T2.Name, T2.Song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.age ASC LIMIT 1
SELECT name, song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE Age > 20
SELECT DISTINCT T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.snger_ID = T2.Singer_ID WHERE T2.age > 20
SELECT country, COUNT(*) FROM singer_in_concert GROUP BY country
SELECT country, COUNT(*) FROM singer_in_concert GROUP BY country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 1000
SELECT LOCATION, name FROM station WHERE capacity BETWEEN 5000 AND 1000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY AVG(capacity) DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY AVG(capacity) DESC LIMIT 1
SELECT year FROM concert WHERE year = "2014" OR year = "2015"
SELECT year FROM concert WHERE year = "2014" OR year = "2015"
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID
SELECT T1.Stadium_ID, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.concert_ID
SELECT T1.name, T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadiy_id = T2.stadium_id WHERE T2.year = "2014" OR T2.year > "2014" ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name, T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_ID = T2.Stadium_ID WHERE T1.year > 2013 GROUP BY T1.stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM concert GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM concert ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT T1.stadium_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM singer_in_concert)
SELECT country FROM singer_in_concert WHERE Age > 40 INTERSECT SELECT country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE year <> "2014"
SELECT DISTINCT T1.name FROM stadium AS T1 JOIN singer_in_concert AS T2 ON T1.stadium_ID = T2.stadiy_ID WHERE T2.year = "2014"
SELECT T1.concert_name, T2.singer_in_concert.singer_id, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id
SELECT T2.Concert_Name, T2.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.concert_ID
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.concert_ID
SELECT T2.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T2.Year = "2014"
SELECT T2.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = "2014"
SELECT T2.Name, T2.Country FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_Name LIKE 'Hey%'
SELECT T2.Name, T2.Country FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Song_Name LIKE 'Hey%'
SELECT T1.name, T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadiy_id = T2.stadium_id WHERE T2.year = "2014" INTERSECT SELECT T1.name, T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadiy_id = T2.stadium_id WHERE T2.year = "2015"
SELECT T1.location, T1.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadiy_id = T2.stadium_id WHERE T2.year = "2014" INTERSECT SELECT T1.location, T1.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadiy_id = T2.stadium_id WHERE T2.year = "2015"
SELECT COUNT(*) FROM concert WHERE T1.Stadium_ID = (SELECT T2.Stadium_ID FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T1.Highest DESC LIMIT 1)
SELECT T1.concert_name, T2.Stadium_ID FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T2.capacity DESC LIMIT 1
SELECT pet_age FROM Pets WHERE weight > 10
SELECT pet_age FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_age FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT MAX(weight), pet_age FROM Pets GROUP BY pet_age ORDER BY MAX(weight) DESC LIMIT 1
SELECT MAX(weight), PetType FROM Pets GROUP BY PetType
SELECT COUNT(*) FROM Has_Pet WHERE age > 20
SELECT COUNT(*) FROM Has_Pet WHERE pet_age > 20
SELECT COUNT(*) FROM Has_Pet WHERE Sex = 'F' AND PetType = 'Dog'
SELECT COUNT(*) FROM Has_Pet WHERE Sex = 'F' AND PetType = 'Dog'
SELECT COUNT(DISTINCT pet_age) FROM Pets
SELECT COUNT(DISTINCT pet_age) FROM Pets
SELECT Fname FROM Student WHERE StuID IN (SELECT PetID FROM Has_Pet WHERE PetType = "Cat" OR PetType = "Dog") ORDER BY pet_age ASC LIMIT 1)
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 OR PetID = 2)
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID = 2 AND PetType = "Dog") ORDER BY pet_age ASC LIMIT 1)
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" INTERSECT SELECT PetID FROM Pets WHERE PetType = "Dog")
SELECT major, LT(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = "Cat")
SELECT major, LT(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = "Cat")
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1)
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1)
SELECT Fname, Lname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = "Cat") EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = 2)
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = "Cat") EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = 2 AND PetType = "Dog")
SELECT pet_age, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_age, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pet_age
SELECT AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY pet_age
SELECT AVG(weight) FROM Pets GROUP BY PetType
SELECT AVG(weight) FROM Pets GROUP BY PetType
SELECT Fname, Lname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet) ORDER BY Age ASC LIMIT 1
SELECT Fname, Lname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT PetID FROM Has_Pet WHERE LName = 'Smith'
SELECT PetID FROM Has_Pet WHERE LName = 'Smith'
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING COUNT(*) > 1
SELECT Fname, sex FROM Student GROUP BY StuID HAVING COUNT(*) > 1
SELECT Lname FROM Student WHERE StuID IN (SELECT PetID FROM Has_Pet WHERE PetID = 3 AND pet_age = 3)
SELECT Lname FROM Student WHERE StuID IN (SELECT PetID FROM Has_Pet WHERE PetID = 3) AND pet_age = 3)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT PetID FROM Has_Pet)
SELECT COUNT(DISTINCT continent) FROM countries
SELECT COUNT(DISTINCT continent) FROM countries
SELECT T1.Continent, T2.Country, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent GROUP BY T2.Continent
SELECT continent, COUNT(*) FROM countries GROUP BY continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.Make, T2.Make, COUNT(*) FROM car_names AS T1 JOIN car_data AS T2 ON T1.Make = T2.Make GROUP BY T2.Make
SELECT T1.FullName, T2.Make, COUNT(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Make = T2.Make GROUP BY T2.Make
SELECT Model FROM model_list ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM model_list ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Make FROM car_names WHERE year = 1970
SELECT DISTINCT T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Make WHERE T2.Year = 1970
SELECT T1.Make, T2.ProductionTime FROM cars_data AS T1 JOIN cars_names AS T2 ON T1.Make = T2.Make ORDER BY T2.ProductionTime ASC LIMIT 1
SELECT T1.Make, T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Make ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT continent, COUNT(*) FROM car_makers GROUP BY continent
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Continent GROUP BY T2.Make
SELECT country FROM car_makers GROUP BY make ORDER BY COUNT(*) DESC LIMIT 1
SELECT country FROM car_makers GROUP BY make ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Make, COUNT(*) FROM car_names AS T1 JOIN car_data AS T2 ON T1.Make = T2.Make GROUP BY T2.Make
SELECT Maker, COUNT(*), T1.Make, T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make GROUP BY T2.Make
SELECT Accelerate FROM car_names WHERE Make = "amc" AND Model = "Hornet" AND Make = "Sportabout"
SELECT Accelerate FROM cars_data WHERE Make = "amc" AND Model = "Hornet" AND T1.T2.T3.T4.T5.T6.T7.T8.T9.T10.T11.T12.T13.T14.T15.T16.T17.T18.T19.T20.T21.T22.T23.T24.T25.T26.T27.T28.T29.T30.T31.T32.T33.T34.T35.T36.T37.T38.T39.T40.T41.T42.T43.T44.T45.T46.T47.T48.T49.T50.T51.T52.T53.T54.T55.T56.T57.T58.T59.T60.T6
SELECT COUNT(DISTINCT T1.Make) FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make WHERE T2.Country = "France"
SELECT COUNT(DISTINCT Maker) FROM car_names WHERE Make = "France"
SELECT COUNT(*) FROM model_list WHERE Make = "USA"
SELECT COUNT(*) FROM car_names WHERE Make = "USA"
SELECT AVG(mpg) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT W FROM cars_data WHERE Cylinders = 8 AND year = 1974 ORDER BY W ASC LIMIT 1
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND year = 1974
SELECT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.Country, T2.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make WHERE T2.Id IN (SELECT T1.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make WHERE T2.Id IN (SELECT T1.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make WHERE T2.Id IN (SELECT T1.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make WHERE T2.Id IN (SELECT T1.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make WHERE T2.Id IN (SELECT T1.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make WHERE T2.Id IN (SELECT T1.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.
SELECT T1.Country, T2.Make FROM car_names AS T1 JOIN car_data AS T2 ON T1.Make = T2.Make JOIN car_makers AS T3 ON T2.Make = T3.Make WHERE T3.Maker = "Tesla"
SELECT Horsepower > 150 FROM cars_data
SELECT Horsepower > 150 FROM cars_data
SELECT AVG(Weight) FROM cars_data GROUP BY year
SELECT AVG(Weight), AVG(Year) FROM cars_data GROUP BY AVG(Year)
SELECT country FROM car_makers WHERE country = "Europe" GROUP BY country HAVING COUNT(*) >= 3
SELECT country FROM car_makers GROUP BY make HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM car_names WHERE Cylinders = 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3
SELECT Model FROM car_names ORDER BY Mileage DESC LIMIT 1
SELECT Model FROM model_list ORDER BY Mpg DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE year < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE year < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT AVG(Edispl) FROM car_names WHERE Make = "Volvo"
SELECT MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate) FROM cylinders
SELECT model FROM car_names GROUP BY make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE year = 1980
SELECT year, COUNT(*) FROM cars_data WHERE year = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = "American Motor Company"
SELECT COUNT(*) FROM model_list WHERE Maker = 1
SELECT T1.Make, T1.MakeId FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.MakeId GROUP BY T2.MakeId HAVING COUNT(*) > 3
SELECT T1.Make, T1.MakeId FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T2.MakeId HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Make JOIN car_names AS T3 ON T2.Make = T3.Make WHERE T3.Weight > 350
SELECT Model FROM model_list WHERE Maker = "General Motors" OR WEIGHT > 350
SELECT year FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT year FROM cars_data WHERE weight < 400 INTERSECT SELECT year FROM cars_data WHERE weight > 300
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Make = T2.Make WHERE T2.Model = "Volvo" ORDER BY T2.Edispl ASC LIMIT 1
SELECT T1.Cylinders FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Make WHERE T2.Year = (SELECT year FROM car_names ORDER BY T2.Accelerate ASC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT T1.Year, T2.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Make = T2.Make WHERE T2.Horsepower > (SELECT MAX(T2.Horsepower) FROM car_names)
SELECT COUNT(*) FROM car_names GROUP BY Make HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_names GROUP BY Make HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Cylinders FROM cars_data WHERE Edispl > 6
SELECT Model FROM car_names WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM car_names ORDER BY Horsepower DESC LIMIT 4
SELECT T1.Make, T1.MakeName FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Make = T2.Make JOIN continents AS T3 ON T2.Make = T3.Continent WHERE T3.Continent = (SELECT Continent FROM countries ORDER BY Edispl ASC LIMIT 3)
SELECT Make, Model FROM cars_data WHERE Edispl < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR year < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR year < 1980
SELECT Model FROM model_list WHERE Maker <> 'Ford Motor Company' AND Weight < 350
SELECT Model FROM model_list WHERE Maker <> "Ford" AND Weight < 350
SELECT country FROM countries WHERE NOT id IN (SELECT makeid FROM car_names)
SELECT country FROM countries WHERE NOT makeid IN (SELECT MakeId FROM car_names)
SELECT T1.Make, T2.Make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Make = T2.Make GROUP BY T2.Make HAVING COUNT(*) > 3
SELECT T1.Make, T2.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Make GROUP BY T2.Make HAVING COUNT(*) > 3
SELECT T1.country, T2.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.make = T2.make WHERE T2.edispl = 'Fiat' GROUP BY T2.make HAVING COUNT(*) > 3
SELECT T1.Country, T2.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Make WHERE T2.Edispl > 3 INTERSECT SELECT T1.Country, T2.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Make WHERE T2.Edispl = 3
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE T1.uid = 11
SELECT Abbreviation FROM Airlines WHERE Airline = "JetBlue Airways"
SELECT countryAbbrev FROM airports WHERE airportName = "Tampa" AND country = "USA" AND airportCode = "Tampa" AND T1.country = "USA"
SELECT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.uid = T2.AirportCode WHERE T2.Country = "USA"
SELECT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.uid = T2.AirportCode WHERE T2.Country = "USA"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT airportcode, airportname FROM airports WHERE city = "Anthony"
SELECT COUNT(DISTINCT UID) FROM airlines
SELECT COUNT(DISTINCT UID) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM Flights
SELECT COUNT(*) FROM Flights
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.uid = T2.AirportCode WHERE T2.CountryAbbrev = 'UAL'
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.uid = T2.AirportCode WHERE T2.countryAbbrev = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT city, country FROM airports WHERE airportcode = "Alton"
SELECT city, country FROM airports WHERE airportcode = "Alton"
SELECT airport name FROM airports WHERE airport code = 'AKO'
SELECT airportName FROM airports WHERE airportCode = 'AKO'
SELECT airport name FROM airports WHERE city = "Aberdeen"
SELECT airport name FROM airports WHERE city = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "APG"
SELECT COUNT(*) FROM Flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM Flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM Flights WHERE Airline = "JetBlue Airways"
SELECT COUNT(*) FROM Flights WHERE Airline = 11
SELECT COUNT(*) FROM Flights WHERE Airline = 111 AND DestAirport = "ASY"
SELECT COUNT(*) FROM Flights WHERE Airline = 11 AND SourceAirport = "ASY"
SELECT COUNT(*) FROM Flights WHERE Airline = 11 AND SourceAirport = "AHD"
SELECT COUNT(*) FROM Flights WHERE Airline = 11 AND SourceAirport = "AHD"
SELECT COUNT(*) FROM Flights WHERE Airline = 11 AND DestAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE Airline = 11 AND DestAirport = "Aberdeen"
SELECT city FROM airports ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports ORDER BY COUNT(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY COUNT(*) ASC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.countryAbbrev, T1.abbreviation FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.country, T1.abbrev FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Ahd"
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Ahd"
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "AHD"
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = "Azerbaijan" AND T2.AirportName = "AHD"
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "APG" INTERSECT SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "CVO"
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "APG" INTERSECT SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "CVO"
SELECT DISTINCT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "CVO" EXCEPT SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "APG"
SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Covington" INTERSECT SELECT T1.Airline FROM Flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Apache Junction"
SELECT T1.Airline FROM Flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING COUNT(*) >= 10
SELECT T1.Airline FROM Flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING COUNT(*) >= 10
SELECT T1.Airline FROM Flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING COUNT(*) < 200
SELECT T1.Airline FROM Flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING COUNT(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flights WHERE Airline = 1
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE DestAirport = "Aberdeen"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT COUNT(*) FROM Flights WHERE SourceAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT airport FROM airports WHERE NOT airportcode IN (SELECT airportcode FROM flights)
SELECT airports FROM airports WHERE NOT airportCode IN (SELECT SourceAirport, DestAirport FROM flights)
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT name FROM Employee ORDER BY age ASC
SELECT name FROM Employee ORDER BY age ASC
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city FROM Employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM Employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT DISTINCT district, COUNT(*) FROM shop GROUP BY district
SELECT DISTINCT district, COUNT(*) FROM shop GROUP BY district
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT MIN(number_products), MAX(number_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT AVG(number_products) FROM shop)
SELECT T1.Employee_ID FROM evaluation AS T1 JOIN Employee AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Employee_ID FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT T1.Employee_ID FROM hiring AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T1.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT T1.shop_id, T2.employee_id, T2.start_from FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY T2.start_from
SELECT T1.number_products, T2.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT T1.Start_from, T2.Employee_ID FROM hiring AS T1 JOIN Employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT T1.Start_from, T2.Employee_ID FROM hiring AS T1 JOIN Employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT DISTINCT district FROM shop GROUP BY district HAVING COUNT(*) < 3000 INTERSECT SELECT DISTINCT district FROM shop GROUP BY district HAVING COUNT(*) > 1000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 1000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT document_id, document_name, document_description FROM documents
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE 'w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE "%w%"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT T1.Template_ID) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT COUNT(DISTINCT T1.Template_ID) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT COUNT(*) FROM documents WHERE Template_ID = (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "PPT"
SELECT T1.Template_ID, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID
SELECT T1.Template_ID, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID
SELECT T1.Template_ID, T2.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID, T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID HAVING COUNT(*) > 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Document_ID)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT T1.Template_ID, T1.Version_Number, T2.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID
SELECT T1.Template_ID, T2.Version_Number, T3.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID JOIN Documents AS T3 ON T2.Template_ID = T3.Document_ID
SELECT DISTINCT (Template_Type_Code) FROM Templates
SELECT DISTINCT (Template_Type_Code) FROM Templates
SELECT T2.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PP" OR T2.Template_Type_Code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT T2.Version_Number, T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code > 5
SELECT T2.Version_Number, T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code > 5
SELECT T2.Template_Type_Code, COUNT(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Code
SELECT T2.Template_Type_Code, COUNT(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT Template_Type_Code FROM Ref_Template_Types GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT MIN(Version_Number), Template_Type_Code FROM Templates ORDER BY Version_Number ASC LIMIT 1
SELECT T1.Version_Number, T2.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID ORDER BY T2.Template_Type_Description ASC LIMIT 1
SELECT Template_Type_Code FROM Templates WHERE Document_Name = "Data base"
SELECT T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name = "Data base"
SELECT Document_Name FROM documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "BK")
SELECT Document_Name FROM documents WHERE Template_ID = (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "BK")
SELECT T2.Template_Type_Code, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Template_Type_Code, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT (Template_Type_Code) FROM Templates WHERE NOT Template_ID IN (SELECT Document_ID)
SELECT Template_Type_Code FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.Template_Type_Description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Document_ID = T2.Template_ID
SELECT DISTINCT T1.Template_Description FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Template_ID FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation"
SELECT T2.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT COUNT(*) FROM Documents WHERE Document_Name = 'Summer Show'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE 'Korea%'
SELECT Paragraph_ID, Paragraph_Text FROM Documents WHERE Document_Name = 'Welcome to NY'
SELECT T1.Paragraph_ID, T1.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = 'Welcome to NY'
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM documents WHERE Document_Name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, COUNT(*) FROM paragraphs ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM documents GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM documents GROUP BY document_id
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM paragraphs ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs ORDER BY COUNT(*) ASC LIMIT 1
SELECT document_id FROM documents ORDER BY COUNT(*) ASC LIMIT 1
SELECT Document_ID FROM Paragraphs WHERE Paragraph_ID IN (1, 2)
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Paragraph_ID FROM Paragraphs GROUP BY Paragraph_ID HAVING COUNT(*) BETWEEN 1 AND 2)
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = "Brazil" INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = "Ireland"
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text LIKE 'Brazil' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text LIKE 'Ireland'
SELECT COUNT(*) FROM Teacher
SELECT COUNT(*) FROM Teacher
SELECT name FROM teacher ORDER BY age ASC
SELECT name FROM teacher ORDER BY age ASC
SELECT Age, Hometown FROM Teacher
SELECT Age, Hometown FROM Teacher
SELECT name FROM teacher WHERE hometown <> "Little Lever Urban District"
SELECT name FROM teacher WHERE hometown <> "Little Lever Urban District"
SELECT name FROM teacher WHERE age = "32" OR age = "33"
SELECT name FROM teacher WHERE age = "32" OR age = "33"
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Age FROM Teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown, COUNT(*) FROM Teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM Teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Age
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID ORDER BY T1.Grade
SELECT T2.Name, T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name, T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT name FROM teacher WHERE course_id = (SELECT course_id FROM course_arrange WHERE grade = 1) WHERE course = 'Math'
SELECT name FROM teacher WHERE course_arrange.Teacher_ID IN (SELECT course_id FROM course_arrange WHERE grade = 1) WHERE course = "Math")
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT name FROM teacher WHERE NOT teacher_id IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE NOT teacher_id IN (SELECT t1.teacher_id FROM course_arrange AS t1 JOIN teacher AS t2 ON t1.teacher_id = t2.teacher_id)
SELECT COUNT(*) FROM Visitor WHERE Age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership
SELECT AVG(age) FROM Visitor WHERE Level_of_membership < 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visitor AS T2 ON T1.Museum_ID = T2.Museum_ID ORDER BY T2.Level_of_membership DESC LIMIT 1
SELECT AVG(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE Num_of_Staff > (SELECT MIN(num_of_staff) FROM museum WHERE open_year > "2010"
SELECT T1.ID, T1.Name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.Visitor_ID GROUP BY T2.Visitor_ID HAVING COUNT(*) > 1
SELECT T1.ID, T1.Name, T1.Level_of_membership FROM Visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.Visitor_ID ORDER BY Total_spent DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T2.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.num_of_Ticket = 0
SELECT T1.Name, T1.age FROM Visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.Visitor_ID ORDER BY Total_spent DESC LIMIT 1
SELECT AVG(num_of_ticket), MAX(num_of_ticket) FROM visit
SELECT Total_spent FROM Visitor WHERE Level_of_membership = 1
SELECT T2.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.Visitor_ID WHERE T1.Level_of_membership < 2 AND T2.Total_spent > 10
SELECT COUNT(*) FROM Visitor WHERE NOT Visitor_ID IN (SELECT Museum_ID FROM visit WHERE Open_Year > 2010)
SELECT open_year FROM museum WHERE open_year BETWEEN "2013" AND "2008"
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA" ORDER BY birth_date
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT AVG(winner_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches ORDER BY loser_rank_points DESC LIMIT 1
SELECT DISTINCT country_code FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT T1.tourney_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id HAVING COUNT(*) > 10
SELECT tours FROM rankings WHERE tours > 10
SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.ranking_points = T2.loser_rank_points WHERE T2.tourney_date = "2013" INTERSECT SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.ranking_points = T2.loser_rank_points WHERE T2.tourney_date = "2016"
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date = "2013" INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date = "2016"
SELECT match_num FROM matches WHERE year = 2013 OR year = 2016
SELECT year FROM matches WHERE match_num BETWEEN 2013 AND 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id WHERE T3.ranking = "T2012 WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id WHERE T3.ranking = "T2012 Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.winner_name, T2.winner_rank_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T2.winner_rank_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.ranking_points = (SELECT MAX(T2.winner_rank_points) FROM matches AS T2) WHERE T2.tourney_date = "2013-01-21" AND T2.tourney_level = "Australian Open"
SELECT winner_name FROM rankings WHERE tours = (SELECT T1.Tours FROM rankings AS T1 JOIN tournaments AS T2 ON T1.player_id = T2.player_id WHERE T2.Tournament_date = "2013-01-21" ORDER BY T2.Tournament_level DESC LIMIT 1)
SELECT T1.loser_name, T1.winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.tourney_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN rankings AS T2 ON T1.tourney_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT AVG(ranking), first_name FROM rankings GROUP BY first_name
SELECT first_name, AVG(ranking_points) FROM rankings GROUP BY first_name ORDER BY AVG(ranking_points) DESC LIMIT 1
SELECT T1.ranking_points, T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id
SELECT first_name, ranking_points FROM rankings ORDER BY ranking_points DESC LIMIT 1
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT tours FROM rankings
SELECT tours FROM rankings
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.tourney_id = T2.player_id ORDER BY T2.ranking_points ASC LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.tourney_id = T2.player_id ORDER BY T2.ranking_points ASC LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE loser_hand = 'Left' INTERSECT SELECT COUNT(DISTINCT winner_id) FROM matches WHERE loser_hand = 'Right'
SELECT COUNT(*) FROM WTA_Championships WHERE winner_hand = 'Left'
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE ship_type = 'Captured'
SELECT name, tonage FROM ship ORDER BY tonage DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(Injured) FROM death
SELECT T1.Note, T2.Injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.Tonnage = 't'
SELECT name, result FROM battle WHERE Bulgarian_commander <> 'Boril'
SELECT T1.id, T2.name FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id WHERE T2.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.id HAVING COUNT(*) > 10
SELECT T1.id, T2.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE Bulgarian_commander = 'Kaloyan' AND Latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT RESULT) FROM battle
SELECT COUNT(*) FROM battle WHERE Lost_in_battle <> 225
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "Lettice" INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS Atalanta"
SELECT name, result, Bulgarian_commander FROM battle WHERE NOT lost_in_battle IN (SELECT id FROM ship WHERE LOCATION = 'English Channel'
SELECT Note FROM death WHERE Note LIKE 'East%'
SELECT address_id, line_1, line_2 FROM addresses
SELECT Line_1, Line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM Degree_Programs GROUP BY department_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM Degree_Programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT Degree_Programs) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = "Engineering")
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = "Engineering")
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT course_id, section_name FROM sections GROUP BY section_name HAVING COUNT(*) <= 2
SELECT course_id, course_name FROM courses WHERE section_count < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name, T1.semester_id FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name, semester_id FROM Student_enrolment_courses GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM Departments WHERE department_name LIKE 'Computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_enrolment_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_course_id JOIN semesters AS T3 ON T2.transcript_id = T3.semester_id WHERE T3.semester_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN semesters AS T3 ON T2.transcript_id = T3.semester_id WHERE T3.semester_id = 1
SELECT first_name, middle_name, last_name FROM Degree_Programs WHERE degree_summary_name = "Bachelor"
SELECT first_name, middle_name, last_name FROM Degree_Programs WHERE degree_summary_name = "Bachelors"
SELECT degree_summary_name FROM Degree_Programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM Degree_Programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_id, T2.degree_summary_name FROM courses AS T1 JOIN degree_programs AS T2 ON T1.course_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.degree_summary_name, T2.degree_summary_description FROM Degree_Programs AS T1 JOIN Student_enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_summary_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_enrolment_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T2.student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_enrolment_id, COUNT(*) FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T2.student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_id FROM semesters WHERE NOT semester_id IN (SELECT student_enrolment_id FROM student_enrolment_courses)
SELECT course_name FROM courses WHERE student_enrolment_id IN (SELECT student_enrolment_id FROM student_enrolment_courses)
SELECT course_name FROM courses WHERE student_enrolment_id IN (SELECT student_enrolment_id FROM student_enrolment_courses)
SELECT course_id FROM student_enrolment_courses ORDER BY COUNT(*) DESC LIMIT 1
SELECT course_id FROM student_enrolment_courses ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = "North Carolina" AND NOT T2.degree_summary_name = "Bachelor's Degree"
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = "North Carolina" AND NOT T2.degree_summary_name = "Bachelor's Degree"
SELECT transcript_date, transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT transcript_date, transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT Cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT Cell_mobile_number FROM students WHERE first_name = "Timmothy" AND middle_name = "Ward"
SELECT first_name, middle_name, last_name FROM Student_enrolment_Courses ORDER BY transcript_date ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Student_enrolment_Courses ORDER BY transcript_date ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Student_enrolment_Courses ORDER BY transcript_date ASC LIMIT 1
SELECT T1.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T2.first_name <> T2.first_name
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT address_id, line_1, line_2, line_3 FROM addresses ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT T1.student_course_id, COUNT(T2.transcript_id) FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T2.transcript_id HAVING COUNT(T2.transcript_id) > 1
SELECT T1.course_id, COUNT(*) FROM courses AS T1 JOIN transcript_contents AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcript_Contents ORDER BY COUNT(*) ASC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcript_Contents ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.semester_id FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN transcripts AS T3 ON T2.transcript_id = T3.transcript_id WHERE T1.student_course_id = (SELECT T1.student_course_id FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN transcripts AS T3 ON T2.transcript_id = T3.transcript_id WHERE T1.student_course_id = (SELECT T1.student_course_id FROM student_enrolment_courses AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN transcripts AS T3 ON T2.transcript_id = T3.transcript_id WHERE T1.student_course_id = (SELECT T1.student_course_id FROM student_enrol
SELECT semester_id FROM student_enrolment_courses WHERE student_course_id IN (SELECT course_id FROM Degree_Programs WHERE degree_summary_name = "Masters" INTERSECT SELECT course_id FROM Degree_Programs WHERE degree_summary_name = "Bachelors")
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT other_student_details FROM Student_enrolment_Courses ORDER BY other_details DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_name, section_description FROM sections WHERE section_id = 1
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT first_name FROM students WHERE country = "Haiti" OR Cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE cell_mobile_number = "09700166582" OR permanent_address_id = "1"
SELECT Title FROM cartoon ORDER BY Title
SELECT Title FROM cartoon ORDER BY Title
SELECT Directed_by FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Writer_by FROM cartoon WHERE Writer_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT country, COUNT(*) FROM TV_Channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_Channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Series_name, T1.Content FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.Id = T2.Channel JOIN Cartoon AS T3 ON T2.Id = T3.Id GROUP BY T2.Id ORDER BY T3.Production_code
SELECT COUNT(DISTINCT T1.Series_name) FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.Id = T2.Channel GROUP BY T2.Channel
SELECT Content FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE Rating = "8_49_Rating_Share" AND Channel = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT LANGUAGE, COUNT(*) FROM TV_Channel GROUP BY LANGUAGE ORDER BY COUNT(*) ASC LIMIT 1
SELECT LANGUAGE, COUNT(*) FROM TV_series GROUP BY LANGUAGE ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T1.Series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.Id = T2.Channel JOIN TV_series AS T3 ON T2.Channel = T3.Channel WHERE T3.Title = "The Rise of the Blue Beetle"
SELECT T1.Series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.Id = T2.Channel JOIN TV_series AS T3 ON T2.Id = T3.Channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = "Sky Radio"
SELECT Title FROM cartoon WHERE Channel = "T2" AND Title = "Sky Radio"
SELECT Rating, Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT T1.Rating, T2.Viewers_m FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.Channel ORDER BY T2.Rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Channel FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.Channel WHERE T2.Title = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE Rating = "8_49_Rating_Share" AND Title = "Sky Radio"
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT package_option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'High'
SELECT Package_Option, T1.Title FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.Id WHERE T2.Hight_definition_TV = 'High'
SELECT country FROM cartoon WHERE written_by = "Todd Casey"
SELECT country FROM cartoon WHERE written_by = "Todd Casey"
SELECT country FROM TV_Channel WHERE content LIKE '%Todd Casey%'
SELECT DISTINCT country FROM cartoon WHERE written_by = "Todd Casey"
SELECT T1.series_name, T1.country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.country FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, country FROM TV_Channel WHERE Language <> 'English'
SELECT T1.id FROM tv_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel JOIN cartoon AS T3 ON T2.channel = T3.channel GROUP BY T2.channel HAVING COUNT(*) > 2
SELECT Channel FROM TV_series GROUP BY Channel HAVING COUNT(*) > 2
SELECT T1.id FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones"
SELECT T1.id FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT Channel = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT Channel = "Ben Jones"
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player ORDER BY Final_Table_Made DESC LIMIT 1
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 20000
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 20000
SELECT name FROM poker_player
SELECT name FROM poker_player
SELECT name FROM poker_player WHERE earnings > 3000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 3000
SELECT Best_Finish FROM poker_player ORDER BY Best_Finish ASC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT birth_date FROM people ORDER BY earnings ASC LIMIT 1
SELECT birth_date FROM people ORDER BY earnings ASC LIMIT 1
SELECT Money_Rank FROM people ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM people ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM people WHERE Height > 20
SELECT AVG(Earnings) FROM people WHERE Height > 20
SELECT name FROM poker_player ORDER BY earnings DESC
SELECT name FROM poker_player ORDER BY earnings DESC
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
SELECT name FROM people WHERE people_id <> (SELECT people_id FROM poker_player)
SELECT name FROM people WHERE NOT people_id IN (SELECT people_id FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM Votes
SELECT T1.contestant_number, T1.contestant_name FROM Votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM Votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number ORDER BY T2.contestant_number ASC LIMIT 1
SELECT state FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM votes GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM VOTES WHERE contestant_number = 1 AND contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.area_code JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = "Tabatha Gehling" INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.area_code JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = "Kelly Clauss"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT name FROM country WHERE IndepYear > 1950
SELECT name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Carribean"
SELECT Continent FROM country WHERE Code = "Anguilla"
SELECT Continent FROM country WHERE Code = "Anguilla"
SELECT region FROM country WHERE Code = "Afghanistan" AND Capital = "Kabul"
SELECT region FROM country WHERE name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" ORDER BY Percentage DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Code = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Code = "Brazil"
SELECT region, population FROM country WHERE code = "Angola"
SELECT region, Population FROM country WHERE Code = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT LifeExpectancy FROM country WHERE Continent = "Central Africa"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage = (SELECT MAX(T2.Percentage) FROM countrylanguage) WHERE T2.Language = "Taiwanese" AND T1.Continent = "Asia" ORDER BY T2.Percentage ASC LIMIT 1
SELECT name FROM country ORDER BY lifeExpectancy ASC LIMIT 1
SELECT Population, GNP FROM country WHERE Continent = 'Asia'
SELECT T1.Population, T2.GNP FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Continent = "Asia" ORDER BY T2.Percentage DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'Africa'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" UNION SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Europe"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'USA'
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code2 = "USA"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT DISTINCT governmentForm) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT governmentForm) FROM country WHERE continent = 'Africa'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'F' AND CountryCode = "Afghanistan"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'F' AND CountryCode = "Afghanistan"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT COUNT(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT COUNT(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch"
SELECT name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT name FROM countrylanguage WHERE Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'E'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'F' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'E'
SELECT DISTINCT (Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT region FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT region FROM countrylanguage WHERE Language = "Dutch" OR Language = "English"
SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'F' OR Language = 'Dutch'
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'F' AND GovernmentForm = 'Republic'
SELECT Language FROM countrylanguage WHERE GovernmentForm = 'Republic'
SELECT city FROM city WHERE Population = (SELECT MAX(Population) FROM countrylanguage WHERE Language = "English")
SELECT city, Population FROM city WHERE Language = "English" ORDER BY Population DESC LIMIT 1
SELECT name, population, lifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY surfaceArea DESC LIMIT 1
SELECT name, population, lifeExpectancy FROM country ORDER BY surfaceArea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM countrylanguage WHERE Language <> 'English'
SELECT AVG(LifeExpectancy) FROM countrylanguage WHERE Language <> 'English'
SELECT COUNT(*) FROM countrylanguage WHERE Language <> 'English'
SELECT COUNT(*) FROM country WHERE Language <> 'English'
SELECT Language FROM countrylanguage WHERE HeadOfState = "Beatrix"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'F' AND date_founded < 1930
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'F' AND date_created < 1930
SELECT Code FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT T1.Code, T2.SurfaceArea FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage > 0.1
SELECT name FROM country WHERE Population < (SELECT Population FROM country WHERE Continent = 'Asia' ORDER BY Population DESC LIMIT 1)
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage < (SELECT Population FROM country ORDER BY Population DESC LIMIT 1)
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage > (SELECT MAX(T2.Percentage) FROM countrylanguage) WHERE T2.Language = "African"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage > (SELECT MAX(Population) FROM country) WHERE T2.Language = "African")
SELECT DISTINCT code FROM country WHERE language <> 'English'
SELECT DISTINCT code FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT Code FROM country WHERE Language <> 'English' AND GovernmentForm <> 'Republic'
SELECT Code FROM country WHERE Language <> 'English' AND GovernmentForm <> 'Republic'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language <> 'English' AND T2.IsOfficial = 'F'
SELECT name FROM city WHERE NOT countrycode IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'F' AND Language = 'English'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = "Chinese" AND T2.IsOfficial = 'F'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.ID = T2.CountryCode WHERE T2.Language = "Chinese" AND T2.Percentage = 1
SELECT T1.Name, T1.IndepYear, T1.SurfaceArea FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage ASC LIMIT 1
SELECT T1.Name, T1.IndepYear, T1.SurfaceArea FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage ASC LIMIT 1
SELECT Population, name, headOfState FROM country ORDER BY surfaceArea DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.HeadOfState FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT District, COUNT(*) FROM city GROUP BY District HAVING COUNT(*) > (SELECT AVG(Population) FROM city)
SELECT District, COUNT(*) FROM city GROUP BY District HAVING COUNT(*) > (SELECT AVG(Population) FROM city)
SELECT GovForm, AVG(LifeExpectancy) FROM country GROUP BY GovForm HAVING AVG(LifeExpectancy) > 72
SELECT GovForm, SUM(Population) FROM country WHERE LifeExpectancy > 72 GROUP BY GovForm
SELECT AVG(LifeExpectancy), SUM(Population) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Continent, Population, AVG(LifeExpectancy) FROM country WHERE AVG(LifeExpectancy) < 72 GROUP BY Continent
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY Population ASC LIMIT 3
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Percentage ASC LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND Population = 8000
SELECT name FROM country WHERE Population = 8000
SELECT Population, AVG(SurfaceArea) FROM country WHERE Continent = "North America" WHERE SurfaceArea > 300
SELECT Population, AVG(SurfaceArea) FROM country WHERE SurfaceArea > 300
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Population BETWEEN 16000 AND 9000
SELECT name FROM city WHERE Population BETWEEN 16000 AND 9000
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT Language, Percentage FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode, Language, Percentage FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT country, percentage FROM countrylanguage WHERE Language = "Spanish" ORDER BY percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT Code FROM countrylanguage WHERE Percentage > (SELECT Percentage FROM countrylanguage ORDER BY Percentage DESC LIMIT 1)
SELECT Code FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(DISTINCT conductor_id) FROM orchestra
SELECT COUNT(DISTINCT conductor_id) FROM orchestra
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor WHERE nationality <> "USA"
SELECT name FROM conductor WHERE nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY year_of_founded DESC
SELECT Record_Company FROM orchestra ORDER BY year_of_founded DESC
SELECT AVG(attendance) FROM show
SELECT AVG(attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT COUNT(DISTINCT nationality) FROM conductor
SELECT COUNT(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY Official_ratings_(millions) DESC LIMIT 1
SELECT Orchestra_ID FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT DISTINCT T1.Orchestra_ID FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded < 1999
SELECT Record_Company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE year_of_founded > 2003
SELECT Record_Company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE year_of_founded > 2003
SELECT COUNT(*) FROM Orchestra WHERE Major_record_format = "CD" OR major_record_format = "DVD"
SELECT Major_record_format FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT year_of_founded FROM performance GROUP BY performance_id HAVING COUNT(*) > 1
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT T1.student_id FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id JOIN Friend AS T3 ON T2.liked_id = T3.friend_id WHERE T3.friend_id = 1 AND T1.name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(*) FROM Friend
SELECT name, COUNT(*) FROM Highschooler GROUP BY name
SELECT name, COUNT(*) FROM Highschooler GROUP BY name
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.friend_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.friend_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.friend_id HAVING COUNT(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.friend_id HAVING COUNT(*) >= 3
SELECT name FROM Friend WHERE student_id = 1
SELECT name FROM Friend WHERE student_id = 1
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT student_id FROM Highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT T1.id, T2.id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_id WHERE T2.liked_id IN (SELECT T1.id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_id WHERE T2.liked_id IN (SELECT T1.id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_id WHERE T2.liked_id IN (SELECT T1.id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_id WHERE T2.liked_id IN (SELECT T1.id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_id WHERE T2.liked_id IN (SELECT T1.id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_id WHERE T2.liked_id IN (SELECT T1.id
SELECT T1.student_id, T2.liked_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_Id WHERE T2.liked_Id IN (SELECT T1.liked_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_Id WHERE T2.liked_Id IN (SELECT T1.liked_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_Id WHERE T2.liked_Id IN (SELECT T1.liked_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_Id WHERE T2.liked_Id IN (SELECT T1.liked_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2.liked_Id WHERE T2.liked_Id IN (SELECT T1.liked_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.friend_id = T2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id JOIN Friend AS T3 ON T2.liked_id = T3.friend_id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id JOIN Friend AS T3 ON T2.liked_id = T3.friend_id
SELECT COUNT(*) FROM Likes
SELECT COUNT(*) FROM Likes
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT name FROM Friend GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = 1
SELECT COUNT(*) FROM Likes WHERE liked_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT AVG(grade) FROM Friend
SELECT AVG(grade) FROM Friend
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id, friend_id FROM Friend)
SELECT grade FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend) ORDER BY grade ASC LIMIT 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners UNION SELECT state FROM professionals
SELECT AVG(age) FROM Treatments
SELECT AVG(age) FROM Treatments
SELECT T1.professional_id, T2.last_name, T2.home_phone FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) > 2
SELECT T1.professional_id, T2.last_name, T3.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) > 2 INTERSECT SELECT T1.state, T2.last_name, T3.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "Indiana"
SELECT name FROM dogs WHERE cost_of_treatment > 100
SELECT dog_id FROM Treatments WHERE cost_of_treatment > 100
SELECT first_name FROM Professionals WHERE first_name <> name FROM Dogs
SELECT first_name FROM professionals UNION SELECT first_name FROM owners WHERE name <> 'Treatment'
SELECT professional_id, role_code, email_address FROM Treatments WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT owner_id, first_name, last_name FROM dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T2.role_code, T1.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T2.role_code, T1.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM breeds ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM Treatments ORDER BY cost_of_treatment DESC LIMIT 1
SELECT owner_id, last_name FROM treatments ORDER BY cost_of_treatment DESC LIMIT 1
SELECT treatment_type_description FROM Treatments ORDER BY cost_of_treatment ASC LIMIT 1
SELECT t2.treatment_type_description FROM Treatments AS t1 JOIN Treatment_Types AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.treatment_type_description ASC LIMIT 1
SELECT owner_id, zip_code FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT owner_id, zip_code FROM Treatments ORDER BY cost_of_treatment DESC LIMIT 1
SELECT T1.professional_id, T2.home_phone FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id, T2.home_phone FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT first_name, last_name FROM Treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT first_name, last_name FROM Professionals WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment, first_name FROM Treatments
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.treatment_type_description, T2.cost_of_treatment FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T2.treatment_type_description, T2.cost_of_treatment FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM owners AS T1 JOIN sizes AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM owners AS T1 JOIN sizes AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T2.cost_of_treatment DESC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = (SELECT t1.treatment_type_code FROM Treatment_Types AS t1 JOIN Dogs AS t2 ON t1.treatment_type_code = t2.dog_id ORDER BY t2.weight ASC LIMIT 1)
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_arrived, date_departed FROM Treatments
SELECT date_arrived, date_departed FROM Treatments
SELECT last_name FROM owners ORDER BY age ASC LIMIT 1
SELECT last_name FROM Dogs ORDER BY age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT T1.first_name, T1.street, T1.state FROM Professionals AS T1 JOIN Cities AS T2 ON T1.city = T2.city WHERE T2.state LIKE 'West%'
SELECT role_code, street, city, state FROM Professionals WHERE street LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE Age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE Age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM owners WHERE NOT owner_id IN (SELECT dog_id FROM Dogs)
SELECT COUNT(DISTINCT owner_id) FROM owners WHERE NOT owner_id IN (SELECT dog_id FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, Age, weight FROM Dogs WHERE Abandoned_yn = 1
SELECT name, Age, weight FROM Dogs WHERE Abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT Age FROM Dogs ORDER BY Age DESC LIMIT 1
SELECT Age FROM Dogs ORDER BY Age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, home_phone, cell_number FROM Professionals
SELECT email_address, home_phone, cell_number FROM Professionals
SELECT DISTINCT (treatment_type_description) FROM Treatment_Types
SELECT DISTINCT (treatment_type_code, size_code) FROM Treatments
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id ORDER BY T2.date_of_treatment
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name FROM singer ORDER BY net_worth_millions ASC
SELECT name FROM singer ORDER BY net_worth_millions ASC
SELECT birth_year, citizenship FROM singer
SELECT birth_year, citizenship FROM singer
SELECT Citizenship FROM singer WHERE Citizenship <> "France"
SELECT name FROM singer WHERE citizenship <> 'French'
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Sales DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Sales DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship ORDER BY MAX(Net_Worth_Millions) DESC LIMIT 3
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship ORDER BY MAX(Net_Worth_Millions) DESC LIMIT 1
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 3000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 3000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, T2.Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY T2.Highest_Position DESC LIMIT 1
SELECT T2.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT name FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 1
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = "T2"
SELECT property_name FROM properties WHERE room_count > 1
