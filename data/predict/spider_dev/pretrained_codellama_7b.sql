SELECT COUNT(*) FROM singer;
SELECT COUNT(*) FROM singer;
SELECT "Name", "Country", "Age" FROM "singer" ORDER BY "Age" DESC;
SELECT "Name", "Country", "Age" FROM "singer" ORDER BY "Age" DESC;
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = 'France';
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = 'France';
SELECT "Song_Name", "Song_release_year" FROM "singer" WHERE "Age" = (SELECT MIN("Age") FROM "singer");
SELECT "Song_Name", "Song_release_year" FROM "singer" WHERE "Age" = (SELECT MIN("Age") FROM "singer");
SELECT DISTINCT "Country" FROM "singer" WHERE "Age" > 20
SELECT "Country" FROM "singer" WHERE "Age" > 20 GROUP BY "Country"
SELECT "Country", COUNT("Singer_ID") FROM "singer" GROUP BY "Country"
SELECT "Country", COUNT("Singer_ID") FROM "singer" GROUP BY "Country"
SELECT "Song_Name" FROM "singer" WHERE "Age" > (SELECT AVG("Age") FROM "singer");
SELECT "Song_Name" FROM "singer" WHERE "Age" > (SELECT AVG("Age") FROM "singer");
SELECT "Location", "Name" FROM "stadium" WHERE "Capacity" BETWEEN 5000 AND 10000;
SELECT "Location", "Name" FROM "stadium" WHERE "Capacity" BETWEEN 5000 AND 10000;
error
SELECT AVG(Capacity), MAX(Capacity) FROM stadium;
SELECT "Name", "Capacity" FROM "stadium" WHERE "Average" = (SELECT MAX("Average") FROM "stadium");
SELECT "Name", "Capacity" FROM "stadium" WHERE "Average" = (SELECT MAX("Average") FROM "stadium");
SELECT * FROM concert WHERE year IN ('2014','2015');
SELECT * FROM concert WHERE Year IN ('2014','2015');
SELECT "Name", COUNT("concert_ID") FROM "stadium" INNER JOIN "concert" ON "stadium"."Stadium_ID" = "concert"."Stadium_ID" GROUP BY "Name"
SELECT "Stadium_ID", COUNT("Stadium_ID") FROM "concert" GROUP BY "Stadium_ID"
SELECT "Name", "Capacity" FROM "stadium" WHERE "Capacity" IN (SELECT COUNT("Stadium_ID") FROM "concert" WHERE "Year" >= 2014 GROUP BY "Stadium_ID" ORDER BY COUNT("Stadium_ID") DESC LIMIT 1);
SELECT "Name", "Capacity" FROM "stadium" WHERE "Capacity" = (SELECT MAX("Capacity")                     FROM "stadium"                     WHERE "Capacity" > 100000                     AND "Capacity" < 1000000                     AND "Capacity" > (SELECT MAX("Capacity")                                       FROM "stadium"                                       WHERE "Capacity" > 100000                                       AND "Capacity" < 1000000                                       AND "Capacity" < (SELECT MAX("Capacity")                                                         FROM "stadium"                                                         WHERE "Capacity" > 100000                                                         AND "Capacity" < 1000000)));
SELECT "Year" FROM "concert" GROUP BY "Year" ORDER BY COUNT("Year") DESC LIMIT 1
SELECT "Year" FROM "concert" GROUP BY "Year" ORDER BY COUNT("Year") DESC LIMIT 1;
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert");
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert");
SELECT "Country" FROM "singer" WHERE "Age" > 40 AND "Age" < 30;
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" = '2014');
SELECT "Name" FROM "stadium" WHERE "Name" NOT IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" = '2014');
SELECT "concert_Name", "Theme", COUNT("Singer_ID") FROM "concert" INNER JOIN "singer_in_concert" ON "concert_ID" = "concert_ID" GROUP BY "concert_Name", "Theme"
SELECT "concert_Name", "Theme", COUNT("Singer_ID") FROM "concert" INNER JOIN "singer_in_concert" ON "concert_ID" = "concert_ID" GROUP BY "concert_Name", "Theme"
SELECT "Name", COUNT("Singer_ID") FROM "singer" INNER JOIN "singer_in_concert" ON "singer_in_concert"."Singer_ID" = "singer"."Singer_ID" GROUP BY "Name"
SELECT "Name", COUNT("concert_ID") FROM "singer" INNER JOIN "singer_in_concert" ON "singer_in_concert"."Singer_ID" = "singer"."Singer_ID" GROUP BY "Name"
SELECT "Name" FROM "singer" INNER JOIN "singer_in_concert" ON "singer_in_concert"."Singer_ID" = "singer"."Singer_ID" INNER JOIN "concert" ON "concert"."concert_ID" = "singer_in_concert"."concert_ID" WHERE "Year" = '2014'
SELECT "Name" FROM "singer" INNER JOIN "singer_in_concert" ON "singer_in_concert"."Singer_ID" = "singer"."Singer_ID" INNER JOIN "concert" ON "concert"."concert_ID" = "singer_in_concert"."concert_ID" WHERE "concert"."Year" = '2014'
SELECT "Name", "Country" FROM "singer" WHERE "Song_Name" LIKE '%Hey%'
SELECT "Name", "Country" FROM "singer" WHERE "Song_Name" LIKE '%Hey%'
SELECT "Name", "Location" FROM "stadium" WHERE "Stadium_ID" IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" IN ('2014', '2015'));
SELECT "Name", "Location" FROM "stadium" WHERE "Stadium_ID" IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" = '2014' AND "Year" = '2015');
SELECT COUNT(*) FROM "concert" WHERE "Stadium_ID" = (SELECT "Stadium_ID"                       FROM "stadium"                       ORDER BY "Capacity" DESC                       LIMIT 1);
SELECT COUNT(*) FROM "concert" WHERE "Stadium_ID" = (SELECT "Stadium_ID" FROM "stadium" ORDER BY "Capacity" DESC LIMIT 1);
SELECT COUNT(*) FROM Pets WHERE weight > 10;
SELECT * FROM Pets WHERE weight > 10;
SELECT weight FROM Pets WHERE PetType = 'dog' ORDER BY pet_age ASC LIMIT 1;
SELECT weight FROM Pets WHERE PetType = 'dog' AND pet_age = (SELECT MIN(pet_age) FROM Pets WHERE PetType = 'dog');
SELECT PetType, MAX(weight) FROM Pets GROUP BY PetType
SELECT PetType, MAX(weight) FROM Pets GROUP BY PetType
SELECT COUNT(PetID) FROM Has_Pet WHERE StuID IN (SELECT StuID                 FROM Student                 WHERE Age > 20)
SELECT COUNT(PetID) FROM Has_Pet WHERE StuID IN (SELECT StuID                 FROM Student                 WHERE Age > 20)
SELECT COUNT(PetID) FROM Pets WHERE PetType = 'dog' AND StuID IN ( 	SELECT StuID 	FROM Student 	WHERE Sex = 'F' )
SELECT COUNT(PetID) FROM Pets WHERE PetType = 'dog' AND EXISTS (SELECT *             FROM Has_Pet             WHERE Has_Pet.PetID = Pets.PetID             AND EXISTS (SELECT *                         FROM Student                         WHERE Student.StuID = Has_Pet.StuID                         AND Student.Sex = 'F'))
SELECT DISTINCT PetType FROM Pets;
SELECT DISTINCT PetType FROM Pets;
SELECT Fname FROM Student, Has_Pet, Pets WHERE Student.StuID = Has_Pet.StuID AND Pets.PetID = Has_Pet.PetID AND Pets.PetType IN ('cat', 'dog');
SELECT Fname FROM Student, Has_Pet, Pets WHERE Student.StuID = Has_Pet.StuID AND Pets.PetID = Has_Pet.PetID AND Pets.PetType IN ('cat', 'dog')
SELECT Fname FROM Student WHERE StuID IN ( 	SELECT StuID 	FROM Has_Pet 	WHERE PetID IN ( 		SELECT PetID 		FROM Pets 		WHERE PetType = 'cat' 	) 	AND StuID IN ( 		SELECT StuID 		FROM Has_Pet 		WHERE PetID IN ( 			SELECT PetID 			FROM Pets 			WHERE PetType = 'dog' 		) 	) )
SELECT Fname FROM Student S, Has_Pet H, Pets P WHERE S.StuID = H.StuID AND H.PetID = P.PetID AND P.PetType IN ('cat', 'dog')
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat'))
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Cat'));
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat'));
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Cat'));
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'Dog')                   AND StuID NOT IN (SELECT StuID                                     FROM Has_Pet                                     WHERE PetID IN (SELECT PetID                                                     FROM Pets                                                     WHERE PetType = 'Cat')));
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'dog') AND PetID NOT IN (SELECT PetID FROM Pets WHERE PetType = 'cat'))
SELECT PetType, weight FROM Pets WHERE PetID IN (SELECT PetID                 FROM Has_Pet                 WHERE StuID IN (SELECT StuID                                 FROM Student                                 WHERE Age = (SELECT MIN(Age)                                               FROM Student)));
SELECT PetType, MIN(weight) FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)
SELECT PetID, weight FROM Pets WHERE pet_age > 1;
SELECT PetID, weight FROM Pets WHERE pet_age > 1;
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT Fname, Age FROM Student, Has_Pet WHERE Student.StuID = Has_Pet.StuID;
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet);
SELECT PetID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith');
SELECT PetID FROM Has_Pet WHERE StuID = (SELECT StuID FROM Student WHERE LName = 'Smith');
SELECT StuID, COUNT(PetID) FROM Has_Pet GROUP BY StuID
SELECT Student.StuID, COUNT(PetID) FROM Student, Has_Pet WHERE Student.StuID = Has_Pet.StuID GROUP BY Student.StuID
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1);
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat' AND pet_age = 3));
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat' AND pet_age = 3));
SELECT AVG(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT AVG(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT COUNT(*) FROM continents;
SELECT COUNT(*) FROM continents;
SELECT ContId, Continent, COUNT(CountryId) FROM countries GROUP BY ContId, Continent
SELECT ContId, Continent, COUNT(CountryId) FROM continents JOIN countries ON Continent = ContId GROUP BY ContId
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT car_makers.Maker, car_makers.FullName, COUNT(model_list.Model) FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Maker
SELECT car_makers.Id, car_makers.FullName, COUNT(model_list.Model) FROM car_makers LEFT JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.FullName
SELECT Model, Horsepower FROM car_names INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Horsepower = (SELECT MIN(Horsepower) FROM cars_data)
SELECT Model FROM car_names WHERE MakeId IN (SELECT MakeId FROM cars_data WHERE Horsepower = (SELECT MIN(Horsepower) FROM cars_data));
SELECT Model FROM car_names WHERE MakeId IN (SELECT MakeId FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data));
SELECT Model FROM car_names JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT "Make" FROM "car_names" WHERE "MakeId" IN ( 	SELECT "Id" FROM "cars_data" 	WHERE "Year" = 1970 )
SELECT DISTINCT car_names.Make, car_names.Model, car_makers.Maker, car_makers.FullName, car_makers.Country FROM car_names INNER JOIN car_makers ON car_names.MakeId = car_makers.Id INNER JOIN model_list ON car_names.MakeId = model_list.Maker INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = 1970
SELECT Make, Year FROM car_names JOIN cars_data ON car_names.MakeId = cars_data.Id ORDER BY Year ASC LIMIT 1
SELECT car_names.Make, cars_data.Year FROM car_names INNER JOIN cars_data ON car_names.MakeId = cars_data.Id ORDER BY cars_data.Year ASC LIMIT 1
SELECT DISTINCT Model FROM model_list WHERE ModelId IN (SELECT MakeId FROM car_names WHERE Year > 1980)
SELECT Model FROM model_list WHERE Year > 1980
SELECT Continent, COUNT(Continent) FROM continents GROUP BY Continent
SELECT Continent, COUNT(Maker) FROM car_makers GROUP BY Continent
SELECT countries.CountryName, COUNT(car_makers.Id) AS Count FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryName ORDER BY Count DESC LIMIT 1
SELECT CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1)
SELECT COUNT(Model), FullName FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY FullName
SELECT COUNT(Model), Maker, FullName FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY Maker
SELECT Accelerate FROM cars_data WHERE MakeId = (SELECT MakeId FROM car_names WHERE Make = 'amc' AND Model = 'hornet sportabout');
SELECT * FROM cars_data WHERE Make = 'AMC Hornet Sportabout' AND Model = 'AMC Hornet Sportabout';
SELECT COUNT(*) FROM car_makers WHERE Country = 'France';
SELECT COUNT(*) FROM car_makers WHERE Country = 'France';
SELECT COUNT(*) FROM car_names WHERE Make = 'USA';
SELECT COUNT(*) FROM car_names WHERE Make = 'United States';
SELECT AVG(cars_data.MPG) FROM cars_data WHERE cars_data.Cylinders = 4;
SELECT AVG(cars_data.MPG) FROM cars_data WHERE cars_data.Cylinders = 4
SELECT * FROM cars_data WHERE Cylinders = 8 AND Year = 1974 ORDER BY Weight ASC LIMIT 1
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT DISTINCT Maker, Model FROM car_names
SELECT Maker, Model FROM car_names
SELECT countries.CountryName, countries.CountryId FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country
SELECT countries.CountryName, countries.CountryId FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country
SELECT * FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(Weight) FROM cars_data GROUP BY Year
SELECT AVG(Weight), Year FROM cars_data GROUP BY Year
SELECT countries.CountryName FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Country = countries.CountryId GROUP BY countries.CountryName HAVING COUNT(car_makers.Country) >= 3
SELECT countries.CountryName FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryName HAVING COUNT(car_makers.Id) >= 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3 GROUP BY Make
SELECT MAX(Horsepower) FROM cars_data WHERE Cylinders = 3
SELECT Model, MPG FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT Model, MPG FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980;
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = 'volvo';
SELECT AVG(Edispl) FROM cars_data WHERE Make = 'Volvo';
SELECT Cylinders, MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT Model, COUNT(Model) FROM car_names GROUP BY Model ORDER BY COUNT(Model) DESC
SELECT Model, COUNT(Model) FROM model_list GROUP BY Model ORDER BY COUNT(Model) DESC
SELECT * FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Year = 1980;
SELECT COUNT(*) FROM cars_data WHERE Year = 1980
SELECT COUNT(*) FROM car_names WHERE Make = 'American Motor Company';
SELECT COUNT(*) FROM model_list WHERE Maker = 1;
SELECT "FullName", "Id" FROM "car_makers" WHERE "Id" IN ( 	SELECT "Maker" FROM "model_list" GROUP BY "Maker" HAVING COUNT("Model") > 3 )
SELECT Maker, Id FROM car_makers WHERE Id IN (SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) > 3)
SELECT Model FROM model_list WHERE Maker = 1 OR Weight > 3500
SELECT Model FROM model_list WHERE Maker = 1 OR Weight > 3500
SELECT Year FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000
SELECT Year FROM cars_data WHERE Weight < 4000 AND Weight > 3000
SELECT cars_data.Horsepower FROM cars_data WHERE cars_data.Accelerate = (SELECT MAX(Accelerate) FROM cars_data)
SELECT cars_data.Horsepower FROM cars_data WHERE cars_data.Accelerate = (SELECT MAX(Accelerate) FROM cars_data)
SELECT c.Cylinders FROM cars_data c INNER JOIN model_list m ON c.Id = m.MakeId WHERE m.Model = 'volvo' ORDER BY c.Accelerate ASC LIMIT 1
SELECT c.Cylinders FROM cars_data c INNER JOIN car_names n ON c.Id = n.MakeId INNER JOIN model_list m ON n.Model = m.Model INNER JOIN car_makers k ON m.Maker = k.Id WHERE n.Make = 'Volvo' ORDER BY c.Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data)
SELECT COUNT(DISTINCT Country) FROM car_makers GROUP BY Country HAVING COUNT(DISTINCT Maker) > 2
SELECT COUNT(*) FROM ( 	SELECT CountryId, COUNT(*) AS Count FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 2 )
SELECT * FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Model, Horsepower FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model, Horsepower FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC
SELECT car_names.MakeId, car_names.Make FROM car_names INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND cars_data.Cylinders < 3
SELECT MakeId, Make FROM car_names WHERE ModelId IN (SELECT ModelId FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE Continent = 1))) AND Cylinders < 4;
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980;
SELECT Model FROM model_list WHERE Maker != 1 AND Weight < 3500
SELECT Model FROM model_list WHERE MakeId NOT IN (SELECT MakeId FROM car_names WHERE Make = 'Ford') AND Weight < 3500;
SELECT countries.CountryName FROM countries LEFT JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Id IS NULL
SELECT countries.CountryName FROM countries LEFT JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Id IS NULL
SELECT car_makers.Id, car_makers.Maker FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id HAVING COUNT(model_list.Model) >= 2 AND COUNT(DISTINCT car_makers.Maker) >= 3
SELECT car_makers.Id, car_makers.Maker FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.Maker HAVING COUNT(model_list.Model) >= 2 AND COUNT(car_names.MakeId) >= 3
SELECT countries.CountryId, countries.CountryName FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country WHERE (SELECT COUNT(*) FROM car_makers WHERE car_makers.Country = countries.CountryId) > 3 OR (SELECT COUNT(*) FROM model_list WHERE model_list.Maker = car_makers.Id) > 1
SELECT countries.CountryId, countries.CountryName FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country WHERE (SELECT COUNT(*) FROM car_makers WHERE car_makers.Country = countries.CountryId) > 3 OR (SELECT COUNT(*) FROM model_list WHERE model_list.Maker = car_makers.Id AND model_list.Model = 'fiat') > 0
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways";
SELECT Country FROM airlines WHERE uid = (SELECT Airline FROM flights WHERE SourceAirport = 'JFK');
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue Airways';
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways';
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony';
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony';
SELECT COUNT(*) FROM airlines;
SELECT COUNT(*) FROM airlines;
SELECT COUNT(*) FROM airports;
SELECT COUNT(*) FROM airports;
SELECT COUNT(*) FROM flights;
SELECT COUNT(*) FROM flights;
SELECT * FROM airlines WHERE Abbreviation = 'UAL';
SELECT * FROM airlines WHERE Abbreviation = 'UAL';
SELECT COUNT(*) FROM airlines WHERE Country = 'USA';
SELECT COUNT(*) FROM airlines WHERE Country = 'USA';
SELECT City, Country FROM airports WHERE AirportCode = 'ALT'
SELECT City, Country FROM airports WHERE AirportCode = 'ALT'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABR'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABR'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABR'
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABR'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABR' AND DestAirport = 'ASH';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABR' AND DestAirport = 'ASH';
SELECT COUNT(*) FROM flights WHERE Airline = 1;
SELECT COUNT(*) FROM flights WHERE Airline = 1;
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND DestAirport = 'ASY'
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND DestAirport = 'ASY'
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND SourceAirport = 'AHD'
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND SourceAirport = 'AHD'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABR' AND Airline = 1;
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND DestAirport = 'ABR'
SELECT City, COUNT(*) AS NumFlights FROM airports JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY City ORDER BY NumFlights DESC LIMIT 1
SELECT City, COUNT(DestAirport) AS Frequency FROM flights INNER JOIN airports ON flights.DestAirport = airports.AirportCode GROUP BY City ORDER BY Frequency DESC LIMIT 1
SELECT City, COUNT(*) FROM flights GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT City, COUNT(*) FROM flights 	INNER JOIN airports ON SourceAirport = AirportCode 	GROUP BY City 	ORDER BY COUNT(*) DESC 	LIMIT 1
SELECT AirportCode, COUNT(AirportCode) FROM flights GROUP BY AirportCode ORDER BY COUNT(AirportCode) DESC LIMIT 1
SELECT AirportCode, COUNT(*) FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode, COUNT(*) FROM flights GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT AirportCode FROM airports ORDER BY COUNT(FlightNo) LIMIT 1;
SELECT Airline, COUNT(*) AS NumFlights FROM flights GROUP BY Airline ORDER BY NumFlights DESC LIMIT 1
SELECT Airline, COUNT(*) FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines WHERE uid IN ( 	SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) = ( 		SELECT MIN(cnt) FROM ( 			SELECT COUNT(*) AS cnt FROM flights GROUP BY Airline 		) 	) )
SELECT Airline, Country, COUNT(*) FROM flights INNER JOIN airlines ON flights.Airline = airlines.uid INNER JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY Airline, Country ORDER BY COUNT(*) ASC LIMIT 1
SELECT Airline FROM flights WHERE SourceAirport = 'AHD'
SELECT Airline FROM flights WHERE SourceAirport = 'AHD'
SELECT Airline FROM flights WHERE DestAirport = 'AHD'
SELECT Airline FROM flights WHERE DestAirport = 'AHD'
SELECT Airline FROM flights WHERE SourceAirport = 'APG' AND DestAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = 'APG' AND DestAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' AND DestAirport != 'APG'
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' AND NOT EXISTS ( 	SELECT * FROM flights 	WHERE DestAirport = 'APG' )
SELECT Airline, COUNT(*) FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM airlines WHERE Airline IN ( 	SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10 )
SELECT Airline, COUNT(*) FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline, COUNT(FlightNo) FROM flights GROUP BY Airline HAVING COUNT(FlightNo) < 200
SELECT FlightNo FROM flights WHERE Airline = 1;
SELECT FlightNo FROM flights WHERE Airline = 1;
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG';
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'
SELECT FlightNo FROM flights WHERE DestAirport = 'APG';
SELECT FlightNo FROM flights WHERE SourceAirport = 'ABE'
SELECT FlightNo FROM flights WHERE SourceAirport = 'ABR'
SELECT FlightNo FROM flights WHERE DestAirport = 'ABR'
SELECT FlightNo FROM flights WHERE DestAirport = 'ABR'
SELECT COUNT(*) FROM flights WHERE DestAirport IN ('ABE', 'ABI');
SELECT COUNT(*) FROM flights WHERE DestAirport IN ('ABR','ABI')
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT COUNT(*) FROM employee;
SELECT COUNT(*) FROM employee;
SELECT "Name" FROM "employee" ORDER BY "Age" ASC;
SELECT "Name" FROM "employee" ORDER BY "Age" ASC;
SELECT "City", COUNT("Employee_ID") FROM "employee" GROUP BY "City"
SELECT "City", COUNT("Employee_ID") FROM "employee" GROUP BY "City"
error
error
SELECT "Location", COUNT("Location") FROM "shop" GROUP BY "Location";
SELECT "Location", COUNT("Location") FROM "shop" GROUP BY "Location";
SELECT "Name", "District" FROM "shop" WHERE "Number_products" = (SELECT MAX("Number_products") FROM "shop");
SELECT "Name", "District" FROM "shop" WHERE "Number_products" = (SELECT MAX("Number_products") FROM "shop");
SELECT "Number_products" FROM "shop"
SELECT MIN(Number_products), MAX(Number_products) FROM shop;
SELECT "Name", "Location", "District" FROM "shop" ORDER BY "Number_products" DESC
SELECT "Name", "Location", "District" FROM "shop" ORDER BY "Number_products" DESC
SELECT "Name" FROM "shop" WHERE "Number_products" > (SELECT AVG("Number_products") FROM "shop");
error
error
SELECT "Name" FROM "employee" WHERE "Employee_ID" IN (SELECT "Employee_ID" FROM "evaluation" GROUP BY "Employee_ID" ORDER BY COUNT(*) DESC LIMIT 1)
SELECT "Name" FROM "employee" WHERE "Employee_ID" = ( SELECT "Employee_ID" FROM "evaluation" WHERE "Bonus" = ( SELECT MAX("Bonus") FROM "evaluation" ) )
SELECT "Name" FROM "employee" JOIN "evaluation" ON "evaluation"."Employee_ID" = "employee"."Employee_ID" WHERE "Bonus" = (SELECT MAX("Bonus") FROM "evaluation")
SELECT e.Name FROM employee e WHERE e.Employee_ID NOT IN (     SELECT e.Employee_ID     FROM evaluation e ) \end{code}  Comment: What is the question?  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question.  Comment: @forpas I have edited the question
SELECT "Name" FROM "employee" WHERE "Employee_ID" NOT IN (SELECT "Employee_ID" FROM "evaluation")
SELECT "Name" FROM "shop" WHERE "Number_products" = (SELECT MAX("Number_products") FROM "shop");
SELECT "Name" FROM "shop" WHERE "Number_products" = (SELECT MAX("Number_products") FROM "shop");
SELECT "Name" FROM "shop" WHERE "Shop_ID" NOT IN ( SELECT "Shop_ID" FROM "hiring" )
SELECT "Name" FROM "shop" WHERE "Shop_ID" NOT IN (SELECT "Shop_ID" FROM "hiring");
SELECT shop.Name, COUNT(hiring.Employee_ID) FROM shop JOIN hiring ON shop.Shop_ID = hiring.Shop_ID GROUP BY shop.Name
SELECT shop.Name, COUNT(hiring.Employee_ID) FROM shop LEFT JOIN hiring ON shop.Shop_ID = hiring.Shop_ID GROUP BY shop.Name
SELECT SUM(Bonus) FROM evaluation;
SELECT SUM(Bonus) FROM evaluation;
SELECT * FROM hiring;
SELECT * FROM hiring;
SELECT DISTINCT "District" FROM "shop" WHERE "Number_products" < 3000 AND "Number_products" > 10000
error
SELECT DISTINCT "Location" FROM "shop";
SELECT COUNT(DISTINCT "Location") FROM "shop";
SELECT COUNT(DISTINCT Document_ID) FROM Documents
SELECT COUNT(DISTINCT Document_ID) FROM Documents
error
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_ID, Template_ID, Template_Type_Description FROM Documents INNER JOIN Templates ON Documents.Template_ID = Templates.Template_ID INNER JOIN Ref_Template_Types ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code WHERE Document_Name = 'Robbin CV' \end{code}  Comment: What is the question?  Comment: What is the document id, template id and description for document named "Robbin CV"?  Comment: You should add that to your question.  Comment: I have added the question to the question.  Comment: You should add the question to the question.  Comment: I have added the question to the question.  Comment: You should add the question to the question.  Comment: I have added the question to the question.  Comment: You should add the question to the question.  Comment: I have added the question to the question.  Comment: You should add the question to the question.  Comment: I have added the question to the question.  Comment: You should add the question to
SELECT Document_ID, Template_ID, Template_Description FROM Documents WHERE Document_Name = 'Robbin CV'
SELECT Template_Type_Code, COUNT(Template_Type_Code) FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Template_Type_Code \end{code}  Comment: I'm not sure I understand the question.  Can you provide some sample data and desired results?  Comment: I've added some sample data and desired results.  Answer: You can use `exists` to check if a document has a paragraph with a certain text:  \begin{code} select t.* from templates t where exists (select 1               from documents d join                    paragraphs p                    on d.document_id = p.document_id               where d.template_id = t.template_id and                     p.paragraph_text = 'some text'              ); \end{code}  Comment: Thanks for the answer. I've added some sample data and desired results.  Comment: @user3713218 . . . This answers the question that you asked.  If you have a different question, then
error
SELECT COUNT(DISTINCT Document_ID) FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Templates WHERE Template_Type_Code = 'PPT' )
error
SELECT Template_ID, COUNT(Template_ID) FROM Documents GROUP BY Template_ID
SELECT Template_ID, COUNT(Template_ID) FROM Documents GROUP BY Template_ID
error
SELECT Template_ID, Template_Type_Code FROM Templates WHERE Template_ID = (SELECT MAX(Template_ID)                      FROM Templates                      GROUP BY Template_Type_Code) \end{code}  Comment: What is the question?  Comment: I'm trying to answer the question in the title.  Comment: You need to use a subquery to get the max number of documents for each template type.  Comment: I'm not sure how to do that.  Comment: I've added the answer to your question.  Answer: You need to use a subquery to get the max number of documents for each template type.  \begin{code} SELECT Template_ID, Template_Type_Code FROM Templates WHERE Template_ID = (SELECT MAX(Template_ID)                      FROM Templates                      GROUP BY Template_Type_Code) \end{code}  Comment: I'm getting an error saying "Subquery returned more than 1 value. This is not permitted when the subquery follows =, !=, <, <= , >, >= or when the subquery
error
error
error
error
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Templates
SELECT Template_Type_Code FROM Ref_Template_Types
SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ('PP', 'PPT')
SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ('PP', 'PPT')
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
error
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
error
error
error
error
error
error
error
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code \end{code}  Comment: What is the question?  Comment: I'm trying to return the lowest version number, along with its corresponding template type code.  Comment: What is the problem with your query?  Comment: I'm not sure how to return the lowest version number, along with its corresponding template type code.  Comment: I'm not sure what you mean by "lowest version number".  Do you mean the minimum value of `Version_Number` for each `Template_Type_Code`?  Comment: Yes, that's exactly what I mean.  Answer: You can use `GROUP BY` and `MIN()`:  \begin{code} SELECT Template_Type_Code, MIN(Version_Number) FROM Templates GROUP BY Template_Type_Code; \end{code}  Comment: Thank you, that's exactly what I was looking for.  Answer: You can use `MIN()` and `GROUP BY` to get the lowest version number for each template type code
SELECT Template_Type_Code FROM Templates WHERE Template_ID = (SELECT Template_ID                      FROM Documents                      WHERE Document_Name = 'Data base')
SELECT Template_Type_Code FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents WHERE Document_Name = 'Data base' ) \end{code}  Comment: What is the question?  Comment: I'm sorry, I'm new to this. I'm trying to answer the following question: Return the template type code of the template that is used by a document named Data base.  Comment: You should edit your question to include that information.  Comment: I've edited the question.  Answer: You can use a subquery to get the `Template_ID` for the document named `Data base`, and then join that to the `Templates` table to get the `Template_Type_Code`:  \begin{code} SELECT Template_Type_Code FROM Templates INNER JOIN (     SELECT Template_ID     FROM Documents     WHERE Document_Name = 'Data base' ) d ON d.Template_ID = Templates.Template_ID \end{code}  Comment: Thank you so much! I've been trying to figure this out for
error
SELECT Document_Name FROM Documents WHERE Template_ID IN ( SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'BK' ) \end{code}  Comment: What is the question?  Comment: What are the names of documents that use templates with the code BK?  Comment: What is the question?  Comment: What are the names of documents that use templates with the code BK?  Comment: What is the question?  Comment: What are the names of documents that use templates with the code BK?  Comment: What is the question?  Comment: What are the names of documents that use templates with the code BK?  Comment: What is the question?  Comment: What are the names of documents that use templates with the code BK?  Comment: What is the question?  Comment: What are the names of documents that use templates with the code BK?  Comment: What is the question?  Comment: What are the names of documents that use templates with the code BK?  Comment: What is the question?  Comment: What are
SELECT Template_Type_Code, COUNT(Template_Type_Code) FROM Ref_Template_Types INNER JOIN Templates ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code GROUP BY Template_Type_Code
error
error
error
error
error
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT Ref_Template_Types.Template_Type_Description FROM Ref_Template_Types INNER JOIN Templates ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code WHERE Templates.Template_Type_Code = 'AD' \end{code}  Comment: What is the question?  Comment: I'm trying to return the template type description of the template type with the code AD.  Comment: What is the problem?  Comment: I'm not sure how to write the query.  Comment: You need to learn how to use `JOIN`s.  Comment: I'm not sure how to use JOINs.  Comment: @user3713839: You need to learn how to use `JOIN`s.  Comment: @user3713839: You need to learn how to use `JOIN`s.  Comment: @user3713839: You need to learn how to use `JOIN`s.  Comment: @user3713839: You need to learn how
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'
error
SELECT DISTINCT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Templates WHERE Template_ID IN ( SELECT Document_ID FROM Documents WHERE Document_ID IN ( SELECT Document_ID FROM Paragraphs WHERE Paragraph_ID IN ( SELECT Paragraph_ID FROM Paragraphs WHERE Paragraph_Text LIKE '%test%' ) ) ) ) \end{code}  Comment: I'm not sure I understand the question.  Can you provide some sample data and desired results?  Comment: I've added some sample data and the desired results.  Answer: I think you want to use `exists`:  \begin{code} SELECT DISTINCT Template_Type_Description FROM Ref_Template_Types rtt WHERE EXISTS (SELECT 1               FROM Templates t JOIN                    Documents d                    ON t.Template_ID = d.Template_ID JOIN                    Paragraphs p                    ON d.Document_ID = p.Document_ID               WHERE t.
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'Presentation'
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
error
SELECT COUNT(*) FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show');
SELECT COUNT(Paragraph_ID) FROM Paragraphs WHERE Document_ID = (SELECT Document_ID                      FROM Documents                      WHERE Document_Name = 'Summer Show') \end{code}  Comment: What is the question?  Comment: I'm trying to count the number of paragraphs in the document named 'Summer Show'.  Comment: You should add that to your question.  Comment: I've added it to the question.  Comment: You should add the code you have tried to your question.  Comment: I've added the code I've tried to the question.  Comment: You should add the error message you get to your question.  Comment: I've added the error message to the question.  Comment: You should add the table definitions to your question.  Comment: I've added the table definitions to the question.  Comment: You should add the expected result to your question.  Comment: I've added the expected result to the question.  Comment: You should add the actual result to your question.  Comment: I've added the actual result
SELECT * FROM Paragraphs WHERE Paragraph_Text = 'Korea ' \end{code}  Comment: What is the question?  Comment: I'm trying to answer the following question: Show paragraph details for paragraph with text 'Korea ' .  Comment: What is the problem?  Comment: I'm not sure how to answer the question.  Comment: You need to use `LIKE` instead of `=`  Comment: I'm not sure how to use LIKE in this case.  Comment: `SELECT * FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea %'`  Comment: I'm not sure how to use LIKE in this case.  Comment: I'm not sure how to use LIKE in this case.  Comment: I'm not sure how to use LIKE in this case.  Comment: I'm not sure how to use LIKE in this case.  Comment: I'm not sure how to use LIKE in this case.  Comment: I'm not sure how to use LIKE in this case.  Comment: I'm not sure how to use LIKE in
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%' \end{code}  Comment: What is the question?  Comment: What are the details for the paragraph that includes the text 'Korea ' ?  Comment: What is the question?  Comment: What are the details for the paragraph that includes the text 'Korea ' ?  Comment: What is the question?  Comment: What are the details for the paragraph that includes the text 'Korea ' ?  Comment: What is the question?  Comment: What are the details for the paragraph that includes the text 'Korea ' ?  Comment: What is the question?  Comment: What are the details for the paragraph that includes the text 'Korea ' ?  Comment: What is the question?  Comment: What are the details for the paragraph that includes the text 'Korea ' ?  Comment: What is the question?  Comment: What are the details for the paragraph that includes the text 'Korea ' ?  Comment: What is the question?  Comment: What are the details
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID                      FROM Documents                      WHERE Document_Name = 'Welcome to NY') \end{code}  Comment: What is the question?  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.  Comment: I'm trying to answer the question in the comment.
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY' ) \end{code}  Comment: What is the question?  Comment: What are the ids and texts of paragraphs in the document titled 'Welcome to NY'?  Comment: What is the question?  Comment: What are the ids and texts of paragraphs in the document titled 'Welcome to NY'?  Comment: What is the question?  Comment: What are the ids and texts of paragraphs in the document titled 'Welcome to NY'?  Comment: What is the question?  Comment: What are the ids and texts of paragraphs in the document titled 'Welcome to NY'?  Comment: What is the question?  Comment: What are the ids and texts of paragraphs in the document titled 'Welcome to NY'?  Comment: What is the question?  Comment: What are the ids and texts of paragraphs in the document titled 'Welcome to NY'?  Comment: What is the
error
error
SELECT Document_ID, COUNT(Paragraph_ID) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID \end{code}  Comment: I'm not sure what you're asking.  You've already got the query you need.  What's the problem?  Comment: I'm not sure how to get the number of paragraphs in each document.  Comment: You're already doing it.  You're counting the number of paragraphs in each document.  Comment: I'm not sure how to get the number of paragraphs in each document.  Comment: You're already doing it.  You're counting the number of paragraphs in each document.  Comment: I'm not sure how to get the number of paragraphs in each document.  Comment: You're already doing it.  You're counting the number of paragraphs in each document.  Comment: I'm not sure how to get the number of paragraphs in each document.  Comment: You're already doing it.  You're counting the number of paragraphs in each document.  Comment
SELECT Document_ID, COUNT(Paragraph_ID) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID \end{code}  Comment: What is the question?  Comment: I'm trying to get the number of paragraphs for each document.  Comment: What is the problem?  Comment: I'm not getting the correct number of paragraphs for each document.  Comment: What is the correct number of paragraphs for each document?  Comment: I'm not sure what you mean by that.  Comment: You are not getting the correct number of paragraphs for each document. What is the correct number of paragraphs for each document?  Comment: I'm not sure what you mean by that.  Comment: You are not getting the correct number of paragraphs for each document. What is the correct number of paragraphs for each document?  Comment: I'm not sure what you mean by that.  Comment: You are not getting the correct number of paragraphs for each document. What is the correct number of paragraphs for each document?  Comment: I'm not sure what you mean by
SELECT Document_ID, Document_Name, COUNT(Paragraph_ID) FROM Documents INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Document_ID, Document_Name \end{code}  Comment: You should post the code you have tried.  Comment: I have added the code I have tried.  Answer: You can use a subquery to get the number of paragraphs for each document.  \begin{code} SELECT Document_ID, Document_Name,        (SELECT COUNT(*)         FROM Paragraphs p         WHERE p.Document_ID = d.Document_ID        ) as NumParagraphs FROM Documents d; \end{code}  Comment: Thank you for your answer. I have tried this and it works. I have also tried the following and it works too:  SELECT Document_ID, Document_Name, COUNT(Paragraph_ID) FROM Documents INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Document_ID, Document_Name
SELECT Document_ID, Document_Name, COUNT(Paragraph_ID) FROM Documents INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Document_ID, Document_Name
error
error
error
SELECT Document_ID, Document_Name FROM Documents WHERE Document_ID = (SELECT MAX(Paragraph_ID)                      FROM Paragraphs                      GROUP BY Document_ID) \end{code}  Comment: You should post the table structure and some sample data.  Comment: I've added the table structure and sample data.  Answer: You can use a subquery to get the max paragraph count for each document, and then join that to the documents table to get the document name.  \begin{code} SELECT d.Document_ID, d.Document_Name FROM Documents d INNER JOIN (     SELECT Document_ID, MAX(Paragraph_ID) AS MaxParagraphID     FROM Paragraphs     GROUP BY Document_ID ) p ON d.Document_ID = p.Document_ID WHERE p.MaxParagraphID = (     SELECT MAX(Paragraph_ID)     FROM Paragraphs ) \end{code}  Comment: Thanks for the answer. I've tried this and it works. I'm just wondering if there is a way to do this
error
error
error
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) BETWEEN 1 AND 2 \end{code}  Comment: I'm not sure what you're asking.  You've already answered your question.  You've given the query that will give you the documents that have between one and two paragraphs.  What more do you want?  Comment: I'm not sure what you're asking.  You've already answered your question.  You've given the query that will give you the documents that have between one and two paragraphs.  What more do you want?  Comment: I'm not sure what you're asking.  You've already answered your question.  You've given the query that will give you the documents that have between one and two paragraphs.  What more do you want?  Comment: I'm not sure what you're asking.  You've already answered your question.  You've given the query that will give you the documents that have between one and two paragraphs.  What more do you want?
SELECT Document_ID, Paragraph_Text FROM Paragraphs WHERE Paragraph_Text IN ('Brazil', 'Ireland')
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text IN ('Brazil', 'Ireland')
SELECT COUNT(DISTINCT Teacher_ID) FROM course_arrange;
SELECT COUNT(*) FROM teacher;
SELECT "Name" FROM "teacher" ORDER BY "Age" ASC;
SELECT "Name" FROM "teacher" ORDER BY "Age" ASC;
SELECT "Age", "Hometown" FROM "teacher"
SELECT t.Age, t.Hometown FROM teacher t
SELECT "Name" FROM "teacher" WHERE "Hometown" NOT LIKE '%Little Lever Urban District%';
SELECT "Name" FROM "teacher" WHERE "Hometown" NOT IN ('Little Lever Urban District');
SELECT "Name" FROM "teacher" WHERE "Age" IN ('32','33')
SELECT "Name" FROM "teacher" WHERE "Age" IN ('32','33');
SELECT "Hometown" FROM "teacher" WHERE "Age" = (SELECT MIN("Age") FROM "teacher");
SELECT "Name" FROM "teacher" WHERE "Age" = (SELECT MIN("Age") FROM "teacher");
SELECT "Hometown", COUNT("Hometown") FROM "teacher" GROUP BY "Hometown"
SELECT "Hometown", COUNT("Teacher_ID") FROM "teacher" GROUP BY "Hometown"
SELECT t.Hometown, COUNT(t.Hometown) FROM teacher t INNER JOIN course_arrange ca ON t.Teacher_ID = ca.Teacher_ID GROUP BY t.Hometown ORDER BY COUNT(t.Hometown) DESC LIMIT 1;
SELECT "Hometown" FROM "teacher" GROUP BY "Hometown" ORDER BY COUNT(*) DESC LIMIT 1
SELECT "Hometown" FROM "teacher" WHERE "Teacher_ID" IN ( SELECT "Teacher_ID" FROM "course_arrange" GROUP BY "Teacher_ID" HAVING COUNT(*) > 1 ) \end{code}  Comment: What is the question?  Comment: I'm sorry, I'm not sure how to ask the question. I'm trying to find the hometowns shared by at least two teachers.  Comment: I'm not sure what you mean by "shared by at least two teachers".  Do you mean that there are two teachers who teach the same course?  Comment: I mean that there are two teachers who teach the same course and they both live in the same hometown.  Comment: I'm not sure what you mean by "shared by at least two teachers".  Do you mean that there are two teachers who teach the same course?  Comment: I mean that there are two teachers who teach the same course and they both live in the same hometown.  Comment: I'm sorry, I'm not sure how to
SELECT DISTINCT Hometown FROM teacher WHERE Hometown IN (     SELECT Hometown     FROM teacher     GROUP BY Hometown     HAVING COUNT(*) >= 2 ) \end{code}  Comment: What is the question?  Comment: What are the towns from which at least two teachers come from?  Comment: I'm not sure what you mean by "at least two teachers come from".  Do you mean "at least two teachers teach the same course"?  Comment: I mean at least two teachers come from the same town.  Comment: I'm not sure what you mean by "at least two teachers come from".  Do you mean "at least two teachers teach the same course"?  Comment: I mean at least two teachers come from the same town.  Comment: I'm not sure what you mean by "at least two teachers come from".  Do you mean "at least two teachers teach the same course"?  Comment: I mean at least two teachers come from the same town.  Comment: I mean at least two teachers come from the same town.  Comment: I mean at least
SELECT "Name", "Course" FROM "teacher" JOIN "course_arrange" ON "teacher"."Teacher_ID" = "course_arrange"."Teacher_ID" JOIN "course" ON "course_arrange"."Course_ID" = "course"."Course_ID" \end{code}  Comment: What is the question?  Comment: I'm sorry, I'm new to this. I'm trying to get the names of the teachers and the courses they are arranged to teach.  Comment: You should add that to your question.  Comment: I've added it to the question.  Comment: You should add the code you have tried to your question.  Comment: I've added the code I've tried.  Comment: You should add the error message you get.  Comment: I'm not getting an error message, I'm just not getting the correct answer.  Comment: You should add the expected result to your question.  Comment: I've added the expected result.  Comment: You should add
SELECT t.Name, c.Course FROM teacher t JOIN course_arrange ca ON t.Teacher_ID = ca.Teacher_ID JOIN course c ON ca.Course_ID = c.Course_ID
SELECT t.Name, c.Course FROM teacher t JOIN course_arrange ca ON t.Teacher_ID = ca.Teacher_ID JOIN course c ON ca.Course_ID = c.Course_ID ORDER BY t.Name \end{code}  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I
SELECT "Name" FROM "teacher" INNER JOIN "course_arrange" ON "teacher"."Teacher_ID" = "course_arrange"."Teacher_ID" INNER JOIN "course" ON "course_arrange"."Course_ID" = "course"."Course_ID" ORDER BY "Name" ASC
SELECT "Name" FROM "teacher" WHERE "Teacher_ID" IN (SELECT "Teacher_ID" FROM "course_arrange" WHERE "Course_ID" IN (SELECT "Course_ID" FROM "course" WHERE "Course" = 'math'));
SELECT "Name" FROM "teacher" WHERE "Teacher_ID" IN (SELECT "Teacher_ID" FROM "course_arrange" WHERE "Course" = "Math");
SELECT t.Name, COUNT(c.Course_ID) FROM teacher t JOIN course_arrange ca ON t.Teacher_ID = ca.Teacher_ID JOIN course c ON ca.Course_ID = c.Course_ID GROUP BY t.Name
SELECT t.Name, COUNT(c.Course_ID) FROM teacher t JOIN course_arrange ca ON t.Teacher_ID = ca.Teacher_ID JOIN course c ON ca.Course_ID = c.Course_ID GROUP BY t.Name
SELECT t.Name FROM teacher t JOIN course_arrange ca ON t.Teacher_ID = ca.Teacher_ID GROUP BY t.Name HAVING COUNT(DISTINCT ca.Course_ID) >= 2 \end{code}  Comment: I'm not sure what you mean by "the following database schema".  Can you provide the table definitions?  Comment: @GordonLinoff I have added the table definitions.  Answer: You can use `group by` and `having`:  \begin{code} select t.name from teacher t join      course_arrange ca      on t.teacher_id = ca.teacher_id group by t.name having count(distinct ca.course_id) >= 2; \end{code}  Comment: I have tried this query but it is not working. I have added the table definitions.  Comment: @user3719848 . . . I don't see how this would not work.  It is the same as your query, except that it uses `group
SELECT "Name" FROM "teacher" WHERE "Teacher_ID" IN (SELECT "Teacher_ID" FROM "course_arrange" GROUP BY "Teacher_ID" HAVING COUNT("Teacher_ID") >= 2)
SELECT t.Name FROM teacher t WHERE t.Teacher_ID NOT IN (     SELECT c.Teacher_ID     FROM course_arrange c ) \end{code}  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?  Comment: I'm not sure what you're asking.  Can you provide some sample data and expected results?
SELECT "Name" FROM "teacher" WHERE "Teacher_ID" NOT IN (SELECT "Teacher_ID" FROM "course_arrange");
SELECT COUNT(*) FROM visitor WHERE Age < 30;
SELECT "Name" FROM "visitor" WHERE "Level_of_membership" > 4 ORDER BY "Level_of_membership" DESC;
SELECT AVG(Age) FROM visitor WHERE Level_of_membership <= 4;
SELECT "Name", "Level_of_membership" FROM "visitor" WHERE "Level_of_membership" > 4 ORDER BY "Age" DESC;
SELECT "Museum_ID", "Name" FROM "museum" ORDER BY "Num_of_Staff" DESC LIMIT 1;
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < '2009';
SELECT "Open_Year", "Num_of_Staff" FROM "museum" WHERE "Name" = 'Plaza Museum';
SELECT "Name" FROM "museum" WHERE "Num_of_Staff" > (SELECT MIN("Num_of_Staff")                         FROM "museum"                         WHERE "Open_Year" > '2010') \end{code}  Comment: What is the question?  Comment: I'm sorry, I'm new to this. I'm trying to find the names of museums which have more staff than the minimum staff number of all museums opened after 2010.  Comment: You should edit your question to include that information.  Comment: I've edited it. Thank you.  Answer: You can use a subquery to get the minimum staff number of all museums opened after 2010.  \begin{code} SELECT "Name" FROM "museum" WHERE "Num_of_Staff" > (SELECT MIN("Num_of_Staff")                         FROM "museum"                         WHERE "Open_Year" > '2010') \end{code}  Comment: Thank you so much! I've been
SELECT visitor.ID, visitor.Name, visitor.Age FROM visitor JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID HAVING COUNT(visitor.ID) > 1 \end{code}  Comment: You should add the code you have tried so far.  Comment: I have added the code I have tried so far.  Answer: You can use `COUNT` and `GROUP BY` to get the number of visits per visitor. Then you can use `HAVING` to filter the results.  \begin{code} SELECT visitor.ID, visitor.Name, visitor.Age FROM visitor JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID HAVING COUNT(visitor.ID) > 1 \end{code}  Comment: Thank you for your answer. I have tried this code but it does not work.  Comment: @user3713255 What does "does not work" mean? What is the error message?  Comment: I have added the code I have tried so far.
SELECT v.ID, v.Name, v.Level_of_membership FROM visitor v JOIN visit vt ON v.ID = vt.visitor_ID WHERE vt.Total_spent = (SELECT MAX(Total_spent) FROM visit) \end{code}  Comment: What is the question?  Comment: What are the id, name and membership level of visitors who have spent the largest amount of money in total in all museum tickets?  Comment: What is the problem?  Comment: I'm not sure how to write the query.  Comment: What have you tried? What is the problem?  Comment: I'm not sure how to write the query.  Comment: You need to show us what you have tried.  Comment: I've tried this:  SELECT v.ID, v.Name, v.Level_of_membership FROM visitor v JOIN visit vt ON v.ID = vt.visitor_ID WHERE vt.Total_spent = (SELECT MAX(Total_spent) FROM visit)  Comment: Please edit
SELECT "Museum_ID", "Name" FROM "visit" GROUP BY "Museum_ID" ORDER BY COUNT(*) DESC LIMIT 1;
SELECT "Name" FROM "museum" WHERE "Name" NOT IN (SELECT "Name" FROM "visit");
SELECT v.Name, v.Age FROM visitor v INNER JOIN visit vt ON v.ID = vt.visitor_ID GROUP BY v.ID ORDER BY SUM(vt.Num_of_Ticket) DESC LIMIT 1; \end{code}  Comment: You should use `GROUP BY` and `ORDER BY` to get the result you want.  Comment: @forpas I tried to use group by but it doesn't work.  Comment: You should post the query you tried.  Comment: @forpas I have posted the query I tried.  Comment: You should use `GROUP BY v.ID` and `ORDER BY SUM(vt.Num_of_Ticket) DESC`.  Comment: @forpas I have tried that but it doesn't work.  Comment: What do you mean by "it doesn't work"?  Comment: @forpas I have posted the error message.  Comment: You should use `GROUP BY v.ID, v.Name, v.Age`  Comment: @forpas I have tried that but it doesn't work.
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT SUM(Total_spent) FROM visit WHERE Level_of_membership = 1;
SELECT "Name" FROM "visitor" JOIN "visit" ON "visitor"."ID" = "visit"."visitor_ID" WHERE "visit"."Museum_ID" IN (SELECT "Museum_ID" FROM "museum" WHERE "Open_Year" < 2009) AND "visit"."Museum_ID" IN (SELECT "Museum_ID" FROM "museum" WHERE "Open_Year" > 2011)
SELECT COUNT(DISTINCT visitor.ID) FROM visitor LEFT JOIN visit ON visitor.ID = visit.visitor_ID WHERE visit.Museum_ID IS NULL AND museum.Open_Year < '2010'
SELECT "Name" FROM "museum" WHERE "Open_Year" > 2013 OR "Open_Year" < 2008;
SELECT COUNT(*) FROM players;
SELECT COUNT(*) FROM players;
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(loser_age), AVG(winner_age) FROM matches
SELECT AVG(ranking) FROM rankings WHERE player_id IN (SELECT winner_id FROM matches)
SELECT AVG(ranking) FROM rankings WHERE player_id IN (SELECT winner_id FROM matches);
SELECT loser_rank FROM matches WHERE loser_rank = (SELECT MAX(loser_rank) FROM matches)
SELECT loser_rank, COUNT(loser_rank) FROM matches GROUP BY loser_rank ORDER BY COUNT(loser_rank) DESC LIMIT 1
SELECT DISTINCT country_code FROM players
SELECT DISTINCT country_code FROM players
SELECT DISTINCT loser_name FROM matches
SELECT DISTINCT loser_name FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT tourney_name FROM matches WHERE match_num > 10 GROUP BY tourney_name
SELECT winner_name FROM matches WHERE year = 2013 AND year = 2016
SELECT DISTINCT winner_name FROM matches WHERE tourney_date IN ('2013-01-01','2016-01-01')
SELECT COUNT(*) FROM matches WHERE year IN (2013, 2016);
SELECT COUNT(*) FROM matches WHERE tourney_date IN ('2013-01-01','2016-01-01')
SELECT p.country_code, p.first_name FROM players p INNER JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name = 'WTA Championships' AND m.tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'Australian Open' AND tourney_level = 'Major' AND tourney_date = '2018-01-07' AND winner_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships' AND tourney_level = 'Major' AND tourney_date = '2018-01-07'))
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1;
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date;
SELECT first_name || ' ' || last_name AS full_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name || ' ' || last_name AS full_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, country_code FROM players WHERE player_id IN (     SELECT player_id     FROM rankings     GROUP BY player_id     ORDER BY tours DESC     LIMIT 1 )
SELECT first_name, country_code FROM players WHERE player_id = (SELECT player_id                    FROM rankings                    WHERE ranking_points = (SELECT MAX(ranking_points)                                            FROM rankings))
SELECT year, COUNT(*) FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT year, COUNT(*) FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, ranking_points FROM rankings INNER JOIN matches ON rankings.player_id = matches.winner_id WHERE rankings.ranking_points = (SELECT MAX(ranking_points) FROM rankings)
SELECT winner_name, sum(ranking_points) FROM matches INNER JOIN rankings ON matches.winner_id = rankings.player_id GROUP BY winner_name ORDER BY sum(ranking_points) DESC LIMIT 1
SELECT winner_name FROM matches INNER JOIN rankings ON matches.winner_id = rankings.player_id WHERE tourney_name = 'Australian Open' ORDER BY ranking_points DESC LIMIT 1
SELECT winner_name FROM matches INNER JOIN rankings ON matches.winner_id = rankings.player_id WHERE tourney_name = 'Australian Open' ORDER BY ranking_points DESC LIMIT 1
SELECT loser_name, winner_name, minutes FROM matches WHERE minutes = (SELECT MAX(minutes) FROM matches)
SELECT winner_name, loser_name FROM matches WHERE minutes = (SELECT MAX(minutes) FROM matches)
SELECT first_name, AVG(ranking) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name
SELECT first_name, AVG(ranking) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name
SELECT first_name, sum(ranking_points) as total_ranking_points FROM rankings JOIN players ON rankings.player_id = players.player_id GROUP BY first_name ORDER BY total_ranking_points DESC
SELECT first_name, sum(ranking_points) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name ORDER BY sum(ranking_points) DESC
SELECT country_code, COUNT(player_id) FROM players GROUP BY country_code
SELECT country_code, COUNT(country_code) FROM players GROUP BY country_code;
SELECT country_code, COUNT(player_id) FROM players GROUP BY country_code ORDER BY COUNT(player_id) DESC LIMIT 1;
SELECT country_code, COUNT(player_id) AS player_count FROM players GROUP BY country_code ORDER BY player_count DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(country_code) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(country_code) > 50
SELECT ranking_date, count(tours) FROM rankings GROUP BY ranking_date
SELECT ranking_date, count(tours) FROM rankings GROUP BY ranking_date
SELECT year, count(*) FROM matches GROUP BY year ORDER BY year
SELECT year, count(*) FROM matches GROUP BY year ORDER BY year
SELECT winner_name, ranking FROM rankings WHERE ranking_date = (SELECT MAX(ranking_date) FROM rankings) ORDER BY ranking_date, ranking LIMIT 3;
SELECT winner_name, winner_rank FROM matches WHERE winner_age < (SELECT winner_age                     FROM matches                     ORDER BY winner_age                     LIMIT 3) ORDER BY winner_age
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE tourney_name = 'WTA Championships' AND winner_hand = 'L'
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE winner_hand = 'L' AND tourney_name = 'WTA Championships'
SELECT first_name, country_code, birth_date FROM players WHERE player_id IN (     SELECT winner_id     FROM rankings     WHERE ranking_points = (         SELECT MAX(ranking_points)         FROM rankings     ) )
SELECT first_name, country_code, birth_date FROM players WHERE player_id = (SELECT player_id                    FROM rankings                    WHERE ranking_points = (SELECT MAX(ranking_points)                                            FROM rankings));
SELECT hand, COUNT(hand) FROM players GROUP BY hand;
SELECT hand, COUNT(hand) FROM players GROUP BY hand;
SELECT COUNT(*) FROM `ship` WHERE `disposition_of_ship` = 'Captured';
SELECT name, tonnage FROM ship ORDER BY name DESC;
SELECT "name", "date", "result" FROM "battle"
error
SELECT AVG(injured) FROM death;
SELECT death.note, death.killed, death.injured FROM death, ship WHERE ship.tonnage = 't' AND death.caused_by_ship_id = ship.id
SELECT "name", "result" FROM "battle" WHERE "bulgarian_commander" != 'Boril';
SELECT "battle"."id", "battle"."name" FROM "battle" INNER JOIN "ship" ON "ship"."lost_in_battle" = "battle"."id" WHERE "ship"."ship_type" = 'Brig'
SELECT "battle"."id", "battle"."name" FROM "battle" JOIN "ship" ON "ship"."lost_in_battle" = "battle"."id" JOIN "death" ON "death"."caused_by_ship_id" = "ship"."id" GROUP BY "battle"."id", "battle"."name" HAVING SUM("death"."killed") > 10
SELECT ship.id, ship.name, death.injured FROM ship JOIN death ON ship.id = death.caused_by_ship_id GROUP BY ship.id, ship.name ORDER BY death.injured DESC LIMIT 1
SELECT DISTINCT "name" FROM "battle" WHERE "bulgarian_commander" = 'Kaloyan' AND "latin_commander" = 'Baldwin I';
SELECT DISTINCT result FROM battle;
SELECT COUNT(*) FROM `battle` WHERE `battle`.`result` = 'win' AND `ship`.`tonnage` = '225'
SELECT "battle"."name", "battle"."date" FROM "battle" INNER JOIN "ship" ON "ship"."lost_in_battle" = "battle"."id" WHERE "ship"."name" IN ('Lettice', 'HMS Atalanta')
SELECT "battle"."name", "battle"."result", "battle"."bulgarian_commander" FROM "battle" WHERE "battle"."name" = 'English Channel'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM Addresses;
SELECT     a.line_1,     a.line_2 FROM     Addresses a
SELECT COUNT(*) FROM Courses;
SELECT COUNT(course_id) FROM Courses;
SELECT `course_name`, `course_description` FROM `Courses` WHERE `course_id` = 1;
SELECT course_description FROM Courses WHERE course_name LIKE '%math%';
SELECT `zip_postcode` FROM `Addresses` WHERE `city` = 'Port Chelsea';
SELECT `zip_postcode` FROM `Addresses` WHERE `city` = 'Port Chelsea';
SELECT d.department_name, COUNT(d.department_id) AS 'Number of Degrees' FROM Degree_Programs d GROUP BY d.department_name ORDER BY COUNT(d.department_id) DESC LIMIT 1
SELECT d.department_name, d.department_id, COUNT(d.department_id) AS num_degrees FROM Degree_Programs d GROUP BY d.department_name, d.department_id ORDER BY num_degrees DESC LIMIT 1;
SELECT COUNT(DISTINCT d.department_id) FROM Degree_Programs dp INNER JOIN Departments d ON dp.department_id = d.department_id
SELECT DISTINCT department_name FROM Departments
SELECT DISTINCT degree_summary_name FROM Degree_Programs;
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs;
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs WHERE department_id = 1;
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs WHERE department_id = 1;
SELECT `section_name`, `section_description` FROM `Sections`
SELECT `section_name`, `section_description` FROM `Sections`
SELECT c.course_name, c.course_id FROM Courses c INNER JOIN Sections s ON c.course_id = s.course_id GROUP BY c.course_name, c.course_id HAVING COUNT(s.section_id) <= 2
SELECT c.course_name, c.course_id FROM Courses c INNER JOIN Sections s ON c.course_id = s.course_id GROUP BY c.course_name, c.course_id HAVING COUNT(s.section_id) < 2
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT `section_name` FROM `Sections` ORDER BY `section_name` DESC;
SELECT `semester_name`, `semester_id` FROM `Semesters` WHERE `semester_id` = ( SELECT `semester_id` FROM `Student_Enrolment` GROUP BY `semester_id` ORDER BY COUNT(*) DESC LIMIT 1 )
error
SELECT * FROM `Departments` WHERE `department_name` LIKE '%the computer%'
SELECT `department_description` FROM `Departments` WHERE `department_name` LIKE '%computer%'
SELECT first_name, middle_name, last_name, student_id FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Student_Enrolment_Courses ON Student_Enrolment.student_enrolment_id = Student_Enrolment_Courses.student_enrolment_id INNER JOIN Courses ON Student_Enrolment_Courses.course_id = Courses.course_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id INNER JOIN Semesters ON Student_Enrolment.semester_id = Semesters.semester_id WHERE Semesters.semester_id = 1 GROUP BY first_name, middle_name, last_name, student_id HAVING COUNT(DISTINCT degree_program_id) = 2
SELECT first_name, middle_name, last_name, student_id FROM Students WHERE student_id IN ( SELECT student_id FROM Student_Enrolment WHERE student_enrolment_id IN ( SELECT student_enrolment_id FROM Student_Enrolment_Courses WHERE student_course_id IN ( SELECT student_course_id FROM Student_Enrolment_Courses WHERE student_enrolment_id IN ( SELECT student_enrolment_id FROM Student_Enrolment WHERE semester_id = 1 ) GROUP BY student_enrolment_id HAVING COUNT(student_enrolment_id) = 2 ) GROUP BY student_course_id HAVING COUNT(student_course_id) = 2 ) )
SELECT     first_name,     middle_name,     last_name FROM     Students     INNER JOIN Student_Enrolment         ON Students.student_id = Student_Enrolment.student_id     INNER JOIN Degree_Programs         ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id     INNER JOIN Courses         ON Student_Enrolment_Courses.course_id = Courses.course_id     INNER JOIN Semesters         ON Student_Enrolment.semester_id = Semesters.semester_id WHERE     Degree_Programs.degree_summary_name = 'Bachelor'     AND Semesters.semester_name = 'Fall'     AND Courses.course_name = 'Math'     AND Student_Enrolment.student_enrolment_id = Student_Enrolment_Courses.student_enrolment_id     AND Student_Enrolment.student_enrolment_id = Student_Enrolment_Courses.
SELECT first_name, middle_name, last_name FROM Students WHERE student_id IN ( SELECT student_id FROM Student_Enrolment WHERE degree_program_id IN ( SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelors' ) )
SELECT     dp.degree_summary_name,     COUNT(se.student_id) AS 'Number of Students' FROM     Degree_Programs dp     INNER JOIN Student_Enrolment se ON dp.degree_program_id = se.degree_program_id GROUP BY     dp.degree_summary_name ORDER BY     COUNT(se.student_id) DESC LIMIT 1; \end{code}  Comment: What is the question?  Comment: I'm sorry, I'm new to this. I'm trying to find the kind of program which most number of students are enrolled in.  Comment: You should add that to your question.  Comment: I'm sorry, I'm new to this. I'm trying to find the kind of program which most number of students are enrolled in.  Comment: I'm sorry, I'm new to this. I'm trying to find the kind of program which most number of students are enrolled in.  Comment: I'm sorry, I'm new to this
error
SELECT DISTINCT dp.degree_program_id, dp.degree_summary_name FROM Degree_Programs dp INNER JOIN Student_Enrolment se ON dp.degree_program_id = se.degree_program_id GROUP BY dp.degree_program_id ORDER BY COUNT(se.student_id) DESC LIMIT 1;
SELECT `degree_program_id`, `degree_summary_name` FROM `Degree_Programs` WHERE `degree_program_id` = ( SELECT `degree_program_id` FROM `Student_Enrolment` GROUP BY `degree_program_id` ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT     s.student_id,     s.first_name,     s.middle_name,     s.last_name,     COUNT(se.student_enrolment_id) AS enrollments,     se.student_id FROM     Students s     INNER JOIN Student_Enrolment se ON s.student_id = se.student_id GROUP BY     s.student_id ORDER BY     COUNT(se.student_enrolment_id) DESC LIMIT 1;
SELECT     s.first_name,     s.middle_name,     s.last_name,     s.student_id,     COUNT(se.student_enrolment_id) AS 'Number of Enrollments' FROM     Students s     INNER JOIN Student_Enrolment se ON s.student_id = se.student_id GROUP BY     s.first_name,     s.middle_name,     s.last_name,     s.student_id ORDER BY     COUNT(se.student_enrolment_id) DESC LIMIT 1;
error
SELECT `semester_name` FROM `Semesters` WHERE `semester_id` NOT IN (SELECT `semester_id` FROM `Student_Enrolment`);
SELECT `course_name` FROM `Courses` WHERE `course_id` IN (SELECT `course_id` FROM `Student_Enrolment_Courses`);
SELECT c.course_name FROM Courses c INNER JOIN Student_Enrolment_Courses sec ON sec.course_id = c.course_id INNER JOIN Student_Enrolment e ON e.student_enrolment_id = sec.student_enrolment_id
SELECT course_name, COUNT(course_id) AS enrollments FROM Student_Enrolment_Courses GROUP BY course_name ORDER BY enrollments DESC LIMIT 1
SELECT course_name, COUNT(course_id) AS 'Number of Students' FROM Student_Enrolment_Courses INNER JOIN Courses ON Student_Enrolment_Courses.course_id = Courses.course_id GROUP BY course_name ORDER BY COUNT(course_id) DESC LIMIT 1
SELECT     last_name FROM     Students WHERE     state_province_county = 'North Carolina'     AND student_id NOT IN (         SELECT             student_id         FROM             Student_Enrolment     ) \end{code}  Comment: You should post the query you have tried.  Comment: I'm not sure what you mean by "the last name of the students who currently live in the state of North Carolina but have not registered in any degree program."  Do you mean the last name of the students who currently live in the state of North Carolina but have not registered in any degree program in the current semester?  Comment: @TimBiegeleisen I mean the last name of the students who currently live in the state of North Carolina but have not registered in any degree program in the current semester.  Comment: @TimBiegeleisen I have tried this query: SELECT last_name FROM Students WHERE state_province_county = 'North Carolina' AND student_id NOT IN (SELECT student_id FROM Student_Enrolment)  Comment: @TimBiegeleisen
SELECT     s.last_name FROM     Students s     INNER JOIN Addresses a ON s.current_address_id = a.address_id WHERE     a.state_province_county = 'North Carolina'     AND NOT EXISTS (         SELECT             *         FROM             Student_Enrolment se             INNER JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id         WHERE             s.student_id = se.student_id     ) \end{code}  Comment: What is the question?  Comment: What are the last name of the students who live in North Carolina but have not registered in any degree programs?  Comment: I'm not sure what you mean by "not registered in any degree programs".  Do you mean that they have not registered in any degree program in the current semester?  Comment: I mean that they have not registered in any degree program in the current semester.  Comment: I'm not sure what you mean by "not registered in any degree programs".  Do you mean
SELECT `transcript_date`, `transcript_id` FROM `Transcripts` WHERE `transcript_id` IN ( SELECT `transcript_id` FROM `Transcript_Contents` GROUP BY `transcript_id` HAVING COUNT(*) >= 2 )
SELECT `transcript_date`, `transcript_id` FROM `Transcripts` WHERE `transcript_id` IN ( SELECT `transcript_id` FROM `Transcript_Contents` GROUP BY `transcript_id` HAVING COUNT(*) >= 2 )
SELECT `cell_mobile_number` FROM `Students` WHERE `first_name` = 'Timmothy' AND `last_name` = 'Ward';
SELECT `cell_mobile_number` FROM `Students` WHERE `first_name` = 'Timmothy' AND `last_name` = 'Ward'
SELECT first_name, middle_name, last_name FROM Students WHERE student_id = (SELECT student_id FROM Student_Enrolment WHERE student_enrolment_id = (SELECT student_enrolment_id FROM Student_Enrolment_Courses WHERE student_course_id = (SELECT student_course_id FROM Transcript_Contents WHERE transcript_id = (SELECT transcript_id FROM Transcripts ORDER BY transcript_id LIMIT 1))));
SELECT first_name, middle_name, last_name FROM Students WHERE student_id = (SELECT student_id FROM Student_Enrolment WHERE student_enrolment_id = (SELECT student_enrolment_id FROM Student_Enrolment_Courses WHERE student_course_id = (SELECT student_course_id FROM Transcript_Contents WHERE transcript_id = (SELECT transcript_id FROM Transcripts ORDER BY transcript_id LIMIT 1))));
SELECT first_name, middle_name, last_name FROM Students WHERE student_id = (SELECT MIN(student_id) FROM Student_Enrolment)
SELECT first_name, middle_name, last_name FROM Students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM Students);
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id
SELECT first_name FROM Students WHERE current_address_id <> permanent_address_id;
error
error
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts;
error
SELECT     t.transcript_date,     s.first_name,     s.last_name,     c.course_name,     d.degree_summary_name FROM     Transcripts t     INNER JOIN Transcript_Contents tc ON t.transcript_id = tc.transcript_id     INNER JOIN Student_Enrolment_Courses sec ON tc.student_course_id = sec.student_course_id     INNER JOIN Courses c ON sec.course_id = c.course_id     INNER JOIN Student_Enrolment se ON sec.student_enrolment_id = se.student_enrolment_id     INNER JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id     INNER JOIN Departments d ON dp.department_id = d.department_id     INNER JOIN Students s ON se.student_id = s.student_id ORDER BY     t.transcript_date \end{code}  Comment: I'm not sure what
SELECT COUNT(transcript_id) FROM Transcripts;
SELECT COUNT(*) FROM Transcripts;
SELECT `transcript_date` FROM `Transcripts` ORDER BY `transcript_date` DESC LIMIT 1;
SELECT     t.transcript_date FROM     Transcripts t WHERE     t.transcript_date = (         SELECT             MAX(t2.transcript_date)         FROM             Transcripts t2     ) \end{code}  Comment: What is the question?  Comment: @GordonLinoff I'm sorry, I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonL
error
SELECT course_id, COUNT(course_id) AS course_count FROM Student_Enrolment_Courses GROUP BY course_id ORDER BY course_count DESC LIMIT 1;
error
error
SELECT * FROM Semesters WHERE semester_id IN (     SELECT semester_id     FROM Student_Enrolment     WHERE student_enrolment_id IN (         SELECT student_enrolment_id         FROM Student_Enrolment_Courses         WHERE course_id IN (             SELECT course_id             FROM Courses             WHERE course_name IN ('Master', 'Bachelor')         )     ) ) \end{code}  Comment: What is the question?  Comment: @GordonLinoff I'm sorry, I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I've updated the question.  Comment: @GordonLinoff I'
SELECT `semester_id` FROM `Student_Enrolment` WHERE `degree_program_id` IN (SELECT `degree_program_id` FROM `Degree_Programs` WHERE `degree_summary_name` = 'Masters') AND `degree_program_id` IN (SELECT `degree_program_id` FROM `Degree_Programs` WHERE `degree_summary_name` = 'Bachelors')
SELECT COUNT(DISTINCT current_address_id) FROM Students;
SELECT DISTINCT a.line_1, a.line_2, a.line_3, a.city, a.zip_postcode, a.state_province_county, a.country, a.other_address_details FROM Addresses a INNER JOIN Students s ON a.address_id = s.current_address_id UNION SELECT DISTINCT a.line_1, a.line_2, a.line_3, a.city, a.zip_postcode, a.state_province_county, a.country, a.other_address_details FROM Addresses a INNER JOIN Students s ON a.address_id = s.permanent_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT * FROM Students ORDER BY last_name DESC
error
SELECT `section_description` FROM `Sections` WHERE `section_name` = 'h';
SELECT first_name FROM Students WHERE permanent_address_id IN ( SELECT address_id FROM Addresses WHERE country = 'Haiti' ) OR cell_mobile_number = '09700166582'
SELECT first_name FROM Students WHERE permanent_address_id IN ( SELECT address_id FROM Addresses WHERE country = 'Haiti' ) OR cell_mobile_number = '09700166582'
SELECT Title FROM Cartoon ORDER BY Title;
SELECT Title FROM Cartoon ORDER BY Title;
SELECT * FROM Cartoon WHERE Directed_by = 'Ben Jones';
SELECT "Title" FROM "Cartoon" WHERE "Directed_by" = 'Ben Jones';
SELECT * FROM Cartoon WHERE Written_by = 'Joseph Kuhr';
SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr';
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date;
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date;
SELECT "Title" FROM "Cartoon" WHERE "Directed_by" = 'Ben Jones' OR "Directed_by" = 'Brandon Vietti'
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones' OR Directed_by = 'Brandon Vietti'
SELECT Country, COUNT(id) FROM TV_Channel GROUP BY Country ORDER BY COUNT(id) DESC;
SELECT Country, COUNT(id) FROM TV_Channel GROUP BY Country ORDER BY COUNT(id) DESC LIMIT 1
SELECT COUNT(DISTINCT series_name) FROM TV_Channel; SELECT COUNT(DISTINCT Content) FROM TV_Channel;
SELECT COUNT(DISTINCT "Content") FROM "TV_Channel";
SELECT "Content" FROM "TV_Channel" WHERE "id" = 'Sky Radio';
SELECT "Content" FROM "TV_Channel" WHERE "id" = 'Sky Radio';
SELECT "Package_Option" FROM "TV_Channel" WHERE "id" = 'Sky Radio';
SELECT "Package_Option" FROM "TV_Channel" WHERE "series_name" = 'Sky Radio';
SELECT COUNT(*) FROM `TV_Channel` WHERE `Language` = 'English';
SELECT COUNT(DISTINCT "Language") FROM "TV_Channel" WHERE "Language" = 'English';
SELECT Language, COUNT(Language) FROM TV_Channel GROUP BY Language ORDER BY COUNT(Language) ASC LIMIT 1
SELECT Language, COUNT(Language) FROM TV_Channel GROUP BY Language ORDER BY COUNT(Language) ASC LIMIT 1
SELECT Language, COUNT(Language) FROM TV_Channel GROUP BY Language;
SELECT Language, COUNT(Language) FROM TV_Channel GROUP BY Language;
SELECT "TV_Channel"."series_name" FROM "TV_Channel" INNER JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Title" = 'The Rise of the Blue Beetle!';
SELECT "TV_Channel"."series_name" FROM "TV_Channel" INNER JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Title" = 'The Rise of the Blue Beetle'
SELECT "Cartoon"."Title" FROM "Cartoon" INNER JOIN "TV_Channel" ON "Cartoon"."Channel" = "TV_Channel"."id" WHERE "TV_Channel"."series_name" = 'Sky Radio'
SELECT "Title" FROM "Cartoon" WHERE "Channel" = (SELECT "id" FROM "TV_Channel" WHERE "series_name" = "Sky Radio");
SELECT "Episode" FROM "TV_series" ORDER BY "Rating" DESC
SELECT * FROM "TV_series" ORDER BY "Rating"
SELECT "TV_series"."Episode", "TV_series"."Rating" FROM "TV_series" WHERE "TV_series"."Rating" IN ( SELECT MAX("TV_series"."Rating") FROM "TV_series" GROUP BY "TV_series"."Episode" ORDER BY "TV_series"."Rating" DESC LIMIT 3 )
SELECT * FROM TV_series WHERE Rating = (SELECT MAX(Rating) FROM TV_series);
SELECT MIN(Share), MAX(Share) FROM TV_series;
SELECT MAX(Share), MIN(Share) FROM TV_series;
SELECT "Air_Date" FROM "TV_series" WHERE "Episode" = 'A Love of a Lifetime'
SELECT "Air_Date" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime"
SELECT "Weekly_Rank" FROM "TV_series" WHERE "Episode" = 'A Love of a Lifetime';
SELECT "Weekly_Rank" FROM "TV_series" WHERE "Episode" = 'A Love of a Lifetime';
SELECT "TV_Channel"."series_name" FROM "TV_Channel" INNER JOIN "TV_series" ON "TV_Channel"."id" = "TV_series"."Channel" WHERE "TV_series"."Episode" = 'A Love of a Lifetime'
SELECT "Series_name" FROM "TV_series" WHERE "Episode" = 'A Love of a Lifetime';
SELECT "Episode" FROM "TV_series" WHERE "Channel" = 'Sky Radio'
SELECT "Episode" FROM "TV_series" WHERE "series_name" = 'Sky Radio';
SELECT COUNT(DISTINCT Cartoon.Directed_by) FROM Cartoon
SELECT DISTINCT "Directed_by", COUNT("Directed_by") FROM "Cartoon" GROUP BY "Directed_by" ORDER BY COUNT("Directed_by") DESC
SELECT * FROM Cartoon WHERE Original_air_date = (SELECT MAX(Original_air_date) FROM Cartoon)
SELECT * FROM Cartoon WHERE id = (SELECT MAX(id) FROM Cartoon);
SELECT "Package_Option", "series_name" FROM "TV_Channel" WHERE "Hight_definition_TV" = 'Yes'
SELECT "Package_Option", "series_name" FROM "TV_Channel" WHERE "Hight_definition_TV" = 'Yes'
SELECT "Country" FROM "TV_Channel" WHERE "Channel" IN (SELECT "Channel" FROM "Cartoon" WHERE "Written_by" = 'Todd Casey');
SELECT DISTINCT Country FROM Cartoon WHERE Channel IN (SELECT id FROM TV_Channel WHERE Content = 'Cartoons') AND Written_by = 'Todd Casey'
SELECT Country FROM TV_Channel WHERE Channel NOT IN (SELECT Channel                       FROM Cartoon                       WHERE Written_by = 'Todd Casey') \end{code}  Comment: What is the question?  Comment: I'm sorry, I'm new to this. I'm trying to answer the following question: "Which countries' tv channels are not playing any cartoon written by Todd Casey?"  Comment: You should edit your question to include that.  Comment: I'm sorry, I'm new to this. I'm trying to answer the following question: "Which countries' tv channels are not playing any cartoon written by Todd Casey?"  Comment: I'm sorry, I'm new to this. I'm trying to answer the following question: "Which countries' tv channels are not playing any cartoon written by Todd Casey?"  Comment: I'm sorry, I'm new to this. I'm trying to answer the following question: "Which countries' tv channels are not playing any cartoon written by Todd Casey?"  Comment: I'm
SELECT Country FROM TV_Channel WHERE Channel NOT IN (SELECT Channel FROM Cartoon WHERE Written_by = 'Todd Casey');
SELECT "TV_Channel"."series_name", "TV_Channel"."Country" FROM "TV_Channel" INNER JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Directed_by" = 'Ben Jones' AND "Cartoon"."Directed_by" = 'Michael Chang'
SELECT "TV_Channel"."series_name", "TV_Channel"."Country" FROM "TV_Channel" INNER JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Directed_by" = 'Ben Jones' AND "Cartoon"."Directed_by" = 'Michael Chang'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English';
SELECT "Pixel_aspect_ratio_PAR", "Country" FROM "TV_Channel" WHERE "Language" != "English";
SELECT "id" FROM "TV_Channel" WHERE "Country" IN (SELECT "Country" FROM "TV_Channel" GROUP BY "Country" HAVING COUNT("Country") > 2)
SELECT "id" FROM "TV_Channel" WHERE "id" IN (SELECT "Channel" FROM "TV_series" WHERE "Channel" IN (SELECT "id" FROM "TV_Channel" WHERE "id" IN (SELECT "Channel" FROM "TV_series" GROUP BY "Channel" HAVING COUNT(*) > 2)));
SELECT "TV_Channel"."id" FROM "TV_Channel" WHERE NOT EXISTS (     SELECT "Cartoon"."id"     FROM "Cartoon"     WHERE "Cartoon"."Directed_by" = 'Ben Jones'     AND "Cartoon"."Channel" = "TV_Channel"."id" ) \end{code}  Comment: I'm not sure what you're asking.  Can you clarify?  Comment: I'm trying to find the id of tv channels that do not play any cartoon directed by Ben Jones.  Comment: I'm not sure what you mean by "play".  Do you mean "have a cartoon directed by Ben Jones"?  Comment: Yes, I mean have a cartoon directed by Ben Jones.  Comment: I'm not sure what you mean by "play".  Do you mean "have a cartoon directed by Ben Jones"?  Comment: Yes, I mean have a cartoon directed by Ben Jones.  Comment: I'm not sure what you mean by "play".  Do you mean "have a cartoon directed by Ben Jones"?
SELECT "id" FROM "TV_Channel" WHERE "id" NOT IN (SELECT "Channel" FROM "Cartoon" WHERE "Directed_by" = 'Ben Jones');
SELECT "Package_Option" FROM "TV_Channel" WHERE "Package_Option" NOT IN ( SELECT "Channel" FROM "Cartoon" WHERE "Directed_by" = 'Ben Jones' ) \end{code}  Comment: What is the question?  Comment: I'm sorry, I'm new to this. I'm trying to find the package option of the tv channel that do not have any cartoon directed by Ben Jones.  Comment: You should edit your question to include that information.  Comment: I'm sorry, I'm new to this. I'm trying to find the package option of the tv channel that do not have any cartoon directed by Ben Jones.  Comment: I'm sorry, I'm new to this. I'm trying to find the package option of the tv channel that do not have any cartoon directed by Ben Jones.  Comment: I'm sorry, I'm new to this. I'm trying to find the package option of the tv channel that do not have any cartoon directed by Ben Jones.  Comment: I'm sorry, I'm new
SELECT "Package_Option" FROM "TV_Channel" WHERE "Channel" NOT IN ( SELECT "Channel" FROM "Cartoon" WHERE "Directed_by" = 'Ben Jones' ) \end{code}  Comment: What is the question?  Comment: What are the package options of all tv channels that are not playing any cartoons directed by Ben Jones?  Comment: What is the question?  Comment: What are the package options of all tv channels that are not playing any cartoons directed by Ben Jones?  Comment: What is the question?  Comment: What are the package options of all tv channels that are not playing any cartoons directed by Ben Jones?  Comment: What is the question?  Comment: What are the package options of all tv channels that are not playing any cartoons directed by Ben Jones?  Comment: What is the question?  Comment: What are the package options of all tv channels that are not playing any cartoons directed by Ben Jones?  Comment: What is the question?  Comment: What are the package options of all tv channels that are not playing any
SELECT COUNT(*) FROM poker_player;
SELECT COUNT(*) FROM poker_player;
SELECT Earnings FROM poker_player ORDER BY Earnings DESC;
SELECT Earnings FROM poker_player ORDER BY Earnings DESC;
SELECT "Final_Table_Made", "Best_Finish" FROM "poker_player"
SELECT "Final_Table_Made", "Best_Finish" FROM "poker_player"
SELECT AVG(Earnings) FROM poker_player;
SELECT AVG(Earnings) FROM poker_player;
SELECT "Money_Rank" FROM "poker_player" WHERE "Earnings" = (SELECT MAX("Earnings") FROM "poker_player");
SELECT Money_Rank FROM poker_player WHERE Earnings = (SELECT MAX(Earnings) FROM poker_player);
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000;
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000;
SELECT "Name" FROM "poker_player";
SELECT "Name" FROM "poker_player"
SELECT "Name" FROM "poker_player" WHERE "Earnings" > 300000;
SELECT "Name" FROM "poker_player" WHERE "Earnings" > 300000;
SELECT "Name" FROM "poker_player" ORDER BY "Final_Table_Made" ASC;
SELECT "Name" FROM "poker_player" ORDER BY "Final_Table_Made" ASC;
SELECT "Birth_Date" FROM "poker_player" WHERE "Earnings" = (SELECT MIN("Earnings") FROM "poker_player");
SELECT "Birth_Date" FROM "poker_player" WHERE "Earnings" = (SELECT MIN("Earnings") FROM "poker_player");
SELECT "Money_Rank" FROM "poker_player" WHERE "Height" = (SELECT MAX("Height") FROM "people");
SELECT "Money_Rank" FROM "poker_player" WHERE "Height" = (SELECT MAX("Height") FROM "people") \end{code}  Comment: What is the question?  Comment: I'm not sure what you're asking.  You've given us a query, and you've given us a schema.  What are you asking?  Comment: I'm asking what is wrong with my query.  Comment: @user3148195: What is wrong with it?  What is the error message?  What is the result you are getting?  What is the result you expect?  Comment: I'm getting an error message saying that the query is incorrect.  Comment: @user3148195: What is the error message?  Comment: @user3148195: What is the error message?  Comment: @user3148195: What is the error message?  Comment: @user3148195: What is the error message?  Comment: @user314819
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200;
SELECT AVG(Earnings) FROM Poker_Player WHERE Height > 200
SELECT "Name" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT "Name" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT Nationality, COUNT(Nationality) FROM people GROUP BY Nationality;
SELECT COUNT(DISTINCT Nationality) FROM people;
SELECT "Nationality", COUNT("Nationality") FROM "people" GROUP BY "Nationality" ORDER BY COUNT("Nationality") DESC LIMIT 1;
SELECT Nationality, COUNT(Nationality) FROM people GROUP BY Nationality ORDER BY COUNT(Nationality) DESC LIMIT 1;
SELECT DISTINCT Nationality FROM people WHERE Nationality IN (SELECT Nationality                      FROM people                      GROUP BY Nationality                      HAVING COUNT(*) >= 2);
SELECT "Nationality" FROM "people" GROUP BY "Nationality" HAVING COUNT("Nationality") >= 2
SELECT "Name", "Birth_Date" FROM "people" ORDER BY "Name" ASC
SELECT "Name", "Birth_Date" FROM "people" ORDER BY "Name"
SELECT "Name" FROM "people" WHERE "Nationality" != "Russia";
SELECT "Name" FROM "people" WHERE "Nationality" != 'Russia';
SELECT "Name" FROM "people" WHERE "People_ID" NOT IN (SELECT "People_ID" FROM "poker_player");
SELECT "Name" FROM "people" WHERE "People_ID" NOT IN (SELECT "People_ID" FROM "poker_player");
SELECT DISTINCT Nationality FROM people;
SELECT COUNT(DISTINCT Nationality) FROM people;
SELECT COUNT(DISTINCT state) FROM VOTES;
SELECT `contestant_number`, `contestant_name` FROM `CONTESTANTS` ORDER BY `contestant_name` DESC
SELECT `vote_id`, `phone_number`, `state` FROM `VOTES`
SELECT MIN(area_code), MAX(area_code) FROM AREA_CODE_STATE;
SELECT created FROM VOTES WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT `contestant_name` FROM `CONTESTANTS` WHERE `contestant_name` != 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES;
SELECT `contestant_number`, `contestant_name` FROM `CONTESTANTS` WHERE `contestant_number` IN ( 	SELECT `contestant_number` 	FROM `VOTES` 	GROUP BY `contestant_number` 	HAVING COUNT(*) >= 2 )
SELECT contestant_number, contestant_name FROM CONTESTANTS WHERE contestant_number = (     SELECT contestant_number     FROM VOTES     GROUP BY contestant_number     ORDER BY COUNT(*)     LIMIT 1 )
SELECT COUNT(*) FROM VOTES WHERE state IN ('NY', 'CA');
SELECT COUNT(*) FROM CONTESTANTS WHERE NOT EXISTS (   SELECT *   FROM VOTES   WHERE CONTESTANTS.contestant_number = VOTES.contestant_number )
SELECT state, COUNT(*) AS votes FROM VOTES GROUP BY state ORDER BY votes DESC LIMIT 1
SELECT created, state, phone_number FROM VOTES WHERE contestant_name = 'Tabatha Gehling'
SELECT DISTINCT `AREA_CODE_STATE`.`area_code` FROM `AREA_CODE_STATE` INNER JOIN `VOTES` ON `AREA_CODE_STATE`.`state` = `VOTES`.`state` WHERE `VOTES`.`contestant_number` = 1 OR `VOTES`.`contestant_number` = 2
SELECT `contestant_name` FROM `CONTESTANTS` WHERE `contestant_name` LIKE '%Al%'
SELECT name FROM country WHERE IndepYear > 1950
SELECT name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic';
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic';
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean';
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Carribean';
SELECT continent FROM country WHERE code = 'AIA';
SELECT continent FROM country WHERE code = 'AIA';
SELECT Region FROM country WHERE Code = (SELECT CountryCode FROM city WHERE Name = 'Kabul');
SELECT Region FROM country WHERE Name = 'Afghanistan';
SELECT Language, SUM(Percentage) AS TotalPercentage FROM countrylanguage WHERE CountryCode = 'AW' GROUP BY Language ORDER BY TotalPercentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = 'AW' ORDER BY Percentage DESC LIMIT 1
SELECT     c.Name,     c.Population,     c.LifeExpectancy FROM     country c WHERE     c.Code = 'BRA'
SELECT     c.Name,     c.Population,     c.LifeExpectancy FROM     country c WHERE     c.Code = 'BRA';
SELECT region, population FROM country WHERE name = 'Angola';
SELECT region, population FROM country WHERE name = 'Angola';
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa';
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT name, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'
SELECT SUM(Population) AS 'Total Population', MAX(GNP) AS 'Max GNP' FROM country WHERE Continent = 'Asia'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT SUM(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe');
SELECT SUM(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe');
SELECT COUNT(*) FROM city WHERE district = 'Gelderland';
SELECT SUM(Population) FROM city WHERE District = 'Gelderland';
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US Territory';
SELECT AVG(GNP), SUM(Population) FROM country WHERE Continent = 'North America'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT DISTINCT GovernmentForm FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'AW';
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'AW';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T';
SELECT country.Name, COUNT(countrylanguage.Language) FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code GROUP BY country.Name ORDER BY COUNT(countrylanguage.Language) DESC LIMIT 1
SELECT country.Name FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name ORDER BY COUNT(countrylanguage.Language) DESC LIMIT 1
SELECT continent, COUNT(DISTINCT language) AS languages FROM countrylanguage JOIN country ON countrylanguage.countrycode = country.code GROUP BY continent ORDER BY languages DESC LIMIT 1
SELECT continent, count(language) as languages FROM countrylanguage GROUP BY continent ORDER BY languages DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Dutch' AND Language = 'English'
SELECT COUNT(DISTINCT country.Name) FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language IN ('English', 'Dutch')
SELECT country.Name FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' AND countrylanguage.Language = 'French'
SELECT country.Name FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' AND countrylanguage.Language = 'French'
SELECT country.Name FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' AND countrylanguage.Language = 'French'
SELECT country.Name FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' AND countrylanguage.IsOfficial = 'T' AND countrylanguage.Language = 'French' AND countrylanguage.IsOfficial = 'T'
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = 'Chinese'
SELECT COUNT(DISTINCT c.Continent) FROM country c INNER JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language = 'Chinese'
SELECT DISTINCT Region FROM country WHERE Language = 'English' OR Language = 'Dutch'
SELECT DISTINCT Region FROM countrylanguage WHERE Language IN ('Dutch', 'English')
SELECT country.Name, countrylanguage.Language FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code WHERE countrylanguage.Language = 'English' OR countrylanguage.Language = 'Dutch'
SELECT country.Name, countrylanguage.Language FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code WHERE countrylanguage.Language IN ('English', 'Dutch')
SELECT Language, SUM(Percentage) AS TotalPercentage FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY TotalPercentage DESC LIMIT 1
SELECT Language, COUNT(Language) AS Count FROM countrylanguage WHERE Language IN (SELECT Language                    FROM countrylanguage                    WHERE CountryCode IN (SELECT Code                                          FROM country                                          WHERE Continent = 'Asia')) GROUP BY Language ORDER BY Count DESC LIMIT 1
SELECT countrylanguage.Language FROM countrylanguage WHERE countrylanguage.IsOfficial = 'T' AND countrylanguage.Percentage = 100 AND country.GovernmentForm = 'Republic'
SELECT countrylanguage.Language FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.GovernmentForm = 'Republic' GROUP BY countrylanguage.Language HAVING COUNT(countrylanguage.Language) = 1
SELECT * FROM city WHERE Name = (SELECT Name FROM city WHERE Population = (SELECT MAX(Population) FROM city));
SELECT c.Name, c.Population FROM city c INNER JOIN countrylanguage cl ON c.ID = cl.CountryCode WHERE cl.Language = 'English' ORDER BY c.Population DESC LIMIT 1
SELECT country.Name, country.Population, country.LifeExpectancy FROM country WHERE country.Continent = 'Asia' ORDER BY country.SurfaceArea DESC LIMIT 1
SELECT c.Name, c.Population, c.LifeExpectancy FROM country c WHERE c.Continent = 'Asia' ORDER BY c.Population DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE Language NOT IN (SELECT Language FROM countrylanguage WHERE IsOfficial = 'T')
SELECT AVG(LifeExpectancy) FROM country WHERE LifeExpectancy IS NOT NULL AND Language != 'English';
SELECT SUM(Population) FROM country WHERE Language != 'English';
SELECT COUNT(*) FROM country WHERE Language != 'English';
SELECT Language FROM countrylanguage WHERE IsOfficial = 'T' AND HeadOfState = 'Beatrix';
SELECT Language FROM countrylanguage WHERE IsOfficial = 'T' AND HeadOfState = 'Beatrix';
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode IN (SELECT Code                     FROM country                     WHERE IndepYear < 1930);
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT c.Name, c.SurfaceArea FROM country c WHERE c.SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT c.Name, c.SurfaceArea FROM country c WHERE c.SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT c.Name, c.Population FROM country c WHERE c.Continent = 'Africa' AND c.Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia')
SELECT c.Name, c.Population FROM country c WHERE c.Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia') AND c.Continent = 'Africa'
SELECT c.Name, c.Population FROM country c INNER JOIN country a ON c.Population > a.Population WHERE c.Continent = 'Asia' AND a.Continent = 'Africa'
SELECT c.Name, c.Population FROM country c INNER JOIN country a ON c.Population > a.Population WHERE c.Continent = 'Asia' AND a.Continent = 'Africa'
SELECT country.Code FROM country WHERE country.Code NOT IN (SELECT countrylanguage.CountryCode                            FROM countrylanguage                            WHERE countrylanguage.Language = 'English');
SELECT country.Code FROM country WHERE country.Code NOT IN (SELECT countrylanguage.CountryCode                            FROM countrylanguage                            WHERE countrylanguage.Language = 'English');
SELECT country.Code FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language != 'English'
SELECT country.Code FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language NOT LIKE 'English'
SELECT country.Code FROM country WHERE country.Code NOT IN (SELECT countrylanguage.CountryCode                            FROM countrylanguage                            WHERE countrylanguage.Language = 'English'                            AND countrylanguage.IsOfficial = 'T') AND country.GovernmentForm != 'Republic';
SELECT country.Code FROM country WHERE country.Continent = 'Asia' AND country.Code NOT IN (SELECT country.Code                          FROM country                          WHERE country.Continent = 'Asia'                          AND country.GovernmentForm = 'Republic') AND country.Code NOT IN (SELECT country.Code                          FROM country                          WHERE country.Continent = 'Asia'                          AND country.Language = 'English')
SELECT city.Name, country.Name FROM city INNER JOIN country ON city.CountryCode = country.Code INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Europe' AND countrylanguage.Language != 'English'
SELECT city.Name FROM city INNER JOIN country ON city.CountryCode = country.Code INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Europe' AND countrylanguage.Language != 'English'
SELECT DISTINCT city.Name FROM city INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'Chinese' AND countrylanguage.IsOfficial = 'T' AND country.Continent = 'Asia'
SELECT city.Name FROM city INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'Chinese' AND countrylanguage.IsOfficial = 'T' AND country.Continent = 'Asia'
SELECT name,indepyear,surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country)
SELECT country.Name, country.Population, country.HeadOfState FROM country WHERE country.SurfaceArea = (SELECT MAX(SurfaceArea) FROM country)
SELECT name, population, headOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT country.Name, COUNT(countrylanguage.Language) FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name HAVING COUNT(countrylanguage.Language) >= 3 ORDER BY country.Name
SELECT country.Name, COUNT(countrylanguage.Language) FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name HAVING COUNT(countrylanguage.Language) > 2
SELECT DISTINCT c.District, c.Population FROM city c INNER JOIN (     SELECT District, AVG(Population) AS avg_pop     FROM city     GROUP BY District ) d ON c.District = d.District WHERE c.Population > d.avg_pop ORDER BY c.District;
SELECT DISTINCT c.District, c.Name, c.Population FROM city c INNER JOIN (     SELECT District, AVG(Population) AS avg_pop     FROM city     GROUP BY District ) d ON c.District = d.District WHERE c.Population > d.avg_pop ORDER BY c.District, c.Population DESC;
SELECT GovernmentForm, SUM(Population) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT GovernmentForm, SUM(Population) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT continent, avg(lifeexpectancy), sum(population) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT c.Continent, SUM(c.Population), AVG(c.LifeExpectancy) FROM country c WHERE c.LifeExpectancy < 72 GROUP BY c.Continent
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population LIMIT 3;
SELECT name FROM country ORDER BY population LIMIT 3;
SELECT COUNT(*) FROM country WHERE Continent = 'Asia';
SELECT COUNT(*) FROM country WHERE Continent = 'Asia';
SELECT name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT country.Name FROM country WHERE country.Continent = 'Europe' AND country.Population = 80000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT * FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000;
SELECT Language, COUNT(Language) AS Count FROM countrylanguage GROUP BY Language ORDER BY Count DESC LIMIT 1
SELECT Language, COUNT(Language) AS Count FROM countrylanguage GROUP BY Language ORDER BY Count DESC LIMIT 1
SELECT country.Name, countrylanguage.Language, countrylanguage.Percentage FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code ORDER BY countrylanguage.Percentage DESC
SELECT country.Code, countrylanguage.Language, countrylanguage.Percentage FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code ORDER BY countrylanguage.Percentage DESC
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish')
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish'
SELECT country.Code FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code WHERE countrylanguage.Language = 'Spanish' ORDER BY countrylanguage.Percentage DESC LIMIT 1
SELECT country.Code FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code WHERE countrylanguage.Language = 'Spanish' GROUP BY country.Code HAVING COUNT(countrylanguage.Language) > 1
SELECT COUNT(DISTINCT Conductor_ID) FROM conductor;
SELECT COUNT(DISTINCT Conductor_ID) FROM conductor;
SELECT "Name" FROM "conductor" ORDER BY "Age" ASC;
SELECT "Name" FROM "conductor" ORDER BY "Age"
SELECT "Name" FROM "conductor" WHERE "Nationality" != "USA";
SELECT "Name" FROM "conductor" WHERE "Nationality" != "USA";
SELECT "Record_Company" FROM "orchestra" ORDER BY "Year_of_Founded" DESC
SELECT "Record_Company" FROM "orchestra" ORDER BY "Year_of_Founded" DESC
SELECT AVG(Attendance) FROM show;
SELECT AVG(Attendance) FROM show;
error
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type != 'Live final'
SELECT DISTINCT Nationality FROM conductor;
SELECT COUNT(DISTINCT Nationality) FROM conductor;
SELECT "Name" FROM "conductor" ORDER BY "Year_of_Work" DESC;
SELECT "Name" FROM "conductor" ORDER BY "Year_of_Work" DESC
SELECT "Name" FROM "conductor" WHERE "Year_of_Work" = (SELECT MAX("Year_of_Work") FROM "conductor");
SELECT "Name" FROM "conductor" WHERE "Year_of_Work" = (SELECT MAX("Year_of_Work") FROM "conductor");
SELECT "conductor"."Name", "orchestra"."Orchestra" FROM "conductor" INNER JOIN "orchestra" ON "conductor"."Conductor_ID" = "orchestra"."Conductor_ID"
SELECT "Name", "Orchestra" FROM "conductor" INNER JOIN "orchestra" ON "conductor"."Conductor_ID" = "orchestra"."Conductor_ID"
SELECT "Name" FROM "conductor" WHERE "Conductor_ID" IN ( SELECT "Conductor_ID" FROM "orchestra" GROUP BY "Conductor_ID" HAVING COUNT("Conductor_ID") > 1 )
SELECT "Name" FROM "conductor" WHERE "Conductor_ID" IN (SELECT "Conductor_ID" FROM "orchestra" GROUP BY "Conductor_ID" HAVING COUNT("Conductor_ID") > 1)
SELECT c.Name FROM conductor c JOIN orchestra o ON c.Conductor_ID = o.Conductor_ID GROUP BY c.Name ORDER BY COUNT(o.Orchestra_ID) DESC LIMIT 1;
SELECT "Name" FROM "conductor" WHERE "Conductor_ID" = (SELECT MAX("Conductor_ID") FROM "orchestra");
SELECT "Name" FROM "conductor" WHERE "Conductor_ID" IN ( SELECT "Conductor_ID" FROM "orchestra" WHERE "Year_of_Founded" > 2008 )
SELECT "Name" FROM "conductor" JOIN "orchestra" ON "conductor"."Conductor_ID" = "orchestra"."Conductor_ID" JOIN "performance" ON "orchestra"."Orchestra_ID" = "performance"."Orchestra_ID" WHERE "Year_of_Founded" > 2008
SELECT "Record_Company", COUNT("Orchestra_ID") FROM "orchestra" GROUP BY "Record_Company"
SELECT COUNT(DISTINCT `Record_Company`) FROM `orchestra`
error
SELECT Major_Record_Format, COUNT(Major_Record_Format) FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(Major_Record_Format) DESC
error
error
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT * FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT DISTINCT "Record_Company" FROM "orchestra" WHERE "Year_of_Founded" < 2003 AND "Year_of_Founded" > 2003
error
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format IN ('CD', 'DVD');
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format IN ('CD', 'DVD');
error
SELECT "Year_of_Founded" FROM "orchestra" WHERE "Year_of_Founded" IS NOT NULL GROUP BY "Year_of_Founded" HAVING COUNT("Performance_ID") > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler;
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler;
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT name FROM Highschooler WHERE grade = 10;
SELECT name FROM Highschooler WHERE grade = 10
SELECT ID FROM Highschooler WHERE name = 'Kyle';
SELECT ID FROM Highschooler WHERE name = 'Kyle';
SELECT COUNT(*) FROM Highschooler WHERE grade IN (9,10)
SELECT COUNT(*) FROM Highschooler WHERE grade IN (9,10);
SELECT grade, count(*) FROM Highschooler GROUP BY grade;
SELECT grade, count(*) FROM Highschooler GROUP BY grade;
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT ID, COUNT(DISTINCT friend_id) FROM Friend GROUP BY ID;
SELECT Highschooler.name, count(Friend.student_id) as num_friends FROM Highschooler LEFT JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY Highschooler.name
SELECT name, count(student_id) as num_friends FROM Highschooler LEFT JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name ORDER BY num_friends DESC
SELECT name, count(friend_id) as num_friends FROM Highschooler LEFT JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name
SELECT name FROM Highschooler WHERE ID IN ( 	SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) = ( 		SELECT COUNT(*) FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1 	) )
SELECT name FROM Highschooler WHERE ID IN ( 	SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) = ( 		SELECT COUNT(*) FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1 	) )
SELECT name FROM Highschooler WHERE ID IN ( 	SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3 )
SELECT name FROM Highschooler WHERE ID IN ( 	SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3 )
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id = 1)
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id = 1)
SELECT COUNT(*) FROM Friend WHERE student_id = 1;
SELECT COUNT(*) FROM Friend WHERE student_id = 1;
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT DISTINCT Highschooler.ID FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id JOIN Likes ON Highschooler.ID = Likes.liked_id
SELECT student_id FROM Likes, Friend WHERE Likes.student_id = Friend.student_id;
SELECT name FROM Highschooler AS h1 JOIN Friend AS f1 ON h1.ID = f1.student_id JOIN Likes AS l1 ON h1.ID = l1.student_id JOIN Highschooler AS h2 ON h2.ID = f1.friend_id JOIN Likes AS l2 ON h2.ID = l2.liked_id WHERE h1.ID <> h2.ID
SELECT name FROM Highschooler WHERE ID IN ( 	SELECT student_id FROM Friend 	INTERSECT 	SELECT liked_id FROM Likes )
SELECT student_id, count(liked_id) as likes FROM Likes GROUP BY student_id
SELECT student_id, count(liked_id) FROM Likes GROUP BY student_id
SELECT name, count(liked_id) as likes FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name
SELECT name, count(liked_id) as likes FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name
SELECT name FROM Highschooler WHERE ID IN ( 	SELECT liked_id FROM Likes GROUP BY liked_id HAVING COUNT(*) = ( 		SELECT COUNT(*) FROM Likes GROUP BY liked_id ORDER BY COUNT(*) DESC LIMIT 1 	) )
SELECT name FROM Highschooler AS h JOIN Likes AS l ON h.ID = l.student_id GROUP BY h.ID ORDER BY COUNT(l.liked_id) DESC LIMIT 1
SELECT name FROM Highschooler WHERE ID IN ( 	SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2 )
SELECT name FROM Highschooler WHERE ID IN ( 	SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2 )
SELECT name FROM Highschooler WHERE grade > 5 AND EXISTS (SELECT * FROM Friend WHERE student_id = Highschooler.ID)
SELECT name FROM Highschooler WHERE grade > 5 AND EXISTS (SELECT * FROM Friend WHERE student_id = Highschooler.ID HAVING COUNT(*) >= 2)
SELECT COUNT(*) FROM Likes WHERE student_id = 1;
SELECT COUNT(*) FROM Likes WHERE liked_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle');
SELECT AVG(grade) FROM Highschooler AS h JOIN Friend AS f ON h.ID = f.student_id JOIN Highschooler AS h2 ON f.friend_id = h2.ID
SELECT AVG(grade) FROM Highschooler h, Friend f WHERE h.ID = f.student_id;
SELECT grade FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT grade FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT state FROM Owners, Professionals WHERE Owners.state = Professionals.state;
SELECT DISTINCT state FROM Owners INNER JOIN Professionals ON Owners.state = Professionals.state
SELECT AVG(d.age) FROM Dogs d INNER JOIN Treatments t ON d.dog_id = t.dog_id
SELECT AVG(d.age) FROM Dogs d INNER JOIN Treatments t ON d.dog_id = t.dog_id
error
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = 'IN' OR (SELECT COUNT(*) FROM Treatments WHERE professional_id = professional_id) > 2
SELECT Dogs.name FROM Dogs WHERE Dogs.dog_id NOT IN (SELECT Treatments.dog_id                           FROM Treatments                           WHERE Treatments.cost_of_treatment > 1000) \end{code}  Comment: What is the question?  Comment: I'm not sure what you're asking.  You've given us a bunch of SQL statements, but not a question.  Comment: I'm sorry, I'm new to this. I'm trying to answer the following question: "Which dogs have not cost their owner more than 1000 for treatment ? List the dog names."  Comment: I'm not sure what you're asking.  You've given us a bunch of SQL statements, but not a question.  Comment: I'm sorry, I'm new to this. I'm trying to answer the following question: "Which dogs have not cost their owner more than 1000 for treatment ? List the dog names."  Comment: I'm sorry, I'm new to this. I'm
SELECT Dogs.name FROM Dogs WHERE Dogs.owner_id = 1 AND Dogs.abandoned_yn = 'N' AND Dogs.date_departed IS NULL AND Dogs.date_adopted IS NULL AND Dogs.date_of_birth IS NOT NULL AND Dogs.date_of_birth < '2017-01-01' AND Dogs.date_of_birth > '2016-01-01' AND Dogs.gender = 'M' AND Dogs.weight IS NOT NULL AND Dogs.weight > '0' AND Dogs.weight < '100' AND Dogs.size_code = 'S' AND Dogs.breed_code = 'B' AND Dogs.name IS NOT NULL AND Dogs.name <> '' AND Dogs.name <> ' ' AND Dogs.name <> '  ' AND Dogs.name <> '   ' AND Dogs.name <> '    ' AND Dogs.name <> '     ' AND D
SELECT DISTINCT first_name FROM Owners WHERE first_name NOT IN (SELECT name FROM Dogs) UNION SELECT DISTINCT first_name FROM Professionals WHERE first_name NOT IN (SELECT name FROM Dogs)
error
error
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )
SELECT O.owner_id, O.first_name, O.last_name FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id GROUP BY O.owner_id ORDER BY COUNT(D.owner_id) DESC LIMIT 1
SELECT Owner_id, First_name, Last_name FROM Owners WHERE Owner_id = (SELECT Owner_id                   FROM Dogs                   GROUP BY Owner_id                   ORDER BY COUNT(Owner_id) DESC                   LIMIT 1);
error
SELECT professional_id, role_code, first_name FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(professional_id) >= 2 )
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code                     FROM Dogs                     GROUP BY breed_code                     ORDER BY COUNT(*) DESC                     LIMIT 1);
SELECT breed_name, COUNT(breed_code) FROM Breeds INNER JOIN Dogs ON Breeds.breed_code = Dogs.breed_code GROUP BY breed_name ORDER BY COUNT(breed_code) DESC LIMIT 1
error
SELECT O.owner_id, O.last_name, SUM(T.cost_of_treatment) FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id INNER JOIN Treatments T ON D.dog_id = T.dog_id GROUP BY O.owner_id, O.last_name ORDER BY SUM(T.cost_of_treatment) DESC LIMIT 1;
SELECT treatment_type_description, SUM(cost_of_treatment) FROM Treatments INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code GROUP BY treatment_type_description ORDER BY SUM(cost_of_treatment) ASC LIMIT 1;
SELECT treatment_type_description, SUM(cost_of_treatment) FROM Treatments INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code GROUP BY treatment_type_description ORDER BY SUM(cost_of_treatment) ASC LIMIT 1
SELECT O.owner_id, O.zip_code, SUM(T.cost_of_treatment) AS 'Total Cost' FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id INNER JOIN Treatments T ON D.dog_id = T.dog_id GROUP BY O.owner_id, O.zip_code ORDER BY SUM(T.cost_of_treatment) DESC LIMIT 1;
SELECT O.owner_id, O.zip_code, SUM(T.cost_of_treatment) AS Total_Cost FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id INNER JOIN Treatments T ON D.dog_id = T.dog_id GROUP BY O.owner_id, O.zip_code ORDER BY Total_Cost DESC LIMIT 1;
error
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(DISTINCT treatment_type_code) > 1 )
SELECT first_name, last_name FROM Professionals WHERE treatment_id IN ( SELECT treatment_id FROM Treatments WHERE cost_of_treatment < ( SELECT AVG(cost_of_treatment) FROM Treatments ) )
error
SELECT treatment_id, date_of_treatment, first_name FROM Treatments INNER JOIN Professionals ON Treatments.professional_id = Professionals.professional_id
SELECT date_of_treatment, first_name FROM Treatments INNER JOIN Professionals ON Treatments.professional_id = Professionals.professional_id
SELECT t.treatment_id, t.cost_of_treatment, tt.treatment_type_description FROM Treatments t INNER JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code ORDER BY t.treatment_id
SELECT t.cost_of_treatment, tt.treatment_type_description FROM Treatments t INNER JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code
SELECT O.first_name, O.last_name, S.size_description FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id INNER JOIN Sizes S ON D.size_code = S.size_code
SELECT O.first_name, O.last_name, S.size_description FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id INNER JOIN Sizes S ON D.size_code = S.size_code
SELECT O.first_name, D.name FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id
SELECT O.first_name, D.name FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id
error
SELECT DISTINCT d.name, t.date_of_treatment FROM Dogs d INNER JOIN Treatments t ON d.dog_id = t.dog_id INNER JOIN Breeds b ON d.breed_code = b.breed_code WHERE b.breed_code = (SELECT breed_code                       FROM Breeds                       GROUP BY breed_code                       ORDER BY COUNT(*) DESC                       LIMIT 1) ORDER BY d.name;
SELECT O.first_name, D.name FROM Owners O, Dogs D WHERE O.state = 'VA' AND O.owner_id = D.owner_id;
SELECT first_name, name FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id WHERE state = 'VA'
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Treatments.date_of_treatment IS NOT NULL
SELECT Dogs.date_arrived, Dogs.date_departed, Treatments.date_of_treatment FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Treatments.date_of_treatment IS NOT NULL
SELECT O.last_name FROM Owners O INNER JOIN Dogs D ON O.owner_id = D.owner_id WHERE D.age = (SELECT MIN(D.age) FROM Dogs D)
SELECT Dogs.last_name FROM Dogs WHERE Dogs.age = (SELECT MIN(Dogs.age) FROM Dogs)
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs
SELECT COUNT(DISTINCT dog_id) FROM Treatments;
SELECT COUNT(dog_id) FROM Treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
error
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%';
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%';
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%';
SELECT * FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs);
SELECT COUNT(dogs.age) FROM dogs WHERE dogs.age < (SELECT AVG(dogs.age) FROM dogs);
SELECT     t.treatment_id,     t.date_of_treatment,     t.cost_of_treatment,     t.treatment_type_code,     tt.treatment_type_description,     p.professional_id,     p.first_name,     p.last_name,     p.email_address,     p.home_phone,     p.cell_number,     p.role_code,     d.dog_id,     d.name,     d.breed_code,     d.size_code,     d.age,     d.date_of_birth,     d.gender,     d.weight,     d.date_arrived,     d.date_adopted,     d.date_departed,     b.breed_code,     b.breed_name,     s.size_code,     s.size_description FROM     Treatments t     INNER JOIN Treatment_
SELECT `cost_of_treatment` FROM `Treatments` WHERE `date_of_treatment` = (SELECT MAX(`date_of_treatment`) FROM `Treatments`);
SELECT Dogs.dog_id, Dogs.name, Dogs.breed_code, Dogs.size_code, Dogs.age, Dogs.date_of_birth, Dogs.gender, Dogs.weight, Dogs.date_arrived, Dogs.date_adopted, Dogs.date_departed, Dogs.abandoned_yn, Breeds.breed_name, Sizes.size_description, Treatment_Types.treatment_type_description, Treatments.date_of_treatment, Treatments.cost_of_treatment, Professionals.first_name, Professionals.last_name, Professionals.role_code, Owners.first_name, Owners.last_name, Owners.street, Owners.city, Owners.state, Owners.zip_code, Owners.email_address, Owners.home_phone, Owners.cell_number FROM Dogs LEFT JOIN Breeds ON Dogs.breed_code = Breeds.breed_code
SELECT COUNT(DISTINCT dog_id) FROM Treatments WHERE treatment_id IS NULL
SELECT COUNT(DISTINCT owner_id) FROM Dogs WHERE abandoned_yn = 'Y'
SELECT COUNT(*) FROM Owners WHERE NOT EXISTS (SELECT * FROM Dogs WHERE Owners.owner_id = Dogs.owner_id);
SELECT COUNT(DISTINCT professional_id) FROM Treatments WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM `Professionals` WHERE `professional_id` NOT IN (SELECT `professional_id` FROM `Treatments`);
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs;
SELECT AVG(age) FROM Dogs;
SELECT MAX(age) FROM Dogs;
SELECT MAX(age) FROM Dogs;
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, MAX(charge_amount) FROM Charges GROUP BY charge_type
SELECT charge_amount FROM Charges WHERE charge_type = (SELECT MAX(charge_type)                      FROM Charges);
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT breed_code, size_code FROM Breeds, Sizes;
SELECT DISTINCT breed_code, size_code FROM Dogs
SELECT first_name, treatment_type_description FROM Treatments INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code INNER JOIN Professionals ON Treatments.professional_id = Professionals.professional_id
SELECT first_name, treatment_type_description FROM Treatments INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code INNER JOIN Professionals ON Treatments.professional_id = Professionals.professional_id
SELECT COUNT(*) FROM singer;
SELECT COUNT(*) FROM singer;
SELECT "Name" FROM "singer" ORDER BY "Net_Worth_Millions" ASC;
SELECT "Name" FROM "singer" ORDER BY "Net_Worth_Millions" ASC;
SELECT "Birth_Year", "Citizenship" FROM "singer"
SELECT "Birth_Year", "Citizenship" FROM "singer"
SELECT "Name" FROM "singer" WHERE "Citizenship" != "France";
SELECT "Name" FROM "singer" WHERE "Citizenship" != 'French';
SELECT "Name" FROM "singer" WHERE "Birth_Year" = 1948 OR "Birth_Year" = 1949;
SELECT "Name" FROM "singer" WHERE "Birth_Year" IN (1948, 1949);
SELECT "Name" FROM "singer" WHERE "Net_Worth_Millions" = (SELECT MAX("Net_Worth_Millions") FROM "singer");
SELECT "Name" FROM "singer" WHERE "Net_Worth_Millions" = (SELECT MAX("Net_Worth_Millions") FROM "singer");
SELECT "Citizenship", COUNT("Citizenship") FROM "singer" GROUP BY "Citizenship"
SELECT "Citizenship", COUNT("Singer_ID") FROM "singer" GROUP BY "Citizenship"
SELECT "Citizenship", COUNT("Citizenship") FROM "singer" GROUP BY "Citizenship" ORDER BY COUNT("Citizenship") DESC;
error
SELECT "Citizenship", MAX("Net_Worth_Millions") FROM "singer" GROUP BY "Citizenship"
SELECT "Citizenship", MAX("Net_Worth_Millions") FROM "singer" GROUP BY "Citizenship"
SELECT "song"."Title", "singer"."Name" FROM "song" INNER JOIN "singer" ON "song"."Singer_ID" = "singer"."Singer_ID"
SELECT "Title", "Name" FROM "song"
SELECT DISTINCT "Name" FROM "singer" INNER JOIN "song" ON "singer"."Singer_ID" = "song"."Singer_ID" WHERE "song"."Sales" > 300000
SELECT "Name" FROM "singer" WHERE "Sales" > 300000;
SELECT "Name" FROM "singer" WHERE "Singer_ID" IN (SELECT "Singer_ID" FROM "song" GROUP BY "Singer_ID" HAVING COUNT("Singer_ID") > 1)
SELECT "Name" FROM "singer" WHERE "Singer_ID" IN (SELECT "Singer_ID" FROM "song" GROUP BY "Singer_ID" HAVING COUNT("Singer_ID") > 1);
SELECT "Name", SUM("Sales") FROM "singer" INNER JOIN "song" ON "singer"."Singer_ID" = "song"."Singer_ID" GROUP BY "Name"
SELECT "Name", SUM("Sales") FROM "singer" INNER JOIN "song" ON "singer"."Singer_ID" = "song"."Singer_ID" GROUP BY "Name"
SELECT "Name" FROM "singer" WHERE "Singer_ID" NOT IN (SELECT "Singer_ID" FROM "song");
SELECT sname FROM singer WHERE sname NOT IN (SELECT title FROM song);
SELECT "Citizenship" FROM "singer" WHERE "Birth_Year" < 1945 AND "Birth_Year" > 1955
SELECT "Citizenship" FROM "singer" WHERE "Birth_Year" < 1945 AND "Birth_Year" > 1955;
SELECT COUNT(*) FROM Other_Available_Features;
SELECT `feature_type_name` FROM `Ref_Feature_Types` WHERE `feature_type_code` = 'AirCon';
SELECT `property_type_description` FROM `Ref_Property_Types` WHERE `property_type_code` IN ( SELECT `property_type_code` FROM `Properties` WHERE `property_id` IN ( SELECT `property_id` FROM `Other_Property_Features` WHERE `feature_id` IN ( SELECT `feature_id` FROM `Other_Available_Features` WHERE `feature_type_code` = 'APT' ) ) ) \end{code}  Comment: I'm not sure I understand the question.  Can you provide some sample data and desired results?  Comment: I'm not sure I understand the question.  Can you provide some sample data and desired results?  Comment: I'm not sure I understand the question.  Can you provide some sample data and desired results?  Comment: I'm not sure I understand the question.  Can you provide some sample data and desired results?  Comment: I'm not sure I understand the question.  Can you provide some sample data and desired results?  Comment: I'm not sure I
SELECT `property_name` FROM `Properties` WHERE `property_type_code` IN ('HSE', 'APT') AND `room_count` > 1
