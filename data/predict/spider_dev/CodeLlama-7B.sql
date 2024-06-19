SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(Age), MAX(Age), MIN(Age) FROM singer WHERE Country = "France"
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = "France"
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age DESC LIMIT 1
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT LOCATION, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, Name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Average) FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR IN ('2014', '2015')
SELECT COUNT(*) FROM concert WHERE YEAR IN ('2014', '2015')
SELECT T1.Name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year >= 2014 GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name, Capacity FROM concert WHERE YEAR > 2013 ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT Name FROM stadium EXCEPT SELECT T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR <> 2014)
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name, T1.Theme
SELECT T1.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T2.Year = 2014
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T1.concert_ID = T3.concert_ID WHERE T3.Year = 2014
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT Name, LOCATION FROM stadium WHERE YEAR = 2014 OR YEAR = 2015
SELECT Name, LOCATION FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 OR T2.Year = 2015
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T2.Capacity DESC LIMIT 1
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T2.Capacity DESC LIMIT 1
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE PetType = "Dog" ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE PetType = "Dog" ORDER BY pet_age LIMIT 1
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT MAX(weight), pet_type FROM Pets GROUP BY pet_type
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T3.Age > 20
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Dog" AND T1.Sex = "F"
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Dog" AND T1.StuID IN (SELECT StuID FROM Student WHERE Sex = "F")
SELECT COUNT(DISTINCT pet_type) FROM Pets
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT Fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "cat" OR T2.PetType = "dog"
SELECT Fname FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'Dog' OR T2.PetType = 'Cat'
SELECT Fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "cat" INTERSECT SELECT Fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "dog"
SELECT Fname FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'Dog' INTERSECT SELECT Fname FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'Cat'
SELECT Major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT Major FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Has_Pet WHERE NOT PetType = "Cat"
SELECT StuID FROM Has_Pet WHERE NOT PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat")
SELECT Fname, Age FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = "Dog" AND NOT T2.PetType = "Cat"
SELECT Fname FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.Pettype = "Dog" EXCEPT SELECT Fname FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.Pettype = "Cat"
SELECT pet_type, MAX(pet_age) FROM Pets
SELECT pet_type, MAX(pet_age) FROM Pets
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age), pettype FROM Pets GROUP BY pettype
SELECT AVG(pet_age), MAX(pet_age), pettype FROM Pets GROUP BY pettype
SELECT pet_type, AVG(weight) FROM Pets GROUP BY pet_type
SELECT pet_type, AVG(weight) FROM Pets GROUP BY pet_type
SELECT Fname, Age FROM Has_Pet JOIN Student ON StuID = Student.StuID
SELECT DISTINCT Fname, Age FROM Has_Pet JOIN Student ON StuID = Student.StuID
SELECT PetID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = "Smith")
SELECT PetID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT Fname, Sex FROM Has_pet GROUP BY StuID HAVING COUNT(*) > 1
SELECT Fname, Sex FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1
SELECT lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = "Cat" AND T2.pet_age = 3
SELECT lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Cat" AND T3.pet_age = 3
SELECT AVG(age) FROM STUDENT WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM STUDENT WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT t1.contid, t1.continent, COUNT(*) FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.continent GROUP BY t1.contid
SELECT ContId, Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.FullName, T1.Id, COUNT(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Id
SELECT T1.FullName, T1.Id, COUNT(*) FROM model_list AS T2 JOIN car_names AS T1 ON T2.Model = T1.Model GROUP BY T1.Id
SELECT Model FROM cars_data ORDER BY Horsepower LIMIT 1
SELECT Model FROM cars_data ORDER BY Horsepower LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Make FROM cars_data WHERE YEAR = 1970
SELECT DISTINCT Make FROM cars_data WHERE YEAR = 1970
SELECT Make, YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT T1.Make, T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.Year LIMIT 1
SELECT DISTINCT Model FROM cars_data WHERE YEAR > 1980
SELECT DISTINCT Model FROM cars_data WHERE YEAR > 1980
SELECT t1.continent, COUNT(*) FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.continent GROUP BY t1.continent
SELECT continent, COUNT(*) FROM countries GROUP BY continent
SELECT countryName FROM countries GROUP BY countryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT countryName FROM countries GROUP BY countryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T2.FullName FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.ModelId GROUP BY T2.FullName
SELECT DISTINCT t1.Model, t1.Make, t2.FullName FROM car_names AS t1 JOIN car_makers AS t2 ON t1.MakeId = t2.Id
SELECT Accelerate FROM cars_data WHERE Make = "amc" AND Model = "hornet sportabout"
SELECT Accelerate FROM cars_data WHERE Make = "amc" AND Model = "hornet sportabout"
SELECT COUNT(*) FROM car_makers WHERE country = "france"
SELECT COUNT(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.ModelId JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Country = "France"
SELECT COUNT(*) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model JOIN countries AS T4 ON T4.CountryId = T3.Country WHERE T4.CountryName = "USA"
SELECT COUNT(*) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN model_list AS T3 ON T2.model = T3.model JOIN car_makers AS T4 ON T4.id = T3.maker JOIN countries AS T5 ON T4.country = T5.countryid WHERE T5.countryid = 1
SELECT AVG(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT DISTINCT Make, Model FROM cars_data
SELECT Make, Model FROM car_names
SELECT countryid, countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid
SELECT countryid, countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(Weight), AVG(Year) FROM cars_data
SELECT country FROM countries WHERE countryid IN (SELECT country FROM car_makers WHERE continent = 1) GROUP BY country HAVING COUNT(*) >= 3
SELECT countryName FROM countries WHERE countryid IN (SELECT countryid FROM car_makers WHERE countryid IN (SELECT countryid FROM countries WHERE continent = 'Europe') GROUP BY countryid HAVING COUNT(*) >= 3)
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT Model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(edispl) FROM cars_data WHERE model = "volvo"
SELECT AVG(edispl) FROM cars_data WHERE Make = "Volvo"
SELECT MAX(Accelerate), COUNT(*) FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT Model FROM car_names GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = (SELECT Id FROM car_makers WHERE FullName = "American Motor Company")
SELECT COUNT(*) FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Make = "American Motor Company"
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE COUNT(*) > 3
SELECT Make, MakeId FROM model_list GROUP BY MakeId HAVING COUNT(*) > 3
SELECT DISTINCT Model FROM cars_data WHERE Make = "General Motors" AND Weight > 3500
SELECT DISTINCT Model FROM cars_data WHERE Make = "General Motors" OR Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 AND Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T2.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = "volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT T2.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = (SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Make = "Volvo") ORDER BY T1.Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.Accelerate > (SELECT MAX(T1.Accelerate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING COUNT(*) > 2
SELECT COUNT(*) FROM countries WHERE NOT countryid IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING COUNT(*) > 2)
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE cylinders > 6
SELECT Model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT MakeId, Make FROM cars_data WHERE Cylinders < (SELECT MAX(Cylinders) FROM cars_data)
SELECT MakeId, Model FROM cars_data WHERE Horsepower <> (SELECT MAX(Horsepower) FROM cars_data) AND Cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 AND YEAR < 1980
SELECT MAX(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT Model FROM cars_data WHERE Weight < 3500 AND Make <> 'Ford Motor Company'
SELECT DISTINCT Model FROM cars_data WHERE Weight < 3500 AND Make <> "Ford"
SELECT countryName FROM countries WHERE NOT countryId IN (SELECT country FROM car_makers)
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT id, maker FROM model_list GROUP BY maker HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT id, maker FROM car_names GROUP BY maker HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT countryid, countryname FROM countries WHERE countryid IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING COUNT(*) > 3) OR model = 'fiat'
SELECT countryid, countryname FROM countries WHERE countryid IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING COUNT(*) > 3) INTERSECT SELECT countryid, model FROM car_names WHERE model = "fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'United States'
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM airports
SELECT COUNT(*) FROM flights
SELECT COUNT(*) FROM flights
SELECT Airline FROM airlines WHERE abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE abbreviation = 'UAL'
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT COUNT(*) FROM airlines WHERE country = "USA"
SELECT city, country FROM airports WHERE airportcode = "ALT"
SELECT city, country FROM airports WHERE airportcode = "ALT"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABER"
SELECT COUNT(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen') AND DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Ashley')
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABER" AND DestAirport = "ASH"
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'JetBlue Airways')
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = "Jetblue Airways")
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "ASY" AND T1.Airline = 1
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY" AND T1.Airline = 1
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD" AND T1.Airline = 1
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD" AND T1.Airline = 1
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.Airline = 1
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.Airline = 1
SELECT city FROM flights GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM flights GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM flights GROUP BY city ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM Flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM Flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM Flights GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT Airline FROM Flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM Flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Abbreviation, T2.Country FROM Flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Abbreviation ORDER BY COUNT(*) LIMIT 1
SELECT T2.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Country ORDER BY COUNT(*) LIMIT 1
SELECT DISTINCT Airline FROM Flights WHERE SourceAirport = 'AHD'
SELECT DISTINCT Airline FROM Flights WHERE SourceAirport = "AHD"
SELECT DISTINCT Airline FROM Flights WHERE DestAirport = 'AHD'
SELECT DISTINCT Airline FROM Flights WHERE DestAirport = "AHD"
SELECT DISTINCT Airline FROM Flights WHERE SourceAirport = 'APG' INTERSECT SELECT DISTINCT Airline FROM Flights WHERE DestAirport = 'CVO'
SELECT DISTINCT Airline FROM Flights WHERE SourceAirport = "APG" INTERSECT SELECT DISTINCT Airline FROM Flights WHERE SourceAirport = "CVO"
SELECT DISTINCT t1.airline FROM flights AS t1 JOIN airports AS t2 ON t1.sourceairport = t2.airportcode WHERE t2.airportcode = 'CVO' AND NOT t2.airportcode = 'APG'
SELECT DISTINCT t1.airline FROM flights AS t1 JOIN airports AS t2 ON t1.sourceairport = t2.airportcode WHERE t2.city = "CVO" EXCEPT SELECT DISTINCT t1.airline FROM flights AS t1 JOIN airports AS t2 ON t1.destairport = t2.airportcode WHERE t2.city = "APG"
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE DestAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE DestAirport = "ABERDEEN"
SELECT COUNT(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen" OR City = "Abilene")
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABE" OR DestAirport = "ABI"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM Flights) AND NOT AirportCode IN (SELECT DestAirport FROM Flights)
SELECT AirportCode FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM Flights) AND NOT AirportCode IN (SELECT DestAirport FROM Flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT DISTINCT city FROM employee WHERE age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT DISTINCT city FROM employee WHERE Age < 30 GROUP BY city HAVING COUNT(*) > 1
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION
SELECT Manager_name, District FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop)
SELECT Manager_name, District FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop)
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT Name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM evaluation GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM evaluation GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM evaluation WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM Hiring)
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 AND number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT DISTINCT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, template_type_code FROM templates GROUP BY template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id, template_type_code FROM templates GROUP BY template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT template_id FROM templates WHERE NOT template_id IN (SELECT template_id FROM documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT template_id, version_number, template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT version_number, template_type_code FROM Templates WHERE version_number > 5
SELECT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT DISTINCT template_type_code, COUNT(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING COUNT(*) < 3
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'BK'
SELECT Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'BK'
SELECT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code
SELECT DISTINCT tt.template_type_code, COUNT(*) FROM templates AS t JOIN document AS d ON t.template_id = d.template_id GROUP BY tt.template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates WHERE NOT template_type_code IN (SELECT template_type_code FROM documents)
SELECT template_type_code FROM templates WHERE NOT template_type_code IN (SELECT template_type_code FROM documents)
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = 'AD'
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T2.template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT t2.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT template_id FROM templates WHERE template_type_code = (SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Presentation")
SELECT template_id FROM templates WHERE template_details = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = 'Summer Show'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea %'
SELECT paragraph_id, paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT paragraph_id, paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE Document_Name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT document_id, document_name, COUNT(*) FROM paragraphs GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs LIMIT 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT Name, Course FROM course_arrange JOIN teacher ON course_arrange.Teacher_ID = teacher.Teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT Name, COUNT(*) FROM course_arrange GROUP BY Teacher_ID
SELECT Name, COUNT(*) FROM course_arrange GROUP BY Teacher_ID
SELECT Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <= 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT visitor_id, Name, Age FROM visit GROUP BY visitor_id HAVING COUNT(*) > 1
SELECT visitor_id, Name, Level_of_membership FROM visit ORDER BY Total_spent DESC LIMIT 1
SELECT t1.museum_id, t2.name FROM visit AS t1 JOIN museum AS t2 ON t1.museum_id = t2.museum_id GROUP BY t1.museum_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT Name, Age FROM visit GROUP BY Name, Age ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(t2.Total_spent) FROM visitor AS t1 JOIN visit AS t2 ON t1.ID = t2.visitor_ID WHERE t1.Level_of_membership = 1
SELECT Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Open_Year < 2009 INTERSECT SELECT Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Open_Year > 2011
SELECT COUNT(*) FROM visitor WHERE NOT museum_id IN (SELECT museum_id FROM visit WHERE open_year > 2010)
SELECT COUNT(*) FROM museum WHERE open_year <= 2008 AND open_year >= 2013
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
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT DISTINCT tourney_name FROM matches WHERE match_num > 10
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR IN (2013, 2016)
SELECT COUNT(*) FROM matches WHERE YEAR IN (2013, 2016)
SELECT country_code, first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN tourneys AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.tourney_name = "WTA Championships" INTERSECT SELECT country_code, first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN tourneys AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN tournaments AS T3 ON T2.tourney_id = T3.tourney_id WHERE T3.tourney_name = "Australian Open" AND T2.tourney_name = "WTA Championships"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, MAX(winner_rank_points) FROM matches GROUP BY winner_name
SELECT winner_name, MAX(winner_rank_points) FROM matches GROUP BY winner_name
SELECT winner_name FROM matches AS T1 JOIN tourneys AS T2 ON T1.tourney_id = T2.tourney_id WHERE T2.tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT first_name, AVG(ranking) FROM rankings GROUP BY first_name
SELECT first_name, AVG(ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY first_name
SELECT first_name, SUM(ranking_points) FROM rankings GROUP BY first_name
SELECT first_name, SUM(ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players WHERE country_code IN (SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50)
SELECT country_code FROM players WHERE country_code IN (SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50)
SELECT DISTINCT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT DISTINCT ranking_date, COUNT(*) FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(DISTINCT winner_name) FROM matches WHERE winner_hand = "L" AND tourney_name = "WTA Championships"
SELECT COUNT(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "L" AND T1.tourney_name = "WTA Championships"
SELECT winner_first_name, winner_country_code, winner_birth_date FROM matches JOIN players ON matches.winner_id = players.player_id ORDER BY winner_rank_points DESC LIMIT 1
SELECT first_name, country_code, birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(injured), MIN(injured), MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT killed, injured FROM death WHERE tonnage = t
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT id, name FROM ship WHERE ship_type = 'Brig'
SELECT id, name FROM battle WHERE SUM(t1.killed) > 10
SELECT caused_by_ship_id, name FROM death ORDER BY injured DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM ship WHERE tonnage = 225 AND NOT id IN (SELECT lost_in_battle FROM ship WHERE NOT tonnage = 225)
SELECT T1.name, T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.name = "Lettice" OR T1.name = "HMS Atalanta"
SELECT name, result, bulgarian_commander FROM battle WHERE NOT (SELECT COUNT(*) FROM ship WHERE NOT LOCATION = "English Channel") = (SELECT COUNT(*) FROM battle)
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM COURSES
SELECT COUNT(*) FROM COURSES
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_id, department_name FROM degree_programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM degree_programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Departments
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT COUNT(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT section_name, section_description FROM SECTIONS
SELECT section_name, section_description FROM SECTIONS
SELECT course_name, course_id FROM SECTIONS GROUP BY course_id HAVING COUNT(*) <= 2
SELECT course_name, course_id FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections)
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT semester_name, semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_id, T1.semester_name, COUNT(*) FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%the computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT first_name, middle_name, last_name, student_id FROM STUDENT_ENROLMENT AS T1 JOIN DEGREE_PROGRAMS AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT first_name, middle_name, last_name, student_id FROM STUDENT_ENROLMENT AS T1 JOIN DEGREE_PROGRAMS AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.student_id HAVING COUNT(*) = 2
SELECT first_name, middle_name, last_name FROM STUDENT_ENROLMENT AS T1 JOIN DEGREE_PROGRAMS AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = "Bachelor"
SELECT first_name, middle_name, last_name FROM STUDENT_ENROLMENT AS T1 JOIN STUDENTS AS T2 ON T1.student_id = T2.student_id JOIN DEGREE_PROGRAMS AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT degree_summary_name FROM Degree_Programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM student_enrolment GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, MAX(degree_summary_name) FROM Student_Enrolment GROUP BY degree_program_id
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM STUDENT_ENROLMENT AS T1 JOIN SECTION AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_id FROM Student_Enrolment)
SELECT DISTINCT course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT course_name FROM SECTIONS AS T1 JOIN COURSES AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT course_name FROM SECTIONS AS T1 JOIN COURSES AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE state_province_county = "North Carolina" EXCEPT SELECT last_name FROM Student_Enrolment
SELECT last_name FROM Students WHERE state_province_county = "North Carolina" EXCEPT SELECT last_name FROM Student_Enrolment
SELECT transcript_date, transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT transcript_id, transcript_date FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM STUDENTS WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM STUDENTS ORDER BY student_id LIMIT 1
SELECT first_name, middle_name, last_name FROM STUDENTS ORDER BY student_id LIMIT 1
SELECT first_name, middle_name, last_name FROM Students WHERE NOT student_id IN (SELECT student_id FROM Student_Enrolment WHERE NOT degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE NOT department_id IN (SELECT department_id FROM Departments WHERE NOT department_name = 'School')))
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM Students WHERE current_address_id <> permanent_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT current_address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country FROM addresses
SELECT T1.address_id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM TRANSCRIPTS
SELECT COUNT(*) FROM Transcripts
SELECT MAX(transcript_date) FROM TRANSCRIPTS
SELECT MAX(transcript_date) FROM TRANSCRIPTS
SELECT MAX(COUNT(*)) FROM Transcript_Contents
SELECT MAX(COUNT(*)) FROM Transcript_Contents AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_course_id = T2.student_course_id JOIN Courses AS T3 ON T2.course_id = T3.course_id
SELECT transcript_date FROM Transcript_Contents GROUP BY transcript_date ORDER BY COUNT(*) LIMIT 1
SELECT transcript_id, transcript_date FROM Transcript_Contents GROUP BY transcript_id ORDER BY COUNT(*) LIMIT 1
SELECT semester_id FROM student_enrolment WHERE NOT degree_program_id = 1
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 1 OR degree_program_id = 2
SELECT COUNT(DISTINCT current_address_id) FROM Students
SELECT DISTINCT t1.city FROM addresses AS t1 JOIN students AS t2 ON t1.address_id = t2.current_address_id
SELECT first_name, last_name FROM STUDENTS ORDER BY last_name DESC
SELECT other_student_details FROM STUDENTS ORDER BY last_name DESC
SELECT * FROM SECTIONS AS h
SELECT section_description FROM SECTIONS WHERE section_name = "h"
SELECT first_name FROM Students WHERE country = "Haiti" AND cell_mobile_number = "09700166582"
SELECT first_name FROM Students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon AS T1 JOIN Written_by AS T2 ON T1.id = T2.id WHERE T2.name = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT country, COUNT(*) FROM TV_Channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country, COUNT(*) FROM TV_Channel GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE serial_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT COUNT(*), Language FROM TV_Channel GROUP BY Language
SELECT T1.series_name FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.title = "The Rise of the Blue Beetle!"
SELECT series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT T1.Episode, T1.Rating FROM TV_series AS T1 ORDER BY T1.Rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Channel FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT COUNT(*), Directed_by FROM Cartoon GROUP BY Directed_by
SELECT COUNT(*), Directed_by FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 1
SELECT Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Todd Casey"
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" AND T2.directed_by = "Michael Chang"
SELECT T1.series_name, T1.country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" AND T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT id FROM TV_Channel WHERE Country IN (SELECT Country FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2)
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT DISTINCT package_option FROM TV_Channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE Directed_by = "Ben Jones")
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
SELECT Name FROM poker_player
SELECT Name FROM poker_player
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Birth_Date FROM poker_player ORDER BY Earnings LIMIT 1
SELECT Birth_Date FROM poker_player ORDER BY Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT COUNT(*), Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM area_code_state
SELECT contestant_number, contestant_name FROM Contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM area_code_state
SELECT MAX(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM Contestants WHERE NOT contestant_name = 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number HAVING COUNT(*) >= 2
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM votes GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM VOTES WHERE contestant_name = "Tabatha Gehling"
SELECT state FROM VOTES WHERE contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = "Tabatha Gehling") INTERSECT SELECT state FROM VOTES WHERE contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = "Kelly Clauss")
SELECT contestant_name FROM Contestants WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Carribean"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT region FROM country WHERE capital = 1
SELECT region FROM country WHERE capital = 1
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT CountryCode FROM city WHERE Name = "Aruba") GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT CountryCode FROM city WHERE Name = "Aruba")
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT population, lifeexpectancy FROM country WHERE name = "Brazil"
SELECT region, population FROM country WHERE name = "Angola"
SELECT region, population FROM country WHERE name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT Name FROM country WHERE LifeExpectancy = (SELECT MIN(LifeExpectancy) FROM country WHERE Continent = "Asia")
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT MAX(gnp), SUM(Population) FROM country WHERE Continent = 'Asia'
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'Africa'
SELECT AVG(lifeexpectancy) FROM country WHERE governmentform = 'Republic' AND continent = 'Africa'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT SUM(Population), AVG(GNP) FROM country WHERE GovernmentForm = 'US Territory'
SELECT SUM(t1.Population), AVG(t1.GNP) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "English" AND t1.Continent = "North America"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = (SELECT countrycode FROM city WHERE name = "Aruba")
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = (SELECT countrycode FROM city WHERE name = "Aruba")
SELECT COUNT(*) FROM countrylanguage WHERE IsOfficial = 'T' AND countrycode = (SELECT countrycode FROM country WHERE name = 'Afghanistan')
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = (SELECT countrycode FROM country WHERE name = "Afghanistan") AND isofficial = "T"
SELECT name FROM country WHERE NOT countrycode IN (SELECT countrycode FROM countrylanguage GROUP BY countrycode HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM countrylanguage GROUP BY countrycode))
SELECT Name FROM country GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "English"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch" OR Language = "English"
SELECT Name FROM country WHERE NOT Language = 'English' AND NOT Language = 'French'
SELECT Name FROM country WHERE NOT Language IN ('English', 'French')
SELECT Name FROM country WHERE NOT Language IN ('English', 'French')
SELECT countrylanguage.countrycode FROM countrylanguage WHERE language = "English" INTERSECT SELECT countrylanguage.countrycode FROM countrylanguage WHERE language = "French"
SELECT COUNT(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Chinese"
SELECT DISTINCT region FROM countrylanguage WHERE language = 'English' OR language = 'Dutch'
SELECT DISTINCT region FROM countrylanguage WHERE language = "Dutch" OR language = "English"
SELECT countrycode FROM countrylanguage WHERE language = 'English' OR language = 'Dutch'
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT countrycode FROM country WHERE continent = 'Asia') GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT countrycode FROM country WHERE continent = 'Asia') GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage GROUP BY CountryCode HAVING COUNT(*) > 1)
SELECT Language FROM countrylanguage WHERE NOT CountryCode IN (SELECT CountryCode FROM country WHERE GovernmentForm = 'Republic') GROUP BY Language HAVING COUNT(*) = 1
SELECT Name FROM city WHERE Population = (SELECT MAX(Population) FROM city WHERE Language = 'English')
SELECT t1.name FROM country AS t2 JOIN countrylanguage AS t1 ON t2.countrycode = t1.countrycode WHERE t1.language = "English" ORDER BY t2.population DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1
SELECT AVG(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language <> 'English'
SELECT AVG(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language <> 'English'
SELECT SUM(Population) FROM country WHERE NOT countrylanguage = 'English'
SELECT SUM(Population) FROM country WHERE NOT CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Capital FROM country WHERE HeadOfState = "Beatrix") AND IsOfficial = "T"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Capital FROM country WHERE HeadOfState = "Beatrix") AND IsOfficial = "T"
SELECT COUNT(DISTINCT countrylanguage.language) FROM countrylanguage JOIN country ON countrylanguage.countrycode = country.code WHERE country.indepyear < 1930 AND countrylanguage.isOfficial = 'T'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT CountryCode FROM country WHERE IndepYear < 1930)
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT MAX(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT MAX(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT countrycode FROM countrylanguage WHERE language <> 'English'
SELECT countrycode FROM countrylanguage WHERE language <> 'English'
SELECT countrycode FROM countrylanguage WHERE language <> 'English'
SELECT countrycode FROM countrylanguage WHERE language <> 'English'
SELECT code FROM country WHERE NOT countrylanguage.language = 'English' AND governmentform <> 'Republic'
SELECT Code FROM country WHERE NOT GovernmentForm = 'Republic' AND NOT Language = 'English'
SELECT t1.name FROM country AS t2 JOIN countrylanguage AS t1 ON t2.code = t1.countrycode WHERE t2.continent = 'Europe' AND t1.language <> 'English'
SELECT Name FROM city WHERE NOT (SELECT Language FROM countrylanguage WHERE countrycode = (SELECT countrycode FROM city WHERE Name = Name)) = 'English'
SELECT DISTINCT t1.name FROM country AS t2 JOIN countrylanguage AS t1 ON t2.code = t1.countrycode WHERE t2.continent = 'Asia' AND t1.language = 'Chinese'
SELECT DISTINCT Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "Chinese" AND T2.District IN (SELECT DISTINCT District FROM country WHERE Continent = "Asia")
SELECT Name, IndependenceYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT population, name, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT country.name, COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.countrycode HAVING COUNT(*) >= 3
SELECT countrylanguage.countrycode, COUNT(*) FROM countrylanguage GROUP BY countrylanguage.countrycode HAVING COUNT(*) > 2
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district
SELECT governmentform, SUM(population), AVG(lifeexpectancy) FROM country GROUP BY governmentform HAVING AVG(lifeexpectancy) > 72
SELECT GovernmentForm, SUM(Population), AVG(LifeExpectancy) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT AVG(LifeExpectancy), SUM(Population), Continent FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT continent, SUM(Population), AVG(LifeExpectancy) FROM country WHERE LifeExpectancy < 72 GROUP BY continent
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population > 80000
SELECT Name FROM country WHERE Population = 80000 AND Continent = "Europe"
SELECT SUM(Population), AVG(SurfaceArea), Continent FROM country WHERE SurfaceArea > 3000 AND Continent = "North America"
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY MAX(T1.Percentage)
SELECT countrycode, MAX(percentage) FROM countrylanguage GROUP BY countrycode
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY MAX(percentage) LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY MAX(percentage)
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish'
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT DISTINCT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID ORDER BY T1.Year_of_Founded DESC
SELECT DISTINCT record_company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE NOT TYPE = "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT DISTINCT record_company, COUNT(*) FROM orchestra GROUP BY record_company
SELECT COUNT(*), record_company FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT DISTINCT record_company FROM orchestra
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT DISTINCT record_company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 UNION SELECT DISTINCT record_company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT DISTINCT record_company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT DISTINCT record_company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD'
SELECT DISTINCT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*) > 1
SELECT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*) > 1
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
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(*) FROM Friend
SELECT name, COUNT(*) FROM Friend GROUP BY student_id
SELECT name, COUNT(*) FROM Friend GROUP BY student_id
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT student_id FROM Friend WHERE student_id IN (SELECT student_id FROM Likes)
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T1.id = T3.student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT T1.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle")
SELECT AVG(t1.grade) FROM Highschooler AS t1 JOIN Friend AS t2 ON t1.id = t2.student_id
SELECT AVG(t1.grade) FROM Highschooler AS t1 JOIN Friend AS t2 ON t1.id = t2.student_id
SELECT MIN(grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE NOT T1.id IN (SELECT T2.student_id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id)
SELECT grade FROM Highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT AVG(T2.age) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT AVG(T2.age) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT professional_id, last_name, cell_number FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code GROUP BY professional_id HAVING COUNT(*) > 2 AND state = "IN"
SELECT professional_id, last_name, cell_number FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id JOIN Owners ON Treatments.owner_id = Owners.owner_id WHERE state = "Indiana" GROUP BY professional_id HAVING COUNT(*) > 2
SELECT name FROM Treatments WHERE cost_of_treatment > 1000
SELECT T1.name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Owners AS T3 ON T2.owner_id = T3.owner_id WHERE T3.home_phone <> T3.cell_phone AND T1.cost_of_treatment < 1000
SELECT first_name FROM Owners UNION SELECT first_name FROM Professionals EXCEPT SELECT name FROM Dogs
SELECT first_name FROM Owners UNION SELECT first_name FROM Professionals EXCEPT SELECT name FROM Dogs
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT professional_id, role_code, email_address FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT OWNER_ID, first_name, last_name FROM OWNERS ORDER BY COUNT(*) DESC LIMIT 1
SELECT OWNER_ID, first_name, last_name FROM OWNERS ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, role_code, first_name FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY SUM(T1.cost_of_treatment) DESC LIMIT 1
SELECT tt.treatment_type_description FROM Treatments AS t JOIN Treatment_Types AS tt ON t.treatment_type_code = tt.treatment_type_code ORDER BY t.cost_of_treatment LIMIT 1
SELECT tt.treatment_type_description FROM Treatments AS t JOIN Treatment_Types AS tt ON t.treatment_type_code = tt.treatment_type_code GROUP BY tt.treatment_type_code ORDER BY SUM(t.cost_of_treatment) LIMIT 1
SELECT OWNER_ID, MAX(T2.charge_amount) FROM Treatments AS T1 JOIN Charges AS T2 ON T1.charge_id = T2.charge_id GROUP BY OWNER_ID
SELECT OWNER_ID, MAX(SUM(T2.cost_of_treatment)) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY OWNER_ID
SELECT professional_id, cell_number FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT T1.first_name, T1.last_name FROM Treatments AS T2 JOIN Professionals AS T1 ON T2.professional_id = T1.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(T2.cost_of_treatment) FROM Treatments AS T2 JOIN Professionals AS T1 ON T2.professional_id = T1.professional_id)
SELECT T1.first_name, T1.last_name FROM Treatments AS T2 JOIN Professionals AS T1 ON T2.professional_id = T1.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(T2.cost_of_treatment) FROM Treatments AS T2 JOIN Professionals AS T1 ON T2.professional_id = T1.professional_id)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T1.date_of_treatment FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT cost_of_treatment, treatment_type_description FROM Treatments
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY COUNT(*) LIMIT 1
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived, T1.date_departed FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.date_arrived, T1.date_departed FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT last_name FROM dogs ORDER BY age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "WI" OR state = "HI"
SELECT email_address FROM Professionals WHERE state = "WI" OR state = "HI"
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments AS T JOIN Professionals AS P ON T.professional_id = P.professional_id
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT MAX(cost_of_treatment) FROM Treatments
SELECT cost_of_treatment FROM Treatments ORDER BY treatment_id DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM dogs)
SELECT COUNT(*) FROM Owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT MAX(age) FROM dogs
SELECT MAX(age) FROM dogs
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT MAX(charge_amount) FROM Charges
SELECT MAX(charge_amount) FROM Charges WHERE charge_type = (SELECT MAX(charge_type) FROM Charges)
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT breed_code, size_code FROM dogs
SELECT DISTINCT breed_code, size_code FROM dogs
SELECT T1.first_name, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> 'French'
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
SELECT T2.Name, T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Name, T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT Name FROM singer WHERE Sales > 300000
SELECT Name FROM singer GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM singer GROUP BY Name HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT sname FROM singer WHERE NOT singer_id IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year > 1945 AND Birth_Year < 1955
SELECT Citizenship FROM singer WHERE Birth_Year > 1945 AND Birth_Year < 1955 GROUP BY Citizenship
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT property_type_description FROM Properties WHERE property_type_code = "1"
SELECT property_name FROM Properties WHERE room_count > 1 AND (hse_feature_1 = 'house' OR hse_feature_2 = 'house' OR hse_feature_3 = 'house' OR apt_feature_1 = 'house' OR apt_feature_2 = 'house' OR apt_feature_3 = 'house')
