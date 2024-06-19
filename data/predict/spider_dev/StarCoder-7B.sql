SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = 'France'
SELECT Name, Song_release_year FROM singer ORDER BY Age LIMIT 1
SELECT Name, Song_release_year FROM singer WHERE Age = (SELECT MAX(Age) FROM singer)
SELECT DISTINCT country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE Age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT LOCATION, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT COUNT(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT Stadium_ID, COUNT(*) FROM concert GROUP BY Stadium_ID
SELECT T2.Name, T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year >= 2014 GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year > 2013 GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT country FROM singer WHERE Age > 40 INTERSECT SELECT country FROM singer WHERE Age < 30
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR <> 2014)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR <> 2014)
SELECT concert_Name, COUNT(*) FROM concert GROUP BY concert_Name
SELECT concert_Name, Theme, COUNT(*) FROM concert GROUP BY concert_Name, Theme
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.Name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.Year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.Year = 2014
SELECT Name, Country FROM singer WHERE Song_Name LIKE "%Hey%"
SELECT Name, Country FROM singer WHERE Song_Name LIKE "%Hey%"
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 OR T2.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium WHERE Capacity = (SELECT MAX(Capacity) FROM stadium))
SELECT concert_Name FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium WHERE Capacity = (SELECT MAX(Capacity) FROM stadium))
SELECT COUNT(*) FROM pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM pets WHERE pettype = 'dog' AND pet_age = (SELECT MAX(pet_age) FROM pets WHERE pettype = 'dog')
SELECT weight FROM pets WHERE pettype = 'dog' AND pet_age = (SELECT MAX(pet_age) FROM pets WHERE pettype = 'dog')
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT MAX(weight), pettype FROM pets GROUP BY pettype
SELECT COUNT(*) FROM Student WHERE Age > 20
SELECT COUNT(*) FROM Student WHERE Age > 20
SELECT COUNT(*) FROM Student WHERE Sex = 'F' AND Major = 2
SELECT COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Sex = 'F' AND T1.PetID IN (SELECT PetID FROM Pets AS T3 WHERE T3.PetType = 'dog')
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT DISTINCT T1.fname FROM Has_Pet AS T2 JOIN Pets AS T1 ON T2.PetID = T1.PetID WHERE T1.pettype = 'cat' OR T1.pettype = 'dog'
SELECT DISTINCT T1.fname FROM Has_Pet AS T2 JOIN Pets AS T1 ON T2.PetID = T1.PetID WHERE T1.PetType = 'cat' OR T1.PetType = 'dog'
SELECT T1.fname FROM Has_Pet AS T2 JOIN Pets AS T1 ON T2.PetID = T1.PetID WHERE T1.PetType = 'cat' INTERSECT SELECT T1.fname FROM Has_Pet AS T2 JOIN Pets AS T1 ON T2.PetID = T1.PetID WHERE T1.PetType = 'dog'
SELECT DISTINCT T1.fname FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'cat' INTERSECT SELECT DISTINCT T1.fname FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'dog'
SELECT Major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat')
SELECT Major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat')
SELECT StuID FROM Has_Pet WHERE PetType <> 'cat'
SELECT StuID FROM Has_Pet WHERE PetType <> 'cat'
SELECT Fname, Age FROM Student WHERE Major = 2 AND NOT PetType = 'cat'
SELECT DISTINCT T1.fname FROM Has_Pet AS T2 JOIN Pets AS T1 ON T2.PetID = T1.PetID WHERE T1.PetType = 'dog' EXCEPT SELECT DISTINCT T1.fname FROM Has_Pet AS T2 JOIN Pets AS T1 ON T2.PetID = T1.PetID WHERE T1.PetType = 'cat'
SELECT PetType, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT PetType, MAX(pet_age), MAX(weight) FROM Pets GROUP BY PetType
SELECT PetID, weight FROM pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(pet_age), MAX(pet_age), pettype FROM pets GROUP BY pettype
SELECT AVG(pet_age), MAX(pet_age), pettype FROM pets GROUP BY pettype
SELECT AVG(weight), pettype FROM pets GROUP BY pettype
SELECT AVG(weight), pettype FROM pets GROUP BY pettype
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID <> 0
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT PetID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT PetID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT COUNT(*), StuID FROM Has_Pet GROUP BY StuID
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING COUNT(*) > 1
SELECT DISTINCT T1.fname, T1.sex FROM Has_Pet AS T2 JOIN Student AS T1 ON T2.StuID = T1.StuID GROUP BY T1.fname HAVING COUNT(*) > 1
SELECT T2.LName FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'cat' AND T2.pet_age = 3
SELECT T2.LName FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'cat' AND T2.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT FullName, COUNT(*) FROM car_makers GROUP BY FullName
SELECT FullName, COUNT(*) FROM car_makers GROUP BY FullName
SELECT model FROM model_list ORDER BY horsepower LIMIT 1
SELECT model FROM model_list WHERE horsepower = (SELECT MIN(horsepower) FROM model_list)
SELECT model FROM model_list WHERE weight < (SELECT AVG(weight) FROM model_list)
SELECT model FROM model_list WHERE weight < (SELECT AVG(weight) FROM model_list)
SELECT DISTINCT t1.maker FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid = t2.id WHERE t2.year = 1970
SELECT DISTINCT t1.maker FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid = t2.id WHERE t2.year = 1970
SELECT Make, MIN(Year) FROM car_names GROUP BY Make
SELECT T2.Maker, T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.Year LIMIT 1
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT continent, COUNT(*) FROM continents GROUP BY continent
SELECT Continent, COUNT(*) FROM continents JOIN car_makers ON continents.ContId = car_makers.Continent GROUP BY Continent
SELECT country FROM car_makers GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country FROM car_makers GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), FullName FROM car_makers GROUP BY FullName
SELECT COUNT(*), t1.id, t1.fullname FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker GROUP BY t1.id
SELECT Accelerate FROM cars_data WHERE Make = "amc hornet sportabout" AND Model = "sw"
SELECT Accelerate FROM cars_data WHERE Model = "amc hornet sportabout" AND Make = "sw"
SELECT COUNT(*) FROM car_makers WHERE country = "france"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(DISTINCT Model) FROM model_list WHERE Country = "USA"
SELECT COUNT(DISTINCT Model) FROM model_list WHERE Country = "United States"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT DISTINCT t1.maker, t2.model FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker
SELECT DISTINCT t1.maker, t2.model FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker
SELECT countryid, countryname FROM countries WHERE countryid IN (SELECT country FROM car_makers)
SELECT countryid, countryname FROM countries WHERE countryid IN (SELECT country FROM car_makers)
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT AVG(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT country FROM countries WHERE continent = 2 GROUP BY country HAVING COUNT(*) >= 3
SELECT country FROM countries WHERE continent = 1 GROUP BY country HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), Make FROM car_names WHERE Cylinders = 3
SELECT MAX(Horsepower), Make FROM model_list WHERE Cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM car_names ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "volvo"
SELECT AVG(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(*) FROM car_names WHERE YEAR = 1980
SELECT COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT COUNT(*) FROM car_makers WHERE Maker = "American Motor Company"
SELECT FullName, Id FROM car_makers WHERE COUNT(*) > 3
SELECT Make, Id FROM car_makers WHERE COUNT(*) > 3
SELECT DISTINCT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "General Motors") AND Weight > 3500
SELECT DISTINCT model FROM model_list WHERE maker = 1 OR weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Model = "volvo" ORDER BY Accelerate LIMIT 1
SELECT Cylinders FROM cars_data WHERE Model = "Volvo" ORDER BY Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data)
SELECT country FROM countries WHERE COUNT(*) > 2
SELECT COUNT(*) FROM countries WHERE COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM model_list WHERE horsepower = (SELECT MAX(horsepower) FROM model_list WHERE cylinders = 4)
SELECT model FROM model_list WHERE model_list.model_list.cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT MakeId, Make FROM car_names WHERE Horsepower <> (SELECT MIN(Horsepower) FROM car_names) AND Cylinders <> 3)
SELECT Make, MakeId FROM car_names WHERE Cylinders < 4 ORDER BY Horsepower
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 AND YEAR < 1980
SELECT MAX(MPG), MIN(YEAR) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM model_list WHERE Maker <> 11
SELECT DISTINCT model FROM model_list WHERE weight < 3500 AND NOT maker = 1
SELECT country FROM countries WHERE NOT country IN (SELECT country FROM car_makers)
SELECT country FROM countries WHERE NOT country IN (SELECT country FROM car_makers)
SELECT Id, Maker FROM car_makers GROUP BY Maker HAVING COUNT(*) >= 2 AND COUNT(*) <= 3
SELECT Id, Maker FROM car_makers WHERE COUNT(*) >= 2 AND COUNT(*) >= 3
SELECT CountryId, CountryName FROM countries WHERE CountryName <> 'fiat' GROUP BY CountryName HAVING COUNT(*) > 3 INTERSECT SELECT Country FROM model_list WHERE Model = 'fiat'
SELECT CountryId, CountryName FROM countries WHERE COUNT(*) > 3 INTERSECT SELECT Country FROM model_list WHERE Model = "Fiat"
SELECT country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
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
SELECT T1.City, T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.DestAirport = 'ATL'
SELECT city, country FROM airports WHERE airportcode = 'ATL'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE Country = 'United Kingdom' AND CountryAbbrev = 'GB' AND City = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATL"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABER"
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT COUNT(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen') AND DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Ashley')
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABQ" AND DestAirport = "ASH"
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'JetBlue Airways')
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'Jetblue Airways')
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ASY' AND Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines' AND Country = 'United States')
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ASY' AND Airline IN (SELECT uid FROM airlines WHERE Country = 'United States' AND Abbreviation = 'AS')
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'AHD' AND Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines' AND Country = 'United States')
SELECT COUNT(*) FROM flights WHERE DestAirport = "AHD" AND Airline = (SELECT uid FROM airlines WHERE Airline = "United Airlines" AND Country = "United States")
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.Airline = (SELECT uid FROM airlines AS T3 WHERE T3.Airline = 'United' AND T3.Country = 'United States')
SELECT COUNT(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T2.Country = "United Kingdom" AND T1.Airline = (SELECT T3.uid FROM airlines AS T3 WHERE T3.Airline = "United Airlines" AND T3.Country = "United Kingdom")
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT airportcode FROM airports ORDER BY COUNT(*) LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM flights AS T1 GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY COUNT(*) LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY COUNT(*) LIMIT 1
SELECT T1.Airline FROM airports AS T2 JOIN flights AS T1 ON T2.AirportCode = T1.SourceAirport WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM airports AS T2 JOIN flights AS T1 ON T2.AirportCode = T1.SourceAirport WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM airports AS T2 JOIN flights AS T1 ON T2.AirportCode = T1.DestAirport WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO' EXCEPT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG'
SELECT DISTINCT T1.Airline FROM airports AS T2 JOIN flights AS T1 ON T2.AirportCode = T1.SourceAirport WHERE T2.AirportName <> 'APG' AND T2.AirportName <> 'CVO'
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines')
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM airports WHERE city = 'Aberdeen' OR city = 'Abilene'
SELECT COUNT(*) FROM airports WHERE City = 'Aberdeen' OR City = 'Abilene'
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) INTERSECT SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights) INTERSECT SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT DestAirport FROM flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM EMPLOYEE ORDER BY Age
SELECT Name FROM EMPLOYEE ORDER BY Age
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT DISTINCT t1.city FROM employee AS t1 JOIN hiring AS t2 ON t1.employee_id = t2.employee_id WHERE t1.age > 30 GROUP BY t1.city HAVING COUNT(*) > 1
SELECT DISTINCT city FROM employee WHERE Age > 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop WHERE number_products = (SELECT MAX(number_products) FROM shop)
SELECT manager_name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT Name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT Name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM shop WHERE Number_employees = (SELECT MAX(Number_employees) FROM shop)
SELECT Name FROM shop WHERE Number_employees = (SELECT MAX(Number_employees) FROM shop)
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT T2.Name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID
SELECT T2.Name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID
SELECT SUM(bonus) FROM evaluation
SELECT SUM(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT District FROM shop WHERE Number_products BETWEEN 3000 AND 10000 GROUP BY District HAVING COUNT(*) = 2
SELECT DISTINCT District FROM shop WHERE Number_products BETWEEN 10000 AND 3000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT T2.document_name, T1.template_id FROM Documents AS T2 JOIN Templates AS T1 ON T2.template_id = T1.template_id WHERE T2.document_description LIKE "%w%"
SELECT T2.document_name, T2.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE "%w%"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(DISTINCT template_id) FROM Documents
SELECT COUNT(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'PPT'
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, COUNT(*) FROM Documents GROUP BY template_id
SELECT template_id, template_type_code FROM Templates GROUP BY template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id, template_type_code FROM Templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_id FROM Templates GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM Templates GROUP BY template_id HAVING COUNT(*) > 1
SELECT template_id FROM Templates WHERE NOT template_id IN (SELECT template_id FROM Documents)
SELECT template_id FROM Templates WHERE NOT template_id IN (SELECT template_id FROM Documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM Templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM Templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Ref_Template_Types ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types WHERE NOT template_type_code IN (SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING COUNT(*) < 3)
SELECT template_type_code FROM Ref_Template_Types WHERE NOT template_type_code IN (SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING COUNT(*) < 3)
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = 'Data base'
SELECT DISTINCT t2.document_name FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id WHERE t1.template_type_code = 'BK'
SELECT DISTINCT t2.document_name FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id WHERE t1.template_type_code = 'BK'
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code, COUNT(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types WHERE NOT template_type_code IN (SELECT template_type_code FROM Templates)
SELECT template_type_code FROM Ref_Template_Types WHERE NOT template_type_code IN (SELECT template_type_code FROM Templates)
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = 'AD'
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT DISTINCT T2.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "document_name"
SELECT template_id FROM Templates WHERE template_type_code = (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Presentation")
SELECT template_id FROM Templates WHERE template_type_code = (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = 'Presentation')
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT COUNT(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE "%Korea %"
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_name = 'Welcome to NY'
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_name = 'Welcome to NY'
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = "Customer reviews"
SELECT Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, COUNT(*) FROM Documents GROUP BY document_id
SELECT document_id, COUNT(*) FROM Paragraphs GROUP BY document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id, document_name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY COUNT(*) LIMIT 1
SELECT document_id FROM paragraphs WHERE paragraph_id BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT document_id FROM Documents WHERE Document_Name = 'Brazil' INTERSECT SELECT document_id FROM Documents WHERE Document_Name = 'Ireland'
SELECT document_id FROM Documents WHERE document_name LIKE "%Brazil%" AND document_name LIKE "%Ireland%"
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher WHERE Age = (SELECT MAX(Age) FROM teacher)
SELECT Hometown FROM teacher WHERE Age = (SELECT MAX(Age) FROM teacher)
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID WHERE T1.Course ='math' AND T2.Grade = 1
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course ='math'
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name, COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT Name FROM teacher WHERE COUNT(*) >= 2
SELECT Name FROM teacher WHERE COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(age) FROM visitor WHERE level_of_membership <> 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE Name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT visitor_ID, Name, Age FROM visitor WHERE ID IN (SELECT visitor_ID FROM visit GROUP BY visitor_ID HAVING COUNT(*) > 1)
SELECT visitor_ID, Name, Level_of_membership FROM visitor WHERE Total_spent = (SELECT MAX(Total_spent) FROM visit)
SELECT visitor_ID, Name FROM visit GROUP BY visitor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT Name, Age FROM visitor WHERE Num_of_Ticket = (SELECT MAX(Num_of_Ticket) FROM visit)
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(Num_of_Ticket), visitor_ID FROM visit WHERE Level_of_membership = 1 GROUP BY visitor_ID
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T2.Museum_ID IN (SELECT T3.Museum_ID FROM museum AS T3 WHERE T3.Open_Year < 2009 INTERSECT SELECT T4.Museum_ID FROM museum AS T4 WHERE T4.Open_Year > 2011)
SELECT COUNT(*) FROM visitor WHERE NOT (SELECT COUNT(*) FROM visit WHERE visitor_ID = ID)
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT AVG(winner_age), AVG(loser_age) FROM matches
SELECT AVG(winner_age), AVG(loser_age) FROM matches
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
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT country_code, first_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_level = 'WTA Championships' INTERSECT SELECT tourney_id FROM matches WHERE tourney_level = 'Australian Open'))
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, country_code FROM rankings ORDER BY tours DESC LIMIT 1
SELECT first_name, country_code FROM rankings ORDER BY tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM rankings ORDER BY ranking_points DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_id = "ausopen" AND winner_rank_points = (SELECT MAX(winner_rank_points) FROM matches WHERE tourney_id = "ausopen")
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" GROUP BY winner_name ORDER BY SUM(winner_rank_points) DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches WHERE minutes = (SELECT MAX(minutes) FROM matches)
SELECT AVG(ranking), first_name FROM rankings GROUP BY first_name
SELECT first_name, AVG(ranking_points) FROM rankings GROUP BY first_name ORDER BY AVG(ranking_points) DESC LIMIT 10
SELECT SUM(ranking_points), first_name FROM rankings GROUP BY first_name
SELECT first_name, SUM(ranking_points) FROM rankings GROUP BY first_name ORDER BY SUM(ranking_points) DESC LIMIT 10
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT SUM(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(DISTINCT winner_hand) FROM matches WHERE winner_hand = 'L' AND winner_ioc = 'USA' AND winner_rank_points > 100
SELECT COUNT(*) FROM players WHERE hand = 'L' AND tourney_level = 'WTA'
SELECT winner_name, country_code, birth_date FROM players WHERE player_id IN (SELECT winner_id FROM matches ORDER BY winner_rank_points DESC LIMIT 1)
SELECT first_name, country_code, birth_date FROM players ORDER BY winner_rank_points DESC LIMIT 1
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*), hand FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(injured), MIN(injured) FROM death
SELECT AVG(injured), caused_by_ship_id FROM death GROUP BY caused_by_ship_id
SELECT t2.note FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id WHERE t1.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT id, name FROM ship WHERE ship_type <> 'Brig'
SELECT id, name FROM battle WHERE result = "killed" GROUP BY id HAVING COUNT(*) > 10
SELECT caused_by_ship_id, name FROM death GROUP BY caused_by_ship_id ORDER BY SUM(injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander BETWEEN 'Kaloyan' AND 'Baldwin I' AND latin_commander BETWEEN 'Baldwin I' AND 'Baldwin I'
SELECT COUNT(DISTINCT RESULT) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = 225)
SELECT T2.name, T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T1.name = 'Lettice' AND T2.name = 'HMS Atalanta'
SELECT name, result, bulgarian_commander FROM battle WHERE LOCATION <> 'English Channel'
SELECT note FROM death WHERE note LIKE "%East%"
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM COURSES
SELECT COUNT(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name = 'Math'
SELECT course_description FROM COURSES WHERE course_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM Degree_Programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_name, department_id FROM Degree_Programs GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM DEPARTMENTS WHERE department_id IN (SELECT department_id FROM DEGREE_PROGRAMS)
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = 1
SELECT COUNT(*) FROM Degree_Programs WHERE department_id = 1
SELECT section_name, section_description FROM SECTIONS
SELECT section_name, section_description FROM SECTIONS
SELECT course_name, course_id FROM COURSES WHERE NOT course_id IN (SELECT course_id FROM SECTIONS GROUP BY course_id HAVING COUNT(*) > 2)
SELECT course_name, course_id FROM courses WHERE NOT course_id IN (SELECT course_id FROM sections)
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT section_name FROM SECTIONS ORDER BY section_name DESC
SELECT semester_name, semester_id FROM semesters ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name, semester_id FROM Students GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT first_name, middle_name, last_name, student_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs GROUP BY degree_program_id HAVING COUNT(*) = 2) AND semester_id IN (SELECT semester_id FROM Semesters GROUP BY semester_id HAVING COUNT(*) = 1)
SELECT first_name, middle_name, last_name, student_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Degree_Programs GROUP BY department_id HAVING COUNT(*) = 2)) AND semester_id = (SELECT semester_id FROM Semesters GROUP BY semester_id HAVING COUNT(*) = 1)
SELECT first_name, middle_name, last_name FROM STUDENTS WHERE student_enrolment_id IN (SELECT student_enrolment_id FROM STUDENT_ENROLMENT WHERE degree_program_id IN (SELECT degree_program_id FROM DEGREE_PROGRAMS WHERE department_id IN (SELECT department_id FROM DEPARTMENTS WHERE department_name = 'Bachelor')))
SELECT first_name, middle_name, last_name FROM STUDENTS WHERE student_enrolment_id IN (SELECT student_enrolment_id FROM STUDENT_ENROLMENT WHERE degree_program_id IN (SELECT degree_program_id FROM DEGREE_PROGRAMS WHERE department_id IN (SELECT department_id FROM DEPARTMENTS WHERE department_name = 'Bachelors')))
SELECT degree_summary_name FROM Degree_Programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs ORDER BY COUNT(*) DESC LIMIT 1
SELECT student_id, first_name, middle_name, last_name, COUNT(*) FROM Student_Enrolment GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, middle_name, last_name, COUNT(*) FROM Student_Enrolment GROUP BY first_name, middle_name, last_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT DISTINCT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses)
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM STUDENTS WHERE state_province_county <> 'North Carolina'
SELECT last_name FROM STUDENTS WHERE state_province_county <> 'North Carolina'
SELECT transcript_date, transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT transcript_date, transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM STUDENTS WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM STUDENTS WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM STUDENTS ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM STUDENTS ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM STUDENTS WHERE date_left = (SELECT MIN(date_left) FROM STUDENTS)
SELECT first_name, middle_name, last_name FROM STUDENTS WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM STUDENTS)
SELECT first_name FROM STUDENTS WHERE permanent_address_id <> current_address_id
SELECT first_name FROM STUDENTS WHERE permanent_address_id <> current_address_id
SELECT address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country FROM addresses ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM TRANSCRIPTS
SELECT AVG(transcript_date) FROM TRANSCRIPTS
SELECT transcript_date, other_details FROM TRANSCRIPTS ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM TRANSCRIPTS ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM TRANSCRIPTS
SELECT COUNT(*) FROM TRANSCRIPTS
SELECT transcript_date FROM TRANSCRIPTS ORDER BY transcript_date DESC LIMIT 1
SELECT MAX(transcript_date) FROM TRANSCRIPTS
SELECT MAX(t1.student_course_id), t1.course_id FROM Transcript_Contents AS t1 JOIN Student_Enrolment_Courses AS t2 ON t1.student_course_id = t2.student_course_id GROUP BY t1.course_id HAVING COUNT(*) <= 1
SELECT MAX(t1.course_id), t2.student_enrolment_id FROM Transcript_Contents AS t1 JOIN Student_Enrolment_Courses AS t2 ON t1.student_course_id = t2.student_course_id GROUP BY t1.course_id
SELECT transcript_date, transcript_id FROM TRANSCRIPTS ORDER BY COUNT(*) LIMIT 1
SELECT transcript_date, transcript_id FROM TRANSCRIPTS ORDER BY COUNT(*) LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 1 INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 2
SELECT semester_id FROM Semesters WHERE semester_name = 'Masters' INTERSECT SELECT semester_id FROM Semesters WHERE semester_name = 'Bachelors'
SELECT COUNT(DISTINCT current_address_id) FROM STUDENTS
SELECT DISTINCT t1.address_id FROM addresses AS t1 JOIN students AS t2 ON t1.address_id = t2.current_address_id
SELECT last_name, first_name FROM STUDENTS ORDER BY last_name DESC, first_name DESC
SELECT other_student_details FROM Students ORDER BY last_name DESC
SELECT section_name FROM SECTIONS WHERE section_id = 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT section_description FROM SECTIONS WHERE SECTION_NAME = "h"
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti' OR cell_mobile_number = '09700166582')
SELECT first_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT COUNT(DISTINCT series_name), COUNT(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English'
SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English'
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT t1.series_name FROM TV_Channel AS t1 JOIN Cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating DESC
SELECT Episode FROM TV_series ORDER BY Rating DESC
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(share), MAX(share) FROM TV_series
SELECT MAX(share), MIN(share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Original_air_date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT DISTINCT episode FROM TV_series WHERE channel IN (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes'
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes'
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Written_by <> "Todd Casey")
SELECT Country FROM Cartoon WHERE Written_by <> "Todd Casey"
SELECT T2.series_name, T2.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" AND T1.written_by = "Michael Chang"
SELECT T2.series_name, T2.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> 'English'
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_Channel WHERE NOT directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player ORDER BY Best_Finish DESC LIMIT 10
SELECT Final_Table_Made, Best_Finish FROM poker_player ORDER BY Final_Table_Made DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT Name FROM poker_player
SELECT Name FROM poker_player
SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT Birth_Date FROM people ORDER BY Earnings LIMIT 1
SELECT Birth_Date FROM people ORDER BY Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT MAX(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES ORDER BY created
SELECT contestant_number, contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING COUNT(*) >= 2
SELECT contestant_number, contestant_name FROM contestants ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM AREA_CODE_STATE WHERE area_code IN (SELECT area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.area_code = T2.state GROUP BY T1.area_code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT created, state, phone_number FROM VOTES WHERE contestant_name = 'Tabatha Gehling'
SELECT area_code FROM AREA_CODE_STATE AS AS1 JOIN VOTES AS V ON AS1.area_code = V.state WHERE V.contestant_number = 121212121 AND V.contestant_number = 121212121
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE governmentform = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Carribean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Capital = (SELECT ID FROM city WHERE Name = "Anguilla")
SELECT District FROM city WHERE Name = "Kabul"
SELECT Region FROM country WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW' ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW' GROUP BY Language ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT District, Population FROM city WHERE CountryCode = 'AGO'
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(LifeExpectancy), Region FROM country WHERE Region = 'Central Africa' GROUP BY Region
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Central Africa'
SELECT Name FROM country WHERE LifeExpectancy = (SELECT MIN(LifeExpectancy) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Asia' AND LifeExpectancy = (SELECT MIN(LifeExpectancy) FROM country WHERE Continent = 'Asia')
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT AVG(lifeexpectancy), country.name FROM country WHERE continent = 'Africa' AND governmentform = 'Republic' GROUP BY country.name
SELECT AVG(LifeExpectancy), Name FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic' GROUP BY Name
SELECT SUM(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe')
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT Population FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US Territory'
SELECT AVG(GNP), SUM(Population) FROM country WHERE Continent = 'Asia' AND Region = 'South America'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT SUM(percentage) FROM countrylanguage WHERE countrycode = 'AB' AND language = 'Arabic'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = 'AFG' AND isofficial = 'T'
SELECT COUNT(*) FROM countrylanguage WHERE countrycode = 'AFG' AND isofficial = 'T'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM country WHERE Population = (SELECT MAX(Population) FROM country) AND Population <> 0)
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Dutch' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English'
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Dutch' AND IsOfficial = 'T' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T'
SELECT Name FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT Name FROM countrylanguage WHERE Language = 'French'
SELECT Name FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT Name FROM countrylanguage WHERE Language = 'French'
SELECT Name FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT Name FROM countrylanguage WHERE Language = 'French'
SELECT Name FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT Name FROM countrylanguage WHERE Language = 'French'
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE language = 'Chinese'
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Chinese' AND Continent = 'Asia'
SELECT DISTINCT Region FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch'
SELECT DISTINCT Region FROM countrylanguage WHERE Language = 'Dutch' OR Language = 'English'
SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'English' OR t2.language = 'Dutch'
SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.isofficial = 'T' AND (t2.language = 'English' OR t2.language = 'Dutch')
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' ORDER BY Percentage DESC LIMIT 1
SELECT t1.language FROM countrylanguage AS t2 JOIN country AS t1 ON t2.countrycode = t1.code WHERE t1.continent = 'Asia' GROUP BY t2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.governmentform = 'Republic' GROUP BY t1.language HAVING COUNT(*) = 1
SELECT DISTINCT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.governmentform = 'Republic' GROUP BY t1.language HAVING COUNT(*) = 1
SELECT t1.name FROM countrylanguage AS t2 JOIN country AS t1 ON t2.countrycode = t1.code WHERE t2.language = 'English' AND t1.population = (SELECT MAX(t1.population) FROM country AS t1 JOIN countrylanguage AS t2 ON t2.countrycode = t1.code WHERE t2.language = 'English')
SELECT Name FROM city WHERE Population = (SELECT MAX(Population) FROM city WHERE CountryCode = (SELECT countrycode FROM country WHERE countrylanguage.language = 'English' AND countrylanguage.isofficial = 'T'))
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' AND SurfaceArea = (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Asia')
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' AND SurfaceArea = (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Asia')
SELECT AVG(LifeExpectancy), Name FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') GROUP BY Name
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code IN (SELECT countrycode FROM countrylanguage WHERE Language = 'English')
SELECT SUM(Population) FROM country WHERE NOT Code IN (SELECT countrycode FROM countrylanguage WHERE Language <> 'English')
SELECT SUM(Population) FROM country WHERE NOT Code IN (SELECT countrycode FROM countrylanguage WHERE Language <> 'English')
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix" AND T2.IsOfficial = "T" AND T2.Percentage = (SELECT MAX(T2.Percentage) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix" AND T2.IsOfficial = "T" AND T2.Percentage <> 0)
SELECT t1.language FROM countrylanguage AS t2 JOIN country AS t1 ON t2.countrycode = t1.code WHERE t1.headofstate = "Beatrix" AND t2.isofficial = "T"
SELECT COUNT(DISTINCT t1.language) FROM countrylanguage AS t2 JOIN country AS t1 ON t2.countrycode = t1.code WHERE t1.indepyear < 1930 AND t2.isofficial = 'T'
SELECT COUNT(DISTINCT t1.language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.indepyear < 1930
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE Population < (SELECT MAX(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Population < (SELECT MAX(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT Code FROM country WHERE NOT Code IN (SELECT countrycode FROM countrylanguage WHERE Language = 'English')
SELECT Code FROM country WHERE NOT Code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT countrycode FROM countrylanguage WHERE language <> 'English'
SELECT countrycode FROM countrylanguage WHERE language <> 'English'
SELECT Code FROM country WHERE NOT Code IN (SELECT countrycode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm <> 'Republic'
SELECT Code FROM country WHERE NOT Code IN (SELECT countrycode FROM countrylanguage WHERE Language = 'English') AND NOT GovernmentForm = 'Republic'
SELECT Name FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE NOT Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')) AND Population > 10000
SELECT Name FROM city WHERE CountryCode <> 'USA' AND NOT (CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T'))
SELECT DISTINCT t1.name FROM country AS t2 JOIN countrylanguage AS t1 ON t2.code = t1.countrycode WHERE t2.continent = 'Asia' AND t1.language = 'Chinese' AND t1.isofficial = 'T'
SELECT DISTINCT Name FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia' AND Code2 IN (SELECT Code FROM countrylanguage WHERE Language = 'Chinese' AND IsOfficial = 'T')) AND Name LIKE "%ÊÐ"
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country)
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country)
SELECT Population, Name, HeadOfState FROM country WHERE SurfaceArea = (SELECT MAX(SurfaceArea) FROM country)
SELECT Name, Population, HeadOfState FROM country WHERE SurfaceArea = (SELECT MAX(SurfaceArea) FROM country)
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.percentage >= 3 GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING COUNT(*) > 2
SELECT COUNT(*), district FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district)
SELECT district, COUNT(*) FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district)
SELECT GovernmentForm, SUM(Population), AVG(LifeExpectancy) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm ORDER BY AVG(LifeExpectancy) DESC LIMIT 1
SELECT GovernmentForm, SUM(Population) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT continent, AVG(lifeexpectancy), SUM(population) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT continent, SUM(population), AVG(lifeexpectancy) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country WHERE Population > 10000000 ORDER BY Population DESC LIMIT 3
SELECT Name FROM country WHERE Population = (SELECT MIN(Population) FROM country) LIMIT 3)
SELECT Name FROM country WHERE Population = (SELECT MIN(Population) FROM country) LIMIT 3)
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT COUNT(*) FROM country WHERE continent = 'Asia'
SELECT Name FROM country WHERE Continent = 'Europe' AND Population > 80000
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage ORDER BY Population DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT countrycode, MAX(percentage) FROM countrylanguage GROUP BY countrycode
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' GROUP BY countrycode ORDER BY SUM(percentage) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish'
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' ORDER BY percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = 'Spanish' GROUP BY countrycode ORDER BY SUM(percentage) DESC LIMIT 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE TYPE <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1
SELECT T2.Name, T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name, T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT Name FROM conductor ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor WHERE Year_of_Work > 2008
SELECT Name FROM conductor WHERE YEAR_of_Work > 2008
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT COUNT(*), Record_Company FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC LIMIT 1
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE NOT orchestra_id IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED BETWEEN 2003 AND 2004
SELECT DISTINCT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT DISTINCT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD'
SELECT DISTINCT YEAR_of_Founded FROM orchestra WHERE YEAR_of_Founded IN (SELECT YEAR_of_Founded FROM orchestra GROUP BY YEAR_of_Founded HAVING COUNT(*) > 1)
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
SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(DISTINCT friend_id), name FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name
SELECT T1.name, COUNT(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT name FROM Highschooler WHERE grade = 10 AND COUNT(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT T1.student_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = "Kyle")
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = (SELECT T1.student_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = 1
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT student_id FROM Friend WHERE student_id IN (SELECT liked_id FROM Likes)
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T2.friend_id = T3.liked_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Likes AS T3 ON T2.friend_id = T3.liked_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = 1
SELECT COUNT(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id WHERE T1.name = "Kyle"
SELECT AVG(grade), COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID HAVING COUNT(*) >= 2
SELECT AVG(grade), name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT MIN(grade) FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade), name FROM Highschooler WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE date_of_treatment <> '1900-01-01'
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = 'Indiana' GROUP BY professional_id HAVING COUNT(*) > 2
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = 'Indiana' OR (SELECT COUNT(*) FROM treatments) > 2
SELECT T2.name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment <> (SELECT MAX(T1.cost_of_treatment) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT T2.name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Owners AS T3 ON T3.owner_id = T2.owner_id WHERE T1.cost_of_treatment > 1000 GROUP BY T2.name HAVING COUNT(*) = 1
SELECT DISTINCT first_name FROM Owners WHERE NOT first_name IN (SELECT DISTINCT first_name FROM Dogs)
SELECT DISTINCT first_name FROM Owners WHERE NOT first_name IN (SELECT DISTINCT first_name FROM Dogs)
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT professional_id, role_code, email_address FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT OWNER_ID, first_name, last_name FROM Dogs GROUP BY OWNER_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT OWNER_ID, first_name, last_name FROM Dogs GROUP BY OWNER_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM professionals WHERE professional_id IN (SELECT DISTINCT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT professional_id, role_code, first_name FROM professionals WHERE professional_id IN (SELECT DISTINCT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2)
SELECT T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT OWNER_ID, last_name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY OWNER_ID ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT OWNER_ID, last_name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY OWNER_ID ORDER BY SUM(T2.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment LIMIT 1
SELECT OWNER_ID, zip_code FROM Dogs ORDER BY SUM(charge_amount) DESC LIMIT 1
SELECT OWNER_ID, zip_code FROM Dogs GROUP BY OWNER_ID ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT first_name, last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT AVG(T2.cost_of_treatment) FROM treatments AS T2)
SELECT first_name, last_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments))
SELECT date_of_treatment, first_name FROM treatments JOIN professionals ON treatments.professional_id = professionals.professional_id
SELECT date_of_treatment, T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'operating'
SELECT cost_of_treatment, treatment_type_description FROM treatments JOIN treatment_types ON treatments.treatment_type_code = treatment_types.treatment_type_code
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.name, T1.date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id ORDER BY T2.weight LIMIT 1
SELECT T2.name, T1.date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN sizes AS T3 ON T2.size_code = T3.size_code WHERE T3.size_description = (SELECT MIN(T4.size_description) FROM sizes AS T4 JOIN dogs AS T2 ON T4.size_code = T2.size_code)
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT MAX(T2.age) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id)
SELECT last_name FROM Dogs WHERE age = (SELECT MAX(age) FROM Dogs)
SELECT email_address FROM Owners WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT DISTINCT email_address FROM Owners WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(*) FROM Dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT role_code, street, city, state FROM professionals WHERE city LIKE "%West%"
SELECT role_code, street, city, state FROM professionals WHERE city LIKE "%West%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE abandoned_yn = 'N'
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM Dogs)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT COUNT(*) FROM professionals WHERE NOT professional_id IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT MAX(age) FROM Dogs
SELECT MAX(age) FROM Dogs
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT DISTINCT t1.breed_name, t2.size_description FROM Breeds AS t1 JOIN Sizes AS t2 ON t1.breed_code = t2.size_code
SELECT DISTINCT T1.breed_name, T2.size_description FROM Dogs AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T2.first_name, T1.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T2.first_name, T1.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T3.role_code = 'Treatment'
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> 'France'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship
SELECT Title, Name FROM song JOIN singer ON song.Singer_ID = singer.Singer_ID
SELECT Title, Name FROM singer JOIN song ON singer.Singer_ID = song.Singer_ID
SELECT DISTINCT Name FROM singer WHERE Net_Worth_Millions > 300000
SELECT DISTINCT Name FROM singer WHERE Sales > 300000
SELECT Name FROM singer WHERE Singer_ID IN (SELECT DISTINCT singer_id FROM song GROUP BY singer_id HAVING COUNT(*) > 1)
SELECT Name FROM singer WHERE Singer_ID IN (SELECT DISTINCT singer_id FROM song GROUP BY singer_id HAVING COUNT(*) > 1)
SELECT Name, SUM(Sales) FROM singer JOIN song ON singer.Singer_ID = song.Singer_ID GROUP BY Name
SELECT Name, SUM(Sales) FROM singer JOIN song ON singer.Singer_ID = song.Singer_ID GROUP BY Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT DISTINCT citizenship FROM singer WHERE birth_year BETWEEN 1945 AND 1955
SELECT DISTINCT citizenship FROM singer WHERE birth_year BETWEEN 1945 AND 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = 'AirCon'
SELECT DISTINCT property_type_description FROM Properties WHERE property_type_code = "T1"
SELECT property_name FROM Properties WHERE room_count > 1 UNION SELECT property_name FROM Properties WHERE property_type_code = 'house'
