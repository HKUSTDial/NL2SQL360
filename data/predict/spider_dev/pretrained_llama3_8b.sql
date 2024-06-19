SELECT COUNT(*) FROM singer;
SELECT COUNT("Singer_ID") FROM "singer";
SELECT "Name", "Country", "Age" FROM "singer" ORDER BY "Age" DESC;
SELECT "Name", "Country", "Age" FROM "singer" ORDER BY "Age" DESC;
SELECT AVG("Age"), MIN("Age"), MAX("Age") FROM "singer" WHERE "Country" = 'France';
SELECT AVG("Age") AS "Average_Age", MIN("Age") AS "Minimum_Age", MAX("Age") AS "Maximum_Age" FROM "singer" WHERE "Country" = 'France';
SELECT "singer"."Name", "singer"."Song_release_year" FROM "singer" WHERE "singer"."Age" = (SELECT MIN("singer"."Age") FROM "singer");
SELECT "singer"."Name", "singer"."Song_Name", "singer"."Song_release_year" FROM "singer" WHERE "singer"."Age" = (SELECT MIN("singer"."Age") FROM "singer");
SELECT DISTINCT "Country" FROM "singer" WHERE "Age" > 20;
SELECT DISTINCT Country FROM singer WHERE Age > 20;
SELECT "Country", COUNT("Singer_ID") FROM "singer" GROUP BY "Country";
SELECT "Country", COUNT("Singer_ID") AS "Number_of_singers" FROM "singer" GROUP BY "Country";
SELECT "singer"."Song_Name" FROM "singer" WHERE "singer"."Age" > (SELECT AVG("singer"."Age") FROM "singer");
SELECT DISTINCT "singer"."Song_Name" FROM "singer" WHERE "singer"."Age" > (SELECT AVG("singer"."Age") FROM "singer")
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000;
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000;
SELECT MAX("Capacity"), AVG("Capacity") FROM "stadium";
SELECT AVG("Capacity"), MAX("Capacity") FROM "stadium";
SELECT "Name", "Capacity" FROM "stadium" WHERE "Average" = (SELECT MAX("Average") FROM "stadium");
SELECT "Name", "Capacity" FROM "stadium" WHERE "Average" = (SELECT MAX("Average") FROM "stadium");
SELECT COUNT(concert.concert_ID) FROM concert WHERE concert.Year = 2014 OR concert.Year = 2015;
SELECT COUNT(concert.concert_ID) FROM concert WHERE concert.Year = '2014' OR concert.Year = '2015';
SELECT "stadium"."Name", COUNT("concert"."concert_ID") AS "Number_of_concerts" FROM "concert" INNER JOIN "stadium" ON "concert"."Stadium_ID" = "stadium"."Stadium_ID" GROUP BY "stadium"."Name" ORDER BY "Number_of_concerts" DESC
SELECT "Stadium_ID", COUNT("concert_ID") FROM "concert" GROUP BY "Stadium_ID";
SELECT "stadium"."Name", "stadium"."Capacity" FROM "stadium" INNER JOIN "concert" ON "stadium"."Stadium_ID" = "concert"."Stadium_ID" WHERE "concert"."Year" >= 2014 GROUP BY "stadium"."Name", "stadium"."Capacity" ORDER BY COUNT("concert"."concert_ID") DESC LIMIT 1;
SELECT "Name", "Capacity" FROM "stadium" WHERE "Stadium_ID" IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" > 2013 GROUP BY "Stadium_ID" ORDER BY COUNT("concert_ID") DESC LIMIT 1);
SELECT "Year" FROM "concert" GROUP BY "Year" ORDER BY COUNT("concert_ID") DESC LIMIT 1;
SELECT "Year" FROM "concert" GROUP BY "Year" ORDER BY COUNT("concert_ID") DESC LIMIT 1;
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert");
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert");
SELECT DISTINCT "Country" FROM "singer" WHERE "Age" > 40 AND "Age" < 30;
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" = 2014);
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" = 2014);
SELECT concert.concert_Name, concert.Theme, COUNT(singer_in_concert.Singer_ID) AS "Number of singers" FROM concert LEFT JOIN singer_in_concert ON concert.concert_ID = singer_in_concert.concert_ID GROUP BY concert.concert_Name, concert.Theme
SELECT concert.concert_Name, concert.Theme, COUNT(singer_in_concert.Singer_ID) AS "Number of singers" FROM concert INNER JOIN singer_in_concert ON concert.concert_ID = singer_in_concert.concert_ID GROUP BY concert.concert_Name, concert.Theme
SELECT "singer"."Name", COUNT("concert"."concert_ID") AS "Number_of_concerts" FROM "singer" INNER JOIN "singer_in_concert" ON "singer"."Singer_ID" = "singer_in_concert"."Singer_ID" INNER JOIN "concert" ON "singer_in_concert"."concert_ID" = "concert"."concert_ID" GROUP BY "singer"."Name" ORDER BY "Number_of_concerts" DESC;
SELECT "singer"."Name", COUNT("concert"."concert_ID") AS "Number_of_concerts" FROM "singer" INNER JOIN "singer_in_concert" ON "singer"."Singer_ID" = "singer_in_concert"."Singer_ID" INNER JOIN "concert" ON "singer_in_concert"."concert_ID" = "concert"."concert_ID" GROUP BY "singer"."Name" ORDER BY "Number_of_concerts" DESC
SELECT "singer"."Name" FROM "singer_in_concert" INNER JOIN "concert" ON "singer_in_concert"."concert_ID" = "concert"."concert_ID" INNER JOIN "singer" ON "singer_in_concert"."Singer_ID" = "singer"."Singer_ID" WHERE "concert"."Year" = 2014;
SELECT DISTINCT "singer"."Name" FROM "singer_in_concert" JOIN "concert" ON "singer_in_concert"."concert_ID" = "concert"."concert_ID" JOIN "singer" ON "singer_in_concert"."Singer_ID" = "singer"."Singer_ID" WHERE "concert"."Year" = 2014;
SELECT "Name", "Country" FROM "singer" WHERE "Song_Name" LIKE '%Hey%';
SELECT "Name", "Country" FROM "singer" WHERE "Song_Name" LIKE '%Hey%';
SELECT "stadium"."Name", "stadium"."Location" FROM "stadium" INNER JOIN "concert" ON "stadium"."Stadium_ID" = "concert"."Stadium_ID" WHERE "concert"."Year" = 2014 AND "concert"."Year" = 2015;
SELECT "stadium"."Location", "stadium"."Name" FROM "stadium" INNER JOIN "concert" ON "stadium"."Stadium_ID" = "concert"."Stadium_ID" WHERE "concert"."Year" = 2014 AND "concert"."Year" = 2015;
SELECT COUNT(concert.concert_ID) FROM concert JOIN stadium ON concert.Stadium_ID = stadium.Stadium_ID WHERE stadium.Capacity = (SELECT MAX(stadium.Capacity) FROM stadium);
SELECT COUNT(concert.concert_ID) FROM concert INNER JOIN stadium ON concert.Stadium_ID = stadium.Stadium_ID WHERE stadium.Capacity = (SELECT MAX(stadium.Capacity) FROM stadium);
SELECT COUNT(*) FROM Pets WHERE weight > 10;
SELECT COUNT(*) FROM Pets WHERE weight > 10;
SELECT weight FROM Pets WHERE PetType = 'dog' AND pet_age = (SELECT MIN(pet_age) FROM Pets WHERE PetType = 'dog');
SELECT weight FROM Pets WHERE PetType = 'dog' AND pet_age = (SELECT MIN(pet_age) FROM Pets WHERE PetType = 'dog');
SELECT MAX(weight), PetType FROM Pets GROUP BY PetType;
SELECT PetType, MAX(weight) FROM Pets GROUP BY PetType;
SELECT COUNT(*) FROM Has_Pet, Student, Pets WHERE Student.StuID = Has_Pet.StuID AND       Pets.PetID = Has_Pet.PetID AND       Student.Age > 20
SELECT COUNT(PetID) FROM Pets, Has_Pet, Student WHERE Pets.PetID = Has_Pet.PetID AND Student.StuID = Has_Pet.StuID AND Student.Age > 20;
SELECT COUNT(PetID) FROM Pets, Has_Pet, Student WHERE Pets.PetType = 'dog' AND Student.Sex = 'F' AND Pets.PetID = Has_Pet.PetID AND Student.StuID = Has_Pet.StuID;
SELECT COUNT(*) FROM Pets, Has_Pet, Student WHERE Pets.PetType = 'dog' AND Student.Sex = 'F' AND Pets.PetID = Has_Pet.PetID AND Student.StuID = Has_Pet.StuID;
SELECT DISTINCT PetType FROM Pets;
SELECT DISTINCT PetType FROM Pets;
SELECT Fname FROM Student, Pets, Has_Pet WHERE Pets.PetID = Has_Pet.PetID AND       Student.StuID = Has_Pet.StuID AND       Pets.PetType = 'cat' OR Pets.PetType = 'dog'
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat' OR PetType = 'dog'));
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat' OR PetType = 'dog'));
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat' OR PetType = 'dog'));
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat'));
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat'));
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat'));
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat'));
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID                 FROM Has_Pet                 WHERE PetID IN (SELECT PetID                                 FROM Pets                                 WHERE PetType = 'dog')) AND StuID NOT IN (SELECT StuID                   FROM Has_Pet                   WHERE PetID IN (SELECT PetID                                   FROM Pets                                   WHERE PetType = 'cat'))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'dog') AND StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat')))
SELECT Pets.PetType, Pets.weight FROM Pets WHERE Pets.pet_age = (SELECT MIN(Pets.pet_age)                       FROM Pets)
SELECT PetType, weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets);
SELECT Pets.PetID, Pets.weight FROM Pets WHERE Pets.pet_age > 1
SELECT Pets.PetID, Pets.weight FROM Pets WHERE Pets.pet_age > 1
SELECT AVG(pet_age), MAX(pet_age), PetType FROM Pets GROUP BY PetType;
SELECT AVG(pet_age), MAX(pet_age), PetType FROM Pets GROUP BY PetType;
SELECT AVG(weight) FROM Pets GROUP BY PetType;
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType;
SELECT Fname, Age FROM Student, Has_Pet, Pets WHERE Student.StuID = Has_Pet.StuID AND Has_Pet.PetID = Pets.PetID;
SELECT DISTINCT Fname, Age FROM Student, Has_Pet WHERE Student.StuID = Has_Pet.StuID AND Has_Pet.PetID IS NOT NULL;
SELECT PetID FROM Pets, Has_Pet WHERE Pets.PetID = Has_Pet.PetID AND Student.LName = 'Smith';
SELECT PetID FROM Pets, Has_Pet WHERE Pets.PetID = Has_Pet.PetID AND Student.LName = 'Smith';
SELECT StuID, COUNT(PetID) AS "Number of Pets" FROM Has_Pet GROUP BY StuID HAVING COUNT(PetID) > 0
SELECT StuID, COUNT(*) AS num_pets FROM Has_Pet GROUP BY StuID ORDER BY num_pets DESC
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*)>1);
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1);
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat' AND pet_age = 3))
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat' AND pet_age = 3))
SELECT AVG(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT AVG(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT COUNT(*) FROM continents;
SELECT COUNT(*) FROM continents;
SELECT continents.ContId, continents.Continent, COUNT(countries.CountryId) AS "Number of Countries" FROM continents LEFT JOIN countries ON continents.ContId = countries.Continent GROUP BY continents.ContId, continents.Continent;
SELECT continents.ContId, continents.Continent, COUNT(countries.CountryId) AS "Number of Countries" FROM continents LEFT JOIN countries ON continents.ContId = countries.Continent GROUP BY continents.ContId;
SELECT COUNT(*) FROM countries;
SELECT COUNT(*) FROM countries;
SELECT car_makers.Maker, car_makers.Id, COUNT(model_list.Model) AS "Number of Models" FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Maker, car_makers.Id ORDER BY car_makers.Maker, car_makers.Id
SELECT car_makers.Id, car_makers.Maker, car_makers.FullName, COUNT(model_list.Model) AS "Number of Models" FROM car_makers LEFT JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.Maker, car_makers.FullName ORDER BY car_makers.Id
SELECT Model FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Horsepower = (SELECT MIN(Horsepower) FROM cars_data));
SELECT Model FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Horsepower = (SELECT MIN(Horsepower) FROM cars_data));
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data);
SELECT Model FROM car_names WHERE Id IN (SELECT MakeId FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data));
SELECT DISTINCT car_makers.Maker FROM car_makers INNER JOIN car_names ON car_makers.Id = car_names.MakeId INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = 1970;
SELECT DISTINCT car_makers.Maker FROM car_makers INNER JOIN car_names ON car_makers.Id = car_names.MakeId INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = 1970;
SELECT car_names.Make, cars_data.Year FROM car_names INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = (SELECT MIN(Year) FROM cars_data);
SELECT car_names.Make, cars_data.Year FROM car_names INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = (SELECT MIN(cars_data.Year) FROM cars_data);
SELECT DISTINCT Model FROM car_names WHERE Year > 1980;
SELECT DISTINCT Model FROM cars_data WHERE Year > 1980;
SELECT continents.Continent, COUNT(car_makers.Maker) AS "Count" FROM continents JOIN countries ON continents.ContId = countries.Continent JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY continents.Continent;
SELECT continents.Continent, COUNT(car_makers.Maker) AS "Number of car makers" FROM continents LEFT JOIN countries ON continents.ContId = countries.Continent LEFT JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY continents.Continent;
SELECT countries.CountryName, COUNT(car_makers.Maker) AS "Number of Car Makers" FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryName ORDER BY "Number of Car Makers" DESC LIMIT 1;
SELECT CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(Country) DESC LIMIT 1);
SELECT COUNT(*) AS "Count", car_makers.FullName AS "Maker" FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.FullName;
SELECT COUNT(model_list.Model), car_makers.Id, car_makers.FullName FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.FullName;
SELECT accelerate FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names WHERE Model = 'amc hornet sportabout' AND Make = 'amc hornet sportabout (sw)');
SELECT cars_data.Accelerate FROM cars_data INNER JOIN car_names ON cars_data.Id = car_names.MakeId WHERE car_names.Model = 'amc hornet sportabout (sw)'
SELECT COUNT(*) FROM car_makers WHERE Country = 'France';
SELECT COUNT(*) FROM car_makers WHERE Country = 'France';
SELECT COUNT(*) FROM car_names WHERE Make = 'USA';
SELECT COUNT(*) FROM car_names WHERE MakeId IN (SELECT Id FROM car_makers WHERE Country = 'United States');
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974;
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974;
SELECT DISTINCT Maker, Model FROM car_names;
SELECT DISTINCT Maker, Model FROM car_names;
SELECT countries.CountryName, countries.CountryId FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Id IS NOT NULL;
SELECT countries.CountryName, countries.CountryId FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Country IS NOT NULL;
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150;
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150;
SELECT AVG(Weight) FROM cars_data WHERE Year = 1980; SELECT AVG(Weight) FROM cars_data WHERE Year = 1981; SELECT AVG(Weight) FROM cars_data WHERE Year = 1982; SELECT AVG(Weight) FROM cars_data WHERE Year = 1983; SELECT AVG(Weight) FROM cars_data WHERE Year = 1984; SELECT AVG(Weight) FROM cars_data WHERE Year = 1985; SELECT AVG(Weight) FROM cars_data WHERE Year = 1986; SELECT AVG(Weight) FROM cars_data WHERE Year = 1987; SELECT AVG(Weight) FROM cars_data WHERE Year = 1988; SELECT AVG(Weight) FROM cars_data WHERE Year = 1989; SELECT AVG(Weight) FROM cars_data WHERE Year = 1990; SELECT AVG(Weight) FROM cars_data WHERE Year = 1991; SELECT AVG(Weight) FROM cars_data WHERE Year = 1992; SELECT AVG(Weight) FROM cars_data WHERE Year = 1993; SELECT AVG(Weight) FROM cars_data WHERE Year = 1994; SELECT AVG(Weight) FROM cars_data WHERE Year = 1995; SELECT AVG(Weight) FROM cars_data WHERE Year = 1996; SELECT
SELECT AVG(Weight), Year FROM cars_data GROUP BY Year;
SELECT DISTINCT countries.CountryName FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country WHERE countries.Continent = 2 AND car_makers.Id > 2
SELECT DISTINCT countries.CountryName FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Country IN (SELECT CountryId FROM countries WHERE Continent = 2) GROUP BY countries.CountryName HAVING COUNT(car_makers.Country) >= 3
SELECT MAX(Horsepower), Make FROM cars_data WHERE Cylinders = 3 GROUP BY Make;
SELECT MAX(Horsepower) FROM cars_data WHERE Cylinders = 3;
SELECT Model, MAX(MPG) FROM cars_data GROUP BY Model;
SELECT Model FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data ORDER BY MPG DESC LIMIT 1);
SELECT AVG("Horsepower") FROM cars_data WHERE "Year" < 1980;
SELECT AVG("Horsepower") FROM cars_data WHERE "Year" < 1980;
SELECT AVG(Edispl) FROM cars_data WHERE Model = 'volvo';
SELECT AVG(Edispl) FROM cars_data WHERE Make = 'Volvo';
SELECT cylinders, MAX(accelerate) FROM cars_data GROUP BY cylinders;
SELECT MAX(accelerate) FROM cars_data WHERE cylinders = 4;
SELECT COUNT(*) AS "Number of versions", Model FROM car_names GROUP BY Model ORDER BY Number_of_versions DESC LIMIT 1;
SELECT COUNT(*) AS "Number of versions", Model FROM car_names GROUP BY Model ORDER BY Number_of_versions DESC LIMIT 1;
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4;
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4;
SELECT COUNT(*) FROM cars_data WHERE Year = 1980;
SELECT COUNT(*) FROM cars_data WHERE Year = 1980;
SELECT COUNT(*) FROM car_names WHERE Make = 'AMC';
SELECT COUNT(*) FROM car_names WHERE Make = 'American Motor Company';
SELECT car_makers.FullName, car_makers.Id FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.FullName, car_makers.Id HAVING COUNT(car_makers.Id) > 3
SELECT car_makers.Id, car_makers.Maker FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.Maker HAVING COUNT(car_makers.Id) > 3
SELECT DISTINCT Model FROM car_names WHERE MakeId IN (SELECT Id FROM car_makers WHERE Maker = 'General Motors' OR Weight > 3500) ORDER BY Model;
SELECT DISTINCT Model FROM car_names WHERE MakeId IN (SELECT Id FROM car_makers WHERE Maker = 'General Motors') OR Weight > 3500;
SELECT DISTINCT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000;
SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 OR Weight > 3000;
SELECT horsepower FROM cars_data WHERE accelerate = (SELECT MAX(accelerate) FROM cars_data);
SELECT horsepower FROM cars_data WHERE accelerate = (SELECT MAX(accelerate) FROM cars_data);
SELECT cylinders FROM cars_data WHERE model = 'volvo' AND accelerate = (SELECT MIN(accelerate) FROM cars_data WHERE model = 'volvo');
SELECT cylinders FROM cars_data WHERE model = 'volvo' AND accelerate = (SELECT MIN(accelerate) FROM cars_data WHERE model = 'volvo');
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data);
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data);
SELECT COUNT(*) FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*)>2);
SELECT COUNT(*) FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*)>2);
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6;
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6;
SELECT Model, Horsepower FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1;
SELECT Model, Horsepower FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1;
SELECT car_names.MakeId, car_names.Make FROM car_names WHERE car_names.MakeId IN (SELECT car_names.MakeId FROM car_names WHERE car_names.MakeId IN (SELECT cars_data.Id FROM cars_data WHERE cars_data.Horsepower > (SELECT MIN(cars_data.Horsepower) FROM cars_data)) AND car_names.MakeId NOT IN (SELECT car_names.MakeId FROM car_names WHERE car_names.MakeId IN (SELECT cars_data.Id FROM cars_data WHERE cars_data.Cylinders > 3)))
SELECT car_names.MakeId, car_names.Model, car_makers.Maker FROM car_names INNER JOIN car_makers ON car_names.MakeId = car_makers.Id WHERE car_names.Model IN (SELECT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE Continent IN (SELECT ContId FROM continents WHERE Continent = 'Asia')))) AND car_names.Model NOT IN (SELECT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE Continent IN (SELECT ContId FROM continents WHERE Continent = 'Asia')))) AND car_names.Model NOT IN (SELECT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE Continent IN (SELECT ContId FROM continents WHERE Continent = 'Europe')))) AND car_names.Model NOT IN (SELECT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE Continent IN (SELECT ContId FROM continents WHERE Continent = 'North America')))) AND car_names.Model NOT IN (SELECT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE Continent
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 AND Year < 1980;
SELECT MAX(mpg) FROM cars_data WHERE cylinders = 8 OR year < 1980;
SELECT * FROM cars_data WHERE Weight < 3500 AND Make NOT IN (SELECT Model FROM car_names WHERE Make = 'Ford Motor Company');
SELECT DISTINCT Model FROM car_names WHERE Weight < 3500 AND Make NOT IN (SELECT Make FROM car_names WHERE Make = 'Ford');
SELECT DISTINCT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers);
SELECT DISTINCT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers);
SELECT car_makers.Id, car_makers.Maker FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.Maker HAVING COUNT(car_makers.Id) > 2 AND COUNT(car_makers.Id) < 4
SELECT DISTINCT car_makers.Id, car_makers.Maker FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.Maker HAVING COUNT(car_makers.Id) > 2
SELECT countries.CountryName, car_makers.Id, car_makers.Maker FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Id > 3 UNION SELECT countries.CountryName, car_makers.Id, car_makers.Maker FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country INNER JOIN model_list ON car_makers.Id = model_list.Maker WHERE model_list.Model = 'fiat'
SELECT DISTINCT countries.CountryId, countries.CountryName FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country WHERE car_makers.Country = 'Italy' OR car_makers.Country = 'France' OR car_makers.Country = 'Germany' OR car_makers.Country = 'United Kingdom' OR car_makers.Country = 'Spain' OR car_makers.Country = 'Portugal' OR car_makers.Country = 'Belgium' OR car_makers.Country = 'Netherlands' OR car_makers.Country = 'Sweden' OR car_makers.Country = 'Norway' OR car_makers.Country = 'Denmark' OR car_makers.Country = 'Finland' OR car_makers.Country = 'Iceland' OR car_makers.Country = 'Austria' OR car_makers.Country = 'Switzerland' OR car_makers.Country = 'Czech Republic' OR car_makers.Country = 'Slovakia' OR car_makers.Country = 'Hungary' OR car_makers.Country = 'Poland' OR car_makers.Country = 'Romania' OR car_makers.Country = 'Bulgaria' OR car_makers.Country = 'Greece' OR car_makers.Country = 'Turkey' OR car_m
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways";
SELECT Country FROM airlines WHERE Abbreviation = 'B6';
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways";
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways";
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA';
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA';
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
SELECT City, Country FROM airports WHERE AirportCode = 'ALN';
SELECT City, Country FROM airports WHERE AirportCode = 'ALN';
SELECT AirportName FROM airports WHERE AirportCode = 'AKO';
SELECT AirportName FROM airports WHERE AirportCode = 'AKO';
SELECT AirportName FROM airports WHERE City = 'Aberdeen';
SELECT * FROM airports WHERE City = 'Aberdeen';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABZ';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABZ';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABZ';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABZ';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABZ' AND DestAirport = 'ASH';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABZ' AND DestAirport = 'ASH';
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'JetBlue Airways');
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'Jetblue Airways');
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines') AND DestAirport = 'ASY';
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines') AND DestAirport = 'ASY';
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines') AND SourceAirport = 'AHD';
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines') AND SourceAirport = 'AHD';
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines') AND DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen');
SELECT COUNT(*) FROM flights WHERE Airline = 'UA' AND DestAirport = 'ABZ';
SELECT City, COUNT(*) AS NumFlights FROM flights JOIN airports ON flights.DestAirport = airports.AirportCode GROUP BY City ORDER BY NumFlights DESC LIMIT 1;
SELECT City, COUNT(*) AS Count FROM airports JOIN flights ON airports.AirportCode = flights.DestAirport GROUP BY City ORDER BY Count DESC LIMIT 1;
SELECT City, COUNT(*) AS NumberOfFlights FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY City ORDER BY NumberOfFlights DESC LIMIT 1;
SELECT City, COUNT(*) AS Count FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY City ORDER BY Count DESC LIMIT 1;
SELECT AirportCode, COUNT(*) AS NumberOfFlights FROM flights GROUP BY AirportCode ORDER BY NumberOfFlights DESC LIMIT 1;
SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1);
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights) ORDER BY COUNT(DestAirport) ASC LIMIT 1;
SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT DestAirport FROM flights GROUP BY DestAirport HAVING COUNT(*) = (SELECT MIN(COUNT(*)) FROM flights GROUP BY DestAirport));
SELECT Airline, COUNT(*) AS NumberOfFlights FROM flights GROUP BY Airline ORDER BY NumberOfFlights DESC LIMIT 1;
SELECT Airline, COUNT(*) AS NumberOfFlights FROM flights GROUP BY Airline ORDER BY NumberOfFlights DESC LIMIT 1;
SELECT airlines.Abbreviation, airlines.Country FROM airlines JOIN flights ON airlines.uid = flights.Airline GROUP BY airlines.Abbreviation, airlines.Country HAVING COUNT(*) = (SELECT MIN(COUNT(*)) FROM flights GROUP BY flights.Airline);
SELECT airlines.Abbreviation, airlines.Country FROM airlines JOIN flights ON airlines.uid = flights.Airline GROUP BY airlines.Abbreviation, airlines.Country HAVING COUNT(*) = (SELECT MIN(COUNT(*)) FROM airlines JOIN flights ON airlines.uid = flights.Airline);
SELECT DISTINCT airlines.Airline FROM airlines JOIN flights ON airlines.uid = flights.Airline WHERE flights.SourceAirport = 'AHD';
SELECT DISTINCT airlines.Airline FROM airlines JOIN flights ON airlines.uid = flights.Airline WHERE flights.SourceAirport = 'AHD';
SELECT DISTINCT airlines.Airline FROM airlines JOIN flights ON airlines.uid = flights.Airline WHERE flights.DestAirport = 'AHD';
SELECT DISTINCT airlines.Airline FROM airlines JOIN flights ON airlines.uid = flights.Airline WHERE flights.DestAirport = 'AHD';
SELECT DISTINCT airlines.Airline, airlines.Abbreviation, airlines.Country FROM airlines JOIN flights ON airlines.uid = flights.Airline WHERE flights.SourceAirport = 'APG' AND flights.DestAirport = 'CVO';
SELECT DISTINCT airlines.Airline, airlines.Abbreviation, airlines.Country FROM airlines JOIN flights ON airlines.uid = flights.Airline WHERE flights.SourceAirport = 'APG' AND flights.DestAirport = 'CVO';
SELECT DISTINCT airlines.Airline, airlines.Abbreviation, airlines.Country FROM airlines JOIN flights ON airlines.uid = flights.Airline WHERE flights.SourceAirport = 'CVO' AND flights.DestAirport!= 'APG';
SELECT DISTINCT airlines.Airline, airlines.Abbreviation, airlines.Country FROM airlines JOIN flights ON airlines.uid = flights.Airline WHERE flights.SourceAirport = 'CVO' AND flights.DestAirport!= 'APG' ORDER BY airlines.Airline;
SELECT * FROM airlines WHERE uid IN (SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10);
SELECT Airline, COUNT(*) AS num_flights FROM flights GROUP BY Airline HAVING COUNT(*) >= 10;
SELECT * FROM airlines WHERE uid NOT IN (SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 200);
SELECT Airline, COUNT(*) AS num_flights FROM flights GROUP BY Airline HAVING COUNT(*) < 200;
SELECT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = "United Airlines");
SELECT DISTINCT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines');
SELECT FlightNo FROM flights WHERE SourceAirport = "APG";
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG';
SELECT FlightNo FROM flights WHERE DestAirport = 'APG';
SELECT FlightNo FROM flights WHERE DestAirport = 'APG';
SELECT FlightNo FROM flights WHERE SourceAirport = 'ABZ';
SELECT FlightNo FROM flights WHERE SourceAirport = 'ABZ';
SELECT DISTINCT FlightNo FROM flights WHERE DestAirport = 'ABZ';
SELECT DISTINCT FlightNo FROM flights WHERE DestAirport = 'ABZ';
SELECT COUNT(*) FROM flights WHERE DestAirport IN ('ABZ', 'ABI');
SELECT COUNT(*) FROM flights WHERE DestAirport IN ('ABZ', 'ABI');
SELECT * FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights);
SELECT DISTINCT airports.AirportCode, airports.AirportName, airports.Country, airports.CountryAbbrev FROM airports LEFT JOIN flights ON airports.AirportCode = flights.SourceAirport OR airports.AirportCode = flights.DestAirport WHERE flights.SourceAirport IS NULL AND flights.DestAirport IS NULL ORDER BY airports.AirportCode ASC;
SELECT COUNT(*) FROM employee;
SELECT COUNT(*) FROM employee;
SELECT Name, Age FROM employee ORDER BY Age ASC;
SELECT Name, Age FROM employee ORDER BY Age ASC;
SELECT "City", COUNT("Employee_ID") AS "Number_of_employees" FROM "employee" GROUP BY "City";
SELECT "City", COUNT("Employee_ID") AS "Number_of_employees" FROM "employee" GROUP BY "City";
SELECT DISTINCT City FROM employee WHERE Age < 30;
SELECT DISTINCT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1;
SELECT Location, COUNT(*) AS "Number_of_shops" FROM shop GROUP BY Location;
SELECT Location, COUNT(*) AS "Number_of_shops" FROM shop GROUP BY Location;
SELECT s.Name, s.District FROM shop s WHERE s.Number_products = (     SELECT MAX(s2.Number_products)     FROM shop s2 )
SELECT s.Name, s.District FROM shop s WHERE s.Number_products = (SELECT MAX(s2.Number_products) FROM shop s2)
SELECT MIN(Number_products), MAX(Number_products) FROM shop;
SELECT MIN(Number_products), MAX(Number_products) FROM shop;
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC;
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC;
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop);
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop);
SELECT Name FROM employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1);
SELECT Name FROM employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1);
SELECT Name FROM employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation WHERE Bonus = (SELECT MAX(Bonus) FROM evaluation));
SELECT Name FROM employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation ORDER BY Bonus DESC LIMIT 1);
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation);
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation);
SELECT Name FROM shop WHERE Shop_ID IN (SELECT Shop_ID FROM hiring GROUP BY Shop_ID ORDER BY COUNT(*) DESC LIMIT 1);
SELECT Name FROM shop WHERE Employee_ID IN (SELECT Employee_ID FROM hiring GROUP BY Employee_ID HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM hiring));
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring);
SELECT DISTINCT s.Name FROM shop s LEFT JOIN hiring h ON s.Shop_ID = h.Shop_ID WHERE h.Shop_ID IS NULL
SELECT shop.name, COUNT(*) AS num_employees FROM hiring JOIN shop ON hiring.shop_id = shop.shop_id GROUP BY shop.name
SELECT COUNT(`employee`.`Employee_ID`), `shop`.`Name` FROM `employee` INNER JOIN `hiring` ON `employee`.`Employee_ID` = `hiring`.`Employee_ID` INNER JOIN `shop` ON `hiring`.`Shop_ID` = `shop`.`Shop_ID` GROUP BY `shop`.`Name`;
SELECT SUM(Bonus) FROM evaluation;
SELECT SUM(Bonus) FROM evaluation;
SELECT * FROM hiring;
SELECT * FROM hiring;
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 OR Number_products > 10000;
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 OR Number_products > 10000;
SELECT DISTINCT Location FROM shop;
SELECT DISTINCT Location FROM shop;
SELECT COUNT(Document_ID) FROM Documents
SELECT COUNT(Document_ID) FROM Documents;
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Document_ID FROM Documents WHERE Document_Description LIKE '%w%' \end{code}  Comment: You should use `LIKE` instead of `=`. `LIKE` is used for pattern matching.  Comment: @Barmar I tried that and it still doesn't work. I'm not sure what I'm doing wrong.  Comment: You need to use the wildcard characters `%` and `_`. `LIKE '%w%'` will match any string that contains the letter `w`.  Comment: @Barmar I tried that and it still doesn't work. I'm not sure what I'm doing wrong.  Comment: You need to show the table structure and sample data.  Comment: @Barmar I added the table structure and sample data.  Comment: You need to show the output you're getting, and the output you want.  Comment: @Barmar I want to return the names and template ids for documents that contain the letter w in their description.  Comment: You need to show the output you're getting, and the output you want.  Comment: @Barmar I want to return the names and template ids for documents that contain the letter w in their description.  Comment: You need to show the output you're getting, and
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'
SELECT COUNT(DISTINCT Templates.Template_ID) AS "Number of Templates" FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID
SELECT COUNT(DISTINCT Templates.Template_ID) AS "Number of Templates" FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID
SELECT COUNT(DISTINCT Document_ID) FROM Documents WHERE Template_ID IN ( SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT' )
SELECT COUNT(DISTINCT Document_ID) AS Document_Count FROM Documents WHERE Template_ID IN ( SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT' )
SELECT Templates.Template_ID, COUNT(Documents.Document_ID) AS "Number of Documents" FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID ORDER BY Templates.Template_ID
SELECT DISTINCT Templates.Template_ID, COUNT(DISTINCT Documents.Document_ID) AS Document_Count FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID ORDER BY Templates.Template_ID
SELECT Templates.Template_ID, Ref_Template_Types.Template_Type_Code FROM Templates INNER JOIN Ref_Template_Types ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID, Ref_Template_Types.Template_Type_Code ORDER BY COUNT(Documents.Document_ID) DESC LIMIT 1
SELECT Templates.Template_ID, Templates.Template_Type_Code FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID, Templates.Template_Type_Code HAVING COUNT(Documents.Document_ID) = (SELECT MAX(COUNT(Documents.Document_ID)) FROM Documents GROUP BY Documents.Template_ID) \end{code}  Comment: You should use `COUNT(DISTINCT Documents.Document_ID)` instead of `COUNT(Documents.Document_ID)`  Comment: @forpas I tried that and it still returns the same result.  Comment: You should also use `COUNT(DISTINCT Documents.Document_ID) = (SELECT MAX(COUNT(DISTINCT Documents.Document_ID))` instead of `COUNT(Documents.Document_ID) = (SELECT MAX(COUNT(Documents.Document_ID))`  Comment: @forpas I tried that and it still returns the same result.  Comment: What is the result you get?  Comment: @forpas The result is the same as the original query. It returns the id and type code of the template that is used for the greatest number of documents. I want it to return the id and type code of the template that is used for the least number of documents.  Comment: You should use `MIN` instead
SELECT DISTINCT Templates.Template_ID FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID HAVING COUNT(Documents.Document_ID) > 1 \end{code}  Comment: I think you need to add a `GROUP BY` clause to your query.  Comment: @GordonLinoff I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the group by clause and it worked. Thank you.  Answer: You need to add a `GROUP BY` clause to your query:  \begin{code} SELECT DISTINCT Templates.Template_ID FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID HAVING COUNT(Documents.Document_ID) > 1 \end{code}  Comment: Thank you. I added the group by clause and it worked.
SELECT DISTINCT Templates.Template_ID FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID HAVING COUNT(Documents.Template_ID) > 1 \end{code}  Comment: I think you need to add a `GROUP BY` clause to your query.  Comment: @GordonLinoff I tried that, but it didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents);
SELECT DISTINCT Templates.Template_ID FROM Templates LEFT JOIN Documents ON Templates.Template_ID = Documents.Template_ID WHERE Documents.Template_ID IS NULL
SELECT COUNT(Template_ID) FROM Templates
SELECT COUNT(Template_ID) FROM Templates;
SELECT Templates.Template_ID, Templates.Version_Number, Ref_Template_Types.Template_Type_Code FROM Templates INNER JOIN Ref_Template_Types ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Templates;
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types
SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ('PP', 'PPT');
SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ('PP', 'PPT')
SELECT COUNT(Template_Type_Code) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT COUNT(Template_ID) FROM Templates WHERE Template_Type_Code = 'CV'
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_Type_Code, COUNT(Template_ID) AS Num_Templates FROM Templates GROUP BY Template_Type_Code
SELECT DISTINCT Template_Type_Code, COUNT(Template_ID) AS Num_Templates FROM Templates GROUP BY Template_Type_Code ORDER BY Num_Templates DESC
SELECT Template_Type_Code, COUNT(Template_ID) AS Num_Templates FROM Templates GROUP BY Template_Type_Code ORDER BY Num_Templates DESC
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM Templates GROUP BY Template_Type_Code) \end{code}  Comment: I think you need to add a `GROUP BY` clause to your `SELECT` statement.  Comment: @GordonLinoff I have added the group by clause but it still returns the same result.  Comment: @GordonLinoff I have added the group by clause but it still returns the same result.  Comment: @GordonLinoff I have added the group by clause but it still returns the same result.  Comment: @GordonLinoff I have added the group by clause but it still returns the same result.  Comment: @GordonLinoff I have added the group by clause but it still returns the same result.  Comment: @GordonLinoff I have added the group by clause but it still returns the same result.  Comment: @GordonLinoff I have added the group by clause but it still returns the same result.  Comment: @GordonLinoff I have added the group by clause but it still returns the same result.  Comment: @GordonLinoff I have added the group by clause but it still returns the
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3 )
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN ( SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) >= 3 )
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID WHERE Document_Name = 'Data base'
SELECT Template_Type_Code FROM Templates WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Data base' )
SELECT Document_Name FROM Documents WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Template_ID IN ( SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'BK') )
SELECT Document_Name FROM Documents WHERE Template_ID IN ( SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'BK' )
SELECT Template_Type_Code, COUNT(Document_ID) AS Num_Documents FROM Documents GROUP BY Template_Type_Code ORDER BY Num_Documents DESC
SELECT DISTINCT Template_Type_Code, COUNT(Document_ID) AS Document_Count FROM Documents GROUP BY Template_Type_Code ORDER BY Document_Count DESC
SELECT Template_Type_Code, COUNT(Document_ID) AS Document_Count FROM Documents GROUP BY Template_Type_Code ORDER BY Document_Count DESC
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) = (SELECT COUNT(*) FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT EXISTS ( SELECT * FROM Documents WHERE Documents.Template_ID = Templates.Template_ID AND Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code )
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates);
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT Template_Type_Description FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents )
SELECT DISTINCT Templates.Template_Type_Description FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID WHERE Templates.Template_Type_Code = 'T1' ORDER BY Templates.Template_Type_Description \end{code}  Comment: You need to use `JOIN` to join the tables together.  You can't just use `WHERE` to join them.  Comment: @GordonLinoff I have tried using JOIN but I am not sure how to use it in this case. I have tried using JOIN but I am not sure how to use it in this case.  Comment: @GordonLinoff I have tried using JOIN but I am not sure how to use it in this case.  Comment: @GordonLinoff I have tried using JOIN but I am not sure how to use it in this case.  Comment: @GordonLinoff I have tried using JOIN but I am not sure how to use it in this case.  Comment: @GordonLinoff I have tried using JOIN but I am not sure how to use it in this case.  Comment: @GordonLinoff I have tried using JOIN but I am not sure how to use it in this case.  Comment:
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'Presentation';
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'Presentation'
SELECT COUNT(Paragraph_ID) FROM Paragraphs;
SELECT COUNT(Paragraph_ID) FROM Paragraphs;
SELECT COUNT(Paragraph_ID) FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show' ) \end{code}  Comment: You should use `JOIN` instead of `IN` in your query.  Comment: @Barmar I'm not sure I understand. I'm not sure how to use JOIN in this case. Could you please provide an example?  Comment: `SELECT COUNT(Paragraph_ID) FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Documents.Document_Name = 'Summer Show'`  Comment: @Barmar Thank you. I've tried this but I get the error: `Error: SQL compilation error: Syntax error: expected something between the 'JOIN' and the 'ON' keyword at [3:20]`  Comment: You need to put a space between `JOIN` and `ON`.  Comment: @Barmar Thank you. I've tried this but I get the error: `Error: SQL compilation error: Syntax error: expected something between the 'JOIN' and the 'ON' keyword at [3:20]`  Comment: You need to put a space between `JOIN` and `ON`.  Comment: @Barmar Thank you.
SELECT COUNT(Paragraph_ID) FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Summer Show' )
SELECT Paragraph_ID, Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea ' \end{code}  Comment: You should use `LIKE` instead of `=`. `LIKE` is used for string comparison.  Comment: @Barmar I tried that and it still doesn't work. I'm not sure what I'm doing wrong.  Comment: You need to use `WHERE Paragraph_Text LIKE '%Korea%'`  Comment: @Barmar I tried that and it still doesn't work. I'm not sure what I'm doing wrong.  Comment: You need to show the table data, and the output you're getting.  Comment: @Barmar I added the table data and the output I'm getting.  Comment: You need to show the output you're getting, not the output you want.  Comment: @Barmar I added the output I'm getting.  Comment: You need to show the output you're getting, not the output you want.  Comment: @Barmar I added the output I'm getting.  Comment: You need to show the output you're getting, not the output you want.  Comment: @Barmar I added the output I'm getting.  Comment: You need to show the output
SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%' \end{code}  Comment: You should use `LIKE` instead of `=`. `LIKE` is used for pattern matching, `=` is used for equality.  Comment: @Barmar I tried that and it still doesn't work. I'm not sure what I'm doing wrong.  Comment: You need to use `LIKE '%Korea%'` to match a string that contains `Korea`.  Comment: @Barmar I tried that and it still doesn't work. I'm not sure what I'm doing wrong.  Comment: You need to show the table structure and sample data.  Comment: @Barmar I added the table structure and sample data.  Comment: You need to show the actual data, not just the table structure. You need to show the output of `SELECT * FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'`.  Comment: @Barmar I added the output of the query.  Comment: You need to show the output of `SELECT * FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'`. That's the query that's not working.  Comment: @Barmar I added the output of the query.  Comment
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY' ) \end{code}  Comment: I think you need to add a `JOIN` clause to your query.  Comment: @GordonLinoff I'm not sure how to do that. I've tried a few things but I'm not getting the results I want.  Comment: @GordonLinoff I've added the query I'm using to my question.  Comment: @GordonLinoff I've added the query I'm using to my question.  Comment: @GordonLinoff I've added the query I'm using to my question.  Comment: @GordonLinoff I've added the query I'm using to my question.  Comment: @GordonLinoff I've added the query I'm using to my question.  Comment: @GordonLinoff I've added the query I'm using to my question.  Comment: @GordonLinoff I've added the query I'm using to my question.  Comment: @GordonLinoff I've added the query I'm using to my question.  Comment: @GordonLinoff I've added the query I'm using to my
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY' ) \end{code}  Comment: I'm not sure what you're asking.  Are you asking how to get the paragraph text for a specific document?  Or are you asking how to get the paragraph text for all documents?  Comment: I'm asking how to get the paragraph text for a specific document.  I'm not sure how to do this.  I'm new to SQL and I'm not sure how to use the WHERE clause to get the paragraph text for a specific document.  Comment: I've added an answer below.  If you have any questions, let me know.  Answer: You can use a `JOIN` to get the paragraph text for a specific document:  \begin{code} SELECT Paragraphs.Paragraph_ID, Paragraphs.Paragraph_Text FROM Paragraphs JOIN Documents ON Documents.Document_ID = Paragraphs.Document_ID WHERE Documents.Document_Name = 'Welcome to NY' \end{code}  Comment: Thank you so much!  I was able to get the paragraph text for a specific document.  I'm not sure how to get the paragraph text for all documents.
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Customer reviews' ) \end{code}  Comment: You should use `JOIN` instead of `IN` in your query.  Comment: @GordonLinoff I'm not sure I understand. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case.  Comment: @GordonLinoff I'm not sure how to use JOIN in this case. I'm not sure how to use JOIN in this case. I'm not sure
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID IN ( SELECT Document_ID FROM Documents WHERE Document_Name = 'Customer reviews' ) \end{code}  Comment: You should use `JOIN` instead of `IN` in your query.  Comment: @Barmar I'm not sure how to do that. I've tried a few things but I'm not getting the results I want.  Comment: You should read the documentation on `JOIN`. It's a very basic SQL operation.  Comment: @Barmar I've read the documentation and I've tried a few things but I'm not getting the results I want. I've updated my question with the code I've tried.  Comment: You need to join the `Documents` table to the `Paragraphs` table, not the `Templates` table.  Comment: @Barmar I've updated my question with the code I've tried. I'm not getting the results I want.  Comment: You need to join the `Documents` table to the `Paragraphs` table, not the `Templates` table.  Comment: @Barmar I've updated my question with the code I've tried. I'm not getting the results I want.  Comment: You need to join the `Documents
SELECT Document_ID, COUNT(Paragraph_ID) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, COUNT(Paragraph_ID) AS Num_Paragraphs FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID \end{code}  Comment: I think you need to add a `GROUP BY` clause to your query.  Comment: @GordonLinoff I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause and it worked. Thank you!  Answer: You need to add a `GROUP BY` clause to your query:  \begin{code} SELECT Document_ID, COUNT(Paragraph_ID) AS Num_Paragraphs FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID \end{code}  Comment: Thank you! I added the GROUP BY clause and it worked.
SELECT Document_ID, Document_Name, COUNT(Paragraph_ID) AS Paragraph_Count FROM Documents INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Document_ID, Document_Name ORDER BY Document_ID
SELECT Document_ID, Document_Name, COUNT(Paragraph_ID) AS Paragraph_Count FROM Documents INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Document_ID, Document_Name ORDER BY Document_ID
SELECT Document_ID FROM Documents WHERE Document_ID IN ( SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) >= 2 ) \end{code}  Comment: I think you need to add a `GROUP BY` clause to your subquery.  Comment: @GordonLinoff I tried that, but it didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause, but it still doesn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the GROUP BY clause
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Document_ID) > 1); \end{code}  Comment: I think you need to add a `WHERE` clause to your subquery.  Something like `WHERE COUNT(Document_ID) > 1`  Comment: @TimBiegeleisen I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @TimBiegeleisen I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @TimBiegeleisen I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @TimBiegeleisen I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @TimBiegeleisen I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @TimBiegeleisen I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @TimBiegeleisen I tried that but it didn't work. I'm not sure
SELECT Document_ID, Document_Name, COUNT(Paragraph_ID) AS Paragraph_Count FROM Documents JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Document_ID, Document_Name ORDER BY Paragraph_Count DESC LIMIT 1;
SELECT Document_ID, Document_Name FROM Documents WHERE Document_ID IN ( SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) = ( SELECT COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) DESC LIMIT 1 ) ) \end{code}  Comment: I think you need to use `COUNT(DISTINCT Document_ID)` instead of `COUNT(*)` in your subquery.  Comment: @GordonLinoff I tried that, but it still returns the same result.  Comment: @GordonLinoff I just tried it again, and it worked. I must have made a mistake the first time. Thanks!  Answer: You can use `row_number()`:  \begin{code} select d.* from (select d.*,              row_number() over (partition by d.document_id order by count(*) desc) as seqnum       from documents d join            paragraphs p            on d.document_id = p.document_id       group by d.document_id      ) d where seqnum = 1; \end{code}  Comment: I tried this, but it returns the same result as my query. I'm not sure why.  Comment: @user1234.
SELECT Document_ID, COUNT(Paragraph_ID) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID ORDER BY Paragraph_Count ASC LIMIT 1
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) = (SELECT MIN(COUNT(*)) FROM Paragraphs GROUP BY Document_ID));
SELECT Document_ID, COUNT(Paragraph_ID) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) BETWEEN 1 AND 2 ORDER BY Document_ID \end{code}  Comment: I think you need to add a `WHERE` clause to your `SELECT` statement.  Comment: I'm not sure what you mean. I'm trying to get the document id with 1 to 2 paragraphs. I'm not sure how to do that.  Comment: You need to add a `WHERE` clause to your `SELECT` statement.  Something like `WHERE COUNT(Paragraph_ID) BETWEEN 1 AND 2`  Comment: I tried that, but it didn't work. I'm not sure how to do it.  Comment: I'm not sure what you mean by "it didn't work".  What did you try?  What was the result?  What did you expect?  Comment: I tried WHERE COUNT(Paragraph_ID) BETWEEN 1 AND 2, but it didn't work. I'm not sure how to do it.  Comment: You need to add the `WHERE` clause to the `SELECT` statement.  You can't just add it to the `GROUP BY` statement.
SELECT Document_ID FROM Documents WHERE Document_ID IN ( SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) BETWEEN 1 AND 2 ) \end{code}  Comment: I think you need to add a `WHERE` clause to your subquery.  Comment: @GordonLinoff I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the WHERE clause and it still didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the WHERE clause and it still didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the WHERE clause and it still didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the WHERE clause and it still didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the WHERE clause and it still didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the WHERE clause and it still didn't work. I'm not
SELECT Document_ID, Paragraph_Text FROM Paragraphs WHERE Paragraph_Text IN ('Brazil', 'Ireland') \end{code}  Comment: You should use `IN` instead of `OR` in your `WHERE` clause.  Comment: @GordonLinoff I have tried that but it still doesn't work. I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I have updated my question with the code I have tried.  Comment: @GordonLinoff I
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text LIKE '%Brazil%' AND Paragraph_Text LIKE '%Ireland%' \end{code}  Comment: You can use `LIKE` with multiple values, but you need to use `OR` instead of `AND`.  `WHERE Paragraph_Text LIKE '%Brazil%' OR Paragraph_Text LIKE '%Ireland%'`  Comment: @TimBiegeleisen I tried that but it didn't work. I get the error "ORA-00904: "PARAGRAPH_TEXT": invalid identifier"  Comment: @TimBiegeleisen I tried that but it didn't work. I get the error "ORA-00904: "PARAGRAPH_TEXT": invalid identifier"  Comment: @TimBiegeleisen I tried that but it didn't work. I get the error "ORA-00904: "PARAGRAPH_TEXT": invalid identifier"  Comment: @TimBiegeleisen I tried that but it didn't work. I get the error "ORA-00904: "PARAGRAPH_TEXT": invalid identifier"  Comment: @TimBiegeleisen I tried that but it didn't work. I get the error "ORA-00904: "PARAGRAPH_TEXT": invalid identifier"
SELECT COUNT(*) FROM teacher;
SELECT COUNT(*) FROM teacher;
SELECT Name FROM teacher ORDER BY Age ASC;
SELECT Name FROM teacher ORDER BY Age ASC;
SELECT teacher."Age", teacher."Hometown" FROM teacher;
SELECT teacher.Name, teacher.Age, teacher.Hometown FROM teacher;
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District';
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33;
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33;
SELECT hometown FROM teacher WHERE age = (SELECT MIN(age) FROM teacher);
SELECT hometown FROM teacher WHERE age = (SELECT MIN(age) FROM teacher);
SELECT DISTINCT hometown, COUNT(*) AS num_teachers FROM teacher GROUP BY hometown ORDER BY num_teachers DESC;
SELECT Hometown, COUNT(Teacher_ID) AS "Number of Teachers" FROM teacher GROUP BY Hometown;
SELECT hometown, COUNT(*) AS num_teachers FROM teacher GROUP BY hometown ORDER BY num_teachers DESC LIMIT 1;
SELECT hometown, COUNT(*) AS num_teachers FROM teacher GROUP BY hometown ORDER BY num_teachers DESC LIMIT 1;
SELECT DISTINCT hometown FROM teacher WHERE hometown IN (SELECT hometown FROM teacher GROUP BY hometown HAVING COUNT(*)>1);
SELECT DISTINCT hometown FROM teacher WHERE hometown IN (SELECT hometown FROM teacher GROUP BY hometown HAVING COUNT(hometown) > 1);
SELECT teacher.Name, course.Course FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID;
SELECT teacher.Name, course.Course FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID;
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID INNER JOIN course ON course_arrange.Course_ID = course.Course_ID ORDER BY teacher.Name ASC;
SELECT teacher.Name, course.Course FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID ORDER BY teacher.Name ASC;
SELECT teacher.name FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id WHERE course.course ='math';
SELECT teacher.Name FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID WHERE course.Course = "math";
SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS "Number of Courses" FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name ORDER BY "Number of Courses" DESC;
SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS "Number of Courses" FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name ORDER BY "Number of Courses" DESC;
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(*)>1);
SELECT DISTINCT teacher.Name FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name HAVING COUNT(teacher.Name) > 1;
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange);
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange);
SELECT COUNT(*) FROM visitor WHERE Age < 30;
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC;
SELECT AVG(Age) FROM visitor WHERE Level_of_membership <= 4;
SELECT v.Name, v.Level_of_membership, v.Age FROM visitor v WHERE v.Level_of_membership > 4 ORDER BY v.Age DESC;
SELECT "Museum_ID", "Name" FROM "museum" WHERE "Num_of_Staff" = (SELECT MAX("Num_of_Staff") FROM "museum");
SELECT AVG(`Num_of_Staff`) AS "Average Number of Staff" FROM `museum` WHERE `Open_Year` < '2009';
SELECT "Open_Year", "Num_of_Staff" FROM "museum" WHERE "Name" = "Plaza Museum";
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > '2010')
SELECT v.ID, v.Name, v.Age FROM visitor v JOIN visit v1 ON v.ID = v1.visitor_ID JOIN visit v2 ON v.ID = v2.visitor_ID WHERE v1.Museum_ID!= v2.Museum_ID GROUP BY v.ID HAVING COUNT(*) > 1;
SELECT v.ID, v.Name, v.Level_of_membership FROM visitor v JOIN visit v1 ON v.ID = v1.visitor_ID WHERE v1.Total_spent = (SELECT MAX(v2.Total_spent) FROM visit v2) ORDER BY v.ID;
SELECT v.ID, v.Name FROM visit v JOIN museum m ON v.Museum_ID = m.Museum_ID GROUP BY v.ID, v.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit);
SELECT v.Name, v.Age FROM visitor v JOIN visit v1 ON v.ID = v1.visitor_ID WHERE v1.Num_of_Ticket = (SELECT MAX(v2.Num_of_Ticket) FROM visit v2);
SELECT AVG(Num_of_Ticket) AS "Average Number of Tickets", MAX(Num_of_Ticket) AS "Maximum Number of Tickets" FROM visit;
SELECT SUM(visit.Total_spent) FROM visit JOIN visitor ON visit.visitor_ID = visitor.ID WHERE visitor.Level_of_membership = 1;
SELECT v.Name FROM visit v JOIN museum m ON v.Museum_ID = m.Museum_ID WHERE m.Open_Year < '2009' AND m.Open_Year > '2011' GROUP BY v.Name HAVING COUNT(*) = 2
SELECT COUNT(*) FROM visitor WHERE ID NOT IN (SELECT visitor_ID FROM visit WHERE Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > '2010'));
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008;
SELECT COUNT(*) FROM players;
SELECT COUNT(*) FROM players;
SELECT COUNT(*) FROM matches;
SELECT COUNT(*) FROM matches;
SELECT first_name, birth_date FROM players WHERE country_code = 'USA';
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(loser_age) AS "Average Loser Age",AVG(winner_age) AS "Average Winner Age" FROM matches;
SELECT AVG(loser_age) AS "Average Loser Age",AVG(winner_age) AS "Average Winner Age" FROM matches;
SELECT AVG(ranking) FROM rankings WHERE player_id IN (SELECT winner_id FROM matches);
SELECT AVG(ranking) FROM rankings WHERE player_id IN (SELECT winner_id FROM matches);
SELECT MAX(ranking) FROM rankings WHERE player_id IN (SELECT loser_id FROM matches);
SELECT MAX(ranking) FROM rankings WHERE player_id IN (SELECT loser_id FROM matches);
SELECT COUNT(DISTINCT country_code) FROM players;
SELECT COUNT(DISTINCT country_code) FROM players;
SELECT COUNT(DISTINCT loser_name) FROM matches;
SELECT COUNT(DISTINCT loser_name) FROM matches;
SELECT DISTINCT t.tourney_name FROM matches m JOIN tournaments t ON m.tourney_id = t.tourney_id WHERE m.match_num > 10;
SELECT DISTINCT t.tourney_name FROM matches m JOIN tournaments t ON m.tourney_id = t.tourney_id WHERE m.match_num > 10;
SELECT winner_name FROM matches WHERE year = 2013 AND winner_id IN (SELECT player_id FROM matches WHERE year = 2016);
SELECT DISTINCT p1.first_name, p1.last_name FROM players p1 JOIN matches m1 ON p1.player_id = m1.winner_id JOIN matches m2 ON p1.player_id = m2.winner_id WHERE m1.year = 2013 AND m2.year = 2016 ORDER BY p1.first_name, p1.last_name;
SELECT COUNT(*) FROM matches WHERE year IN (2013,2016);
SELECT COUNT(*) FROM matches WHERE year IN (2013,2016);
SELECT players.country_code, players.first_name FROM players JOIN matches ON players.player_id = matches.winner_id WHERE matches.tourney_name IN ('WTA Championships', 'Australian Open') AND matches.winner_seed = 1 GROUP BY players.country_code, players.first_name
SELECT p.first_name, p.country_code FROM players p JOIN matches m ON p.player_id = m.winner_id WHERE m.tourney_name IN ('WTA Championships', 'Australian Open') AND m.winner_seed = 1 GROUP BY p.first_name, p.country_code HAVING COUNT(*) = 2
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT player_id FROM players ORDER BY birth_date ASC LIMIT 1);
SELECT first_name, country_code FROM players WHERE birth_date = (SELECT MIN(birth_date) FROM players);
SELECT first_name, last_name FROM players ORDER BY birth_date ASC;
SELECT CONCAT(first_name,'', last_name) AS full_name, birth_date FROM players ORDER BY birth_date;
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC;
SELECT first_name ||'' || last_name AS full_name, hand, birth_date FROM players WHERE hand = 'L' ORDER BY birth_date;
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT player_id FROM rankings ORDER BY tours DESC LIMIT 1);
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT player_id FROM rankings ORDER BY tours DESC LIMIT 1);
SELECT year, COUNT(*) AS num_matches FROM matches GROUP BY year ORDER BY num_matches DESC LIMIT 1;
SELECT year, COUNT(*) AS num_matches FROM matches GROUP BY year ORDER BY num_matches DESC LIMIT 1;
SELECT winner_name, winner_rank_points FROM matches WHERE winner_seed = 1 ORDER BY winner_rank_points DESC LIMIT 1;
SELECT winner_name, SUM(ranking_points) AS total_rank_points FROM matches JOIN players ON matches.winner_id = players.player_id JOIN rankings ON players.player_id = rankings.player_id GROUP BY winner_name ORDER BY total_rank_points DESC LIMIT 1;
SELECT winner_name FROM matches WHERE winner_id IN (SELECT player_id FROM rankings WHERE ranking_points = (SELECT MAX(ranking_points) FROM rankings) AND ranking_date = (SELECT MAX(ranking_date) FROM rankings) AND player_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'Australian Open')) AND winner_id IN (SELECT player_id FROM matches WHERE tourney_name = 'Australian Open')
SELECT winner_name FROM matches WHERE winner_id IN (SELECT player_id FROM rankings WHERE ranking_points = (SELECT MAX(ranking_points) FROM rankings WHERE ranking_date = (SELECT MAX(ranking_date) FROM rankings WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'Australian Open')))) AND winner_id IN (SELECT player_id FROM matches WHERE tourney_name = 'Australian Open')
SELECT loser_name, winner_name FROM matches WHERE minutes = (SELECT MAX(minutes) FROM matches);
SELECT winner_name, loser_name FROM matches WHERE minutes = (SELECT MAX(minutes) FROM matches);
SELECT AVG(ranking) AS avg_rank, first_name FROM rankings JOIN players ON rankings.player_id = players.player_id GROUP BY first_name ORDER BY avg_rank DESC;
SELECT first_name, AVG(ranking) AS avg_ranking FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name;
SELECT players.first_name, SUM(rankings.ranking_points) AS total_ranking_points FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.first_name ORDER BY total_ranking_points DESC;
SELECT first_name, SUM(ranking_points) AS total_ranking_points FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name;
SELECT COUNT(*) AS num_players, country_code FROM players GROUP BY country_code ORDER BY num_players DESC;
SELECT COUNT(*) AS "Number of Players", country_code FROM players GROUP BY country_code ORDER BY "Number of Players" DESC;
SELECT country_code, COUNT(*) AS num_players FROM players GROUP BY country_code ORDER BY num_players DESC LIMIT 1;
SELECT country_code, COUNT(*) AS num_players FROM players GROUP BY country_code ORDER BY num_players DESC LIMIT 1;
SELECT DISTINCT country_code FROM players WHERE player_id IN (SELECT player_id FROM players GROUP BY player_id HAVING COUNT(player_id) > 50);
SELECT DISTINCT country_code FROM players WHERE player_id IN (SELECT player_id FROM players GROUP BY player_id HAVING COUNT(player_id) > 50);
SELECT ranking_date, COUNT(tours) AS total_tours FROM rankings GROUP BY ranking_date ORDER BY ranking_date ASC;
SELECT ranking_date, COUNT(*) AS total_tours FROM rankings GROUP BY ranking_date ORDER BY ranking_date ASC;
SELECT COUNT(*) AS "Number of matches", year FROM matches GROUP BY year ORDER BY year ASC;
SELECT year, COUNT(*) AS num_matches FROM matches GROUP BY year ORDER BY year ASC;
SELECT p.first_name, p.last_name, r.ranking FROM players p JOIN rankings r ON p.player_id = r.player_id WHERE p.player_id IN (SELECT winner_id FROM matches WHERE winner_age < 25 ORDER BY winner_age LIMIT 3) ORDER BY r.ranking DESC;
SELECT winner_name, winner_rank FROM matches JOIN players ON matches.winner_id = players.player_id WHERE winner_age < 25 ORDER BY winner_age LIMIT 3;
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE winner_hand = 'L' AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '2019-11-17' AND ranking = 1) AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '2019-11-17' AND ranking = 2) AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '2019-11-17' AND ranking = 3) AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '2019-11-17' AND ranking = 4) AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '2019-11-17' AND ranking = 5) AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '2019-11-17' AND ranking = 6) AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '2019-11-17' AND ranking = 7) AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '2019-11-17' AND ranking = 8) AND winner_id IN (SELECT player_id FROM rankings WHERE ranking_date = '
SELECT COUNT(*) FROM players WHERE hand = 'L' AND player_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships');
SELECT p.first_name, p.country_code, p.birth_date FROM players p JOIN matches m ON p.player_id = m.winner_id JOIN rankings r ON p.player_id = r.player_id WHERE r.ranking_points = (SELECT MAX(ranking_points) FROM rankings) ORDER BY p.first_name ASC;
SELECT first_name, country_code, birth_date FROM players WHERE player_id IN (SELECT winner_id FROM matches GROUP BY winner_id ORDER BY SUM(ranking_points) DESC LIMIT 1);
SELECT hand, COUNT(*) AS num_players FROM players GROUP BY hand;
SELECT hand, COUNT(*) AS num_players FROM players GROUP BY hand;
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured';
SELECT name, tonnage FROM ship ORDER BY name DESC;
SELECT name, date, result FROM battle;
SELECT MAX(killed) AS max_death, MIN(killed) AS min_death FROM death;
SELECT AVG(injured) FROM death;
SELECT * FROM death WHERE caused_by_ship_id IN (SELECT id FROM ship WHERE tonnage = 't');
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT battle.id, battle.name FROM battle JOIN ship ON battle.id = ship.lost_in_battle WHERE ship_type = 'Brig'
SELECT battle.id, battle.name FROM battle JOIN death ON death.caused_by_ship_id = battle.id GROUP BY battle.id, battle.name HAVING SUM(death.killed) > 10
SELECT ship.id, ship.name, SUM(death.injured) AS total_injuries FROM ship JOIN death ON ship.id = death.caused_by_ship_id GROUP BY ship.id, ship.name ORDER BY total_injuries DESC LIMIT 1;
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I';
SELECT DISTINCT result FROM battle;
SELECT COUNT(*) FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT name, date FROM battle WHERE id IN (SELECT lost_in_battle FROM ship WHERE name = 'Lettice' OR name = 'HMS Atalanta')
SELECT name, result, bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE location = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%';
SELECT Addresses.line_1, Addresses.line_2 FROM Addresses;
SELECT line_1, line_2 FROM Addresses;
SELECT COUNT(*) AS "Total Courses" FROM Courses;
SELECT COUNT(*) AS "Number of Courses" FROM Courses;
SELECT course_name, course_description, other_details FROM Courses WHERE course_id = 1;
SELECT c.course_name, c.course_description FROM Courses c JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id JOIN Student_Enrolment se ON sec.student_enrolment_id = se.student_enrolment_id JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id JOIN Departments d ON dp.department_id = d.department_id WHERE d.department_name = 'Mathematics' ORDER BY c.course_name;
SELECT Addresses.zip_postcode FROM Addresses WHERE Addresses.city = 'Port Chelsea';
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea';
SELECT department_name, department_id FROM Departments INNER JOIN Degree_Programs ON Departments.department_id = Degree_Programs.department_id GROUP BY department_name, department_id ORDER BY COUNT(Degree_Programs.department_id) DESC LIMIT 1;
SELECT department_name, department_id FROM Departments INNER JOIN Degree_Programs ON Departments.department_id = Degree_Programs.department_id GROUP BY department_name ORDER BY COUNT(Degree_Programs.department_id) DESC LIMIT 1;
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs;
SELECT COUNT(DISTINCT department_id) FROM Degree_Programs;
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs;
SELECT COUNT(DISTINCT degree_program_id) AS "Number of Degrees Offered" FROM Degree_Programs;
SELECT COUNT(*) AS "Number of Degrees" FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = "Engineering");
SELECT COUNT(*) AS "Number of Degrees" FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = "Engineering");
SELECT section_name, section_description FROM Sections;
SELECT section_name, section_description FROM Sections;
SELECT course_name, course_id FROM Courses WHERE course_id IN (SELECT course_id FROM Sections GROUP BY course_id HAVING COUNT(*) <= 2);
SELECT c.course_name, c.course_id FROM Courses c WHERE c.course_id NOT IN (     SELECT sc.course_id     FROM Sections sc     GROUP BY sc.course_id     HAVING COUNT(sc.course_id) >= 2 )
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT semester_name, semester_id FROM Semesters WHERE semester_id IN (SELECT semester_id FROM Student_Enrolment GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1);
SELECT      s.semester_name,     s.semester_id,     COUNT(*) AS num_students FROM     Student_Enrolment se         JOIN     Semesters s ON se.semester_id = s.semester_id GROUP BY s.semester_name, s.semester_id ORDER BY num_students DESC LIMIT 1;
SELECT department_description FROM Departments WHERE department_name LIKE '%the computer%';
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%';
SELECT Students.first_name, Students.middle_name, Students.last_name, Student_Enrolment.student_id FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id WHERE Degree_Programs.department_id = 1 GROUP BY Students.student_id HAVING COUNT(Degree_Programs.degree_program_id) = 2 ORDER BY Students.student_id ASC;
SELECT student_id, first_name, middle_name, last_name, degree_program_id, semester_id FROM Students JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id WHERE Student_Enrolment.degree_program_id IN (SELECT degree_program_id FROM Student_Enrolment GROUP BY degree_program_id HAVING COUNT(*) = 2) GROUP BY student_id, first_name, middle_name, last_name, degree_program_id, semester_id ORDER BY student_id ASC;
SELECT Students.first_name, Students.middle_name, Students.last_name FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id WHERE Degree_Programs.degree_summary_name = 'Bachelor'
SELECT Students.first_name, Students.middle_name, Students.last_name FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id WHERE Degree_Programs.degree_summary_name = 'Bachelors'
SELECT degree_summary_name, COUNT(*) AS num_students FROM Student_Enrolment JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id GROUP BY degree_summary_name ORDER BY num_students DESC LIMIT 1;
SELECT degree_summary_name, COUNT(student_id) AS num_students FROM Student_Enrolment JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id GROUP BY degree_summary_name ORDER BY num_students DESC LIMIT 1;
SELECT degree_program_id, degree_summary_name FROM Degree_Programs WHERE degree_program_id IN (     SELECT degree_program_id     FROM Student_Enrolment     GROUP BY degree_program_id     ORDER BY COUNT(*) DESC     LIMIT 1 )
SELECT degree_program_id, degree_summary_name FROM Student_Enrolment JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id GROUP BY degree_program_id ORDER BY COUNT(student_id) DESC LIMIT 1;
SELECT student_id, first_name, middle_name, last_name, COUNT(student_enrolment_id) AS num_enrolments, student_id FROM Student_Enrolment GROUP BY student_id ORDER BY num_enrolments DESC LIMIT 1;
SELECT Students.student_id, Students.first_name, Students.middle_name, Students.last_name, COUNT(Student_Enrolment.student_enrolment_id) AS num_enrollments FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id GROUP BY Students.student_id ORDER BY num_enrollments DESC LIMIT 1;
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment);
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment);
SELECT DISTINCT Courses.course_name FROM Courses INNER JOIN Student_Enrolment_Courses ON Courses.course_id = Student_Enrolment_Courses.course_id INNER JOIN Student_Enrolment ON Student_Enrolment_Courses.student_enrolment_id = Student_Enrolment.student_enrolment_id INNER JOIN Students ON Student_Enrolment.student_id = Students.student_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id INNER JOIN Departments ON Degree_Programs.department_id = Departments.department_id INNER JOIN Semesters ON Student_Enrolment.semester_id = Semesters.semester_id INNER JOIN Transcripts ON Student_Enrolment.student_enrolment_id = Transcripts.student_course_id INNER JOIN Transcript_Contents ON Transcripts.transcript_id = Transcript_Contents.transcript_id INNER JOIN Addresses ON Students.current_address_id = Addresses.address_id INNER JOIN Addresses ON Students.permanent_address_id = Addresses.address_id INNER JOIN Addresses ON Students.current_address_id = Addresses.address_id INNER JOIN Addresses ON Students.permanent_address_id = Addresses.address_id INNER JOIN Addresses ON Students.current_address_id = Addresses.address_id INNER JOIN Addresses ON Students.permanent_address
SELECT DISTINCT course_name FROM Courses INNER JOIN Student_Enrolment_Courses ON Courses.course_id = Student_Enrolment_Courses.course_id INNER JOIN Student_Enrolment ON Student_Enrolment.student_enrolment_id = Student_Enrolment_Courses.student_enrolment_id INNER JOIN Students ON Students.student_id = Student_Enrolment.student_id WHERE Students.student_id IS NOT NULL;
SELECT course_name, COUNT(student_course_id) AS num_enrollments FROM Student_Enrolment_Courses JOIN Courses ON Courses.course_id = Student_Enrolment_Courses.course_id GROUP BY course_name ORDER BY num_enrollments DESC LIMIT 1;
SELECT course_name, COUNT(student_course_id) AS num_students FROM Student_Enrolment_Courses JOIN Courses ON Student_Enrolment_Courses.course_id = Courses.course_id GROUP BY course_name ORDER BY num_students DESC LIMIT 1;
SELECT Students.last_name FROM Students WHERE Students.state_province_county = 'North Carolina' AND Students.student_id NOT IN ( SELECT Student_Enrolment.student_id FROM Student_Enrolment )
SELECT Students.last_name FROM Students WHERE Students.state_province_county = 'North Carolina' AND Students.student_id NOT IN ( SELECT Student_Enrolment.student_id FROM Student_Enrolment )
SELECT transcript_id, transcript_date FROM Transcripts WHERE transcript_id IN (SELECT student_course_id FROM Transcript_Contents GROUP BY student_course_id HAVING COUNT(*) > 1);
SELECT transcript_id, transcript_date FROM Transcripts WHERE transcript_id IN (SELECT student_course_id FROM Transcript_Contents GROUP BY student_course_id HAVING COUNT(*) >= 2);
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward';
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward';
SELECT first_name, middle_name, last_name FROM Students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM Students);
SELECT first_name, middle_name, last_name FROM Students WHERE date_first_registered = (SELECT MIN(date_first_registered) FROM Students);
SELECT Students.first_name, Students.middle_name, Students.last_name FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id INNER JOIN Departments ON Degree_Programs.department_id = Departments.department_id INNER JOIN Semesters ON Student_Enrolment.semester_id = Semesters.semester_id WHERE Departments.department_name = 'Computer Science' AND Semesters.semester_name = 'Fall 2019' AND Student_Enrolment.degree_program_id = 1 ORDER BY Students.student_id ASC LIMIT 1;
SELECT      first_name,     middle_name,     last_name FROM Students WHERE student_id IN (     SELECT          student_id     FROM Student_Enrolment     WHERE degree_program_id IN (         SELECT              degree_program_id         FROM Degree_Programs         WHERE department_id IN (             SELECT                  department_id             FROM Departments             WHERE department_name = 'Computer Science'         )     )     ORDER BY semester_id ASC     LIMIT 1 )
SELECT Students.first_name, Addresses.line_1, Addresses.line_2, Addresses.line_3, Addresses.city, Addresses.zip_postcode, Addresses.state_province_county, Addresses.country, Addresses.other_address_details FROM Students INNER JOIN Addresses ON Students.permanent_address_id = Addresses.address_id WHERE Students.current_address_id!= Students.permanent_address_id ORDER BY Students.first_name ASC;
SELECT first_name FROM Students WHERE permanent_address_id!= current_address_id;
SELECT Addresses.address_id, Addresses.line_1, Addresses.line_2, Addresses.line_3, Addresses.city, Addresses.zip_postcode, Addresses.state_province_county, Addresses.country, Addresses.other_address_details FROM Addresses INNER JOIN Students ON Addresses.address_id = Students.current_address_id GROUP BY Addresses.address_id ORDER BY COUNT(Students.student_id) DESC LIMIT 1;
SELECT Addresses.address_id, Addresses.line_1, Addresses.line_2 FROM Addresses JOIN Students ON Addresses.address_id = Students.current_address_id GROUP BY Addresses.address_id ORDER BY COUNT(Students.student_id) DESC LIMIT 1;
SELECT AVG(transcript_date) AS avg_transcript_date FROM Transcripts;
SELECT AVG(`transcript_date`) AS `average_transcript_date` FROM `Transcripts`;
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1;
SELECT MIN(transcript_date) AS earliest_transcript_date, other_details FROM Transcripts GROUP BY other_details
SELECT COUNT(*) AS "Number of Transcripts Released" FROM Transcripts;
SELECT COUNT(*) AS "Number of Transcripts" FROM Transcripts;
SELECT MAX(transcript_date) AS last_transcript_release_date FROM Transcripts;
SELECT MAX(transcript_date) AS LastTranscriptDate FROM Transcripts;
SELECT COUNT(*) AS "Number of times a course enrollment result can show in different transcripts", student_course_id FROM Transcript_Contents GROUP BY student_course_id HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM Transcript_Contents)
SELECT COUNT(*) AS "Max Number of Times a Course Shows Up in Different Transcripts", student_course_id FROM Transcript_Contents GROUP BY student_course_id ORDER BY Max Number of Times a Course Shows Up in Different Transcripts DESC LIMIT 1;
SELECT MIN(`transcript_date`), `transcript_id` FROM `Transcripts` GROUP BY `transcript_id`;
SELECT MIN(`transcript_id`), `transcript_date` FROM `Transcripts` WHERE `transcript_id` IN (SELECT `transcript_id` FROM `Transcript_Contents` GROUP BY `transcript_id` HAVING COUNT(*) = (SELECT MIN(COUNT(*)) FROM `Transcript_Contents` GROUP BY `transcript_id`));
SELECT DISTINCT semester_name FROM Semesters WHERE semester_id IN (     SELECT semester_id     FROM Student_Enrolment     WHERE degree_program_id IN (         SELECT degree_program_id         FROM Degree_Programs         WHERE department_id IN (             SELECT department_id             FROM Departments             WHERE department_name = 'Master'         )     )     AND semester_id IN (         SELECT semester_id         FROM Student_Enrolment         WHERE degree_program_id IN (             SELECT degree_program_id             FROM Degree_Programs             WHERE department_id IN (                 SELECT department_id                 FROM Departments                 WHERE department_name = 'Bachelor'             )         )     ) )
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Departments WHERE department_name = 'Masters' OR department_name = 'Bachelors')) GROUP BY semester_id HAVING COUNT(*) = 2;
SELECT COUNT(DISTINCT current_address_id) FROM Students;
SELECT DISTINCT Addresses.line_1, Addresses.line_2, Addresses.line_3, Addresses.city, Addresses.zip_postcode, Addresses.state_province_county, Addresses.country, Addresses.other_address_details FROM Addresses INNER JOIN Students ON Addresses.address_id = Students.current_address_id INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Student_Enrolment_Courses ON Student_Enrolment.student_enrolment_id = Student_Enrolment_Courses.student_enrolment_id INNER JOIN Courses ON Student_Enrolment_Courses.course_id = Courses.course_id INNER JOIN Transcripts ON Student_Enrolment_Courses.student_course_id = Transcripts.student_course_id INNER JOIN Transcript_Contents ON Transcripts.transcript_id = Transcript_Contents.transcript_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id INNER JOIN Departments ON Degree_Programs.department_id = Departments.department_id INNER JOIN Semesters ON Student_Enrolment.semester_id = Semesters.semester_id INNER JOIN Addresses ON Students.permanent_address_id = Addresses.address_id
SELECT * FROM Students ORDER BY last_name DESC, first_name DESC, middle_name DESC;
SELECT * FROM Students ORDER BY last_name DESC;
SELECT * FROM `Transcripts` t JOIN `Transcript_Contents` tc ON t.`transcript_id` = tc.`transcript_id` JOIN `Student_Enrolment_Courses` sec ON tc.`student_course_id` = sec.`student_course_id` JOIN `Student_Enrolment` se ON sec.`student_enrolment_id` = se.`student_enrolment_id` JOIN `Students` s ON se.`student_id` = s.`student_id` JOIN `Addresses` a ON s.`current_address_id` = a.`address_id` JOIN `Degree_Programs` dp ON se.`degree_program_id` = dp.`degree_program_id` JOIN `Departments` d ON dp.`department_id` = d.`department_id` JOIN `Courses` c ON sec.`course_id` = c.`course_id` JOIN `Semesters` sm ON se.`semester_id` = sm.`semester_id` WHERE a.`line_1` LIKE '123 Main St' AND d.`department_name` LIKE 'Computer Science' AND c.`course_name` LIKE 'Introduction to Programming' AND sm.`semester_name` LIKE 'Fall 2019' ORDER BY s.`last_name`, s.`first_name`, s.`middle
SELECT section_description FROM Sections WHERE section_name = 'h';
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582';
SELECT DISTINCT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582';
SELECT "Title" FROM "Cartoon" ORDER BY "Title" ASC;
SELECT "Title" FROM "Cartoon" ORDER BY "Title" ASC;
SELECT * FROM Cartoon WHERE Directed_by = "Ben Jones";
SELECT "Title" FROM "Cartoon" WHERE "Directed_by" = "Ben Jones";
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr";
SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr';
SELECT "Title", "Directed_by" FROM "Cartoon" ORDER BY "Original_air_date";
SELECT "Title", "Directed_by" FROM "Cartoon" ORDER BY "Original_air_date" ASC;
SELECT "Title" FROM "Cartoon" WHERE "Directed_by" = "Ben Jones" OR "Directed_by" = "Brandon Vietti";
SELECT "Title" FROM "Cartoon" WHERE "Directed_by" = "Ben Jones" OR "Directed_by" = "Brandon Vietti";
SELECT Country, COUNT(*) AS "Number of TV Channels" FROM TV_Channel GROUP BY Country ORDER BY "Number of TV Channels" DESC LIMIT 1;
SELECT Country, COUNT(*) AS "Number of TV Channels" FROM TV_Channel GROUP BY Country ORDER BY "Number of TV Channels" DESC
SELECT DISTINCT series_name, content FROM TV_Channel;
SELECT COUNT(DISTINCT series_name) AS "Number of Series", COUNT(DISTINCT content) AS "Number of Contents" FROM TV_Channel;
SELECT * FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT * FROM TV_Channel WHERE id = 'Sky Radio';
SELECT "Package_Option" FROM "TV_Channel" WHERE "series_name" = "Sky Radio";
SELECT DISTINCT Package_Option FROM TV_Channel WHERE series_name = 'Sky Radio';
SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English';
SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English';
SELECT Language, COUNT(Language) AS "Number of TV Channel" FROM TV_Channel GROUP BY Language ORDER BY "Number of TV Channel" ASC LIMIT 1;
SELECT Language, COUNT(Language) AS "Number of Channels" FROM TV_Channel GROUP BY Language ORDER BY "Number of Channels" ASC LIMIT 1;
SELECT "Language", COUNT("Language") FROM "TV_Channel" GROUP BY "Language";
SELECT "Language", COUNT("Language") AS "Number_of_TV_Channels" FROM "TV_Channel" GROUP BY "Language";
SELECT "TV_Channel"."series_name" FROM "TV_Channel" INNER JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Title" = "The Rise of the Blue Beetle!";
SELECT "series_name" FROM "TV_Channel" WHERE "id" IN (SELECT "Channel" FROM "Cartoon" WHERE "Title" = "The Rise of the Blue Beetle");
SELECT "Title" FROM "Cartoon" WHERE "Channel" IN (SELECT "id" FROM "TV_Channel" WHERE "series_name" = "Sky Radio");
SELECT "Title" FROM "Cartoon" WHERE "Channel" IN (SELECT "id" FROM "TV_Channel" WHERE "series_name" = "Sky Radio");
SELECT "TV_series"."Episode", "TV_series"."Rating" FROM "TV_series" ORDER BY "TV_series"."Rating" DESC;
SELECT * FROM TV_series ORDER BY Rating DESC;
SELECT "TV_series"."Episode", "TV_series"."Rating" FROM "TV_series" ORDER BY "TV_series"."Rating" DESC LIMIT 3;
SELECT "TV_series"."Episode", "TV_series"."Rating" FROM "TV_series" ORDER BY "TV_series"."Rating" DESC LIMIT 3;
SELECT MIN(share) AS min_share, MAX(share) AS max_share FROM TV_series;
SELECT MAX(share) AS "Max_Share", MIN(share) AS "Min_Share" FROM TV_series;
SELECT "Air_Date" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime";
SELECT "Air_Date" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime";
SELECT "TV_series"."Weekly_Rank" FROM "TV_series" WHERE "TV_series"."Episode" = "A Love of a Lifetime";
SELECT "TV_series"."Episode", "TV_series"."Weekly_Rank" FROM "TV_series" WHERE "TV_series"."Episode" = "A Love of a Lifetime";
SELECT "TV_Channel"."series_name" FROM "TV_Channel" INNER JOIN "TV_series" ON "TV_Channel"."id" = "TV_series"."Channel" WHERE "TV_series"."Episode" = "A Love of a Lifetime";
SELECT "series_name" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime";
SELECT "TV_series"."Episode" FROM "TV_series" INNER JOIN "TV_Channel" ON "TV_series"."Channel" = "TV_Channel"."id" WHERE "TV_Channel"."series_name" = "Sky Radio";
SELECT "Episode" FROM "TV_series" WHERE "series_name" = "Sky Radio";
SELECT "Directed_by", COUNT("Directed_by") FROM "Cartoon" GROUP BY "Directed_by" ORDER BY COUNT("Directed_by") DESC;
SELECT "Directed_by", COUNT("Directed_by") AS "Number_of_Cartoons" FROM "Cartoon" GROUP BY "Directed_by" ORDER BY "Number_of_Cartoons" DESC
SELECT "Production_code", "Channel" FROM "Cartoon" ORDER BY "Original_air_date" DESC LIMIT 1;
SELECT "Production_code", "Channel" FROM "Cartoon" ORDER BY "Original_air_date" DESC LIMIT 1;
SELECT "Package_Option", "series_name" FROM "TV_Channel" WHERE "Hight_definition_TV" = 'Yes'
SELECT DISTINCT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes';
SELECT DISTINCT Country FROM TV_Channel WHERE id IN (SELECT Channel FROM Cartoon WHERE Written_by = 'Todd Casey');
SELECT DISTINCT Country FROM TV_Channel WHERE id IN (SELECT Channel FROM Cartoon WHERE Written_by = 'Todd Casey');
SELECT DISTINCT Country FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Written_by = 'Todd Casey');
SELECT DISTINCT Country FROM TV_Channel WHERE Country NOT IN (SELECT Country FROM Cartoon WHERE Written_by = 'Todd Casey');
SELECT "TV_Channel"."series_name", "TV_Channel"."Country" FROM "TV_Channel" INNER JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Directed_by" = "Ben Jones" OR "Cartoon"."Directed_by" = "Michael Chang";
SELECT "TV_Channel"."series_name", "TV_Channel"."Country" FROM "TV_Channel" INNER JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Directed_by" = "Ben Jones" OR "Cartoon"."Directed_by" = "Michael Chang";
SELECT TV_Channel.Pixel_aspect_ratio_PAR, TV_Channel.Country FROM TV_Channel WHERE TV_Channel.Language!= 'English'
SELECT "TV_Channel".Pixel_aspect_ratio_PAR, "TV_Channel".Country FROM "TV_Channel" WHERE "TV_Channel".Language!= 'English'
SELECT "TV_Channel"."id" FROM "TV_Channel" WHERE "TV_Channel"."Country" IN (SELECT "TV_Channel"."Country" FROM "TV_Channel" GROUP BY "TV_Channel"."Country" HAVING COUNT("TV_Channel"."Country") > 2);
SELECT id FROM TV_Channel WHERE id IN (SELECT Channel FROM TV_series GROUP BY Channel HAVING COUNT(*) > 2);
SELECT "TV_Channel"."id" FROM "TV_Channel" LEFT JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Directed_by"!= 'Ben Jones' AND "Cartoon"."Channel" IS NULL;
SELECT "TV_Channel"."id" FROM "TV_Channel" LEFT JOIN "Cartoon" ON "TV_Channel"."id" = "Cartoon"."Channel" WHERE "Cartoon"."Directed_by"!= 'Ben Jones' AND "Cartoon"."Channel" IS NULL;
SELECT DISTINCT TV_Channel.Package_Option FROM TV_Channel LEFT JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Directed_by!= 'Ben Jones'
SELECT DISTINCT Package_Option FROM TV_Channel WHERE id NOT IN (     SELECT Channel     FROM Cartoon     WHERE Directed_by = 'Ben Jones' )
SELECT COUNT(*) FROM poker_player;
SELECT COUNT(*) FROM poker_player;
SELECT "Earnings" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT "Earnings" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT "poker_player"."Final_Table_Made", "poker_player"."Best_Finish" FROM "poker_player" ORDER BY "poker_player"."Final_Table_Made" DESC, "poker_player"."Best_Finish" DESC;
SELECT "poker_player"."Final_Table_Made", "poker_player"."Best_Finish" FROM "poker_player"
SELECT AVG("Earnings") FROM "poker_player";
SELECT AVG(Earnings) FROM poker_player;
SELECT "Money_Rank" FROM "poker_player" WHERE "Earnings" = (SELECT MAX("Earnings") FROM "poker_player");
SELECT "Money_Rank" FROM "poker_player" WHERE "Earnings" = (SELECT MAX("Earnings") FROM "poker_player");
SELECT MAX("Final_Table_Made") FROM "poker_player" WHERE "Earnings" < 200000;
SELECT MAX("Final_Table_Made") FROM "poker_player" WHERE "Earnings" < 200000;
SELECT Name FROM people WHERE Nationality = 'USA' AND Height > 6.0;
SELECT Name FROM poker_player;
SELECT Name FROM poker_player WHERE Earnings > 300000;
SELECT Name FROM poker_player WHERE Earnings > 300000;
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC;
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT "Birth_Date" FROM "people" WHERE "People_ID" IN (SELECT "People_ID" FROM "poker_player" WHERE "Earnings" = (SELECT MIN("Earnings") FROM "poker_player"));
SELECT "Birth_Date" FROM "people" WHERE "People_ID" IN (SELECT "People_ID" FROM "poker_player" WHERE "Earnings" = (SELECT MIN("Earnings") FROM "poker_player"));
SELECT "Name", "Height", "Money_Rank" FROM "poker_player" INNER JOIN "people" ON "poker_player"."People_ID" = "people"."People_ID" WHERE "Height" = (SELECT MAX("Height") FROM "people");
SELECT "Money_Rank" FROM "poker_player" WHERE "Height" = (SELECT MAX("Height") FROM "people");
SELECT AVG("Earnings") FROM "poker_player" WHERE "Height" > 200;
SELECT AVG("Earnings") FROM "poker_player" WHERE "Height" > 200;
SELECT Name FROM poker_player ORDER BY Earnings DESC;
SELECT Name FROM poker_player ORDER BY Earnings DESC;
SELECT Nationality, COUNT(*) AS "Number of People" FROM people GROUP BY Nationality;
SELECT Nationality, COUNT(*) AS "Number of People" FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) AS Count FROM people GROUP BY Nationality ORDER BY Count DESC
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT DISTINCT Nationality FROM people WHERE Nationality IN (SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) > 1);
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)>1;
SELECT Name, Birth_Date FROM people ORDER BY Name ASC;
SELECT Name, Birth_Date FROM people ORDER BY Name ASC;
SELECT Name FROM people WHERE Nationality!= "Russia";
SELECT Name FROM people WHERE Nationality!= 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player);
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player);
SELECT DISTINCT Nationality FROM people;
SELECT COUNT(DISTINCT "Nationality") FROM "people";
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE;
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC;
SELECT vote_id, phone_number, state FROM VOTES;
SELECT MIN(area_code), MAX(area_code) FROM AREA_CODE_STATE;
SELECT MAX(created) FROM VOTES WHERE state = 'CA';
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name!= 'Jessie Alloway';
SELECT DISTINCT state, created FROM VOTES;
SELECT c.contestant_number, c.contestant_name FROM CONTESTANTS c JOIN VOTES v ON c.contestant_number = v.contestant_number GROUP BY c.contestant_number HAVING COUNT(v.vote_id) >= 2
SELECT c.contestant_number, c.contestant_name FROM CONTESTANTS c JOIN VOTES v ON c.contestant_number = v.contestant_number GROUP BY c.contestant_number ORDER BY COUNT(v.vote_id) ASC LIMIT 1;
SELECT COUNT(*) FROM VOTES WHERE state IN ('NY', 'CA');
SELECT COUNT(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES);
SELECT area_code FROM AREA_CODE_STATE WHERE state = (SELECT state FROM VOTES GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1);
SELECT created, state, phone_number FROM votes WHERE contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = 'Tabatha Gehling');
SELECT DISTINCT area_code FROM VOTES WHERE contestant_number IN (SELECT contestant_number 							FROM VOTES 							WHERE contestant_name = 'Tabatha Gehling') 	AND contestant_number IN (SELECT contestant_number 							FROM VOTES 							WHERE contestant_name = 'Kelly Clauss') ORDER BY area_code;
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%';
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT Name FROM country WHERE INDEPYEAR > 1950;
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic';
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic';
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean';
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Caribbean';
SELECT Continent FROM country WHERE Code = 'AI';
SELECT Continent FROM country WHERE Code = (SELECT CountryCode FROM city WHERE Name = 'Anguilla');
SELECT DISTINCT Region FROM city WHERE Name = 'Kabul';
SELECT Name FROM city WHERE Name = 'Kabul' AND District = 'Kabul' AND CountryCode = 'AFG' AND Population = 1780000;
SELECT Language, Percentage FROM countrylanguage WHERE CountryCode = 'ABW' ORDER BY Percentage DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE CountryCode = 'ABW');
SELECT   `country`.`Name` AS `Country` ,  `country`.`Population` AS `Population` ,  `country`.`LifeExpectancy` AS `LifeExpectancy` FROM `country` WHERE `country`.`Code` = 'BRA'
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil';
SELECT Region, Population FROM country WHERE Name = 'Angola';
SELECT Region, Population FROM country WHERE Name = 'Angola';
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Central Africa';
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Central Africa';
SELECT Name FROM country WHERE Continent = 'Asia' AND LifeExpectancy = (SELECT MIN(LifeExpectancy) FROM country WHERE Continent = 'Asia');
SELECT Name FROM country WHERE Continent = 'Asia' AND LifeExpectancy = (SELECT MIN(LifeExpectancy) FROM country WHERE Continent = 'Asia');
SELECT SUM(Population) AS TotalPopulation, MAX(GNP) AS MaxGNP FROM country WHERE Continent = 'Asia';
SELECT SUM(Population) AS TotalPopulation, MAX(GNP) AS MaxGNP FROM country WHERE Continent = 'Asia'
SELECT AVG(life_expectancy) FROM country WHERE continent = 'Africa' AND government_form = 'Republic';
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT SUM(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe');
SELECT SUM(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe');
SELECT SUM(Population) FROM city WHERE District = 'Gelderland';
SELECT SUM(Population) FROM city WHERE District = 'Gelderland';
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US Territory';
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code2 = 'US';
SELECT COUNT(DISTINCT Language) FROM countrylanguage;
SELECT COUNT(DISTINCT Language) FROM countrylanguage;
SELECT DISTINCT Continent, GovernmentForm FROM country WHERE Continent = 'Africa';
SELECT DISTINCT Continent, GovernmentForm FROM country WHERE Continent = 'Africa';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T';
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(CountryCode) DESC LIMIT 1);
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(CountryCode) DESC LIMIT 1);
SELECT Continent, COUNT(*) AS "Number of Languages" FROM countrylanguage GROUP BY Continent ORDER BY "Number of Languages" DESC
SELECT Continent, COUNT(*) AS NumberOfLanguages FROM countrylanguage GROUP BY Continent ORDER BY NumberOfLanguages DESC LIMIT 1;
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English' AND Language = 'Dutch';
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English' AND Language = 'Dutch';
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French' AND IsOfficial = 'T');
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French' AND IsOfficial = 'T');
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French' AND IsOfficial = 'T');
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French' AND IsOfficial = 'T');
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = 'Chinese';
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Chinese' AND IsOfficial = 'T';
SELECT DISTINCT Region FROM country WHERE Language = 'English' OR Language = 'Dutch';
SELECT DISTINCT Region FROM country WHERE Language = 'Dutch' OR Language = 'English';
SELECT DISTINCT country.Name FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' OR countrylanguage.Language = 'Dutch'
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language IN ('English','Dutch') AND IsOfficial='T');
SELECT Language, Percentage FROM countrylanguage WHERE Continent = 'Asia' ORDER BY Percentage DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY COUNT(Language) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'Republic') GROUP BY Language HAVING COUNT(Language) = 1;
SELECT DISTINCT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'Republic') AND CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'Republic') GROUP BY CountryCode HAVING COUNT(CountryCode) > 1);
SELECT Name, Population FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Language = 'English') ORDER BY Population DESC LIMIT 1;
SELECT c.Name, c.Population, cl.Language FROM city c JOIN countrylanguage cl ON c.ID = cl.CountryCode WHERE cl.Language = 'English' ORDER BY c.Population DESC LIMIT 1;
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1;
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' AND SurfaceArea = (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Asia');
SELECT AVG(life_expectancy) FROM country WHERE language!= 'English' AND is_official = 'F';
SELECT AVG(LifeExpectancy) FROM country WHERE Language!= 'English' AND IsOfficial = 'F';
SELECT SUM(Population) FROM countrylanguage WHERE Language!= 'English' AND IsOfficial = 'T';
SELECT COUNT(*) FROM countrylanguage WHERE Language!= 'English' AND Percentage > 0
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE HeadOfState = 'Beatrix') AND IsOfficial = 'T';
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE HeadOfState = 'Beatrix') AND IsOfficial = 'T';
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930);
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930) AND IsOfficial = 'T';
SELECT Name FROM country WHERE Continent = 'Europe' AND SurfaceArea < (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe');
SELECT Name FROM country WHERE Continent = 'Europe' ORDER BY SurfaceArea DESC LIMIT 1; SELECT Name FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = 'Europe' ORDER BY SurfaceArea DESC LIMIT 1) ORDER BY SurfaceArea DESC;
SELECT DISTINCT c.Name FROM country c, country a WHERE c.Continent = 'Africa' AND a.Continent = 'Asia' AND c.Population < a.Population ORDER BY c.Name;
SELECT DISTINCT c.Name AS 'Country Name' FROM country c INNER JOIN countrylanguage cl ON c.Code = cl.CountryCode INNER JOIN country ca ON cl.CountryCode = ca.Code WHERE c.Continent = 'Asia' AND ca.Population > c.Population ORDER BY c.Name ASC;
SELECT DISTINCT c.Name AS 'Country Name' FROM country c INNER JOIN countrylanguage cl ON c.Code = cl.CountryCode INNER JOIN country a ON a.Continent = 'Africa' WHERE c.Continent = 'Asia' AND c.Population > a.Population ORDER BY c.Population DESC;
SELECT DISTINCT c.Name AS 'Country' FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode JOIN country ca ON ca.Code = cl.CountryCode WHERE c.Continent = 'Asia' AND cl.Percentage > (SELECT AVG(Percentage) FROM countrylanguage WHERE CountryCode = ca.Code) ORDER BY c.Name;
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language!= 'English' AND IsOfficial = 'T';
SELECT Code FROM countrylanguage WHERE Language!= 'English' AND IsOfficial = 'T';
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language!= 'English';
SELECT CountryCode FROM countrylanguage WHERE Language!= 'English' AND IsOfficial = 'T';
SELECT Code FROM country WHERE Language!= 'English' AND GovernmentForm!= 'Republic';
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm!= 'Republic';
SELECT city.Name, country.Name FROM city INNER JOIN country ON city.CountryCode = country.Code WHERE country.Continent = 'Europe' AND countrylanguage.IsOfficial = 'F' AND countrylanguage.Language = 'English' \end{code}  Comment: I'm not sure what you're asking.  Are you asking how to write the query?  Or are you asking how to write the query in a way that will be efficient?  Comment: I'm asking how to write the query in a way that will be efficient.  Comment: I'm not sure what you mean by "efficient".  Do you mean "fast"?  Or do you mean "correct"?  Or do you mean "short"?  Or do you mean "easy to read"?  Or do you mean something else?  Comment: I mean fast. I'm not sure if the query I wrote is the most efficient way to do it.  Comment: I'm not sure what you mean by "fast".  Do you mean "fast to write"?  Or do you mean "fast to execute"?  Or do you mean "fast to understand"?  Or do you mean something else?  Comment: I mean fast to execute.  Comment: I'm not sure what you mean by "fast
SELECT Name FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Europe') AND Language!= 'English' \end{code}  Comment: I'm not sure what you're asking.  Are you asking how to write a query to get the names of cities in Europe for which English is not the official language?  Comment: Yes, I'm asking how to write a query to get the names of cities in Europe for which English is not the official language.  Comment: I've added the query to the question.  Comment: I've added the query to the question.  Answer: \begin{code} SELECT Name FROM city WHERE CountryCode IN (SELECT Code                       FROM country                       WHERE Continent = 'Europe')   AND Language!= 'English' \end{code}  Comment: I've added the query to the question.  Answer: \begin{code} SELECT Name FROM city WHERE CountryCode IN (SELECT Code                       FROM country                       WHERE Continent = 'Europe')   AND Language!= 'English' \end{code}  Comment: I've added the query to the question.  Answer: \begin{code} SELECT Name FROM city WHERE CountryCode IN (SELECT Code                       FROM country                       WHERE Continent
SELECT DISTINCT city.Name FROM city INNER JOIN country ON city.CountryCode = country.Code INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Asia' AND countrylanguage.IsOfficial = 'T' AND countrylanguage.Language = 'Chinese' \end{code}  Comment: I think you need to add a `WHERE` clause to your query.  Something like `WHERE country.Continent = 'Asia' AND countrylanguage.IsOfficial = 'T' AND countrylanguage.Language = 'Chinese'`  Comment: @TimBiegeleisen I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @TimBiegeleisen I added the WHERE clause and it still doesn't work.  Comment: @TimBiegeleisen I added the WHERE clause and it still doesn't work.  Comment: @TimBiegeleisen I added the WHERE clause and it still doesn't work.  Comment: @TimBiegeleisen I added the WHERE clause and it still doesn't work.  Comment: @TimBiegeleisen I added the WHERE clause and it still doesn't work.  Comment: @TimBiegeleisen I added the WHERE clause
SELECT DISTINCT Name FROM city WHERE Continent = 'Asia' AND CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'Chinese' AND IsOfficial = 'T');
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country);
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country);
SELECT country.Name, country.HeadOfState, country.Population, country.SurfaceArea FROM country WHERE country.SurfaceArea = (SELECT MAX(country.SurfaceArea) FROM country)
SELECT Name, Population, HeadOfState FROM country WHERE Code = (SELECT Code FROM country WHERE SurfaceArea = (SELECT MAX(SurfaceArea) FROM country));
SELECT Name, COUNT(Language) AS NumberOfLanguages FROM countrylanguage WHERE Percentage > 0 GROUP BY CountryCode HAVING COUNT(Language) > 2 ORDER BY NumberOfLanguages DESC \end{code}  Comment: I think you need to add a `GROUP BY` clause to your query.  Comment: @GordonLinoff I tried that but it didn't work. I'm not sure what I'm doing wrong.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @GordonLinoff I added the query I'm using to the question.  Comment: @Gordon
SELECT Name, COUNT(*) AS NumberOfLanguages FROM countrylanguage GROUP BY Name HAVING COUNT(*)>2;
SELECT District, COUNT(*) AS NumCities FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District ORDER BY NumCities DESC;
SELECT   District,   COUNT(*) AS num_cities,   AVG(Population) AS avg_pop FROM city GROUP BY District HAVING AVG(Population) < Population ORDER BY num_cities DESC;
SELECT GovernmentForm, SUM(Population) AS TotalPopulation FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT DISTINCT GovernmentForm, SUM(Population) AS TotalPopulation FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm ORDER BY TotalPopulation DESC;
SELECT Continent, AVG(LifeExpectancy), SUM(Population) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent;
SELECT Continent, SUM(Population) AS TotalPopulation, AVG(LifeExpectancy) AS AverageLifeExpectancy FROM country WHERE Continent IN (SELECT DISTINCT Continent FROM country WHERE LifeExpectancy < 72) GROUP BY Continent
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5;
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5;
SELECT Name FROM country WHERE Population IN (SELECT MAX(Population) FROM country GROUP BY CountryCode ORDER BY Population DESC LIMIT 3);
SELECT Name FROM country ORDER BY Population DESC LIMIT 3;
SELECT Name FROM country WHERE Population IN (SELECT MIN(Population) FROM country GROUP BY CountryCode LIMIT 3);
SELECT Name FROM country WHERE Population IN (SELECT MIN(Population) FROM country GROUP BY CountryCode LIMIT 3);
SELECT COUNT(*) FROM country WHERE Continent = 'Asia';
SELECT COUNT(*) FROM country WHERE Continent = 'Asia';
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000;
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000;
SELECT SUM(Population) AS TotalPopulation, AVG(SurfaceArea) AS AverageArea FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000;
SELECT * FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT Language, COUNT(CountryCode) AS NumberOfCountries FROM countrylanguage GROUP BY Language ORDER BY NumberOfCountries DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(CountryCode) DESC LIMIT 1;
SELECT c.Name, cl.Language, cl.Percentage FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode GROUP BY c.Name ORDER BY cl.Percentage DESC
SELECT country.Code, countrylanguage.Language, countrylanguage.Percentage FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode ORDER BY countrylanguage.Percentage DESC \end{code}  Comment: I'm not sure what you're asking.  Are you asking how to get the top 5 countries by population?  Or are you asking how to get the top 5 languages by percentage?  Comment: I'm asking how to get the top 5 languages by percentage.  Comment: I've added the answer to the question.  Answer: \begin{code} SELECT country.Code, countrylanguage.Language, countrylanguage.Percentage FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode ORDER BY countrylanguage.Percentage DESC \end{code}  Comment: I'm not sure why this was downvoted.  It's a valid answer to the question.  If it's not the answer the OP is looking for, then the question needs to be clarified.  Comment: I'm not sure why it was downvoted either. I'm new to this site and I'm not sure what the etiquette is. I'm not sure if I should have asked the question in the comments or if I should have edited
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish');
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish');
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish');
SELECT Code FROM countrylanguage WHERE Language = 'Spanish' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish');
SELECT COUNT(*) FROM conductor;
SELECT COUNT(*) FROM conductor;
SELECT Name FROM conductor ORDER BY Age ASC;
SELECT Name FROM conductor ORDER BY Age;
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA";
SELECT Record_Company, Year_of_Founded FROM orchestra ORDER BY Year_of_Founded DESC;
SELECT Record_Company, Year_of_Founded FROM orchestra ORDER BY Year_of_Founded DESC;
SELECT AVG(Attendance) FROM show;
SELECT AVG(Attendance) FROM show;
SELECT MAX(share) FROM performance WHERE type!= "Live final"; SELECT MIN(share) FROM performance WHERE type!= "Live final";
SELECT MAX(share) AS "Maximum_Share", MIN(share) AS "Minimum_Share" FROM performance WHERE type!= "Live final";
SELECT DISTINCT "Nationality" FROM "conductor";
SELECT DISTINCT "Nationality" FROM "conductor";
SELECT Name, Year_of_Work FROM conductor ORDER BY Year_of_Work DESC;
SELECT Name, Year_of_Work FROM conductor ORDER BY Year_of_Work DESC;
SELECT Name FROM conductor WHERE Conductor_ID = (SELECT Conductor_ID FROM orchestra ORDER BY Year_of_Work DESC LIMIT 1);
SELECT Name, MAX(Year_of_Work) FROM conductor;
SELECT conductor.Name, orchestra.Orchestra FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID;
SELECT conductor.Name, orchestra.Orchestra FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID;
SELECT DISTINCT conductor.Name FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Name HAVING COUNT(Conductor_ID) > 1
SELECT DISTINCT conductor.Name FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Name HAVING COUNT(conductor.Name) > 1
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1);
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1);
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra WHERE Year_of_Founded > 2008);
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra WHERE Year_of_Founded > 2008)
SELECT Record_Company, COUNT(*) AS "Number_of_Orchestras" FROM orchestra GROUP BY Record_Company;
SELECT Record_Company, COUNT(*) AS "Number_of_Orchestras" FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format, COUNT(Major_Record_Format) AS Count FROM orchestra GROUP BY Major_Record_Format ORDER BY Count ASC;
SELECT Major_Record_Format, COUNT(*) AS Count FROM orchestra GROUP BY Major_Record_Format ORDER BY Count DESC
SELECT Record_Company, COUNT(*) AS "Number_of_Orchestras" FROM orchestra GROUP BY Record_Company ORDER BY "Number_of_Orchestras" DESC LIMIT 1;
SELECT Record_Company, COUNT(*) AS "Number_of_Orchestras" FROM orchestra GROUP BY Record_Company ORDER BY "Number_of_Orchestras" DESC LIMIT 1;
SELECT Name FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance);
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance);
SELECT DISTINCT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 AND Year_of_Founded > 2003;
SELECT DISTINCT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT DISTINCT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format IN ('CD', 'DVD');
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD';
SELECT DISTINCT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (     SELECT Orchestra_ID     FROM performance     GROUP BY Orchestra_ID     HAVING COUNT(Orchestra_ID) > 1 )
SELECT DISTINCT "Year_of_Founded" FROM "orchestra" WHERE "Orchestra_ID" IN (SELECT "Orchestra_ID" FROM "performance" GROUP BY "Orchestra_ID" HAVING COUNT("Performance_ID") > 1);
SELECT COUNT(*) FROM Highschooler;
SELECT COUNT(*) FROM Highschooler;
SELECT name, grade FROM Highschooler;
SELECT name, grade FROM Highschooler;
SELECT grade FROM Highschooler;
SELECT name, grade FROM Highschooler;
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT name FROM Highschooler WHERE grade = 10;
SELECT name FROM Highschooler WHERE grade = 10;
SELECT ID FROM Highschooler WHERE name = 'Kyle';
SELECT ID FROM Highschooler WHERE name = 'Kyle';
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10;
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10;
SELECT grade, count(*) as num_students FROM Highschooler GROUP BY grade;
SELECT grade, count(*) FROM Highschooler GROUP BY grade;
SELECT grade, count(*) as num_students FROM Highschooler GROUP BY grade ORDER BY num_students DESC LIMIT 1;
SELECT grade, count(*) as num_students FROM Highschooler GROUP BY grade ORDER BY num_students DESC LIMIT 1;
SELECT grade, count(*) as num_students FROM Highschooler GROUP BY grade HAVING count(*) >= 4 ORDER BY grade;
SELECT DISTINCT grade FROM Highschooler WHERE grade IN (SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4);
SELECT ID, count(*) FROM Friend GROUP BY ID;
SELECT student_id, count(*) as num_friends FROM Friend GROUP BY student_id;
SELECT name, count(*) as num_friends FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name ORDER BY num_friends DESC;
SELECT name, count(*) as num_friends FROM Highschooler LEFT JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name ORDER BY num_friends DESC;
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1);
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3);
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id IN (SELECT ID FROM Highschooler WHERE name = 'Kyle'));
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id IN (SELECT ID FROM Highschooler WHERE name = 'Kyle'));
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle');
SELECT COUNT(*) FROM Friend WHERE student_id = 1;
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend);
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend);
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend);
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend);
SELECT DISTINCT student_id FROM Likes WHERE student_id IN (SELECT friend_id FROM Friend);
SELECT DISTINCT student_id FROM Likes INTERSECT SELECT DISTINCT student_id FROM Friend ORDER BY student_id;
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) AND ID IN (SELECT student_id FROM Likes);
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) AND ID IN (SELECT student_id FROM Likes)
SELECT student_id, count(*) as likes FROM Likes GROUP BY student_id ORDER BY likes DESC;
SELECT student_id, count(*) as likes FROM Likes GROUP BY student_id ORDER BY likes DESC;
SELECT name, count(*) as likes FROM Likes JOIN Highschooler ON Likes.liked_id = Highschooler.ID GROUP BY name ORDER BY likes DESC;
SELECT name, count(*) as likes FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name ORDER BY likes DESC;
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1);
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1);
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2);
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2);
SELECT name FROM Highschooler WHERE grade > 5 AND (SELECT COUNT(*) FROM Friend WHERE student_id = Highschooler.ID) >= 2;
SELECT name FROM Highschooler WHERE grade > 5 AND (SELECT COUNT(*) FROM Friend WHERE student_id = Highschooler.ID) >= 2;
SELECT COUNT(*) FROM Likes WHERE student_id = 1;
SELECT COUNT(*) FROM Likes WHERE student_id IN (SELECT ID FROM Highschooler WHERE name = 'Kyle');
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend);
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend);
SELECT grade FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend) ORDER BY grade ASC LIMIT 1;
SELECT grade FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend) ORDER BY grade ASC LIMIT 1;
SELECT DISTINCT state FROM Owners INTERSECT SELECT DISTINCT state FROM Professionals
SELECT DISTINCT state FROM Owners INTERSECT SELECT DISTINCT state FROM Professionals
SELECT AVG(Dogs.age) FROM Dogs JOIN Treatments ON Dogs.dog_id = Treatments.dog_id;
SELECT AVG(Dogs.age) FROM Dogs JOIN Treatments ON Dogs.dog_id = Treatments.dog_id;
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = 'IN' OR (SELECT COUNT(treatment_id) FROM Treatments WHERE professional_id = Professionals.professional_id) > 2;
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = 'IN' OR (SELECT COUNT(*) FROM Treatments WHERE professional_id = Professionals.professional_id) > 2
SELECT name FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments WHERE cost_of_treatment > 1000)
SELECT d.name FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id JOIN Charges c ON t.treatment_type_code = c.charge_type WHERE c.charge_amount < 1000 GROUP BY d.name
SELECT DISTINCT first_name FROM Professionals UNION SELECT DISTINCT first_name FROM Owners EXCEPT SELECT DISTINCT name FROM Dogs;
SELECT DISTINCT first_name FROM Professionals WHERE first_name NOT IN (SELECT name FROM Dogs) UNION SELECT DISTINCT first_name FROM Owners WHERE first_name NOT IN (SELECT name FROM Dogs)
SELECT p.professional_id, p.role_code, p.email_address FROM Professionals p LEFT JOIN Treatments t ON p.professional_id = t.professional_id WHERE t.treatment_id IS NULL
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )
SELECT o.owner_id, o.first_name, o.last_name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id GROUP BY o.owner_id ORDER BY COUNT(d.owner_id) DESC LIMIT 1;
SELECT owner_id, first_name, last_name FROM Owners WHERE owner_id IN ( SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT p.professional_id, p.role_code, p.first_name FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id GROUP BY p.professional_id HAVING COUNT(t.treatment_id) >= 2 ORDER BY p.professional_id
SELECT professional_id, role, first_name FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(*) >= 2 )
SELECT breed_name FROM Breeds WHERE breed_code IN (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1);
SELECT breed_name FROM Breeds WHERE breed_code IN (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1);
SELECT o.owner_id, o.last_name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Treatments t ON d.dog_id = t.dog_id GROUP BY o.owner_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT o.owner_id, o.last_name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Treatments t ON d.dog_id = t.dog_id GROUP BY o.owner_id, o.last_name ORDER BY SUM(t.cost_of_treatment) DESC LIMIT 1;
SELECT treatment_type_description, SUM(cost_of_treatment) AS total_cost FROM Treatments GROUP BY treatment_type_description ORDER BY total_cost ASC LIMIT 1;
SELECT treatment_type_description FROM Treatment_Types WHERE treatment_type_code = (SELECT treatment_type_code FROM Treatments GROUP BY treatment_type_code ORDER BY cost_of_treatment ASC LIMIT 1)
SELECT o.owner_id, o.zip_code, SUM(c.charge_amount) AS total_charges FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Charges c ON d.dog_id = c.charge_id GROUP BY o.owner_id, o.zip_code ORDER BY total_charges DESC LIMIT 1;
SELECT owner_id, zip_code FROM Owners WHERE owner_id IN ( SELECT owner_id FROM Dogs WHERE dog_id IN ( SELECT dog_id FROM Treatments WHERE treatment_id IN ( SELECT treatment_id FROM Charges WHERE charge_id IN ( SELECT charge_id FROM Charges WHERE charge_type = 'Treatment' ) ) ) ) GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(treatment_type_code) >= 2 )
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(treatment_type_code) >= 2 )
SELECT first_name, last_name FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments WHERE cost_of_treatment < ( SELECT AVG(cost_of_treatment) FROM Treatments ) )
SELECT first_name, last_name FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments WHERE cost_of_treatment < ( SELECT AVG(cost_of_treatment) FROM Treatments ) )
SELECT treatment.date_of_treatment, professional.first_name FROM treatment INNER JOIN professional ON treatment.professional_id = professional.professional_id
SELECT treatment_id, date_of_treatment, first_name FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id;
SELECT t.cost_of_treatment, tt.treatment_type_description FROM Treatments t JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code
SELECT t.treatment_id, t.cost_of_treatment, tt.treatment_type_description FROM Treatments t JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code ORDER BY t.treatment_id;
SELECT o.first_name, o.last_name, s.size_description FROM Owners o INNER JOIN Dogs d ON o.owner_id = d.owner_id INNER JOIN Sizes s ON d.size_code = s.size_code
SELECT o.first_name, o.last_name, s.size_description FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id JOIN Sizes s ON d.size_code = s.size_code
SELECT o.first_name, d.name FROM Owners o INNER JOIN Dogs d ON o.owner_id = d.owner_id
SELECT o.first_name, d.name FROM Owners o INNER JOIN Dogs d ON o.owner_id = d.owner_id
SELECT d.name, t.date_of_treatment FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code JOIN Breeds b ON d.breed_code = b.breed_code WHERE b.breed_name = 'Poodle' ORDER BY t.date_of_treatment DESC;
SELECT d.name, t.date_of_treatment FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code WHERE tt.treatment_type_description = 'Surgery' ORDER BY d.name ASC;
SELECT o.first_name, d.name FROM Dogs d JOIN Owners o ON d.owner_id = o.owner_id WHERE o.state = 'VA'
SELECT o.first_name, d.name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id WHERE o.state = 'VA'
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Treatments.treatment_id IS NOT NULL
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Treatments.treatment_id IS NOT NULL ORDER BY Dogs.date_arrived ASC;
SELECT last_name FROM Owners WHERE dog_id IN (SELECT dog_id FROM Dogs ORDER BY age ASC LIMIT 1);
SELECT last_name FROM Owners WHERE dog_id IN (SELECT dog_id FROM Dogs WHERE age = (SELECT MIN(age) FROM Dogs));
SELECT email_address FROM Professionals WHERE state = 'HI' OR state = 'WI';
SELECT email_address FROM Professionals WHERE state IN ('HI', 'WI');
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs;
SELECT COUNT(*) FROM Treatments;
SELECT COUNT(*) FROM Treatments;
SELECT COUNT(*) FROM Professionals p INNER JOIN Treatments t ON p.professional_id = t.professional_id INNER JOIN Dogs d ON t.dog_id = d.dog_id
SELECT COUNT(*) AS "Number of Professionals" FROM Professionals INNER JOIN Treatments ON Professionals.professional_id = Treatments.professional_id INNER JOIN Dogs ON Treatments.dog_id = Dogs.dog_id
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%';
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%';
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%';
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs);
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs);
SELECT MAX(cost_of_treatment) FROM Treatments;
SELECT MAX(cost_of_treatment) FROM Treatments;
SELECT COUNT(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments);
SELECT COUNT(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments);
SELECT COUNT(*) FROM Owners WHERE dog_id IS NULL;
SELECT COUNT(owner_id) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs);
SELECT COUNT(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments);
SELECT COUNT(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments);
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = '1';
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1;
SELECT AVG(`age`) FROM `Dogs`;
SELECT AVG(Dogs.age) FROM Dogs;
SELECT MAX(Dogs.age) FROM Dogs;
SELECT MAX(Dogs.age) FROM Dogs;
SELECT charge_type, charge_amount FROM Charges;
SELECT charge_type, charge_amount FROM Charges;
SELECT MAX(Charge_Amount) FROM Charges;
SELECT MAX(charge_amount) FROM Charges;
SELECT email_address, cell_number, home_phone FROM Professionals;
SELECT p.email_address, p.cell_number, p.home_phone FROM Professionals p;
SELECT DISTINCT breed_code, size_code FROM Dogs;
SELECT DISTINCT breed_code, size_code FROM Dogs;
SELECT first_name, treatment_type_description FROM Professionals INNER JOIN Treatments ON Professionals.professional_id = Treatments.professional_id INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code
SELECT p.first_name, tt.treatment_type_description FROM Professionals p INNER JOIN Treatments t ON p.professional_id = t.professional_id INNER JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code ORDER BY p.first_name;
SELECT COUNT(*) FROM singer;
SELECT COUNT(*) FROM singer;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT "Birth_Year", "Citizenship" FROM "singer";
SELECT "Birth_Year", "Citizenship" FROM "singer";
SELECT Name FROM singer WHERE Citizenship!= "France";
SELECT Name FROM singer WHERE Citizenship!= 'France';
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer WHERE Net_Worth_Millions = (SELECT MAX(Net_Worth_Millions) FROM singer);
SELECT Name FROM singer WHERE Net_Worth_Millions = (SELECT MAX(Net_Worth_Millions) FROM singer);
SELECT DISTINCT Citizenship, COUNT(*) AS "Number of Singers" FROM singer GROUP BY Citizenship ORDER BY "Number of Singers" DESC;
SELECT Citizenship, COUNT(*) AS "Number of Singers" FROM singer GROUP BY Citizenship;
SELECT Citizenship, COUNT(*) AS Count FROM singer GROUP BY Citizenship ORDER BY Count DESC LIMIT 1;
SELECT Citizenship, COUNT(*) AS Count FROM singer GROUP BY Citizenship ORDER BY Count DESC LIMIT 1;
SELECT DISTINCT Citizenship, MAX(Net_Worth_Millions) AS Max_Net_Worth FROM singer GROUP BY Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) AS Max_Net_Worth FROM singer GROUP BY Citizenship
SELECT song.title, singer.name FROM song JOIN singer ON song.singer_id = singer.singer_id;
SELECT song.title, singer.name FROM song JOIN singer ON song.singer_id = singer.singer_id;
SELECT DISTINCT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song WHERE Sales > 300000);
SELECT DISTINCT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song WHERE Sales > 300000);
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*)>1);
SELECT DISTINCT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*)>1);
SELECT singer.name, SUM(song.sales) AS total_sales FROM singer JOIN song ON singer.singer_id = song.singer_id GROUP BY singer.name ORDER BY total_sales DESC;
SELECT Name, SUM(Sales) AS Total_Sales FROM song GROUP BY Name ORDER BY Total_Sales DESC
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song);
SELECT sname FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song);
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945 AND Birth_Year > 1955;
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945 AND Birth_Year > 1955;
SELECT COUNT(*) FROM Other_Available_Features;
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = 'AirCon';
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = 'HSE';
SELECT property_name FROM Properties WHERE property_type_code IN ('HSE', 'APT') AND room_count > 1
