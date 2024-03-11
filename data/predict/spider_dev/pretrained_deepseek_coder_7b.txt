SELECT COUNT(*) FROM singer;
SELECT COUNT(*) FROM singer;
SELECT "Name", "Country", "Age" FROM "singer" ORDER BY "Age" DESC;
SELECT "Name", "Country", "Age" FROM "singer" ORDER BY "Age" DESC;
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = 'France'
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = 'France'
SELECT "Name", "Song_release_year" FROM "singer" WHERE "Age" = (SELECT MIN("Age") FROM "singer")
SELECT "Song_Name", "Song_release_year" FROM "singer" WHERE "Age" = (SELECT MIN("Age") FROM "singer")
SELECT DISTINCT "Country" FROM "singer" WHERE "Age" > 20;
SELECT DISTINCT "Country" FROM "singer" WHERE "Age" > 20;
SELECT "Country", COUNT("Singer_ID") AS "Number of singers" FROM "singer" GROUP BY "Country"
SELECT "Country", COUNT("Singer_ID") AS "Number of singers" FROM "singer" GROUP BY "Country"
SELECT "Song_Name" FROM "singer" WHERE "Age" > (SELECT AVG("Age") FROM "singer")
SELECT "Song_Name" FROM "singer" WHERE "Age" > (SELECT AVG("Age") FROM "singer")
SELECT "Location", "Name" FROM "stadium" WHERE "Capacity" BETWEEN 5000 AND 10000
SELECT "Location", "Name" FROM "stadium" WHERE "Capacity" BETWEEN 5000 AND 10000
SELECT MAX(Capacity) AS Max_Capacity, AVG(Capacity) AS Average_Capacity FROM stadium;
SELECT AVG(Capacity) AS Average_Capacity, MAX(Capacity) AS Maximum_Capacity FROM stadium;
SELECT "Name", "Capacity" FROM "stadium" WHERE "Average" = (SELECT MAX("Average") FROM "stadium");
SELECT "Name", "Capacity" FROM "stadium" WHERE "Average" = (SELECT MAX("Average") FROM "stadium")
SELECT COUNT(*) FROM concert WHERE Year = '2014' OR Year = '2015';
SELECT COUNT(*) FROM concert WHERE Year = '2014' OR Year = '2015';
SELECT stadium.name, COUNT(concert.concert_ID) AS number_of_concerts FROM stadium JOIN concert ON stadium.Stadium_ID = concert.Stadium_ID GROUP BY stadium.name;
SELECT stadium.name, COUNT(concert.concert_ID) AS number_of_concerts FROM stadium LEFT JOIN concert ON stadium.stadium_ID = concert.stadium_ID GROUP BY stadium.name;
SELECT stadium.name, stadium.capacity FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id WHERE concert.year >= 2014 GROUP BY stadium.name, stadium.capacity ORDER BY COUNT(*) DESC LIMIT 1;
SELECT stadium.name, stadium.capacity FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id WHERE concert.year > 2013 GROUP BY stadium.name, stadium.capacity ORDER BY COUNT(concert.concert_id) DESC LIMIT 1;
SELECT Year, COUNT(Year) AS Number_of_concerts FROM concert GROUP BY Year ORDER BY Number_of_concerts DESC LIMIT 1
SELECT Year, COUNT(Year) AS Number_of_concerts FROM concert GROUP BY Year ORDER BY Number_of_concerts DESC LIMIT 1
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert");
SELECT "stadium"."Name" FROM "stadium" LEFT JOIN "concert" ON "stadium"."Stadium_ID" = "concert"."Stadium_ID" WHERE "concert"."concert_ID" IS NULL
SELECT DISTINCT "Country" FROM "singer" WHERE "Age" > 40 OR "Age" < 30
SELECT "Name" FROM stadium WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM concert WHERE "Year" = '2014')
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" = '2014')
SELECT concert.concert_Name, concert.Theme, COUNT(singer_in_concert.Singer_ID) AS Number_of_singers FROM concert LEFT JOIN singer_in_concert ON concert.concert_ID = singer_in_concert.concert_ID GROUP BY concert.concert_Name, concert.Theme;
SELECT "concert"."concert_Name", "concert"."Theme", COUNT("singer_in_concert"."Singer_ID") AS "Number of singers" FROM "concert" INNER JOIN "singer_in_concert" ON "concert"."concert_ID" = "singer_in_concert"."concert_ID" GROUP BY "concert"."concert_Name", "concert"."Theme"
SELECT "Name", COUNT("concert_ID") AS "Number of Concerts" FROM "singer" INNER JOIN "singer_in_concert" ON "singer"."Singer_ID" = "singer_in_concert"."Singer_ID" GROUP BY "Name"
SELECT "singer"."Name", COUNT("singer_in_concert"."concert_ID") AS "Number of Concerts" FROM "singer" INNER JOIN "singer_in_concert" ON "singer"."Singer_ID" = "singer_in_concert"."Singer_ID" GROUP BY "singer"."Name"
SELECT "Name" FROM "singer" INNER JOIN "singer_in_concert" ON "singer"."Singer_ID" = "singer_in_concert"."Singer_ID" INNER JOIN "concert" ON "singer_in_concert"."concert_ID" = "concert"."concert_ID" WHERE "Year" = '2014'
SELECT "Name" FROM "singer" INNER JOIN "singer_in_concert" ON "singer"."Singer_ID" = "singer_in_concert"."Singer_ID" INNER JOIN "concert" ON "singer_in_concert"."concert_ID" = "concert"."concert_ID" WHERE "Year" = '2014'
SELECT "Name", "Country" FROM "singer" WHERE "Song_Name" LIKE '%Hey%';
SELECT "Name", "Country" FROM "singer" WHERE "Song_Name" LIKE '%Hey%'
SELECT "stadium"."Name", "stadium"."Location" FROM "stadium" INNER JOIN "concert" ON "stadium"."Stadium_ID" = "concert"."Stadium_ID" WHERE "concert"."Year" = 2014 OR "concert"."Year" = 2015 GROUP BY "stadium"."Name", "stadium"."Location"
SELECT DISTINCT "stadium"."Name", "stadium"."Location" FROM "stadium" INNER JOIN "concert" ON "stadium"."Stadium_ID" = "concert"."Stadium_ID" WHERE "concert"."Year" = '2014' OR "concert"."Year" = '2015'
SELECT COUNT(*) FROM concert WHERE Stadium_ID IN (SELECT Stadium_ID FROM stadium WHERE Capacity = (SELECT MAX(Capacity) FROM stadium));
SELECT COUNT(*) FROM concert WHERE Stadium_ID IN (     SELECT Stadium_ID     FROM stadium     WHERE Capacity = (         SELECT MAX(Capacity)         FROM stadium     ) )
SELECT COUNT(*) FROM Pets WHERE weight > 10;
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE PetType = 'dog' ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE PetType = 'Dog' ORDER BY pet_age LIMIT 1
SELECT PetType, MAX(weight) FROM Pets GROUP BY PetType
SELECT PetType, MAX(weight) FROM Pets GROUP BY PetType
SELECT COUNT(*) FROM Student, Has_Pet, Pets WHERE Student.StuID = Has_Pet.StuID AND Has_Pet.PetID = Pets.PetID AND Student.Age > 20;
SELECT COUNT(*) FROM Student, Has_Pet, Pets WHERE Student.StuID = Has_Pet.StuID AND Has_Pet.PetID = Pets.PetID AND Student.Age > 20;
SELECT COUNT(*) FROM Student, Pets, Has_Pet WHERE Student.StuID = Has_Pet.StuID AND Pets.PetID = Has_Pet.PetID AND Student.Sex = 'F' AND Pets.PetType = 'dog'
SELECT COUNT(*) FROM Student, Pets, Has_Pet WHERE Student.StuID = Has_Pet.StuID AND       Pets.PetID = Has_Pet.PetID AND       Student.Sex = 'F' AND       Pets.PetType = 'dog'
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT COUNT(DISTINCT PetType) FROM Pets;
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'cat' OR PetType = 'dog'));
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'cat' OR PetType = 'dog'))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'cat')) AND StuID IN (SELECT StuID               FROM Has_Pet               WHERE PetID IN (SELECT PetID                               FROM Pets                               WHERE PetType = 'dog'))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'cat')) AND StuID IN (SELECT StuID               FROM Has_Pet               WHERE PetID IN (SELECT PetID                               FROM Pets                               WHERE PetType = 'dog'))
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat');
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID                     FROM Has_Pet                     WHERE PetID IN (SELECT PetID                                     FROM Pets                                     WHERE PetType = 'cat'))
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Cat'));
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'dog')) AND StuID NOT IN (SELECT StuID                   FROM Has_Pet                   WHERE PetID IN (SELECT PetID                                   FROM Pets                                   WHERE PetType = 'cat'))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'dog')) AND StuID NOT IN (SELECT StuID                   FROM Has_Pet                   WHERE PetID IN (SELECT PetID                                   FROM Pets                                   WHERE PetType = 'cat'))
SELECT PetType, weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)
SELECT PetType, weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)
SELECT PetID, weight FROM Pets WHERE pet_age > 1;
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT PetID FROM Has_Pet WHERE StuID = (SELECT StuID                FROM Student                WHERE LName = 'Smith')
SELECT PetID FROM Has_Pet WHERE StuID = (SELECT StuID                FROM Student                WHERE LName = 'Smith')
SELECT StuID, COUNT(PetID) AS num_pets FROM Has_Pet GROUP BY StuID;
SELECT StuID, COUNT(PetID) AS num_pets FROM Student JOIN Has_Pet ON Student.StuID = Has_Pet.StuID GROUP BY StuID;
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 GROUP BY StuID                 HAVING COUNT(*) > 1)
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 GROUP BY StuID                 HAVING COUNT(*) > 1)
SELECT LName FROM Student, Pets, Has_Pet WHERE Student.StuID = Has_Pet.StuID AND Pets.PetID = Has_Pet.PetID AND Pets.PetType = 'cat' AND Pets.pet_age = 3;
SELECT LName FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'cat' AND pet_age = 3))
SELECT AVG(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT AVG(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(Continent) FROM continents;
SELECT COUNT(Continent) FROM continents;
SELECT continents.ContId, continents.Continent, COUNT(countries.CountryId) AS NumberOfCountries FROM continents LEFT JOIN countries ON continents.ContId = countries.Continent GROUP BY continents.ContId
SELECT continents.ContId, continents.Continent, COUNT(countries.CountryId) AS "Number of Countries" FROM continents LEFT JOIN countries ON continents.ContId = countries.Continent GROUP BY continents.Continent
SELECT COUNT(DISTINCT Country) FROM countries;
SELECT COUNT(DISTINCT CountryName) FROM countries;
SELECT car_makers.FullName, car_makers.Id, COUNT(model_list.Model) AS Models FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.FullName ORDER BY Models DESC
SELECT car_makers.Id, car_makers.FullName, COUNT(model_list.Model) AS Models FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id
SELECT Model, Horsepower FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId ORDER BY Horsepower ASC LIMIT 1
SELECT Model, Horsepower FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM model_list WHERE ModelId IN ( 	SELECT Model FROM cars_data 	WHERE Weight < (SELECT AVG(Weight) FROM cars_data) )
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT DISTINCT car_makers.Maker, car_names.Make, cars_data.Year FROM car_makers INNER JOIN car_names ON car_makers.Id = car_names.MakeId INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = 1970
SELECT DISTINCT car_makers.Maker, car_names.Make, cars_data.Year FROM car_makers INNER JOIN car_names ON car_makers.Id = car_names.MakeId INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = 1970
SELECT DISTINCT car_names.Make, cars_data.Year FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId WHERE cars_data.Year = (SELECT MIN(Year) FROM cars_data)
SELECT car_makers.Maker, car_names.Year FROM car_makers INNER JOIN car_names ON car_makers.Id = car_names.MakeId WHERE car_names.Year = (SELECT MIN(Year) FROM car_names)
SELECT DISTINCT Model FROM model_list WHERE Model NOT IN (SELECT Model FROM model_list WHERE Year < 1980)
SELECT DISTINCT Model FROM model_list WHERE Model IN (SELECT Model FROM cars_data WHERE Year > 1980)
SELECT continents.Continent, COUNT(car_makers.Country) AS "Count" FROM continents JOIN countries ON continents.ContId = countries.Continent JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY continents.Continent
SELECT continents.Continent, COUNT(car_makers.Maker) AS "Number of Car Makers" FROM continents JOIN countries ON continents.ContId = countries.Continent JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY continents.Continent
SELECT countries.CountryName, COUNT(car_makers.Country) AS "Number of Car Makers" FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryName ORDER BY COUNT(car_makers.Country) DESC LIMIT 1
SELECT countries.CountryName, COUNT(car_makers.Id) AS "Number of Car Makers" FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryName ORDER BY COUNT(car_makers.Id) DESC LIMIT 1;
SELECT car_makers.FullName, COUNT(model_list.Model) AS ModelCount FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.FullName;
SELECT car_makers.Id, car_makers.FullName, COUNT(model_list.Model) AS Models FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id
SELECT * FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId WHERE car_names.Make = 'amc hornet sportabout (sw)'
SELECT * FROM cars_data WHERE Model = 'AMC Hornet Sportabout (sw)'
SELECT COUNT(car_makers.Country) FROM car_makers WHERE car_makers.Country = 1
SELECT COUNT(DISTINCT car_makers.Maker) FROM car_makers INNER JOIN countries ON car_makers.Country = countries.CountryId WHERE countries.Country = 'France'
SELECT COUNT(DISTINCT Model) FROM car_names JOIN countries ON car_names.Make = countries.CountryName WHERE countries.Continent = 'USA'
SELECT COUNT(Model) FROM model_list WHERE Country = 'USA'
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT DISTINCT car_makers.Maker, model_list.Model FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker
SELECT DISTINCT car_makers.Maker, model_list.Model FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker
SELECT DISTINCT countries.CountryName, countries.CountryId FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country
SELECT countries.CountryName, countries.CountryId FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150;
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150;
SELECT Year, AVG(Weight) AS Average_Weight FROM cars_data GROUP BY Year
SELECT Year, AVG(Weight) AS AverageWeight, AVG(Year) AS AverageYear FROM cars_data GROUP BY Year
SELECT countries.CountryName, COUNT(car_makers.Id) AS "Number of Car Manufacturers" FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country WHERE countries.Continent = 1 GROUP BY countries.CountryName HAVING COUNT(car_makers.Id) >= 3
SELECT countries.CountryName, COUNT(car_makers.Id) AS "Number of Manufacturers" FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country WHERE countries.Continent = 2 GROUP BY countries.CountryName HAVING COUNT(car_makers.Id) >= 3
SELECT MAX(Horsepower), Make FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId WHERE Cylinders = 3
SELECT DISTINCT car_names.Make, cars_data.Horsepower FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId WHERE cars_data.Cylinders = 3 ORDER BY cars_data.Horsepower DESC LIMIT 1;
SELECT Model, MAX(MPG) AS MaxMPG FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId GROUP BY Model ORDER BY MaxMPG DESC LIMIT 1;
SELECT Model, MPG FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980;
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980;
SELECT AVG(Edispl) FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId WHERE Model = 'volvo';
SELECT AVG(Edispl) FROM cars_data JOIN car_names ON cars_data.Id = car_names.MakeId WHERE Make = 'Volvo'
SELECT DISTINCT cylinders, MAX(accelerate) FROM cars_data GROUP BY cylinders
SELECT DISTINCT cylinders, MAX(accelerate) FROM cars_data GROUP BY cylinders
SELECT Model, COUNT(Model) AS ModelCount FROM car_names GROUP BY Model ORDER BY ModelCount DESC LIMIT 1
SELECT Model, COUNT(Model) AS ModelCount FROM model_list GROUP BY Model ORDER BY ModelCount DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4;
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4;
SELECT COUNT(*) FROM cars_data WHERE Year = 1980;
SELECT COUNT(Id) FROM cars_data WHERE Year = 1980;
SELECT COUNT(Model) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = 'American Motor Company')
SELECT COUNT(Model) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE Maker = 'American Motor Company')
SELECT car_makers.FullName, car_makers.Id FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id HAVING COUNT(model_list.Model) > 3
SELECT car_makers.Maker, car_makers.Id, COUNT(model_list.Model) AS ModelCount FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id HAVING ModelCount > 3;
SELECT DISTINCT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE FullName = 'General Motors') OR Weight > 3500
SELECT DISTINCT model_list.Model, car_names.Make, cars_data.Weight FROM model_list INNER JOIN car_names ON model_list.Model = car_names.Model INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE car_names.Make = 'General Motors' OR cars_data.Weight > 3500
SELECT DISTINCT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 OR Weight > 3000;
SELECT Horsepower, Accelerate FROM cars_data WHERE Accelerate = (SELECT MAX(Accelerate) FROM cars_data)
SELECT Horsepower, Accelerate FROM cars_data WHERE Accelerate = (SELECT MAX(Accelerate) FROM cars_data)
SELECT MIN(Cars_data.Accelerate), Model_list.Model, Cars_data.Cylinders FROM Cars_data INNER JOIN Model_list ON Cars_data.Id = Model_list.ModelId WHERE Model_list.Model = 'volvo' GROUP BY Model_list.Model ORDER BY MIN(Cars_data.Accelerate) ASC LIMIT 1
SELECT MIN(Cylinders) FROM cars_data WHERE Model = 'Volvo'
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data WHERE Horsepower = (SELECT MAX(Horsepower) FROM cars_data))
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Accelerate) FROM cars_data WHERE Horsepower = (SELECT MAX(Horsepower) FROM cars_data));
SELECT COUNT(DISTINCT Country) FROM car_makers WHERE Country IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(Country) > 2)
SELECT COUNT(DISTINCT countries.CountryName) FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryName HAVING COUNT(DISTINCT car_makers.Id) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6;
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6;
SELECT Model, Horsepower FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model, Horsepower FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT DISTINCT car_names.MakeId, car_names.Make FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId WHERE cars_data.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND cars_data.Cylinders > 3
SELECT DISTINCT car_names.MakeId, car_names.Make FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId WHERE cars_data.Horsepower != (SELECT MIN(Horsepower) FROM cars_data) AND cars_data.Cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980;
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980;
SELECT DISTINCT Model FROM model_list WHERE Model NOT IN (SELECT Model FROM car_names WHERE Make = 'Ford Motor Company') AND Model IN (SELECT Model FROM cars_data WHERE Weight < 3500)
SELECT DISTINCT Model FROM model_list WHERE Model NOT IN (SELECT Model FROM car_names WHERE Make = 'Ford') AND Model IN (SELECT Model FROM cars_data WHERE Weight < 3500)
SELECT countries.CountryName FROM countries LEFT JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Country IS NULL
SELECT countries.CountryName FROM countries LEFT JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Country IS NULL
SELECT DISTINCT car_makers.Id, car_makers.Maker FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.Maker HAVING COUNT(model_list.Model) >= 2 AND COUNT(car_makers.Id) > 3;
SELECT car_makers.Id, car_makers.Maker, COUNT(model_list.Model) AS Models, COUNT(car_names.Make) AS Cars FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker JOIN car_names ON model_list.Model = car_names.Model GROUP BY car_makers.Id HAVING Models >= 2 AND Cars > 3
SELECT countries.CountryId, countries.CountryName, car_makers.Maker, car_makers.FullName, model_list.Model FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country INNER JOIN model_list ON car_makers.Id = model_list.Maker WHERE car_makers.Maker = 'fiat'
SELECT countries.CountryId, countries.CountryName FROM countries WHERE countries.CountryId IN ( 	SELECT countries.CountryId 	FROM countries 	INNER JOIN car_makers 	ON countries.CountryId = car_makers.Country 	GROUP BY countries.CountryId 	HAVING COUNT(car_makers.Id) > 3 	UNION 	SELECT countries.CountryId 	FROM countries 	INNER JOIN car_makers 	ON countries.CountryId = car_makers.Country 	INNER JOIN model_list 	ON car_makers.Id = model_list.Maker 	INNER JOIN car_names 	ON model_list.Model = car_names.Model 	WHERE car_names.Make = 'Fiat' )
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = 'JBU'
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue Airways'
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA';
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony'
SELECT airports.AirportCode, airports.AirportName FROM airports WHERE airports.City = 'Anthony'
SELECT COUNT(Airline) FROM airlines
SELECT COUNT(Airline) FROM airlines
SELECT COUNT(AirportCode) FROM airports;
SELECT COUNT(*) FROM airports;
SELECT COUNT(*) FROM flights;
SELECT COUNT(*) FROM flights;
SELECT * FROM airlines WHERE Abbreviation = 'UAL';
SELECT * FROM airlines WHERE Abbreviation = 'UAL';
SELECT COUNT(Airline) FROM airlines WHERE Country = 'USA';
SELECT COUNT(Airline) FROM airlines WHERE Country = 'USA';
SELECT City, Country FROM airports WHERE AirportCode = 'ALN'
SELECT City, Country FROM airports WHERE AirportCode = 'ALN'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO';
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO';
SELECT COUNT(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen');
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABZ';
SELECT COUNT(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen');
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABZ';
SELECT COUNT(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen') AND DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Ashley')
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABZ' AND DestAirport = 'AYT';
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'JetBlue Airways');
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Abbreviation = 'JetBlue');
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ASY' AND Airline = (SELECT uid FROM airlines WHERE Abbreviation = 'UA')
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ASY' AND Airline = (SELECT uid FROM airlines WHERE Abbreviation = 'UA')
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'AHD' AND Airline = (SELECT uid FROM airlines WHERE Abbreviation = 'UA')
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'AHD' AND Airline = (SELECT uid FROM airlines WHERE Abbreviation = 'UA');
SELECT COUNT(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen') AND Airline IN (SELECT uid FROM airlines WHERE Abbreviation = 'UA')
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABE' AND Airline = (SELECT uid FROM airlines WHERE Abbreviation = 'UA')
SELECT City, COUNT(*) AS num_arriving_flights FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode GROUP BY City ORDER BY num_arriving_flights DESC LIMIT 1;
SELECT City, COUNT(DestAirport) AS DestAirportCount FROM airports JOIN flights ON airports.AirportCode = flights.DestAirport GROUP BY City ORDER BY DestAirportCount DESC LIMIT 1
SELECT City, COUNT(SourceAirport) AS DepartingFlights FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY City ORDER BY DepartingFlights DESC LIMIT 1
SELECT City, COUNT(*) AS num_flights FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY City ORDER BY num_flights DESC LIMIT 1;
SELECT airports.AirportCode, COUNT(flights.SourceAirport) AS num_flights FROM airports JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY airports.AirportCode ORDER BY num_flights DESC LIMIT 1;
SELECT airports.AirportCode, COUNT(flights.SourceAirport) AS num_flights FROM airports JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY airports.AirportCode ORDER BY num_flights DESC LIMIT 1;
SELECT AirportCode, COUNT(*) AS num_flights FROM flights GROUP BY AirportCode ORDER BY num_flights ASC LIMIT 1;
SELECT AirportCode, COUNT(*) AS num_flights FROM flights GROUP BY AirportCode ORDER BY num_flights ASC LIMIT 1;
SELECT Airline, COUNT(*) AS num_flights FROM flights JOIN airlines ON flights.Airline = airlines.uid GROUP BY Airline ORDER BY num_flights DESC LIMIT 1;
SELECT Airline, COUNT(*) AS NumFlights FROM flights GROUP BY Airline ORDER BY NumFlights DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines INNER JOIN flights ON airlines.uid = flights.Airline GROUP BY Abbreviation ORDER BY COUNT(Airline) ASC LIMIT 1
SELECT Abbreviation, Country FROM airlines WHERE uid IN ( 	SELECT Airline 	FROM flights 	GROUP BY Airline 	ORDER BY COUNT(*) ASC 	LIMIT 1 )
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'AHD'
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'AHD'
SELECT DISTINCT Airline FROM flights WHERE DestAirport = 'AHD'
SELECT DISTINCT Airline FROM flights WHERE DestAirport = 'AHD'
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'APG' AND DestAirport = 'CVO'
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'APG' AND DestAirport = 'CVO'
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'CVO' EXCEPT SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'APG'
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'CVO' AND DestAirport NOT IN (SELECT AirportCode FROM airports WHERE AirportCode LIKE 'APG%')
SELECT Airline, COUNT(*) AS NumFlights FROM flights GROUP BY Airline HAVING NumFlights >= 10
SELECT Airline, COUNT(*) AS NumFlights FROM flights GROUP BY Airline HAVING NumFlights >= 10
SELECT Airline, COUNT(*) AS NumFlights FROM flights GROUP BY Airline HAVING NumFlights < 200
SELECT Airline, COUNT(*) AS NumFlights FROM flights GROUP BY Airline HAVING NumFlights < 200
SELECT flights.FlightNo FROM flights INNER JOIN airlines ON flights.Airline = airlines.uid WHERE airlines.Airline = "United Airlines"
SELECT flights.FlightNo FROM flights INNER JOIN airlines ON flights.Airline = airlines.uid WHERE airlines.Airline = 'United Airlines'
SELECT flights.FlightNo FROM flights WHERE flights.SourceAirport = 'APG'
SELECT flights.FlightNo FROM flights WHERE flights.SourceAirport = 'APG'
SELECT flights.FlightNo FROM flights WHERE flights.DestAirport = 'APG'
SELECT flights.FlightNo FROM flights WHERE flights.DestAirport = 'APG'
SELECT flights.FlightNo FROM flights INNER JOIN airports ON flights.SourceAirport = airports.AirportCode WHERE airports.City = "Aberdeen"
SELECT flights.FlightNo FROM flights INNER JOIN airports ON flights.SourceAirport = airports.AirportCode WHERE airports.City = 'Aberdeen'
SELECT flights.FlightNo FROM flights INNER JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = "Aberdeen"
SELECT flights.FlightNo FROM flights INNER JOIN airports ON flights.DestAirport = airports.AirportCode WHERE airports.City = 'Aberdeen'
SELECT COUNT(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen') OR DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Abilene')
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABE' OR DestAirport = 'ABE';
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT airports.AirportCode, airports.AirportName, airports.City, airports.Country FROM airports LEFT JOIN flights ON airports.AirportCode = flights.SourceAirport WHERE flights.SourceAirport IS NULL UNION SELECT airports.AirportCode, airports.AirportName, airports.City, airports.Country FROM airports LEFT JOIN flights ON airports.AirportCode = flights.DestAirport WHERE flights.DestAirport IS NULL
SELECT COUNT(*) FROM employee;
SELECT COUNT(*) FROM employee;
SELECT Name, Age FROM employee ORDER BY Age ASC;
SELECT Name, Age FROM employee ORDER BY Age ASC;
SELECT City, COUNT(*) AS Number_of_employees FROM employee GROUP BY City;
SELECT City, COUNT(*) AS Number_of_employees FROM employee GROUP BY City;
SELECT City, COUNT(Employee_ID) AS Num_Employees FROM employee WHERE Age < 30 GROUP BY City HAVING Num_Employees > 1
SELECT City, COUNT(*) AS num_employees FROM employee WHERE Age < 30 GROUP BY City HAVING num_employees > 1;
SELECT Location, COUNT(Shop_ID) AS Number_of_shops FROM shop GROUP BY Location
SELECT Location, COUNT(Shop_ID) AS Number_of_shops FROM shop GROUP BY Location
SELECT Name, District FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop);
SELECT Manager_name, District FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop);
SELECT MIN(Number_products), MAX(Number_products) FROM shop;
SELECT MIN(Number_products) AS min_products, MAX(Number_products) AS max_products FROM shop;
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC
SELECT "Name", "Location", "District" FROM "shop" ORDER BY "Number_products" DESC;
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name, COUNT(Year_awarded) AS Number_of_awards FROM employee INNER JOIN evaluation ON employee.Employee_ID = evaluation.Employee_ID GROUP BY Name ORDER BY Number_of_awards DESC LIMIT 1;
SELECT employee.Name, COUNT(evaluation.Employee_ID) AS awards FROM employee INNER JOIN evaluation ON employee.Employee_ID = evaluation.Employee_ID GROUP BY employee.Name ORDER BY awards DESC LIMIT 1;
SELECT Name FROM employee WHERE Employee_ID IN (     SELECT Employee_ID     FROM evaluation     WHERE Bonus = (         SELECT MAX(Bonus)         FROM evaluation     ) );
SELECT Name, Bonus FROM employee INNER JOIN evaluation ON employee.Employee_ID = evaluation.Employee_ID WHERE Bonus = (SELECT MAX(Bonus) FROM evaluation)
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT s.Name, COUNT(h.Employee_ID) AS num_employees FROM shop s JOIN hiring h ON s.Shop_ID = h.Shop_ID GROUP BY s.Name ORDER BY num_employees DESC LIMIT 1;
SELECT shop.Name, COUNT(hiring.Employee_ID) AS num_employees FROM shop JOIN hiring ON shop.Shop_ID = hiring.Shop_ID GROUP BY shop.Name ORDER BY num_employees DESC LIMIT 1;
SELECT s.Name FROM shop s WHERE s.Shop_ID NOT IN (SELECT h.Shop_ID FROM hiring h)
SELECT shop.Name FROM shop LEFT JOIN hiring ON shop.Shop_ID = hiring.Shop_ID WHERE hiring.Employee_ID IS NULL
SELECT shop.Name, COUNT(hiring.Employee_ID) AS Number_of_employees FROM shop INNER JOIN hiring ON shop.Shop_ID = hiring.Shop_ID GROUP BY shop.Name;
SELECT shop.Name, COUNT(hiring.Employee_ID) AS Number_of_employees FROM shop LEFT JOIN hiring ON shop.Shop_ID = hiring.Shop_ID GROUP BY shop.Name;
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation;
SELECT * FROM hiring;
SELECT * FROM hiring
SELECT DISTINCT s.District FROM shop s WHERE s.Number_products < 3000 AND s.Number_products > 10000
SELECT DISTINCT "District" FROM "shop" WHERE "Number_products" < 3000 INTERSECT SELECT DISTINCT "District" FROM "shop" WHERE "Number_products" > 10000
SELECT COUNT(DISTINCT Location) FROM shop;
SELECT COUNT(DISTINCT Location) FROM shop;
SELECT COUNT(Document_ID) AS 'Number of Documents' FROM Documents
SELECT COUNT(*) AS Number_of_Documents FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT d.Document_ID, d.Template_ID, d.Document_Description FROM Documents d WHERE d.Document_Name = 'Robbin CV'
SELECT D.Document_ID, D.Template_ID, D.Document_Description FROM Documents D WHERE D.Document_Name = 'Robbin CV'
SELECT COUNT(DISTINCT Template_ID) AS Number_Of_Templates FROM Documents
SELECT COUNT(DISTINCT Template_ID) AS Number_of_Templates FROM Documents
SELECT COUNT(DISTINCT Document_ID) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT')
SELECT COUNT(DISTINCT Document_ID) AS Number_of_Documents FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT')
SELECT Template_ID, COUNT(Document_ID) AS Number_of_Documents FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Template_ID
SELECT Template_ID, COUNT(Template_ID) AS Times_Used FROM Documents GROUP BY Template_ID
SELECT TOP 1 Template_ID, Template_Type_Code FROM Templates ORDER BY Template_ID DESC
SELECT TOP 1 Template_ID, Template_Type_Code FROM Templates GROUP BY Template_ID, Template_Type_Code ORDER BY COUNT(Template_ID) DESC
SELECT Template_ID FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1 )
SELECT Template_ID FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1 )
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT COUNT(Template_ID) AS Number_Of_Templates FROM Templates
SELECT COUNT(*) AS Number_of_Templates FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Templates
SELECT Template_Type_Code FROM Ref_Template_Types
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PP' OR Template_Type_Code = 'PPT'
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PP' OR Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_Type_Code, COUNT(Template_ID) AS Number_of_Templates FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(Template_ID) AS Number_Of_Templates FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(Template_ID) AS Number_of_Templates FROM Templates GROUP BY Template_Type_Code ORDER BY Number_of_Templates DESC
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(Template_ID) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN ( SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) >= 3 )
SELECT MIN(Version_Number) AS Smallest_Version_Number, Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents WHERE Document_Name = 'Data base' )
SELECT Template_Type_Code FROM Templates WHERE Template_ID IN (SELECT Template_ID FROM Documents WHERE Document_Name = 'Data base')
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'BK')
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'BK')
SELECT Template_Type_Code, COUNT(Template_ID) AS Number_of_Documents FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(Document_ID) AS Number_of_Documents FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(Template_ID) AS Number_of_Documents FROM Templates GROUP BY Template_Type_Code ORDER BY Number_of_Documents DESC
SELECT TOP 1 Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(Template_Type_Code) DESC
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'
SELECT DISTINCT Template_Type_Description FROM Templates
SELECT DISTINCT Template_Type_Description FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'Presentation'
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'Presentation'
SELECT COUNT(*) AS Total_Paragraphs FROM Paragraphs
SELECT COUNT(*) AS Number_of_Paragraphs FROM Paragraphs
SELECT COUNT(Paragraph_ID) FROM Paragraphs WHERE Document_ID IN (SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show')
SELECT COUNT(Paragraph_ID) FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show')
SELECT * FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT * FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID IN (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY')
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY' )
SELECT Paragraph_Text FROM Paragraphs INNER JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Document_Name = 'Customer reviews'
SELECT Paragraph_Text FROM Paragraphs INNER JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Document_Name = 'Customer reviews'
SELECT Document_ID, COUNT(Paragraph_ID) AS Number_Of_Paragraphs FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, COUNT(Paragraph_ID) AS Number_Of_Paragraphs FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, Document_Name, COUNT(Paragraph_ID) AS Number_Of_Paragraphs FROM Documents INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Document_ID, Document_Name
SELECT d.Document_ID, d.Document_Name, COUNT(p.Paragraph_ID) AS Number_of_Paragraphs FROM Documents d LEFT JOIN Paragraphs p ON d.Document_ID = p.Document_ID GROUP BY d.Document_ID, d.Document_Name
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT TOP 1 Document_ID, Document_Name FROM Documents WHERE Document_ID IN ( SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) = ( SELECT MAX(Paragraph_Count) FROM ( SELECT Document_ID, COUNT(*) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID ) AS Paragraph_Counts ) )
SELECT TOP 1 Document_ID, Document_Name FROM Documents INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Document_ID, Document_Name ORDER BY COUNT(Paragraph_ID) DESC
SELECT TOP 1 Document_ID, COUNT(Paragraph_ID) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID ORDER BY Paragraph_Count
SELECT TOP 1 Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(Paragraph_ID)
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID, Paragraph_Text FROM Paragraphs WHERE Paragraph_Text IN ('Brazil', 'Ireland')
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' OR Paragraph_Text = 'Ireland'
SELECT COUNT(*) FROM teacher;
SELECT COUNT(*) FROM teacher;
SELECT Name, Age FROM teacher ORDER BY Age ASC;
SELECT Name, Age FROM teacher ORDER BY Age ASC;
SELECT "Age","Hometown" FROM "teacher"
SELECT "Age","Hometown" FROM "teacher"
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33;
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33;
SELECT hometown FROM teacher WHERE age = (SELECT MIN(age) FROM teacher);
SELECT * FROM teacher WHERE Age = (SELECT MIN(Age) FROM teacher)
SELECT `hometown`, COUNT(`teacher_id`) AS `number_of_teachers` FROM `teacher` GROUP BY `hometown`
SELECT `hometown`, COUNT(`teacher_id`) AS `number_of_teachers` FROM `teacher` GROUP BY `hometown`
SELECT `hometown`, COUNT(`hometown`) AS `count` FROM `teacher` GROUP BY `hometown` ORDER BY `count` DESC LIMIT 1
SELECT `hometown`, COUNT(`hometown`) AS `count` FROM `teacher` GROUP BY `hometown` ORDER BY `count` DESC
SELECT "Hometown", COUNT(*) AS "Number of Teachers" FROM "teacher" GROUP BY "Hometown" HAVING COUNT(*) > 1
SELECT "Hometown" FROM "teacher" GROUP BY "Hometown" HAVING COUNT(*) >= 2;
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID INNER JOIN course ON course_arrange.Course_ID = course.Course_ID
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID INNER JOIN course ON course_arrange.Course_ID = course.Course_ID
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID INNER JOIN course ON course_arrange.Course_ID = course.Course_ID ORDER BY teacher.Name ASC;
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID INNER JOIN course ON course_arrange.Course_ID = course.Course_ID ORDER BY teacher.Name ASC;
SELECT Name FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID INNER JOIN course ON course_arrange.Course_ID = course.Course_ID WHERE course.Course = 'Math';
SELECT Name FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID INNER JOIN course ON course_arrange.Course_ID = course.Course_ID WHERE course.Course = 'Math'
SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS "Number of Courses" FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name
SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS "Number of Courses" FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name
SELECT Name FROM teacher WHERE Teacher_ID IN ( SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(Course_ID) >= 2 )
SELECT Name FROM teacher WHERE Teacher_ID IN ( SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(Course_ID) >= 2 )
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange);
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange);
SELECT COUNT(*) FROM visitor WHERE age < 30;
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(Age) FROM visitor WHERE Level_of_membership <= 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC;
SELECT Museum_ID, Name, Num_of_Staff FROM museum WHERE Num_of_Staff = (SELECT MAX(Num_of_Staff) FROM museum)
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT "Open_Year", "Num_of_Staff" FROM "museum" WHERE "Name" = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT visitor.ID, visitor.Name, visitor.Age FROM visitor INNER JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID HAVING COUNT(visit.Museum_ID) > 1;
SELECT visitor.ID, visitor.Name, visitor.Level_of_membership FROM visitor INNER JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID ORDER BY SUM(visit.Total_spent) DESC LIMIT 1;
SELECT Museum_ID, Name, COUNT(Museum_ID) AS Num_of_visits FROM visit INNER JOIN museum ON visit.Museum_ID = museum.Museum_ID GROUP BY Museum_ID ORDER BY Num_of_visits DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT Name, Age FROM visitor WHERE ID = (SELECT visitor_ID FROM visit GROUP BY visitor_ID ORDER BY SUM(Num_of_Ticket) DESC LIMIT 1)
SELECT AVG(Num_of_Ticket) AS Average_Num_of_Ticket, MAX(Num_of_Ticket) AS Max_Num_of_Ticket FROM visit
SELECT SUM(visit.Total_spent) FROM visit INNER JOIN visitor ON visit.visitor_ID = visitor.ID WHERE visitor.Level_of_membership = 1
SELECT v.Name FROM visitor v JOIN visit v1 ON v.ID = v1.visitor_ID JOIN museum m ON v1.Museum_ID = m.Museum_ID WHERE m.Open_Year < 2009 AND v1.Museum_ID IN ( SELECT Museum_ID FROM visit v2 JOIN museum m2 ON v2.Museum_ID = m2.Museum_ID WHERE m2.Open_Year > 2011 )
SELECT COUNT(DISTINCT visitor_ID) FROM visit WHERE visitor_ID NOT IN ( SELECT visitor_ID FROM visit WHERE Museum_ID IN ( SELECT Museum_ID FROM museum WHERE Open_Year > 2010 ) )
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
SELECT COUNT(player_id) FROM players
SELECT COUNT(player_id) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(winner_age) AS avg_winner_age, AVG(loser_age) AS avg_loser_age FROM matches
SELECT AVG(winner_age) AS avg_winner_age, AVG(loser_age) AS avg_loser_age FROM matches
SELECT AVG(rankings.ranking) FROM matches JOIN rankings ON matches.winner_id = rankings.player_id
SELECT AVG(winner_rank) FROM matches
SELECT MAX(loser_rank) FROM matches
SELECT MIN(ranking) AS best_rank FROM rankings WHERE player_id IN (SELECT loser_id FROM matches)
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT country_code) FROM players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name, COUNT(match_num) AS matches FROM matches GROUP BY tourney_name HAVING COUNT(match_num) > 10
SELECT tourney_name, COUNT(match_num) AS matches FROM matches GROUP BY tourney_name HAVING matches > 10
SELECT DISTINCT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT DISTINCT winner_name FROM matches WHERE year = 2016
SELECT DISTINCT p.first_name, p.last_name FROM players p JOIN matches m1 ON p.player_id = m1.winner_id JOIN matches m2 ON p.player_id = m2.winner_id WHERE m1.year = 2013 AND m2.year = 2016;
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016
SELECT DISTINCT p.country_code, p.first_name FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name = 'WTA Championships' AND m.round = 'F' INTERSECT SELECT DISTINCT p.country_code, p.first_name FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name = 'Australian Open' AND m.round = 'F'
SELECT DISTINCT first_name, country_code FROM players WHERE player_id IN (   SELECT winner_id   FROM matches   WHERE tourney_name = 'WTA Championships'   INTERSECT   SELECT winner_id   FROM matches   WHERE tourney_name = 'Australian Open' )
SELECT first_name, country_code FROM players WHERE birth_date = (SELECT MIN(birth_date) FROM players)
SELECT first_name, country_code FROM players WHERE birth_date = (SELECT MIN(birth_date) FROM players)
SELECT first_name, last_name, birth_date FROM players ORDER BY birth_date
SELECT first_name, last_name, birth_date FROM players ORDER BY birth_date;
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name, birth_date FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, country_code, COUNT(tours) AS num_tours FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name, country_code ORDER BY num_tours DESC LIMIT 1;
SELECT first_name, country_code FROM players JOIN rankings ON players.player_id = rankings.player_id WHERE tours = (SELECT MAX(tours) FROM rankings)
SELECT year, COUNT(year) AS matches FROM matches GROUP BY year ORDER BY matches DESC LIMIT 1
SELECT year, COUNT(year) AS matches FROM matches GROUP BY year ORDER BY matches DESC LIMIT 1
SELECT players.first_name, players.last_name, rankings.ranking_points FROM players JOIN rankings ON players.player_id = rankings.player_id JOIN matches ON players.player_id = matches.winner_id GROUP BY players.first_name, players.last_name, rankings.ranking_points ORDER BY COUNT(matches.winner_id) DESC LIMIT 1;
SELECT players.first_name, players.last_name, players.player_id, rankings.ranking_points FROM players JOIN rankings ON players.player_id = rankings.player_id WHERE players.player_id = (SELECT winner_id FROM matches GROUP BY winner_id ORDER BY COUNT(winner_id) DESC LIMIT 1)
SELECT winner_name, ranking_points FROM matches JOIN rankings ON matches.winner_id = rankings.player_id WHERE tourney_name = 'Australian Open' ORDER BY ranking_points DESC LIMIT 1;
SELECT players.first_name, players.last_name, matches.tourney_name, rankings.ranking_points FROM players JOIN matches ON players.player_id = matches.winner_id JOIN rankings ON players.player_id = rankings.player_id WHERE matches.tourney_name = 'Australian Open' ORDER BY rankings.ranking_points DESC LIMIT 1
SELECT   loser_name,   winner_name,   minutes FROM matches WHERE minutes = (SELECT MAX(minutes) FROM matches)
SELECT winner_name, loser_name, MAX(minutes) FROM matches
SELECT players.first_name, AVG(rankings.ranking) AS avg_ranking FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.first_name;
SELECT first_name, AVG(ranking) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name
SELECT players.first_name, SUM(rankings.ranking_points) AS total_ranking_points FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.first_name;
SELECT first_name, SUM(ranking_points) AS total_ranking_points FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name ORDER BY total_ranking_points DESC;
SELECT country_code, COUNT(player_id) AS num_players FROM players GROUP BY country_code ORDER BY num_players DESC
SELECT country_code, COUNT(player_id) AS num_players FROM players GROUP BY country_code ORDER BY num_players DESC
SELECT country_code, COUNT(player_id) AS num_players FROM players GROUP BY country_code ORDER BY num_players DESC LIMIT 1;
SELECT country_code, COUNT(player_id) AS num_players FROM players GROUP BY country_code ORDER BY num_players DESC LIMIT 1;
SELECT country_code, COUNT(player_id) AS num_players FROM players GROUP BY country_code HAVING COUNT(player_id) > 50;
SELECT country_code, COUNT(player_id) AS num_players FROM players GROUP BY country_code HAVING COUNT(player_id) > 50;
SELECT ranking_date, COUNT(tours) AS total_tours FROM rankings GROUP BY ranking_date ORDER BY ranking_date
SELECT ranking_date, COUNT(tours) AS total_tours FROM rankings GROUP BY ranking_date ORDER BY ranking_date
SELECT year, COUNT(*) AS matches_per_year FROM matches GROUP BY year ORDER BY year;
SELECT year, COUNT(*) AS matches_played FROM matches GROUP BY year ORDER BY year;
SELECT players.first_name, players.last_name, players.rank FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.winner_age = (SELECT MIN(winner_age) FROM matches) ORDER BY players.rank LIMIT 3;
SELECT players.first_name, players.last_name, players.hand, players.birth_date, matches.winner_rank FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.winner_rank IS NOT NULL ORDER BY players.birth_date DESC LIMIT 3
SELECT COUNT(DISTINCT(winner_id)) FROM matches WHERE winner_hand = 'L' AND winner_id IN (SELECT player_id FROM players WHERE country_code = 'USA')
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE winner_hand = 'L' AND tourney_name = 'WTA Championships'
SELECT first_name, country_code, birth_date FROM players WHERE player_id IN (   SELECT winner_id   FROM matches   WHERE winner_rank_points = (     SELECT MAX(ranking_points)     FROM rankings   ) )
SELECT first_name, country_code, birth_date FROM players INNER JOIN matches ON players.player_id = matches.winner_id INNER JOIN rankings ON players.player_id = rankings.player_id WHERE ranking_points = (SELECT MAX(ranking_points) FROM rankings)
SELECT hand, COUNT(player_id) AS num_players FROM players GROUP BY hand
SELECT hand, COUNT(player_id) AS players FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured';
SELECT name, tonnage FROM ship ORDER BY name DESC;
SELECT name, date, result FROM battle;
SELECT `battle`.`name`, `death`.`killed`, `death`.`injured` FROM `battle` INNER JOIN `death` ON `battle`.`id` = `death`.`caused_by_ship_id` ORDER BY `death`.`killed` DESC, `death`.`injured` DESC
SELECT AVG(injured) FROM death;
SELECT * FROM death WHERE caused_by_ship_id IN (SELECT id FROM ship WHERE tonnage = 't');
SELECT name, result FROM battle WHERE bulgarian_commander != 'Boril';
SELECT DISTINCT battle.id, battle.name FROM battle INNER JOIN ship ON battle.id = ship.lost_in_battle WHERE ship.ship_type = 'Brig'
SELECT battle.id, battle.name, death.killed FROM battle INNER JOIN death ON battle.id = death.caused_by_ship_id WHERE death.killed > 10
SELECT ship.id, ship.name, death.injured FROM ship INNER JOIN death ON ship.id = death.caused_by_ship_id ORDER BY death.injured DESC LIMIT 1;
SELECT DISTINCT battle.name FROM battle INNER JOIN ship ON battle.id = ship.lost_in_battle INNER JOIN death ON ship.id = death.caused_by_ship_id WHERE battle.bulgarian_commander = 'Kaloyan' AND battle.latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle;
SELECT COUNT(DISTINCT battle.id) FROM battle LEFT JOIN ship ON battle.id = ship.lost_in_battle WHERE ship.tonnage != '225' OR ship.tonnage IS NULL
SELECT battle.name, battle.date FROM battle INNER JOIN ship ON battle.id = ship.lost_in_battle WHERE ship.name = 'Lettice' OR ship.name = 'HMS Atalanta'
SELECT battle.name, battle.result, battle.bulgarian_commander FROM battle WHERE battle.id NOT IN (     SELECT lost_in_battle     FROM ship     WHERE location = 'English Channel' )
SELECT note FROM death WHERE note LIKE '%East%';
SELECT line_1, line_2 FROM Addresses;
SELECT line_1, line_2 FROM Addresses;
SELECT COUNT(course_id) FROM Courses;
SELECT COUNT(*) FROM Courses;
SELECT `course_description` FROM `Courses` WHERE `course_name` = 'Math';
SELECT `course_description` FROM `Courses` WHERE `course_name` LIKE '%Math%'
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea';
SELECT zip_postcode FROM Addresses WHERE line_1 = 'Port Chelsea';
SELECT d.department_id, d.department_name, COUNT(dp.degree_program_id) AS num_degrees FROM Departments d JOIN Degree_Programs dp ON d.department_id = dp.department_id GROUP BY d.department_id, d.department_name ORDER BY num_degrees DESC LIMIT 1;
SELECT d.department_id, d.department_name, COUNT(dp.degree_program_id) AS num_degrees FROM Departments d JOIN Degree_Programs dp ON d.department_id = dp.department_id GROUP BY d.department_id, d.department_name ORDER BY num_degrees DESC LIMIT 1;
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs;
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs;
SELECT COUNT(DISTINCT degree_summary_name) AS 'Number of different degree names' FROM Degree_Programs
SELECT COUNT(DISTINCT degree_program_id) AS 'Number of different degrees offered' FROM Degree_Programs
SELECT COUNT(degree_program_id) AS 'Number of Degrees' FROM Degree_Programs WHERE department_id = 1
SELECT COUNT(degree_program_id) AS 'Number of Degrees' FROM Degree_Programs WHERE department_id = 1
SELECT section_name, section_description FROM Sections;
SELECT section_name, section_description FROM Sections;
SELECT c.course_id, c.course_name FROM Courses c WHERE c.course_id IN (     SELECT s.course_id     FROM Sections s     GROUP BY s.course_id     HAVING COUNT(s.section_id) <= 2 )
SELECT c.course_id, c.course_name FROM Courses c LEFT JOIN Sections s ON c.course_id = s.course_id GROUP BY c.course_id HAVING COUNT(s.section_id) < 2;
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT semester_id, semester_name, COUNT(student_enrolment_id) AS student_count FROM Semesters INNER JOIN Student_Enrolment ON Semesters.semester_id = Student_Enrolment.semester_id GROUP BY semester_id ORDER BY student_count DESC LIMIT 1;
SELECT semester_id, semester_name, COUNT(student_id) AS student_count FROM Semesters JOIN Student_Enrolment ON Semesters.semester_id = Student_Enrolment.semester_id GROUP BY semester_id, semester_name ORDER BY student_count DESC LIMIT 1;
SELECT `department_description` FROM `Departments` WHERE `department_name` LIKE '%computer%';
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT DISTINCT s.first_name, s.middle_name, s.last_name, s.student_id FROM Students s INNER JOIN Student_Enrolment se ON s.student_id = se.student_id INNER JOIN Student_Enrolment_Courses sec ON se.student_enrolment_id = sec.student_enrolment_id INNER JOIN Transcript_Contents tc ON sec.student_course_id = tc.student_course_id INNER JOIN Transcripts t ON tc.transcript_id = t.transcript_id INNER JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id INNER JOIN Semesters s2 ON se.semester_id = s2.semester_id WHERE dp.degree_program_id IN (1, 2) AND s2.semester_id = 1;
SELECT DISTINCT s.student_id, s.first_name, s.middle_name, s.last_name FROM Students s INNER JOIN Student_Enrolment se ON s.student_id = se.student_id INNER JOIN Student_Enrolment_Courses sec ON se.student_enrolment_id = sec.student_enrolment_id INNER JOIN Transcript_Contents tc ON sec.student_course_id = tc.student_course_id INNER JOIN Transcripts t ON tc.transcript_id = t.transcript_id WHERE se.semester_id = 1 AND se.degree_program_id IN (1, 2);
SELECT Students.first_name, Students.middle_name, Students.last_name FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id WHERE Degree_Programs.degree_program_id = 1;
SELECT Students.first_name, Students.middle_name, Students.last_name FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id WHERE Degree_Programs.degree_program_id = 1;
SELECT dp.degree_program_id, dp.degree_summary_name, COUNT(se.student_enrolment_id) AS student_count FROM Degree_Programs dp JOIN Student_Enrolment se ON dp.degree_program_id = se.degree_program_id GROUP BY dp.degree_program_id, dp.degree_summary_name ORDER BY student_count DESC LIMIT 1;
SELECT dp.degree_summary_name, COUNT(se.student_id) AS student_count FROM Degree_Programs dp JOIN Student_Enrolment se ON dp.degree_program_id = se.degree_program_id GROUP BY dp.degree_summary_name ORDER BY student_count DESC LIMIT 1;
SELECT dp.degree_program_id, dp.degree_summary_name, dp.degree_summary_description FROM Degree_Programs dp JOIN Student_Enrolment se ON dp.degree_program_id = se.degree_program_id GROUP BY dp.degree_program_id ORDER BY COUNT(se.student_enrolment_id) DESC LIMIT 1;
SELECT dp.degree_program_id, dp.degree_summary_name, COUNT(se.student_enrolment_id) AS student_count FROM Degree_Programs dp JOIN Student_Enrolment se ON dp.degree_program_id = se.degree_program_id GROUP BY dp.degree_program_id, dp.degree_summary_name ORDER BY student_count DESC LIMIT 1;
SELECT Students.student_id, Students.first_name, Students.middle_name, Students.last_name, COUNT(Student_Enrolment.student_enrolment_id) AS 'Number of Enrollments' FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id GROUP BY Students.student_id ORDER BY COUNT(Student_Enrolment.student_enrolment_id) DESC LIMIT 1
SELECT Students.student_id, Students.first_name, Students.middle_name, Students.last_name, COUNT(Student_Enrolment.student_enrolment_id) AS enrollments FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id GROUP BY Students.student_id ORDER BY enrollments DESC LIMIT 1;
SELECT Semesters.semester_name FROM Semesters LEFT JOIN Student_Enrolment ON Semesters.semester_id = Student_Enrolment.semester_id WHERE Student_Enrolment.semester_id IS NULL;
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)
SELECT DISTINCT c.course_name FROM Courses c INNER JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id INNER JOIN Student_Enrolment se ON sec.student_enrolment_id = se.student_enrolment_id INNER JOIN Students s ON se.student_id = s.student_id
SELECT DISTINCT c.course_name FROM Courses c JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id JOIN Student_Enrolment se ON sec.student_enrolment_id = se.student_enrolment_id JOIN Students s ON se.student_id = s.student_id WHERE s.student_id IS NOT NULL;
SELECT c.course_name, COUNT(sec.course_id) AS num_enrollments FROM Courses c JOIN Sections sec ON c.course_id = sec.course_id JOIN Student_Enrolment_Courses sec_enrol ON sec.section_id = sec_enrol.course_id GROUP BY c.course_name ORDER BY num_enrollments DESC LIMIT 1;
SELECT c.course_name, COUNT(sec.course_id) AS num_students FROM Courses c JOIN Sections sec ON c.course_id = sec.course_id JOIN Student_Enrolment_Courses sec_enrol ON sec.section_id = sec_enrol.course_id GROUP BY c.course_name ORDER BY num_students DESC LIMIT 1;
SELECT Students.last_name FROM Students WHERE Students.current_address_id IN ( SELECT Addresses.address_id FROM Addresses WHERE Addresses.state_province_county = 'North Carolina' ) AND Students.student_id NOT IN ( SELECT Student_Enrolment.student_id FROM Student_Enrolment )
SELECT DISTINCT s.last_name FROM Students s JOIN Addresses a ON s.current_address_id = a.address_id WHERE a.state_province_county = 'North Carolina' AND s.student_id NOT IN (     SELECT se.student_id     FROM Student_Enrolment se     JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id );
SELECT `Transcripts`.`transcript_id`, `Transcripts`.`transcript_date` FROM `Transcripts` INNER JOIN `Transcript_Contents` ON `Transcripts`.`transcript_id` = `Transcript_Contents`.`transcript_id` GROUP BY `Transcripts`.`transcript_id` HAVING COUNT(`Transcript_Contents`.`student_course_id`) >= 2;
SELECT transcript_id, transcript_date FROM Transcripts WHERE transcript_id IN ( SELECT transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(student_course_id) >= 2 )
SELECT `cell_mobile_number` FROM `Students` WHERE `first_name` = 'Timmothy' AND `last_name` = 'Ward';
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward';
SELECT first_name, middle_name, last_name FROM Students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM Students);
SELECT first_name, middle_name, last_name FROM Students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM Students);
SELECT first_name, middle_name, last_name FROM Students WHERE date_left IS NOT NULL ORDER BY date_left ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students WHERE date_left IS NOT NULL ORDER BY date_left ASC LIMIT 1;
SELECT first_name FROM Students WHERE current_address_id != permanent_address_id
SELECT first_name FROM Students WHERE permanent_address_id <> current_address_id
SELECT a.address_id, a.line_1, a.line_2, a.line_3, a.city, a.zip_postcode, a.state_province_county, a.country, a.other_address_details FROM Addresses a JOIN Students s ON a.address_id = s.current_address_id GROUP BY a.address_id ORDER BY COUNT(s.student_id) DESC LIMIT 1;
SELECT a.address_id, a.line_1, a.line_2 FROM Addresses a JOIN Students s ON a.address_id = s.current_address_id GROUP BY a.address_id ORDER BY COUNT(s.student_id) DESC LIMIT 1;
SELECT AVG(transcript_date) FROM Transcripts;
SELECT AVG(transcript_date) FROM Transcripts;
SELECT transcript_date, other_details FROM Transcripts WHERE transcript_date = (SELECT MIN(transcript_date) FROM Transcripts);
SELECT MIN(transcript_date) AS earliest_date, other_details FROM Transcripts WHERE other_details IS NOT NULL GROUP BY other_details ORDER BY earliest_date
SELECT COUNT(transcript_id) AS 'Number of Transcripts' FROM Transcripts
SELECT COUNT(*) FROM Transcripts;
SELECT MAX(transcript_date) AS last_transcript_release_date FROM Transcripts;
SELECT MAX(transcript_date) FROM Transcripts;
SELECT student_course_id, COUNT(student_course_id) AS 'Number of times in Transcripts' FROM Transcript_Contents GROUP BY student_course_id ORDER BY COUNT(student_course_id) DESC
SELECT COUNT(student_course_id) AS 'Number of times course shows up in different transcripts', student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY COUNT(student_course_id) DESC LIMIT 1
SELECT transcript_date, COUNT(transcript_id) AS num_results FROM Transcripts GROUP BY transcript_date ORDER BY num_results ASC LIMIT 1;
SELECT transcript_id, transcript_date, COUNT(student_course_id) AS num_results FROM Transcripts JOIN Transcript_Contents ON Transcripts.transcript_id = Transcript_Contents.transcript_id GROUP BY transcript_id, transcript_date ORDER BY num_results ASC LIMIT 1;
SELECT DISTINCT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name LIKE '%Master%') AND student_id IN (SELECT student_id FROM Students WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name LIKE '%Bachelor%'))
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN ( SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name IN ('Bachelors', 'Masters') ) GROUP BY semester_id HAVING COUNT(DISTINCT degree_program_id) = 2;
SELECT COUNT(DISTINCT current_address_id) FROM Students;
SELECT * FROM Addresses WHERE address_id IN (SELECT current_address_id FROM Students) OR address_id IN (SELECT permanent_address_id FROM Students)
SELECT * FROM Students ORDER BY last_name DESC, first_name DESC, middle_name DESC;
SELECT * FROM Students ORDER BY last_name DESC;
SELECT * FROM `Sections` WHERE `section_name` = 'h';
SELECT `section_description` FROM `Sections` WHERE `section_name` = 'h';
SELECT first_name FROM Students WHERE permanent_address_id IN ( SELECT address_id FROM Addresses WHERE country = 'Haiti' ) OR cell_mobile_number = '09700166582'
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'
SELECT Title FROM Cartoon ORDER BY Title ASC;
SELECT Title FROM Cartoon ORDER BY Title ASC;
SELECT * FROM Cartoon WHERE Directed_by = "Ben Jones";
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones'
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr';
SELECT Title, Directed_by, Original_air_date FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by, Original_air_date FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones' OR Directed_by = 'Brandon Vietti';
SELECT Country, COUNT(id) AS Number_of_TV_Channels FROM TV_Channel GROUP BY Country ORDER BY Number_of_TV_Channels DESC LIMIT 1
SELECT Country, COUNT(id) AS Number_of_Channels FROM TV_Channel GROUP BY Country ORDER BY Number_of_Channels DESC LIMIT 1
SELECT COUNT(DISTINCT series_name) AS series_name, COUNT(DISTINCT Content) AS Content FROM TV_Channel
SELECT COUNT(DISTINCT series_name) AS series_count, COUNT(DISTINCT Content) AS content_count FROM TV_Channel;
SELECT * FROM TV_Channel WHERE series_name = 'Sky Radio';
SELECT * FROM TV_Channel WHERE Content = 'Radio';
SELECT "Package_Option" FROM "TV_Channel" WHERE "series_name" = "Sky Radio";
SELECT DISTINCT "Package_Option" FROM "TV_Channel" WHERE "Series_name" = 'Sky Radio';
SELECT COUNT(Language) FROM TV_Channel WHERE Language = 'English';
SELECT COUNT(DISTINCT "Language") FROM "TV_Channel" WHERE "Language" = 'English'
SELECT Language, COUNT(Language) AS Number_of_TV_Channel FROM TV_Channel GROUP BY Language ORDER BY Number_of_TV_Channel ASC
SELECT Language, COUNT(Language) AS Number_of_Channels FROM TV_Channel GROUP BY Language ORDER BY Number_of_Channels ASC LIMIT 1
SELECT Language, COUNT(id) AS Number_of_Channels FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(id) AS Number_of_Channels FROM TV_Channel GROUP BY Language
SELECT TV_Channel.series_name FROM TV_Channel INNER JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = 'The Rise of the Blue Beetle!';
SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = 'The Rise of the Blue Beetle';
SELECT Title FROM Cartoon WHERE Channel IN (SELECT id FROM TV_Channel WHERE series_name = 'Sky Radio')
SELECT Title FROM Cartoon WHERE Channel IN (SELECT id FROM TV_Channel WHERE series_name = 'Sky Radio')
SELECT Episode, Rating FROM TV_series ORDER BY Rating;
SELECT * FROM TV_series ORDER BY Rating DESC;
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT * FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(Share) AS min_share, MAX(Share) AS max_share FROM TV_series;
SELECT MAX(Share) AS Max_Share, MIN(Share) AS Min_Share FROM TV_series;
SELECT "Air_Date" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime";
SELECT "Air_Date" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime";
SELECT "TV_series"."Weekly_Rank" FROM "TV_series" WHERE "TV_series"."Episode" = "A Love of a Lifetime"
SELECT * FROM TV_series WHERE Episode = "A Love of a Lifetime";
SELECT TV_Channel.series_name FROM TV_Channel INNER JOIN TV_series ON TV_Channel.id = TV_series.Channel WHERE TV_series.Episode = "A Love of a Lifetime"
SELECT "TV_series"."Episode", "TV_series"."Air_Date", "TV_series"."Rating", "TV_series"."Share", "TV_series"."18_49_Rating_Share", "TV_series"."Viewers_m", "TV_series"."Weekly_Rank", "TV_series"."Channel", "TV_Channel"."series_name" FROM "TV_series" INNER JOIN "TV_Channel" ON "TV_series"."Channel" = "TV_Channel"."id" WHERE "TV_series"."Episode" = "A Love of a Lifetime"
SELECT "TV_series"."Episode" FROM "TV_series" INNER JOIN "TV_Channel" ON "TV_series"."Channel" = "TV_Channel"."id" WHERE "TV_Channel"."series_name" = 'Sky Radio'
SELECT Episode FROM TV_series WHERE id = (SELECT id FROM TV_Channel WHERE series_name = 'Sky Radio');
SELECT "Directed_by", COUNT("Title") AS "Number of cartoons" FROM "Cartoon" GROUP BY "Directed_by"
SELECT Directed_by, COUNT(Title) AS Number_of_Cartoons FROM Cartoon GROUP BY Directed_by
SELECT production_code, channel FROM cartoon WHERE original_air_date = (SELECT MAX(original_air_date) FROM cartoon);
SELECT * FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT "TV_Channel"."Package_Option", "TV_Channel"."series_name" FROM "TV_Channel" WHERE "TV_Channel"."Hight_definition_TV" = 'Yes'
SELECT "TV_Channel"."Package_Option", "TV_series"."Series_name" FROM "TV_Channel" INNER JOIN "TV_series" ON "TV_Channel"."id" = "TV_series"."Channel" WHERE "TV_Channel"."Hight_definition_TV" = 'Yes'
SELECT DISTINCT "Country" FROM "TV_Channel" WHERE "id" IN (SELECT "Channel" FROM "Cartoon" WHERE "Written_by" = 'Todd Casey')
SELECT DISTINCT "Country" FROM "Cartoon" WHERE "Written_by" = 'Todd Casey'
SELECT DISTINCT "Country" FROM "TV_Channel" WHERE "id" NOT IN (SELECT "Channel" FROM "Cartoon" WHERE "Written_by" = 'Todd Casey')
SELECT DISTINCT Country FROM TV_Channel WHERE Country NOT IN (SELECT DISTINCT Country FROM TV_Channel INNER JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Written_by = 'Todd Casey')
SELECT DISTINCT TV_Channel.series_name, TV_Channel.Country FROM TV_Channel INNER JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Directed_by = 'Ben Jones' OR Cartoon.Directed_by = 'Michael Chang'
SELECT DISTINCT "TV_Channel"."series_name", "TV_Channel"."Country" FROM "TV_Channel" INNER JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Directed_by" = 'Ben Jones' OR "Cartoon"."Directed_by" = 'Michael Chang'
SELECT "TV_Channel"."Pixel_aspect_ratio_PAR", "TV_Channel"."Country" FROM "TV_Channel" WHERE "TV_Channel"."Language" != "English"
SELECT "TV_Channel"."Pixel_aspect_ratio_PAR", "TV_Channel"."Country" FROM "TV_Channel" WHERE "TV_Channel"."Language" != "English"
SELECT "TV_Channel"."id" FROM "TV_Channel" WHERE "TV_Channel"."Country" IN ( SELECT "TV_Channel"."Country" FROM "TV_Channel" GROUP BY "TV_Channel"."Country" HAVING COUNT("TV_Channel"."Country") > 2 )
SELECT id FROM TV_Channel GROUP BY id HAVING COUNT(id) > 2;
SELECT DISTINCT TV_Channel.id FROM TV_Channel WHERE TV_Channel.id NOT IN (     SELECT DISTINCT Cartoon.Channel     FROM Cartoon     WHERE Cartoon.Directed_by = 'Ben Jones' )
SELECT DISTINCT TV_Channel.id FROM TV_Channel LEFT JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.id IS NULL OR Cartoon.Directed_by != 'Ben Jones'
SELECT DISTINCT "Package_Option" FROM "TV_Channel" WHERE "id" NOT IN (SELECT "Channel" FROM "Cartoon" WHERE "Directed_by" = 'Ben Jones')
SELECT DISTINCT "Package_Option" FROM "TV_Channel" WHERE "id" NOT IN (SELECT "Channel" FROM "Cartoon" WHERE "Directed_by" = 'Ben Jones')
SELECT COUNT(*) FROM poker_player;
SELECT COUNT(*) FROM poker_player;
SELECT "Earnings" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT "Earnings" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT "poker_player"."Final_Table_Made", "poker_player"."Best_Finish" FROM "poker_player"
SELECT "poker_player"."Final_Table_Made", "poker_player"."Best_Finish" FROM "poker_player"
SELECT AVG(Earnings) FROM poker_player;
SELECT AVG(Earnings) FROM poker_player;
SELECT "Money_Rank" FROM "poker_player" WHERE "Earnings" = (SELECT MAX("Earnings") FROM "poker_player")
SELECT MAX(Earnings) FROM poker_player
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT Name FROM poker_player
SELECT Name FROM poker_player
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT "Name" FROM "poker_player" WHERE "Earnings" > 300000
SELECT "Name" FROM "poker_player" INNER JOIN "people" ON "poker_player"."People_ID" = "people"."People_ID" ORDER BY "Final_Table_Made" ASC
SELECT "Name", "Final_Table_Made" FROM "poker_player" INNER JOIN "people" ON "poker_player"."People_ID" = "people"."People_ID" ORDER BY "Final_Table_Made" ASC
SELECT Birth_Date FROM people INNER JOIN poker_player ON people.People_ID = poker_player.People_ID WHERE Earnings = (SELECT MIN(Earnings) FROM poker_player)
SELECT Birth_Date FROM poker_player INNER JOIN people ON poker_player.People_ID = people.People_ID WHERE Earnings = (SELECT MIN(Earnings) FROM poker_player)
SELECT p.Name, p.Height, pp.Money_Rank FROM people p JOIN poker_player pp ON p.People_ID = pp.People_ID WHERE p.Height = (SELECT MAX(Height) FROM people)
SELECT p.People_ID, p.Name, p.Height, pp.Money_Rank FROM people p JOIN poker_player pp ON p.People_ID = pp.People_ID WHERE p.Height = (SELECT MAX(Height) FROM people)
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Height > 200)
SELECT "Name" FROM "poker_player" JOIN "people" ON "poker_player"."People_ID" = "people"."People_ID" ORDER BY "Earnings" DESC
SELECT Name, Earnings FROM poker_player JOIN people ON poker_player.People_ID = people.People_ID ORDER BY Earnings DESC
SELECT Nationality, COUNT(*) AS Number_of_People FROM people GROUP BY Nationality;
SELECT Nationality, COUNT(*) AS Number_of_People FROM people GROUP BY Nationality
SELECT Nationality, COUNT(Nationality) AS Nationality_Count FROM people GROUP BY Nationality ORDER BY Nationality_Count DESC
SELECT Nationality, COUNT(Nationality) AS Nationality_Count FROM people GROUP BY Nationality ORDER BY Nationality_Count DESC LIMIT 1
SELECT Nationality, COUNT(*) AS Nationality_Count FROM people GROUP BY Nationality HAVING Nationality_Count >= 2;
SELECT Nationality, COUNT(*) AS num_people FROM people GROUP BY Nationality HAVING num_people >= 2;
SELECT Name, Birth_Date FROM people ORDER BY Name ASC;
SELECT "Name", "Birth_Date" FROM "people" ORDER BY "Name" ASC;
SELECT Name FROM people WHERE Nationality != "Russia";
SELECT Name FROM people WHERE Nationality != 'Russia';
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people;
SELECT COUNT(DISTINCT Nationality) FROM people;
SELECT COUNT(DISTINCT state) FROM VOTES;
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES;
SELECT MAX(area_code) AS max_area_code, MIN(area_code) AS min_area_code FROM AREA_CODE_STATE;
SELECT MAX(created) FROM VOTES WHERE state = 'CA';
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES;
SELECT contestant_number, contestant_name FROM CONTESTANTS WHERE contestant_number IN ( 	SELECT contestant_number 	FROM VOTES 	GROUP BY contestant_number 	HAVING COUNT(*) >= 2 )
SELECT contestant_number, contestant_name FROM CONTESTANTS WHERE contestant_number = (   SELECT contestant_number   FROM VOTES   GROUP BY contestant_number   ORDER BY COUNT(*) ASC   LIMIT 1 )
SELECT COUNT(*) FROM VOTES WHERE state IN ('NY', 'CA');
SELECT COUNT(DISTINCT contestant_number) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT area_code, COUNT(area_code) AS votes FROM VOTES INNER JOIN AREA_CODE_STATE ON VOTES.state = AREA_CODE_STATE.state GROUP BY area_code ORDER BY votes DESC LIMIT 1
SELECT `created`, `state`, `phone_number` FROM `VOTES` WHERE `contestant_number` = (SELECT `contestant_number` FROM `CONTESTANTS` WHERE `contestant_name` = 'Tabatha Gehling')
SELECT DISTINCT area_code FROM VOTES WHERE contestant_number IN ( 	SELECT contestant_number 	FROM CONTESTANTS 	WHERE contestant_name IN ('Tabatha Gehling', 'Kelly Clauss') )
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean';
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Caribbean';
SELECT Continent FROM country WHERE Name = 'Anguilla';
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT c.Name, c.District FROM city c JOIN country co ON c.CountryCode = co.Code WHERE c.Name = 'Kabul'
SELECT c.Name, c.Region FROM city c JOIN country co ON c.CountryCode = co.Code WHERE c.Name = 'Kabul'
SELECT Language, MAX(Percentage) FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil';
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil';
SELECT Region, Population FROM country WHERE Name = 'Angola';
SELECT c.Region, c.Population FROM country c WHERE c.Name = 'Angola'
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT Name, LifeExpectancy, Continent FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT Name, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT SUM(Population) AS total_population, MAX(GNP) AS max_gnp FROM country WHERE Continent = 'Asia';
SELECT SUM(Population) AS TotalPopulation, MAX(GNP) AS LargestGNP FROM country WHERE Continent = 'Asia';
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe');
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe';
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US Territory'
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US Territory'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage;
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT Language) FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.Name = 'Aruba';
SELECT COUNT(Language) FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT COUNT(Language) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T'
SELECT COUNT(Language) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T'
SELECT country.Name, COUNT(countrylanguage.Language) AS num_languages FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name ORDER BY num_languages DESC LIMIT 1;
SELECT country.Name, COUNT(countrylanguage.Language) AS num_languages FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name ORDER BY num_languages DESC LIMIT 1;
SELECT continent, COUNT(DISTINCT language) AS num_languages FROM country c JOIN countrylanguage cl ON c.code = cl.countrycode GROUP BY continent ORDER BY num_languages DESC LIMIT 1;
SELECT c.Continent, COUNT(cl.Language) AS num_languages FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode GROUP BY c.Continent ORDER BY num_languages DESC LIMIT 1;
SELECT COUNT(*) FROM countrylanguage WHERE language IN ('English', 'Dutch') AND isofficial = 'T'
SELECT COUNT(DISTINCT country.Name) FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language IN ('English', 'Dutch')
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French');
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French');
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French' AND IsOfficial = 'T')
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French' AND IsOfficial = 'T')
SELECT COUNT(DISTINCT Continent) FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'Chinese'
SELECT COUNT(DISTINCT c.Continent) FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language = 'Chinese'
SELECT DISTINCT c.Region FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language IN ('English', 'Dutch')
SELECT DISTINCT c.Region, cl.Language FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.Language IN ('Dutch', 'English')
SELECT country.Name, countrylanguage.Language FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.IsOfficial = 'T' AND (countrylanguage.Language = 'English' OR countrylanguage.Language = 'Dutch')
SELECT country.Name, countrylanguage.Language FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.IsOfficial = 'T' AND (countrylanguage.Language = 'English' OR countrylanguage.Language = 'Dutch')
SELECT countrylanguage.Language, country.Continent, MAX(countrylanguage.Percentage) FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.Continent = 'Asia' GROUP BY countrylanguage.Language ORDER BY MAX(countrylanguage.Percentage) DESC LIMIT 1
SELECT Language, COUNT(CountryCode) AS CountryCount FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.Continent = 'Asia' GROUP BY Language ORDER BY CountryCount DESC LIMIT 1
SELECT Language, COUNT(CountryCode) AS CountryCount FROM countrylanguage WHERE IsOfficial = 'T' GROUP BY Language HAVING CountryCount = 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (   SELECT CountryCode   FROM country   WHERE GovernmentForm = 'Republic' ) GROUP BY Language HAVING COUNT(CountryCode) = 1
SELECT city.Name, city.Population, countrylanguage.Language FROM city JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' ORDER BY city.Population DESC LIMIT 1;
SELECT city.Name, city.Population, countrylanguage.Language FROM city JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' ORDER BY city.Population DESC LIMIT 1;
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY Population DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE Code NOT IN (   SELECT CountryCode   FROM countrylanguage   WHERE Language = 'English'   AND IsOfficial = 'T' )
SELECT AVG(LifeExpectancy) FROM country WHERE Code NOT IN (   SELECT CountryCode   FROM countrylanguage   WHERE Language = 'English'   AND IsOfficial = 'T' )
SELECT SUM(Population) FROM country WHERE Code NOT IN (   SELECT CountryCode   FROM countrylanguage   WHERE Language = 'English' )
SELECT SUM(Population) FROM country WHERE Code NOT IN (   SELECT CountryCode   FROM countrylanguage   WHERE Language = 'English' )
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = 'Beatrix') AND IsOfficial = 'T'
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = 'Beatrix') AND IsOfficial = 'T'
SELECT COUNT(DISTINCT Language) FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.IndepYear < 1930 AND countrylanguage.IsOfficial = 'T'
SELECT COUNT(DISTINCT Language) FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.IndepYear < 1930 AND countrylanguage.IsOfficial = 'T'
SELECT Name, Continent, SurfaceArea FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name, Continent, SurfaceArea FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name, Population FROM country WHERE Continent = 'Africa' AND Population < ALL (SELECT Population FROM country WHERE Continent = 'Asia');
SELECT Name, Continent, Population FROM country WHERE Continent = 'Africa' AND Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia');
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > ALL (   SELECT Population   FROM country   WHERE Continent = 'Africa' )
SELECT Name, Population FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population)                   FROM country                   WHERE Continent = 'Africa')
SELECT country.Code FROM country LEFT JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language != 'English'
SELECT country.Code FROM country LEFT JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language != 'English'
SELECT country.Code FROM country WHERE country.Code NOT IN (   SELECT countrylanguage.CountryCode   FROM countrylanguage   WHERE countrylanguage.Language = 'English' )
SELECT country.Code FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language != 'English'
SELECT country.Code FROM country WHERE country.Code NOT IN (   SELECT countrylanguage.CountryCode   FROM countrylanguage   WHERE countrylanguage.Language = 'English' ) AND country.GovernmentForm != 'Republic'
SELECT country.Code FROM country WHERE country.Code NOT IN (     SELECT countrylanguage.CountryCode     FROM countrylanguage     WHERE countrylanguage.Language = 'English' ) AND country.GovernmentForm != 'Republic'
SELECT city.Name FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Europe' AND countrylanguage.Language != 'English' AND countrylanguage.IsOfficial = 'T'
SELECT Name FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Europe') AND CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T');
SELECT DISTINCT city.Name FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Asia' AND countrylanguage.Language = 'Chinese' AND countrylanguage.IsOfficial = 'T'
SELECT city.Name FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Asia' AND countrylanguage.Language = 'Chinese' AND countrylanguage.IsOfficial = 'T'
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country)
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country)
SELECT Name, Population, HeadOfState FROM country WHERE SurfaceArea = (SELECT MAX(SurfaceArea) FROM country)
SELECT Name, Population, HeadOfState FROM country WHERE SurfaceArea = (SELECT MAX(SurfaceArea) FROM country);
SELECT country.Name, COUNT(countrylanguage.Language) AS NumberOfLanguages FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name HAVING NumberOfLanguages >= 3
SELECT country.Name, COUNT(countrylanguage.Language) AS languages FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name HAVING languages > 2
SELECT district, COUNT(*) FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district;
SELECT district, COUNT(*) FROM city WHERE population > (SELECT AVG(population) FROM city) GROUP BY district;
SELECT country.GovernmentForm, SUM(city.Population) FROM country JOIN city ON country.Code = city.CountryCode GROUP BY country.GovernmentForm HAVING AVG(country.LifeExpectancy) > 72
SELECT country.GovernmentForm, country.Population FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.LifeExpectancy > 72 GROUP BY country.GovernmentForm
SELECT continent, AVG(lifeexpectancy) AS avg_life_expectancy, SUM(population) AS total_population FROM country GROUP BY continent HAVING avg_life_expectancy < 72;
SELECT continent, SUM(population) AS total_population, AVG(lifeexpectancy) AS avg_life_expectancy FROM country GROUP BY continent HAVING AVG(lifeexpectancy) < 72;
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5;
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5;
SELECT Name, Population FROM city ORDER BY Population DESC LIMIT 3;
SELECT Name, Population FROM country ORDER BY Population DESC LIMIT 3;
SELECT Name FROM city WHERE Population = (SELECT MIN(Population) FROM city)
SELECT Name, Population FROM country ORDER BY Population ASC LIMIT 3;
SELECT COUNT(*) FROM country WHERE continent = 'Asia';
SELECT COUNT(*) FROM country WHERE continent = 'Asia';
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000;
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000;
SELECT SUM(Population) AS Total_Population, AVG(SurfaceArea) AS Average_Area FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000;
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT Name, Population FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT Language, COUNT(CountryCode) AS CountryCount FROM countrylanguage GROUP BY Language ORDER BY CountryCount DESC LIMIT 1
SELECT Language, COUNT(CountryCode) AS CountryCount FROM countrylanguage GROUP BY Language ORDER BY CountryCount DESC LIMIT 1
SELECT country.name, countrylanguage.language, countrylanguage.percentage FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.percentage = (   SELECT MAX(countrylanguage.percentage)   FROM countrylanguage   WHERE countrylanguage.countrycode = country.code ) ORDER BY countrylanguage.percentage DESC;
SELECT country.Code, countrylanguage.Language, countrylanguage.Percentage FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Percentage = (SELECT MAX(countrylanguage.Percentage) FROM countrylanguage WHERE countrylanguage.CountryCode = country.Code)
SELECT country.Name, countrylanguage.Language, countrylanguage.Percentage FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'Spanish' ORDER BY countrylanguage.Percentage DESC LIMIT 1
SELECT COUNT(CountryCode) FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'T'
SELECT country.Code, countrylanguage.Language, countrylanguage.Percentage FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'Spanish' ORDER BY countrylanguage.Percentage DESC
SELECT country.Code, country.Name, country.Continent, country.Region, country.Population, country.Capital, country.GovernmentForm, country.HeadOfState, country.Code2, countrylanguage.Language, countrylanguage.IsOfficial, countrylanguage.Percentage FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'Spanish' AND countrylanguage.IsOfficial = 'T' AND countrylanguage.Percentage > 50
SELECT COUNT(Conductor_ID) FROM conductor;
SELECT COUNT(*) FROM conductor;
SELECT Name, Age FROM conductor ORDER BY Age ASC
SELECT Name, Age FROM conductor ORDER BY Age;
SELECT Name FROM conductor WHERE Nationality != "USA";
SELECT Name FROM conductor WHERE Nationality != "USA";
SELECT orchestra.Record_Company, orchestra.Year_of_Founded FROM orchestra ORDER BY orchestra.Year_of_Founded DESC
SELECT orchestra.Record_Company, orchestra.Year_of_Founded FROM orchestra ORDER BY orchestra.Year_of_Founded DESC
SELECT AVG(Attendance) FROM show;
SELECT AVG(Attendance) FROM show
SELECT MAX(share), MIN(share) FROM performance WHERE type != "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type != "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor;
SELECT COUNT(DISTINCT Nationality) FROM conductor;
SELECT Name, Year_of_Work FROM conductor ORDER BY Year_of_Work DESC
SELECT Name, Year_of_Work FROM conductor ORDER BY Year_of_Work DESC;
SELECT Name, Year_of_Work FROM conductor WHERE Year_of_Work = (SELECT MAX(Year_of_Work) FROM conductor);
SELECT Name, Year_of_Work FROM conductor WHERE Year_of_Work = (SELECT MAX(Year_of_Work) FROM conductor);
SELECT conductor.Name, orchestra.Orchestra FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID;
SELECT conductor.Name, orchestra.Orchestra FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID;
SELECT conductor.Name, COUNT(orchestra.Orchestra_ID) FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Name HAVING COUNT(orchestra.Orchestra_ID) > 1
SELECT conductor.Name FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Name HAVING COUNT(orchestra.Orchestra_ID) > 1
SELECT conductor.Name, COUNT(orchestra.Orchestra_ID) AS orchestra_count FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Name ORDER BY orchestra_count DESC LIMIT 1;
SELECT conductor.Name, COUNT(orchestra.Orchestra_ID) AS orchestra_count FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Name ORDER BY orchestra_count DESC LIMIT 1;
SELECT conductor.Name FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID WHERE orchestra.Year_of_Founded > 2008;
SELECT conductor.Name FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID WHERE orchestra.Year_of_Founded > 2008;
SELECT Record_Company, COUNT(Orchestra_ID) AS Number_of_Orchestras FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(Orchestra_ID) AS Orchestra_Count FROM orchestra GROUP BY Record_Company
SELECT orchestra.Major_Record_Format, COUNT(orchestra.Major_Record_Format) AS count FROM orchestra GROUP BY orchestra.Major_Record_Format ORDER BY count ASC
SELECT Major_Record_Format, COUNT(Major_Record_Format) AS Frequency FROM orchestra GROUP BY Major_Record_Format ORDER BY Frequency DESC
SELECT Record_Company, COUNT(Orchestra_ID) AS Number_of_Orchestras FROM orchestra GROUP BY Record_Company ORDER BY Number_of_Orchestras DESC LIMIT 1
SELECT Record_Company, COUNT(Orchestra_ID) AS Orchestra_Count FROM orchestra GROUP BY Record_Company ORDER BY Orchestra_Count DESC LIMIT 1
SELECT orchestra.Orchestra FROM orchestra LEFT JOIN performance ON orchestra.Orchestra_ID = performance.Orchestra_ID WHERE performance.Performance_ID IS NULL;
SELECT orchestra.Orchestra FROM orchestra LEFT JOIN performance ON orchestra.Orchestra_ID = performance.Orchestra_ID WHERE performance.Performance_ID IS NULL
SELECT orchestra.Record_Company FROM orchestra WHERE orchestra.Year_of_Founded < 2003 INTERSECT SELECT orchestra.Record_Company FROM orchestra WHERE orchestra.Year_of_Founded > 2003
SELECT DISTINCT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT DISTINCT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD";
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD';
SELECT DISTINCT orchestra.Year_of_Founded FROM orchestra INNER JOIN performance ON orchestra.Orchestra_ID = performance.Orchestra_ID WHERE performance.Performance_ID IN (     SELECT Performance_ID     FROM performance     GROUP BY Performance_ID     HAVING COUNT(*) > 1 );
SELECT orchestra.Year_of_Founded, performance.Performance_ID FROM orchestra INNER JOIN performance ON orchestra.Orchestra_ID = performance.Orchestra_ID WHERE performance.Performance_ID > 1;
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade, name FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM Highschooler WHERE grade = 10;
SELECT name FROM Highschooler WHERE grade = 10;
SELECT ID FROM Highschooler WHERE name = 'Kyle'
SELECT ID FROM Highschooler WHERE name = 'Kyle'
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10;
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10;
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(ID) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(ID) AS num_students FROM Highschooler GROUP BY grade ORDER BY num_students DESC LIMIT 1
SELECT grade, COUNT(ID) AS num_students FROM Highschooler GROUP BY grade ORDER BY num_students DESC LIMIT 1;
SELECT grade, COUNT(ID) AS num_students FROM Highschooler GROUP BY grade HAVING COUNT(ID) >= 4;
SELECT grade, COUNT(ID) AS num_students FROM Highschooler GROUP BY grade HAVING COUNT(ID) >= 4
SELECT ID, COUNT(friend_id) FROM Highschooler LEFT JOIN Friend ON ID = student_id GROUP BY ID
SELECT name, COUNT(friend_id) AS friends FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name
SELECT name, count(friend_id) as num_friends FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name
SELECT name, count(friend_id) as friends FROM Highschooler LEFT JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name
SELECT name, COUNT(friend_id) AS num_friends FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name ORDER BY num_friends DESC LIMIT 1;
SELECT name, COUNT(friend_id) AS num_friends FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name ORDER BY num_friends DESC LIMIT 1;
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id              FROM Friend              GROUP BY student_id              HAVING COUNT(friend_id) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id              FROM Friend              GROUP BY student_id              HAVING COUNT(friend_id) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id IN (SELECT ID FROM Highschooler WHERE name = 'Kyle'))
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id IN (SELECT ID FROM Highschooler WHERE name = 'Kyle'))
SELECT COUNT(friend_id) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle')
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle')
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT DISTINCT H.ID FROM Highschooler H WHERE H.ID IN (SELECT student_id FROM Friend) AND H.ID IN (SELECT student_id FROM Likes)
SELECT DISTINCT student_id FROM Likes WHERE student_id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) AND ID IN (SELECT student_id FROM Likes)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) AND ID IN (SELECT student_id FROM Likes)
SELECT student_id, COUNT(liked_id) AS num_likes FROM Likes GROUP BY student_id
SELECT student_id, COUNT(liked_id) AS num_likes FROM Likes GROUP BY student_id
SELECT name, COUNT(liked_id) AS num_likes FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name
SELECT name, COUNT(liked_id) AS num_likes FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name;
SELECT name, COUNT(liked_id) AS likes FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name ORDER BY likes DESC LIMIT 1
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(student_id) >= 2)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(student_id) > 1)
SELECT name FROM Highschooler WHERE grade > 5 AND ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(student_id) >= 2)
SELECT name FROM Highschooler WHERE grade > 5 AND ID IN (SELECT student_id                           FROM Friend                           GROUP BY student_id                           HAVING COUNT(student_id) > 1)
SELECT COUNT(*) FROM Likes WHERE student_id = 101
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle')
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT grade, name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend) ORDER BY grade LIMIT 1;
SELECT DISTINCT Owners.state, Professionals.state FROM Owners INNER JOIN Professionals ON Owners.state = Professionals.state
SELECT Owners.state, Professionals.state FROM Owners INNER JOIN Professionals ON Owners.state = Professionals.state
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)
SELECT p.professional_id, p.last_name, p.cell_number FROM Professionals p WHERE p.state = 'Indiana' OR p.professional_id IN ( SELECT t.professional_id FROM Treatments t GROUP BY t.professional_id HAVING COUNT(t.treatment_id) > 2 )
SELECT p.professional_id, p.last_name, p.cell_number FROM Professionals p WHERE p.state = 'Indiana' OR p.professional_id IN ( SELECT t.professional_id FROM Treatments t GROUP BY t.professional_id HAVING COUNT(t.professional_id) > 2 )
SELECT d.name FROM Dogs d WHERE d.dog_id NOT IN ( SELECT t.dog_id FROM Treatments t WHERE t.cost_of_treatment > 1000 )
SELECT d.name FROM Dogs d WHERE d.dog_id NOT IN ( SELECT t.dog_id FROM Treatments t WHERE t.cost_of_treatment > 1000 )
SELECT DISTINCT first_name FROM Professionals WHERE first_name NOT IN (SELECT name FROM Dogs) UNION SELECT DISTINCT first_name FROM Owners WHERE first_name NOT IN (SELECT name FROM Dogs)
SELECT DISTINCT first_name FROM Professionals WHERE first_name NOT IN (SELECT name FROM Dogs) UNION SELECT DISTINCT first_name FROM Owners WHERE first_name NOT IN (SELECT name FROM Dogs)
SELECT p.professional_id, p.role_code, p.email_address FROM Professionals p WHERE p.professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT p.professional_id, p.role_code, p.email_address FROM Professionals p WHERE p.professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT owner_id, first_name, last_name FROM Owners WHERE owner_id IN ( SELECT owner_id FROM Dogs GROUP BY owner_id HAVING COUNT(owner_id) = ( SELECT MAX(count_dogs) FROM ( SELECT owner_id, COUNT(owner_id) AS count_dogs FROM Dogs GROUP BY owner_id ) AS count_dogs ) )
SELECT owner_id, first_name, last_name FROM Owners WHERE owner_id = (SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY COUNT(owner_id) DESC LIMIT 1)
SELECT `professional_id`, `role_code`, `first_name` FROM `Professionals` WHERE `professional_id` IN ( SELECT `professional_id` FROM `Treatments` GROUP BY `professional_id` HAVING COUNT(`treatment_id`) >= 2 )
SELECT p.professional_id, p.role_code, p.first_name FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id GROUP BY p.professional_id, p.role_code, p.first_name HAVING COUNT(t.treatment_id) >= 2;
SELECT breed_name, COUNT(breed_name) AS num_dogs FROM Breeds JOIN Dogs ON Breeds.breed_code = Dogs.breed_code GROUP BY breed_name ORDER BY num_dogs DESC LIMIT 1;
SELECT breed_name, COUNT(breed_name) AS breed_count FROM Breeds JOIN Dogs ON Breeds.breed_code = Dogs.breed_code GROUP BY breed_name ORDER BY breed_count DESC LIMIT 1;
SELECT Owners.owner_id, Owners.last_name FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id GROUP BY Owners.owner_id, Owners.last_name ORDER BY COUNT(Treatments.treatment_id) DESC LIMIT 1;
SELECT Owners.owner_id, Owners.last_name, SUM(Treatments.cost_of_treatment) AS total_cost FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id JOIN Treatments ON Dogs.dog_id = Treatments.dog_id GROUP BY Owners.owner_id, Owners.last_name ORDER BY total_cost DESC LIMIT 1;
SELECT Treatment_Types.treatment_type_description, SUM(Treatments.cost_of_treatment) AS Total_Cost FROM Treatment_Types INNER JOIN Treatments ON Treatment_Types.treatment_type_code = Treatments.treatment_type_code GROUP BY Treatment_Types.treatment_type_description ORDER BY Total_Cost ASC LIMIT 1;
SELECT     `Treatment_Types`.`treatment_type_description` FROM     `Treatments`         INNER JOIN     `Treatment_Types` ON `Treatments`.`treatment_type_code` = `Treatment_Types`.`treatment_type_code` WHERE     `Treatments`.`cost_of_treatment` = (SELECT              MIN(`Treatments`.`cost_of_treatment`)         FROM             `Treatments`)
SELECT owner_id, zip_code FROM Owners WHERE owner_id IN ( SELECT owner_id FROM Dogs WHERE dog_id IN ( SELECT dog_id FROM Treatments WHERE cost_of_treatment IN ( SELECT MAX(cost_of_treatment) FROM Treatments ) ) )
SELECT owner_id, zip_code FROM Owners WHERE owner_id IN ( SELECT owner_id FROM Dogs WHERE dog_id IN ( SELECT dog_id FROM Treatments WHERE cost_of_treatment IN ( SELECT MAX(cost_of_treatment) FROM Treatments ) ) )
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(DISTINCT treatment_type_code) >= 2 )
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(DISTINCT treatment_type_code) >= 2 )
SELECT first_name, last_name FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments WHERE cost_of_treatment < ( SELECT AVG(cost_of_treatment) FROM Treatments ) )
SELECT first_name, last_name FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments WHERE cost_of_treatment < ( SELECT AVG(cost_of_treatment) FROM Treatments ) )
SELECT `date_of_treatment`, `first_name` FROM `Treatments` INNER JOIN `Professionals` ON `Treatments`.`professional_id` = `Professionals`.`professional_id`
SELECT `Treatments`.`date_of_treatment`, `Professionals`.`first_name` FROM `Treatments` INNER JOIN `Professionals` ON `Treatments`.`professional_id` = `Professionals`.`professional_id`
SELECT t.cost_of_treatment, tt.treatment_type_description FROM Treatments t JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code
SELECT `cost_of_treatment`, `treatment_type_description` FROM `Treatments` INNER JOIN `Treatment_Types` ON `Treatments`.`treatment_type_code` = `Treatment_Types`.`treatment_type_code`
SELECT Owners.first_name, Owners.last_name, Sizes.size_description FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id INNER JOIN Sizes ON Dogs.size_code = Sizes.size_code
SELECT Owners.first_name, Owners.last_name, Sizes.size_description FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id INNER JOIN Sizes ON Dogs.size_code = Sizes.size_code
SELECT Owners.first_name, Dogs.name FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id
SELECT Owners.first_name, Dogs.name FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id
SELECT d.name, t.date_of_treatment FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id JOIN Breeds b ON d.breed_code = b.breed_code WHERE b.breed_name = (     SELECT breed_name     FROM Breeds     GROUP BY breed_name     ORDER BY COUNT(*) ASC     LIMIT 1 );
SELECT d.name, t.date_of_treatment FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id JOIN Breeds b ON d.breed_code = b.breed_code GROUP BY d.name, t.date_of_treatment HAVING COUNT(DISTINCT b.breed_code) = (     SELECT MIN(breed_count)     FROM (         SELECT COUNT(DISTINCT b.breed_code) AS breed_count         FROM Dogs d         JOIN Breeds b ON d.breed_code = b.breed_code         GROUP BY d.dog_id     ) AS breed_counts );
SELECT Owners.first_name, Dogs.name FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id WHERE Owners.state = 'Virginia'
SELECT Owners.first_name, Dogs.name FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id WHERE Owners.state = 'Virginia'
SELECT d.name, d.date_arrived, d.date_departed, t.date_of_treatment FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id WHERE t.date_of_treatment IS NOT NULL
SELECT      d.date_arrived, t.date_of_treatment, d.date_departed FROM     Dogs d         JOIN     Treatments t ON d.dog_id = t.dog_id;
SELECT last_name FROM Owners WHERE owner_id = (SELECT owner_id FROM Dogs WHERE age = (SELECT MIN(age) FROM Dogs));
SELECT last_name FROM Owners WHERE owner_id = (SELECT owner_id FROM Dogs WHERE age = (SELECT MIN(age) FROM Dogs));
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived, date_departed FROM Dogs;
SELECT date_arrived, date_departed FROM Dogs;
SELECT COUNT(DISTINCT dog_id) AS 'Number of dogs that went through treatments' FROM Treatments
SELECT COUNT(DISTINCT dog_id) AS 'Number of dogs that went through a treatment' FROM Treatments;
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT COUNT(DISTINCT professional_id) FROM Treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(age) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM Treatments WHERE date_of_treatment = (SELECT MAX(date_of_treatment) FROM Treatments)
SELECT cost_of_treatment FROM Treatments WHERE date_of_treatment = (SELECT MAX(date_of_treatment) FROM Treatments)
SELECT COUNT(*) AS 'Dogs without treatments' FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments)
SELECT COUNT(DISTINCT dog_id) AS 'Number of dogs that have not received any treatment' FROM Dogs WHERE dog_id NOT IN (SELECT DISTINCT dog_id FROM Treatments)
SELECT COUNT(owner_id) AS 'Number of Owners' FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)
SELECT COUNT(owner_id) AS 'Number of owners who do not own any dogs' FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)
SELECT COUNT(DISTINCT professional_id) FROM Professionals WHERE professional_id NOT IN (SELECT DISTINCT professional_id FROM Treatments)
SELECT COUNT(DISTINCT professional_id) FROM Treatments WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1;
SELECT AVG(age) AS average_age FROM Dogs;
SELECT AVG(age) AS average_age FROM Dogs;
SELECT MAX(age) AS 'Oldest Dog' FROM Dogs
SELECT MAX(age) AS 'Oldest Dog' FROM Dogs
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT MAX(charge_amount) FROM Charges;
SELECT charge_amount FROM Charges WHERE charge_amount = (SELECT MAX(charge_amount) FROM Charges);
SELECT email_address, cell_number, home_phone FROM Professionals;
SELECT email_address, cell_number, home_phone FROM Professionals;
SELECT DISTINCT breed_code, size_code FROM Dogs
SELECT DISTINCT breed_code, size_code FROM Dogs
SELECT first_name, treatment_type_description FROM Professionals INNER JOIN Treatments ON Professionals.professional_id = Treatments.professional_id INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code
SELECT p.first_name, t.treatment_type_description FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id
SELECT COUNT(*) FROM singer;
SELECT COUNT(*) FROM singer;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT "Birth_Year", "Citizenship" FROM "singer"
SELECT "Birth_Year", "Citizenship" FROM "singer"
SELECT Name FROM singer WHERE Citizenship != "France";
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer WHERE Net_Worth_Millions = (SELECT MAX(Net_Worth_Millions) FROM singer);
SELECT Name, Net_Worth_Millions FROM singer WHERE Net_Worth_Millions = (SELECT MAX(Net_Worth_Millions) FROM singer)
SELECT "Citizenship", COUNT(*) AS "Number of singers" FROM "singer" GROUP BY "Citizenship"
SELECT "Citizenship", COUNT(*) AS "Number of Singers" FROM "singer" GROUP BY "Citizenship"
SELECT Citizenship, COUNT(*) AS Count FROM singer GROUP BY Citizenship ORDER BY Count DESC LIMIT 1;
SELECT Citizenship, COUNT(*) AS count FROM singer GROUP BY Citizenship ORDER BY count DESC LIMIT 1;
SELECT "Citizenship", MAX("Net_Worth_Millions") FROM "singer" GROUP BY "Citizenship"
SELECT "Citizenship", MAX("Net_Worth_Millions") FROM "singer" GROUP BY "Citizenship"
SELECT song.Title, singer.Name FROM song INNER JOIN singer ON song.Singer_ID = singer.Singer_ID
SELECT song.Title, singer.Name FROM song INNER JOIN singer ON song.Singer_ID = singer.Singer_ID
SELECT DISTINCT Name FROM singer INNER JOIN song ON singer.Singer_ID = song.Singer_ID WHERE song.Sales > 300000
SELECT Name FROM singer WHERE Sales > 300000;
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(Singer_ID) > 1)
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(Singer_ID) > 1)
SELECT Name, SUM(Sales) FROM singer INNER JOIN song ON singer.Singer_ID = song.Singer_ID GROUP BY Name
SELECT Name, SUM(Sales) FROM singer INNER JOIN song ON singer.Singer_ID = song.Singer_ID GROUP BY Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song);
SELECT s.Name FROM singer s WHERE NOT EXISTS ( SELECT * FROM song WHERE s.Singer_ID = song.Singer_ID )
SELECT DISTINCT "Citizenship" FROM "singer" WHERE "Birth_Year" < 1945 INTERSECT SELECT DISTINCT "Citizenship" FROM "singer" WHERE "Birth_Year" > 1955
SELECT DISTINCT "Citizenship" FROM "singer" WHERE "Birth_Year" < 1945 INTERSECT SELECT DISTINCT "Citizenship" FROM "singer" WHERE "Birth_Year" > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = 'AirCon'
SELECT `property_type_description` FROM `Ref_Property_Types` INNER JOIN `Properties` ON `Ref_Property_Types`.`property_type_code` = `Properties`.`property_type_code` WHERE `property_type_code` = 'APT'
SELECT property_name, room_count FROM Properties WHERE property_type_code = 'APT' OR property_type_code = 'HSE' AND room_count > 1
