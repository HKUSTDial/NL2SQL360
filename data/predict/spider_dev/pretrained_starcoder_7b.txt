SELECT COUNT(*) FROM singer;
SELECT COUNT(*) FROM singer;
SELECT "Name", "Country", "Age" FROM "singer" ORDER BY "Age" ASC;
SELECT "Name", "Country", "Age" FROM "singer" ORDER BY "Age" DESC;
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = 'France';
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = 'France';
SELECT "Name", "Song_release_year" FROM "singer" WHERE "Age" = (SELECT MIN("Age") FROM "singer")
SELECT "Name", "Song_release_year" FROM "singer" WHERE "Age" = (SELECT MIN("Age") FROM "singer");
SELECT DISTINCT Country FROM singer WHERE Age > 20;
SELECT DISTINCT Country FROM singer WHERE Age > 20;
SELECT Country, COUNT(Country) FROM singer GROUP BY Country;
SELECT Country, COUNT(Country) FROM singer GROUP BY Country;
SELECT "Song_Name" FROM "singer" WHERE "Age" > (SELECT AVG("Age") FROM "singer");
SELECT "Song_Name" FROM "singer" WHERE "Age" > (SELECT AVG("Age") FROM "singer")
SELECT "Location", "Name" FROM "stadium" WHERE "Capacity" BETWEEN 5000 AND 10000;
SELECT Location, Name FROM station WHERE Capacity BETWEEN 5000 AND 10000;
SELECT MAX(Capacity), AVG(Capacity) FROM stadium;
SELECT AVG(Capacity), MAX(Capacity) FROM stadium;
SELECT "Name", "Capacity" FROM "stadium" WHERE "Average" = (SELECT MAX("Average") FROM "stadium");
SELECT "Name", "Capacity" FROM "stadium" WHERE "Average" = (SELECT MAX("Average") FROM "stadium");
SELECT COUNT(*) FROM concert WHERE Year = '2014' OR Year = '2015';
SELECT COUNT(*) FROM concert WHERE Year = '2014' OR Year = '2015';
SELECT "Stadium_ID", "Name", COUNT("concert_ID") FROM "concert" GROUP BY "Stadium_ID"
SELECT "Stadium_ID", COUNT("concert_ID") FROM "concert" GROUP BY "Stadium_ID"
SELECT "Stadium_ID", "Name", "Capacity" FROM "stadium" WHERE "Year" >= 2014 ORDER BY "Capacity" DESC LIMIT 1;
SELECT "Name", "Capacity" FROM "stadium" WHERE "Stadium_ID" IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" > 2013 GROUP BY "Stadium_ID" ORDER BY COUNT("concert_ID") DESC LIMIT 1)
SELECT concert_ID, Year, COUNT(*) AS "Number of concerts" FROM concert GROUP BY concert_ID, Year ORDER BY "Number of concerts" DESC LIMIT 1;
SELECT concert_Name, Year FROM concert GROUP BY Year ORDER BY COUNT(*) DESC LIMIT 1;
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert");
SELECT DISTINCT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT DISTINCT "Stadium_ID" FROM "concert");
SELECT Country FROM singer WHERE Age > 40 AND Age < 30;
SELECT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT "Stadium_ID" FROM "concert" WHERE "Year" = '2014');
SELECT DISTINCT "Name" FROM "stadium" WHERE "Stadium_ID" NOT IN (SELECT DISTINCT "Stadium_ID" FROM "concert" WHERE "Year" = '2014');
SELECT concert_Name, Theme, COUNT(Singer_ID) FROM concert JOIN singer_in_concert ON concert.concert_ID = singer_in_concert.concert_ID GROUP BY concert_Name, Theme
SELECT concert_Name, Theme, COUNT(Singer_ID) FROM concert JOIN singer_in_concert ON concert.concert_ID = singer_in_concert.concert_ID GROUP BY concert_Name, Theme
SELECT singer.Name, COUNT(concert.concert_ID) FROM singer JOIN singer_in_concert ON singer.Singer_ID = singer_in_concert.Singer_ID JOIN concert ON singer_in_concert.concert_ID = concert.concert_ID GROUP BY singer.Name
SELECT s.Name, COUNT(c.concert_ID) FROM singer s JOIN singer_in_concert sic ON sic.Singer_ID = s.Singer_ID JOIN concert c ON c.concert_ID = sic.concert_ID GROUP BY s.Name
SELECT "Name" FROM "singer" INNER JOIN "singer_in_concert" ON "singer"."Singer_ID" = "singer_in_concert"."Singer_ID" INNER JOIN "concert" ON "singer_in_concert"."concert_ID" = "concert"."concert_ID" WHERE "concert"."Year" = '2014';
SELECT "Name" FROM "singer" WHERE "Singer_ID" IN (SELECT "Singer_ID" FROM "singer_in_concert" WHERE "concert_ID" IN (SELECT "concert_ID" FROM "concert" WHERE "Year" = '2014'));
SELECT s.Name, s.Country FROM singer s, song sng WHERE s.Singer_ID = sng.Singer_ID AND sng.Song_Name LIKE '%Hey%';
SELECT singer.Name, singer.Country FROM singer INNER JOIN singer_in_concert ON singer.Singer_ID = singer_in_concert.Singer_ID INNER JOIN concert ON singer_in_concert.concert_ID = concert.concert_ID INNER JOIN song ON concert.concert_ID = song.concert_ID WHERE song.Song_Name LIKE '%Hey%';
SELECT "Stadium_ID", "Location", "Name" FROM "stadium" WHERE "Stadium_ID" IN (SELECT DISTINCT "Stadium_ID" FROM "concert" WHERE "Year" = '2014' OR "Year" = '2015')
SELECT DISTINCT "stadium"."Name", "stadium"."Location" FROM "stadium" INNER JOIN "concert" ON "stadium"."Stadium_ID" = "concert"."Stadium_ID" WHERE "concert"."Year" = '2014' OR "concert"."Year" = '2015'
SELECT COUNT(concert_ID) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium WHERE Capacity = (SELECT MAX(Capacity) FROM stadium));
SELECT COUNT(concert_ID) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium WHERE Capacity = (SELECT MAX(Capacity) FROM stadium));
SELECT COUNT(*) FROM Pets WHERE weight > 10;
SELECT COUNT(*) FROM Pets WHERE weight > 10;
SELECT weight FROM Pets WHERE PetType = 'dog' ORDER BY pet_age ASC LIMIT 1;
SELECT MIN(weight) FROM Pets WHERE PetType = 'dog'
SELECT PetType, MAX(weight) FROM Pets GROUP BY PetType;
SELECT PetType, MAX(weight) AS max_weight FROM Pets GROUP BY PetType
SELECT COUNT(StuID) FROM Student WHERE Age > 20;
SELECT COUNT(*) FROM Student JOIN Has_Pet ON Student.StuID = Has_Pet.StuID JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE Student.Age > 20;
SELECT COUNT(*) FROM Pets WHERE PetType = 'dog' AND Sex = 'F'
SELECT COUNT(*) FROM Pets WHERE PetType = 'dog' AND Sex = 'F';
SELECT DISTINCT PetType FROM Pets;
SELECT DISTINCT PetType FROM Pets;
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType IN ('cat', 'dog'));
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType IN ('Cat', 'Dog'))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat' AND PetType = 'dog')
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Cat') AND StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Dog')
SELECT Major, Age FROM Student WHERE Major!= 1 AND PetID NOT IN (SELECT PetID FROM Pets WHERE PetType = 'cat');
SELECT Major, Age FROM Student WHERE Major NOT IN (SELECT Major FROM Has_Pet WHERE PetType = 'cat')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat');
SELECT StuID FROM Student WHERE PetID NOT IN (SELECT PetID FROM Has_Pet WHERE PetType = 'Cat')
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'dog' AND PetID NOT IN (SELECT PetID FROM Has_Pet WHERE PetType = 'cat'))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'dog' AND PetID NOT IN (SELECT PetID FROM Has_Pet WHERE PetType = 'cat'))
SELECT PetType, weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets);
SELECT PetType, weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets);
SELECT PetID, weight FROM Pets WHERE pet_age > 1;
SELECT PetID, weight FROM Pets WHERE pet_age > 1;
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType;
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType;
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet);
SELECT DISTINCT Fname, Age FROM Student, Has_Pet WHERE StuID = PetID;
SELECT PetID FROM Pets WHERE StuID = (SELECT StuID FROM Student WHERE LName = 'Smith');
SELECT PetID FROM Pets WHERE StuID = (SELECT StuID FROM Student WHERE LName = 'Smith');
SELECT StuID, COUNT(PetID) AS Num_Pets FROM Has_Pet GROUP BY StuID
SELECT StuID, COUNT(PetID) AS PetCount FROM Has_Pet GROUP BY StuID
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(StuID) > 1)
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(StuID) > 1);
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat' AND pet_age = 3)
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'cat' AND pet_age = 3))
SELECT AVG(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT AVG(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet);
SELECT COUNT(DISTINCT Continent) FROM continents;
SELECT COUNT(DISTINCT Continent) FROM continents;
SELECT Continent, COUNT(Continent) FROM countries GROUP BY Continent;
SELECT ContId, Continent, COUNT(CountryId) FROM countries GROUP BY Continent;
SELECT COUNT(DISTINCT Country) FROM countries;
SELECT COUNT(DISTINCT Country) FROM countries;
SELECT car_makers.FullName, car_makers.Id, COUNT(model_list.Model) AS Models FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.FullName, car_makers.Id
SELECT car_makers.Id, car_makers.Maker, car_makers.FullName, COUNT(model_list.Model) AS Models FROM car_makers LEFT JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id
SELECT Model, MIN(Horsepower) FROM cars_data GROUP BY Model;
SELECT Model FROM model_list WHERE Model = (SELECT MIN(Horsepower) FROM cars_data);
SELECT Model FROM model_list WHERE ModelId IN (SELECT MakeId FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM cars_data));
SELECT Model FROM model_list WHERE ModelId IN (SELECT MakeId FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)));
SELECT DISTINCT car_makers.Maker FROM car_makers INNER JOIN car_names ON car_makers.Id = car_names.MakeId INNER JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = 1970;
SELECT DISTINCT car_makers.Maker FROM car_makers INNER JOIN car_names ON car_makers.Id = car_names.MakeId WHERE car_names.Year = 1970;
SELECT Make, Year FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Year = (SELECT MIN(Year) FROM cars_data));
SELECT car_makers.Maker, MIN(cars_data.Year) FROM car_makers INNER JOIN cars_data ON car_makers.Id = cars_data.Id GROUP BY car_makers.Maker
SELECT DISTINCT Model FROM car_names WHERE MakeId IN (SELECT MakeId FROM cars_data WHERE Year > 1980);
SELECT DISTINCT Model FROM model_list WHERE ModelId IN (SELECT MakeId FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Year > 1980));
SELECT Continent, COUNT(Continent) FROM continents, countries WHERE countries.Continent = continents.ContId GROUP BY Continent;
SELECT Continent, COUNT(Maker) AS "Number of car makers" FROM car_makers GROUP BY Continent;
SELECT CountryName FROM countries WHERE CountryId = (SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1)
SELECT CountryName, COUNT(Maker) AS "Number of Car Makers" FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY CountryName ORDER BY "Number of Car Makers" DESC LIMIT 1;
SELECT COUNT(Model), FullName FROM model_list INNER JOIN car_makers ON model_list.Maker = car_makers.Id GROUP BY FullName;
SELECT car_makers.Id, car_makers.Maker, car_makers.FullName FROM car_makers;
SELECT Accelerate FROM cars_data WHERE Make = 'amc hornet sportabout' AND Model ='sw';
SELECT Accelerate FROM cars_data WHERE Make = 'amc hornet sportabout' AND Model ='sw';
SELECT COUNT(DISTINCT Maker) FROM car_names WHERE Country = 'France';
SELECT COUNT(DISTINCT Maker) FROM car_names WHERE Country = 'France';
SELECT COUNT(DISTINCT Model) FROM car_names WHERE Country = 'USA';
SELECT COUNT(DISTINCT Model) FROM car_names WHERE Make = 'United States';
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974;
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974;
SELECT DISTINCT Make, Model FROM car_names;
SELECT DISTINCT Make, Model FROM car_names;
SELECT countries.CountryName, countries.CountryId FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country GROUP BY countries.CountryName, countries.CountryId HAVING COUNT(car_makers.Country) > 0
SELECT CountryName, CountryId FROM countries WHERE CountryId IN (SELECT DISTINCT Country FROM car_makers);
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150;
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150;
SELECT AVG(Weight) FROM cars_data;
SELECT AVG(Weight), Year FROM cars_data GROUP BY Year;
SELECT DISTINCT countries.CountryName FROM countries INNER JOIN car_makers ON countries.CountryId = car_makers.Country WHERE countries.Continent = 2;
SELECT DISTINCT CountryName FROM countries WHERE Continent = 1 AND CountryId IN (SELECT DISTINCT Make FROM car_names);
SELECT MAX(Horsepower), Make FROM car_names WHERE Cylinders = 3;
SELECT MAX(Horsepower) AS "Max Horsepower", Make FROM cars_data WHERE Cylinders = 3 GROUP BY Make;
SELECT model, mpg FROM cars_data ORDER BY mpg DESC LIMIT 1;
SELECT Model, MPG FROM cars_data ORDER BY MPG DESC LIMIT 1;
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980;
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980;
SELECT AVG(Edispl) FROM cars_data WHERE Model = 'volvo';
SELECT AVG(Edispl) FROM cars_data WHERE Model = 'Volvo';
SELECT MAX(Accelerate) AS MaxAccelerate, Cylinders FROM cars_data GROUP BY Cylinders;
SELECT MAX(Accelerate) FROM cars_data WHERE Cylinders = 8;
SELECT model, count(model) as count FROM car_names GROUP BY model ORDER BY count DESC LIMIT 1;
SELECT DISTINCT Model, COUNT(DISTINCT Make) AS Count FROM car_names GROUP BY Model ORDER BY Count DESC LIMIT 1;
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4;
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4;
SELECT COUNT(*) FROM cars_data WHERE Year = 1980;
SELECT COUNT(*) FROM cars_data WHERE Year = 1980;
SELECT COUNT(DISTINCT Model) FROM car_names WHERE Make = 'American Motor Company';
SELECT COUNT(DISTINCT Model) FROM car_names WHERE Make = 'American Motor Company';
SELECT DISTINCT car_makers.FullName, car_makers.Id FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker JOIN car_names ON model_list.Model = car_names.Model GROUP BY car_makers.FullName HAVING COUNT(model_list.Model) > 3
SELECT DISTINCT "Make", "MakeId" FROM car_names WHERE "MakeId" IN (SELECT DISTINCT "MakeId" FROM car_names GROUP BY "MakeId" HAVING COUNT("MakeId") > 3);
SELECT DISTINCT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = 'General Motors') AND Weight > 3500;
SELECT DISTINCT Model FROM model_list WHERE Maker = 1 OR Weight > 3500;
SELECT Year FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000;
SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 OR Weight > 3000;
SELECT MAX(Accelerate) AS MaxAccelerate, Horsepower FROM cars_data GROUP BY Horsepower ORDER BY MaxAccelerate DESC LIMIT 1;
SELECT MAX(Accelerate) AS MaxAccelerate, Horsepower FROM cars_data GROUP BY Horsepower ORDER BY MaxAccelerate DESC LIMIT 1;
SELECT MIN(Accelerate), COUNT(Accelerate) FROM cars_data WHERE Model = 'volvo';
SELECT MIN(Accelerate), COUNT(Accelerate) FROM cars_data WHERE Model = 'Volvo';
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Horsepower FROM cars_data WHERE Horsepower = (SELECT MAX(Horsepower) FROM cars_data));
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT MAX(Horsepower) FROM cars_data);
SELECT COUNT(DISTINCT Country) FROM countries WHERE CountryId IN (SELECT DISTINCT Country FROM car_makers);
SELECT COUNT(*) FROM countries WHERE Continent IN (SELECT ContId FROM continents WHERE Continent IN (SELECT DISTINCT Maker FROM car_makers));
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6;
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6;
SELECT Model, Horsepower FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1;
SELECT Model, Horsepower FROM cars_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1;
SELECT MakeId, Make FROM car_names WHERE Horsepower > (SELECT MIN(Horsepower) FROM car_names) AND Cylinders > 3;
SELECT MakeId, Make, Model FROM car_names WHERE Model NOT IN (SELECT Model FROM cars_data WHERE Cylinders < 4)
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 AND Year < 1980;
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980;
SELECT Model FROM model_list WHERE Maker = 1 AND Weight < 3500;
SELECT DISTINCT Model FROM model_list WHERE Model NOT IN (SELECT Model FROM car_names WHERE Make = 'Ford') AND Weight < 3500;
SELECT DISTINCT CountryName FROM countries WHERE CountryId NOT IN (SELECT DISTINCT Country FROM car_makers);
SELECT DISTINCT CountryName FROM countries WHERE CountryId NOT IN (SELECT DISTINCT Country FROM car_makers);
SELECT DISTINCT car_makers.Id, car_makers.Maker FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id HAVING COUNT(model_list.Model) >= 2 AND COUNT(car_makers.Id) > 3
SELECT DISTINCT car_makers.Id, car_makers.Maker FROM car_makers INNER JOIN model_list ON car_makers.Id = model_list.Maker INNER JOIN car_names ON model_list.Model = car_names.Model GROUP BY car_makers.Id HAVING COUNT(model_list.Model) >= 2 AND COUNT(car_names.MakeId) > 3
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(DISTINCT Maker) > 3) OR CountryId IN (SELECT Country FROM car_names WHERE Model = 'fiat');
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(DISTINCT Maker) > 3) OR CountryId IN (SELECT Country FROM model_list WHERE Model LIKE '%fiat%');
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways";
SELECT Country FROM airlines WHERE Airline = 'Jetblue Airways';
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue Airways';
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways';
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA';
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA';
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony';
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony';
SELECT COUNT(Airline) FROM airlines;
SELECT COUNT(*) FROM airlines;
SELECT COUNT(*) FROM airports;
SELECT COUNT(*) FROM airports;
SELECT COUNT(*) FROM flights;
SELECT COUNT(*) FROM flights;
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL';
SELECT * FROM airlines WHERE Abbreviation = 'UAL';
SELECT COUNT(Airline) FROM airlines WHERE Country = 'USA';
SELECT COUNT(Airline) FROM airlines WHERE Country = 'USA';
SELECT City, Country FROM airports WHERE AirportCode = 'ATL';
SELECT City, Country FROM airports WHERE AirportCode = 'ATL';
SELECT AirportName FROM airports WHERE AirportCode = 'AKO';
SELECT AirportName FROM airports WHERE AirportCode = 'AKO';
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE CountryAbbrev = 'ABE';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ATO';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABE';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABE';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABE';
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABE';
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABE' AND DestAirport = 'ASH'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABE' AND DestAirport = 'ASH'
SELECT COUNT(*) FROM flights WHERE Airline = 1;
SELECT COUNT(*) FROM flights WHERE Airline = 1;
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines') AND SourceAirport = 'ASY';
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND DestAirport = 'ASY'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'AHD' AND Airline = 1;
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'AHD' AND Airline = 1;
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABE' AND DestAirport = 'ABE';
SELECT COUNT(*) FROM flights WHERE Airline = 1 AND DestAirport = 'ABE'
SELECT City, COUNT(*) AS Count FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY City ORDER BY Count DESC LIMIT 1;
SELECT DestAirport, COUNT(DestAirport) AS Count FROM flights GROUP BY DestAirport ORDER BY Count DESC LIMIT 1;
SELECT City, COUNT(*) AS 'Departing Flights' FROM flights JOIN airports ON flights.SourceAirport = airports.AirportCode GROUP BY City ORDER BY 'Departing Flights' DESC LIMIT 1;
SELECT City, COUNT(*) AS Count FROM airports, flights WHERE SourceAirport = AirportCode GROUP BY City ORDER BY Count DESC LIMIT 1;
SELECT AirportCode, COUNT(Airline) AS NumFlights FROM flights GROUP BY AirportCode ORDER BY NumFlights DESC LIMIT 1;
SELECT airports.AirportCode, COUNT(flights.Airline) AS 'Number of flights' FROM airports INNER JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY airports.AirportCode ORDER BY 'Number of flights' DESC LIMIT 1;
SELECT airports.AirportCode, COUNT(flights.Airline) AS 'Number of flights' FROM airports INNER JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY airports.AirportCode ORDER BY COUNT(flights.Airline) LIMIT 1;
SELECT airports.AirportCode, airports.AirportName, airports.Country, airports.CountryAbbrev, COUNT(flights.Airline) AS 'Number of flights' FROM airports INNER JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY airports.AirportCode ORDER BY COUNT(flights.Airline) LIMIT 1;
SELECT Airline, COUNT(Airline) AS 'Number of flights' FROM flights GROUP BY Airline ORDER BY 'Number of flights' DESC LIMIT 1;
SELECT Airline, COUNT(Airline) AS 'Number of Flights' FROM flights GROUP BY Airline ORDER BY 'Number of Flights' DESC LIMIT 1;
SELECT Abbreviation, Country FROM airlines WHERE uid = (SELECT MIN(uid) FROM airlines, flights WHERE airlines.uid = flights.Airline)
SELECT Abbreviation, Country FROM airlines WHERE uid = (SELECT MIN(uid) FROM airlines)
SELECT Airline FROM flights WHERE SourceAirport = 'AHD';
SELECT Airline, Airline.Airline, Airline.Abbreviation, Airline.Country FROM airlines AS Airline INNER JOIN flights AS Flights ON Airline.uid = Flights.Airline WHERE Flights.SourceAirport = 'AHD'
SELECT Airline FROM flights WHERE DestAirport = 'AHD';
SELECT Airline, Airline.Airline, Airline.Abbreviation, Airline.Country FROM airlines AS Airline INNER JOIN flights AS Flights ON Airline.uid = Flights.Airline INNER JOIN airports AS DestAirport ON Flights.DestAirport = DestAirport.AirportCode WHERE DestAirport.AirportCode = 'AHD'
SELECT Airline FROM flights WHERE SourceAirport = 'APG' AND DestAirport = 'CVO';
SELECT Airline FROM flights WHERE SourceAirport = 'APG' AND DestAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' AND DestAirport!= 'APG'
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' AND DestAirport NOT IN (SELECT AirportCode FROM airports WHERE CountryAbbrev = 'APG');
SELECT Airline, AirlineName, Country FROM airlines JOIN flights ON airlines.uid = flights.Airline GROUP BY Airline HAVING COUNT(Airline) >= 10
SELECT Airline, COUNT(Airline) AS 'Number of flights' FROM flights GROUP BY Airline HAVING COUNT(Airline) >= 10
SELECT Airline, COUNT(Airline) AS 'Number of flights' FROM flights GROUP BY Airline HAVING COUNT(Airline) < 200
SELECT Airline, COUNT(*) AS 'Number of flights' FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = 1;
SELECT FlightNo FROM flights WHERE Airline = 1;
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG';
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG';
SELECT FlightNo FROM flights WHERE DestAirport = 'APG';
SELECT FlightNo FROM flights WHERE DestAirport = 'APG';
SELECT FlightNo FROM flights WHERE SourceAirport = 'ABE';
SELECT FlightNo FROM flights WHERE SourceAirport = 'ABE';
SELECT FlightNo FROM flights WHERE DestAirport = 'ABE';
SELECT FlightNo FROM flights WHERE DestAirport = 'ABE';
SELECT COUNT(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City IN ('Aberdeen', 'Abilene'));
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ABE' OR DestAirport = 'ABI';
SELECT DISTINCT City FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights);
SELECT DISTINCT a.AirportCode, a.AirportName, a.Country, a.CountryAbbrev FROM airports a WHERE NOT EXISTS (SELECT * FROM flights f WHERE f.SourceAirport = a.AirportCode OR f.DestAirport = a.AirportCode)
SELECT COUNT(*) FROM employee;
SELECT COUNT(*) FROM employee;
SELECT * FROM employee ORDER BY Age ASC;
SELECT "Name" FROM "employee" ORDER BY "Age" ASC;
SELECT City, COUNT(City) AS "Number of employees" FROM employee GROUP BY City;
SELECT City, COUNT(City) AS "Number of employees" FROM employee GROUP BY City;
SELECT DISTINCT City FROM employee WHERE Age > 30;
SELECT DISTINCT City FROM employee WHERE Age > 30;
SELECT Location, COUNT(DISTINCT Shop_ID) AS Number_of_shops FROM shop GROUP BY Location
SELECT DISTINCT Location, COUNT(DISTINCT Shop_ID) AS Number_of_shops FROM shop GROUP BY Location
SELECT Manager_name, District FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop);
SELECT Manager_name, District FROM shop WHERE Number_products = (SELECT MAX(Number_products) FROM shop);
SELECT MIN(Number_products), MAX(Number_products) FROM shop;
SELECT MIN(Number_products), MAX(Number_products) FROM shop;
SELECT "Name", "Location", "District" FROM "shop" ORDER BY "Number_products" DESC;
SELECT "Name", "Location", "District" FROM "shop" ORDER BY "Number_products" DESC;
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop);
SELECT shop.Name, shop.Number_products FROM shop WHERE shop.Number_products > (SELECT AVG(shop.Number_products) FROM shop)
SELECT Name FROM employee WHERE Employee_ID = (SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1);
SELECT e.Name, e.Employee_ID, e.Age, e.City, e.Shop_ID, e.Number_products, e.Manager_name, e.Start_from, e.Is_full_time, e.Year_awarded, e.Bonus FROM employee e JOIN evaluation eve ON e.Employee_ID = eve.Employee_ID GROUP BY e.Employee_ID ORDER BY eve.Bonus DESC LIMIT 1;
SELECT Name FROM employee WHERE Employee_ID = (SELECT Employee_ID FROM evaluation WHERE Bonus = (SELECT MAX(Bonus) FROM evaluation));
SELECT e.Name FROM employee e JOIN evaluation eve ON e.Employee_ID = eve.Employee_ID WHERE eve.Bonus = (SELECT MAX(eve.Bonus) FROM evaluation eve)
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation);
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation);
SELECT shop.Name FROM shop INNER JOIN hiring ON shop.Shop_ID = hiring.Shop_ID GROUP BY shop.Shop_ID ORDER BY COUNT(hiring.Employee_ID) DESC LIMIT 1;
SELECT shop.Name FROM shop INNER JOIN hiring ON shop.Shop_ID = hiring.Shop_ID GROUP BY shop.Shop_ID ORDER BY COUNT(hiring.Shop_ID) DESC LIMIT 1;
SELECT shop.Name FROM shop LEFT JOIN hiring ON shop.Shop_ID = hiring.Shop_ID WHERE hiring.Shop_ID IS NULL;
SELECT DISTINCT `Name` FROM `shop` WHERE `Shop_ID` NOT IN (SELECT `Shop_ID` FROM `hiring`);
SELECT "Shop_ID", "Name" FROM "shop"  SELECT "Shop_ID", "Employee_ID", "Start_from", "Is_full_time" FROM "hiring"  SELECT "Shop_ID", COUNT("Employee_ID") FROM "hiring" GROUP BY "Shop_ID"
SELECT "Shop_ID", COUNT("Employee_ID"), "Name" FROM "shop" INNER JOIN "hiring" ON "shop"."Shop_ID" = "hiring"."Shop_ID" GROUP BY "Shop_ID"
SELECT SUM(bonus) FROM evaluation;
SELECT SUM(bonus) FROM evaluation;
SELECT * FROM hiring;
SELECT * FROM hiring;
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 AND Number_products > 10000;
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 AND Number_products > 10000;
SELECT DISTINCT Location FROM shop;
SELECT COUNT(DISTINCT Location) FROM shop;
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents;
SELECT Document_ID, Document_Name, Document_Description FROM Documents;
SELECT Document_ID, Document_Name, Document_Description FROM Documents;
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%';
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'
SELECT COUNT(DISTINCT Template_ID) FROM Documents;
SELECT COUNT(DISTINCT Template_ID) FROM Documents;
SELECT COUNT(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT');
SELECT COUNT(*) FROM Documents WHERE Template_Type_Code = 'PPT';
SELECT Templates.Template_ID, COUNT(Documents.Document_ID) AS Number_of_Documents FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID GROUP BY Templates.Template_ID
SELECT Template_ID, COUNT(*) AS Count FROM Documents GROUP BY Template_ID
SELECT Template_ID, Template_Type_Code FROM Templates GROUP BY Template_ID, Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Template_ID, Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID, COUNT(*) AS Document_Count FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID, COUNT(*) AS Document_Count FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT Template_ID, Template_Type_Code, Template_Details FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT COUNT(*) FROM Templates;
SELECT COUNT(*) FROM Templates;
SELECT Templates.Template_ID, Templates.Version_Number, Templates.Template_Type_Code FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates;
SELECT DISTINCT Template_Type_Code FROM Templates;
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types;
SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ('PP', 'PPT')
SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ('PP', 'PPT')
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV';
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV';
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5;
SELECT Template_Type_Code, COUNT(Template_ID) AS Number_Of_Templates FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(Template_ID) AS Number_of_Templates FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(*) AS Templates_Count FROM Templates GROUP BY Template_Type_Code ORDER BY Templates_Count DESC
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates) GROUP BY Template_Type_Code HAVING COUNT(Template_Type_Code) < 3
SELECT Template_Type_Code, COUNT(*) AS Templates_Count FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code;
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates WHERE Document_Name = 'Data base'
SELECT Template_Type_Code FROM Templates WHERE Document_Name = 'Data base'
SELECT Document_Name FROM Documents INNER JOIN Templates ON Templates.Template_ID = Documents.Template_ID INNER JOIN Ref_Template_Types ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code WHERE Ref_Template_Types.Template_Type_Code = 'BK';
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'BK')
SELECT Template_Type_Code, COUNT(Template_ID) AS Number_of_Documents FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(Template_Type_Code) AS Number_of_Templates FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(*) AS Number_Of_Documents FROM Templates GROUP BY Template_Type_Code ORDER BY Number_Of_Documents DESC
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types;
SELECT * FROM Ref_Template_Types;
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'
SELECT DISTINCT Template_Type_Description FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID
SELECT DISTINCT Template_Type_Description FROM Templates INNER JOIN Documents ON Templates.Template_ID = Documents.Template_ID INNER JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID
SELECT Template_ID, Template_Type_Code, Template_Type_Description FROM Templates INNER JOIN Ref_Template_Types ON Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code WHERE Template_Type_Description = 'Presentation'
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'Presentation'
SELECT COUNT(*) FROM Paragraphs;
SELECT COUNT(*) FROM Paragraphs;
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT COUNT(*) FROM Paragraphs WHERE Document_Name = 'Summer Show'
SELECT Paragraph_ID, Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE 'Korea %'
SELECT Paragraph_Text, Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea %'
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID IN (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY');
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID IN (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY');
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID IN (SELECT Document_ID FROM Documents WHERE Document_Name = 'Customer reviews');
SELECT Paragraph_Text FROM Paragraphs WHERE Document_Name = 'Customer reviews'
SELECT Documents.Document_ID, COUNT(Paragraphs.Paragraph_ID) AS Paragraph_Count FROM Documents LEFT JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Documents.Document_ID ORDER BY Documents.Document_ID
SELECT Document_ID, COUNT(Paragraph_ID) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Documents.Document_ID, Documents.Document_Name, COUNT(Paragraphs.Paragraph_ID) AS Paragraph_Count FROM Documents LEFT JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Documents.Document_ID, Documents.Document_Name
SELECT Documents.Document_ID, Documents.Document_Name, COUNT(Paragraphs.Paragraph_ID) AS Paragraph_Count FROM Documents LEFT JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Documents.Document_ID, Documents.Document_Name
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) > 1);
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) > 1)
SELECT Document_ID, Document_Name, COUNT(Paragraph_ID) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID, Document_Name ORDER BY Paragraph_Count DESC LIMIT 1;
SELECT Document_ID, Document_Name FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) DESC LIMIT 1)
SELECT Document_ID, COUNT(*) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID ORDER BY Paragraph_Count ASC LIMIT 1;
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) LIMIT 1)
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs WHERE Paragraph_ID BETWEEN 1 AND 2)
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT DISTINCT Document_ID FROM Paragraphs WHERE Paragraph_ID IN (SELECT Paragraph_ID FROM Paragraphs WHERE Paragraph_ID = 1 OR Paragraph_ID = 2))
SELECT Document_ID, Paragraph_Text FROM Paragraphs WHERE Paragraph_Text = 'Brazil' OR Paragraph_Text = 'Ireland';
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text LIKE '%Brazil%' AND Paragraph_Text LIKE '%Ireland%';
SELECT COUNT(*) FROM teacher;
SELECT COUNT(*) FROM teacher;
SELECT "Name" FROM `teacher` ORDER BY "Age" ASC;
SELECT "Name" FROM `teacher` ORDER BY "Age" ASC;
SELECT "Age", "Hometown" FROM `teacher`
SELECT "Age", "Hometown" FROM `teacher`
SELECT teacher.Name FROM teacher WHERE teacher.Hometown!= 'Little Lever Urban District';
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT "Name" FROM `teacher` WHERE "Age" = '32' OR "Age" = '33';
SELECT Name FROM teacher WHERE Age = '32' OR Age = '33';
SELECT Hometown FROM teacher WHERE Age = (SELECT MIN(Age) FROM teacher);
SELECT * FROM teacher WHERE Age = (SELECT MIN(Age) FROM teacher);
SELECT Hometown, COUNT(Hometown) AS "Number of Teachers" FROM teacher GROUP BY Hometown;
SELECT Hometown, COUNT(DISTINCT Teacher_ID) AS Teacher_Count FROM teacher GROUP BY Hometown
SELECT hometown, COUNT(*) AS "Count" FROM teacher GROUP BY hometown ORDER BY "Count" DESC LIMIT 1;
SELECT hometown, COUNT(hometown) AS "Count" FROM teacher GROUP BY hometown ORDER BY "Count" DESC LIMIT 1;
SELECT DISTINCT Hometown FROM teacher;
SELECT DISTINCT Hometown FROM teacher;
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID;
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID ORDER BY teacher.Name ASC;
SELECT teacher.Name, course.Course FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID ORDER BY teacher.Name ASC;
SELECT "Name" FROM `teacher` WHERE "Teacher_ID" IN (SELECT "Teacher_ID" FROM `course_arrange` WHERE "Course_ID" = 1);
SELECT teacher.Name FROM teacher, course_arrange WHERE teacher.Teacher_ID = course_arrange.Teacher_ID AND course_arrange.Course ='math';
SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS "Number of Courses" FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name
SELECT teacher.Name, COUNT(course_arrange.Course_ID) AS "Number of Courses" FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name
SELECT teacher.Name FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name HAVING COUNT(course_arrange.Course_ID) >= 2;
SELECT DISTINCT teacher.Name FROM teacher INNER JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY teacher.Name HAVING COUNT(course_arrange.Course_ID) >= 2;
SELECT teacher.Name FROM teacher WHERE teacher.Teacher_ID NOT IN (SELECT teacher_id FROM course_arrange);
SELECT teacher.Name FROM teacher WHERE teacher.Teacher_ID NOT IN (SELECT teacher_id FROM course_arrange);
SELECT COUNT(*) FROM visitor WHERE Age < 30;
SELECT "Name" FROM "visitor" WHERE "Level_of_membership" > 4 ORDER BY "Level_of_membership" DESC;
SELECT AVG(Age) FROM visitor WHERE Level_of_membership < 4;
SELECT "Name", "Level_of_membership" FROM "visitor" WHERE "Level_of_membership" > 4 ORDER BY "Age" ASC;
SELECT Museum_ID, Name, Num_of_Staff FROM museum ORDER BY Num_of_Staff DESC LIMIT 1;
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < '2009';
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = 'Plaza Museum';
SELECT "Name" FROM "museum" WHERE "Num_of_Staff" > (SELECT MIN("Num_of_Staff") FROM "museum" WHERE "Open_Year" > '2010');
SELECT visitor.ID, visitor.Name, visitor.Age FROM visitor INNER JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID HAVING COUNT(visit.Museum_ID) > 1;
SELECT visitor.ID, visitor.Name, visitor.Level_of_membership FROM visitor INNER JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID ORDER BY SUM(visit.Total_spent) DESC LIMIT 1;
SELECT "Museum_ID", "Name" FROM "museum" GROUP BY "Museum_ID" ORDER BY COUNT("Museum_ID") DESC LIMIT 1;
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit);
SELECT visitor.Name, visitor.Age FROM visitor INNER JOIN visit ON visitor.ID = visit.visitor_ID GROUP BY visitor.ID ORDER BY COUNT(visit.visitor_ID) DESC LIMIT 1;
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit;
SELECT SUM(Total_spent) FROM visit WHERE Level_of_membership = 1;
SELECT visitor.Name FROM visitor INNER JOIN visit ON visitor.ID = visit.visitor_ID WHERE visit.Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year < '2009' AND Open_Year > '2011')
SELECT COUNT(visitor_ID) FROM visit WHERE Museum_ID NOT IN (SELECT Museum_ID FROM museum WHERE Open_Year > '2010');
SELECT COUNT(*) FROM museum WHERE Open_Year > '2013' OR Open_Year < '2008';
SELECT COUNT(*) FROM players;
SELECT COUNT(*) FROM players;
SELECT COUNT(*) FROM matches;
SELECT COUNT(*) FROM matches;
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(loser_age), AVG(winner_age) FROM matches;
SELECT AVG(loser_age), AVG(winner_age) FROM matches;
SELECT AVG(winner_rank) FROM matches;
SELECT AVG(winner_rank) FROM matches;
SELECT MAX(loser_rank) FROM matches;
SELECT MAX(loser_rank) FROM matches;
SELECT COUNT(DISTINCT country_code) FROM players;
SELECT COUNT(DISTINCT country_code) FROM players;
SELECT COUNT(DISTINCT loser_name) FROM matches;
SELECT COUNT(DISTINCT loser_name) FROM matches;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(tourney_name) > 10
SELECT DISTINCT tourney_name FROM matches WHERE tourney_name IN (SELECT DISTINCT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10)
SELECT winner_name FROM matches WHERE winner_name IN (SELECT winner_name FROM matches WHERE year = 2013) AND year = 2016;
SELECT winner_name FROM matches WHERE winner_name IN (SELECT winner_name FROM matches WHERE year = 2013) AND year = 2016
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016;
SELECT COUNT(*) FROM matches WHERE year IN (2013,2016)
SELECT country_code, first_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships' AND tourney_level = 'Grand Slam' AND winner_hand = 'Right') AND player_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'Australian Open' AND tourney_level = 'Grand Slam' AND winner_hand = 'Right')
SELECT winner_name, winner_ioc FROM matches WHERE winner_ioc = 'AUS' AND winner_hand = 'R' AND winner_rank = 1 AND winner_rank_points = 1 AND winner_seed = 1 AND winner_entry = 'WTA' AND winner_age = 24.0 AND winner_ht = 1 AND winner_id = 1;
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1;
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1;
SELECT first_name, last_name FROM players ORDER BY birth_date;
SELECT first_name ||'' || last_name AS full_name, birth_date FROM players ORDER BY birth_date;
SELECT first_name, last_name, birth_date FROM players WHERE hand = 'L' ORDER BY birth_date ASC;
SELECT first_name ||'' || last_name AS full_name, birth_date FROM players WHERE hand = 'L' ORDER BY birth_date;
SELECT first_name, country_code FROM players WHERE player_id = (SELECT player_id FROM rankings WHERE tours = (SELECT MAX(tours) FROM rankings));
SELECT first_name, country_code FROM players WHERE player_id = (SELECT player_id FROM rankings WHERE tours = (SELECT MAX(tours) FROM rankings));
SELECT year, COUNT(*) AS num_matches FROM matches GROUP BY year ORDER BY num_matches DESC LIMIT 1;
SELECT year, COUNT(*) AS matches FROM matches GROUP BY year ORDER BY matches DESC LIMIT 1;
SELECT winner_name, winner_rank_points FROM (SELECT winner_name, winner_rank_points, COUNT(*) AS tours FROM matches GROUP BY winner_name, winner_rank_points ORDER BY tours DESC LIMIT 1) AS winner_rank_points_table
SELECT winner_name, winner_rank_points FROM (SELECT winner_name, winner_rank_points, COUNT(*) AS tours FROM matches GROUP BY winner_name, winner_rank_points ORDER BY tours DESC LIMIT 1) AS winner_rank_points_table
SELECT winner_name FROM matches WHERE winner_ioc = 'AUS' AND winner_rank_points = (SELECT MAX(winner_rank_points) FROM matches WHERE winner_ioc = 'AUS')
SELECT winner_name, winner_rank_points FROM matches INNER JOIN players ON winner_id = player_id INNER JOIN rankings ON player_id = player_id WHERE tourney_name = 'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1;
SELECT winner_name, loser_name, minutes FROM matches WHERE minutes = (SELECT MAX(minutes) FROM matches)
SELECT winner_name, loser_name FROM matches WHERE minutes = (SELECT MAX(minutes) FROM matches)
SELECT AVG(ranking), first_name FROM rankings GROUP BY player_id, first_name
SELECT first_name, AVG(ranking) FROM players GROUP BY first_name
SELECT players.first_name, SUM(rankings.ranking_points) FROM players INNER JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.first_name
SELECT first_name, SUM(ranking_points) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY first_name
SELECT country_code, COUNT(player_id) FROM players GROUP BY country_code
SELECT country_code, COUNT(country_code) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1;
SELECT country_code, COUNT(player_id) AS num_players FROM players GROUP BY country_code ORDER BY num_players DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, COUNT(tourney_id) AS tours FROM rankings GROUP BY ranking_date
SELECT ranking_date, COUNT(tourney_id) AS tours FROM rankings GROUP BY ranking_date
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT year, COUNT(*) AS matches FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches WHERE winner_age < 30 ORDER BY winner_age ASC LIMIT 3;
SELECT winner_name, winner_rank FROM matches WHERE winner_age < 20 ORDER BY winner_age ASC LIMIT 3;
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE winner_hand = 'L' AND tourney_name = 'WTA Championships'
SELECT COUNT(*) FROM players WHERE hand = 'L' AND tourney_name = 'WTA Championships'
SELECT winner_name, country_code, birth_date FROM players WHERE player_id = (SELECT winner_id FROM matches WHERE ranking_points = (SELECT MAX(ranking_points) FROM matches))
SELECT first_name, country_code, birth_date FROM players WHERE player_id = (SELECT player_id FROM rankings WHERE ranking_points = (SELECT MAX(ranking_points) FROM rankings));
SELECT hand, COUNT(hand) FROM players GROUP BY hand;
SELECT hand, COUNT(hand) FROM players GROUP BY hand
SELECT COUNT(*) FROM `ship` WHERE `disposition_of_ship` = 'Captured';
SELECT name, tonnage FROM ship ORDER BY name DESC;
SELECT "name", "date", "result" FROM "battle";
SELECT MIN(injured), MAX(injured) FROM death;
SELECT AVG(injured) FROM death;
SELECT * FROM death WHERE caused_by_ship_id = (SELECT id FROM ship WHERE tonnage = 't');
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT "battle"."id", "battle"."name" FROM "battle" JOIN "ship" ON "battle"."id" = "ship"."lost_in_battle" WHERE "ship"."ship_type" = 'Brig';
SELECT battle.id, battle.name, COUNT(death.id) AS total_deaths FROM battle LEFT JOIN death ON battle.id = death.caused_by_ship_id GROUP BY battle.id HAVING total_deaths > 10
SELECT "id", "name" FROM "ship" WHERE "id" IN (SELECT "caused_by_ship_id" FROM "death" GROUP BY "caused_by_ship_id" ORDER BY SUM("injured") DESC LIMIT 1);
SELECT DISTINCT battle.name FROM battle WHERE battle.bulgarian_commander = 'Kaloyan' AND battle.latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle;
SELECT COUNT(*) FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225');
SELECT name, date FROM battle WHERE id IN (SELECT lost_in_battle FROM ship WHERE name = 'Lettice' OR name = 'HMS Atalanta');
SELECT "name", "result", "bulgarian_commander" FROM "battle" WHERE "result" = 'English Channel' AND "lost_in_battle" IS NULL;
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM Addresses;
SELECT `line_1`, `line_2` FROM `Addresses`
SELECT COUNT(*) FROM Courses;
SELECT COUNT(*) FROM Courses;
SELECT * FROM Courses WHERE course_name = 'Math';
SELECT course_description FROM Courses WHERE course_name LIKE '%math%';
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea';
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea';
SELECT `department_name`, `department_id` FROM `Departments` ORDER BY `department_id` DESC LIMIT 1;
SELECT department_name, department_id FROM Departments ORDER BY COUNT(degree_program_id) DESC LIMIT 1;
SELECT COUNT(DISTINCT(department_id)) FROM Degree_Programs;
SELECT COUNT(DISTINCT(department_id)) FROM Degree_Programs;
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs;
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs;
SELECT COUNT(degree_program_id) FROM Degree_Programs WHERE department_id = 1;
SELECT COUNT(degree_program_id) FROM Degree_Programs WHERE department_id = 1;
SELECT section_name, section_description FROM Sections;
SELECT section_name, section_description FROM Sections;
SELECT course_name, course_id FROM Courses WHERE course_id IN (SELECT course_id FROM Sections GROUP BY course_id HAVING COUNT(course_id) <= 2);
SELECT course_name, course_id FROM Courses WHERE course_id NOT IN (SELECT course_id FROM Sections WHERE course_id = course_id)
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT semester_name, semester_id FROM Semesters ORDER BY COUNT(student_id) DESC LIMIT 1;
SELECT semester_name, semester_id, COUNT(student_id) AS 'Number of Students' FROM Semesters INNER JOIN Student_Enrolment ON Semesters.semester_id = Student_Enrolment.semester_id GROUP BY Semesters.semester_id ORDER BY COUNT(student_id) DESC LIMIT 1;
SELECT * FROM Departments WHERE department_name LIKE '%computer%';
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%';
SELECT s.first_name, s.middle_name, s.last_name, s.student_id FROM Students s INNER JOIN Student_Enrolment se ON s.student_id = se.student_id INNER JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id INNER JOIN Semesters s ON se.semester_id = s.semester_id WHERE dp.degree_program_id = 2 AND s.semester_id = 1
SELECT s.first_name, s.middle_name, s.last_name, s.student_id FROM Students s INNER JOIN Student_Enrolment se ON s.student_id = se.student_id INNER JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id INNER JOIN Semesters s2 ON se.semester_id = s2.semester_id WHERE dp.degree_program_id = 2 AND s2.semester_id = 1
SELECT s.first_name, s.middle_name, s.last_name FROM Students s INNER JOIN Student_Enrolment se ON s.student_id = se.student_id INNER JOIN Degree_Programs dp ON se.degree_program_id = dp.degree_program_id WHERE dp.degree_summary_name = 'Bachelor'
SELECT first_name, middle_name, last_name FROM Students INNER JOIN Student_Enrolment ON Students.student_id = Student_Enrolment.student_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id WHERE Degree_Programs.degree_summary_name = 'Bachelors'
SELECT `degree_summary_name` FROM `Degree_Programs` GROUP BY `degree_summary_name` ORDER BY COUNT(`degree_summary_name`) DESC LIMIT 1;
SELECT degree_summary_name, COUNT(student_id) AS student_count FROM Student_Enrolment GROUP BY degree_summary_name ORDER BY student_count DESC LIMIT 1;
SELECT Degree_Programs.degree_program_id, Degree_Programs.degree_summary_name, Degree_Programs.degree_summary_description FROM Degree_Programs INNER JOIN Student_Enrolment ON Degree_Programs.degree_program_id = Student_Enrolment.degree_program_id GROUP BY Degree_Programs.degree_program_id ORDER BY COUNT(Student_Enrolment.degree_program_id) DESC LIMIT 1;
SELECT degree_program_id, degree_summary_name, COUNT(student_id) AS student_count FROM Student_Enrolment GROUP BY degree_program_id, degree_summary_name ORDER BY student_count DESC LIMIT 1;
SELECT student_id, first_name, middle_name, last_name, COUNT(student_id) AS enrollments FROM Student_Enrolment GROUP BY student_id ORDER BY enrollments DESC LIMIT 1;
SELECT s.first_name, s.middle_name, s.last_name, s.student_id, COUNT(se.student_enrolment_id) AS enrollments FROM Students s INNER JOIN Student_Enrolment se ON s.student_id = se.student_id GROUP BY s.student_id ORDER BY enrollments DESC LIMIT 1;
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment);
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment);
SELECT DISTINCT course_name FROM Courses INNER JOIN Student_Enrolment_Courses ON Courses.course_id = Student_Enrolment_Courses.course_id
SELECT course_name FROM Courses WHERE course_id IN (SELECT course_id FROM Student_Enrolment_Courses)
SELECT course_name, COUNT(course_id) AS 'Number of Enrollments' FROM Student_Enrolment_Courses GROUP BY course_id ORDER BY COUNT(course_id) DESC LIMIT 1;
SELECT course_name, COUNT(student_course_id) AS 'Number of Students Enrolled' FROM Student_Enrolment_Courses GROUP BY course_id ORDER BY COUNT(student_course_id) DESC LIMIT 1;
SELECT last_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = 'North Carolina') AND student_id NOT IN (SELECT student_id FROM Student_Enrolment);
SELECT last_name FROM Students WHERE state_province_county = 'North Carolina' AND student_id NOT IN (SELECT student_id FROM Student_Enrolment);
SELECT transcript_date, transcript_id FROM Transcripts WHERE transcript_id IN (SELECT transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(transcript_id) >= 2);
SELECT * FROM Transcripts WHERE transcript_id IN (SELECT transcript_id FROM Transcript_Contents GROUP BY transcript_id HAVING COUNT(transcript_id) >= 2);
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward';
SELECT cell_mobile_number FROM Students WHERE last_name = 'Ward' AND first_name = 'Timmothy';
SELECT first_name, middle_name, last_name FROM Students ORDER BY student_id ASC LIMIT 1;
SELECT first_name, middle_name, last_name FROM Students ORDER BY student_id LIMIT 1;
SELECT first_name, middle_name, last_name FROM Students WHERE student_id = (SELECT MIN(student_id) FROM Student_Enrolment);
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name, permanent_address_id, current_address_id FROM Students WHERE permanent_address_id!= current_address_id;
SELECT first_name FROM Students WHERE permanent_address_id!= current_address_id;
SELECT `address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, `other_address_details` FROM `Addresses` ORDER BY `address_id` DESC LIMIT 1;
SELECT `address_id`, `line_1`, `line_2` FROM `Addresses` ORDER BY `address_id` DESC LIMIT 1;
SELECT AVG(transcript_date) FROM Transcripts;
SELECT AVG(transcript_date) FROM Transcripts;
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1;
SELECT MIN(transcript_date) AS earliest_date, other_details FROM Transcripts;
SELECT COUNT(*) FROM Transcripts;
SELECT COUNT(*) FROM Transcripts;
SELECT MAX(transcript_date) FROM Transcripts;
SELECT MAX(transcript_date) FROM Transcripts;
SELECT COUNT(DISTINCT(student_course_id)) AS 'Number of times a course enrollment shows in different transcripts', student_course_id FROM Student_Enrolment_Courses GROUP BY student_course_id ORDER BY student_course_id DESC
SELECT MAX(course_id), course_id FROM Transcript_Contents GROUP BY course_id;
SELECT MIN(transcript_date), transcript_id FROM Transcripts JOIN Transcript_Contents ON Transcripts.transcript_id = Transcript_Contents.transcript_id GROUP BY transcript_id ORDER BY transcript_id;
SELECT MIN(transcript_date), transcript_id FROM Transcripts JOIN Transcript_Contents ON Transcripts.transcript_id = Transcript_Contents.transcript_id GROUP BY transcript_id ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Semesters.semester_name FROM Semesters INNER JOIN Student_Enrolment ON Semesters.semester_id = Student_Enrolment.semester_id INNER JOIN Degree_Programs ON Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id INNER JOIN Departments ON Degree_Programs.department_id = Departments.department_id WHERE Departments.department_name = 'Master' AND Degree_Programs.degree_summary_name = 'Bachelor'
SELECT semester_id FROM Semesters WHERE semester_id IN (SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name IN ('Masters', 'Bachelors')))
SELECT COUNT(DISTINCT current_address_id) FROM Students;
SELECT DISTINCT `Addresses`.`address_id`, `Addresses`.`line_1`, `Addresses`.`line_2`, `Addresses`.`line_3`, `Addresses`.`city`, `Addresses`.`zip_postcode`, `Addresses`.`state_province_county`, `Addresses`.`country`, `Addresses`.`other_address_details` FROM `Addresses` INNER JOIN `Students` ON `Addresses`.`address_id` = `Students`.`current_address_id` UNION SELECT DISTINCT `Addresses`.`address_id`, `Addresses`.`line_1`, `Addresses`.`line_2`, `Addresses`.`line_3`, `Addresses`.`city`, `Addresses`.`zip_postcode`, `Addresses`.`state_province_county`, `Addresses`.`country`, `Addresses`.`other_address_details` FROM `Addresses` INNER JOIN `Students` ON `Addresses`.`address_id` = `Students`.`permanent_address_id`
SELECT * FROM Students ORDER BY last_name DESC, first_name DESC;
SELECT `last_name`, `first_name`, `email_address`, `cell_mobile_number` FROM `Students` ORDER BY `last_name` DESC, `first_name` DESC;
error
SELECT section_description FROM Sections WHERE section_name = 'h';
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582';
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582';
SELECT Title FROM Cartoon ORDER BY Title;
SELECT Title FROM Cartoon ORDER BY Title;
SELECT * FROM Cartoon WHERE Directed_by = '<NAME>';
SELECT Title FROM Cartoon WHERE Directed_by = '<NAME>'
SELECT COUNT(*) FROM Cartoon WHERE Written_by = '<NAME>';
SELECT COUNT(*) FROM Cartoon WHERE Written_by = '<NAME>';
SELECT Cartoon.Title, Cartoon.Directed_by FROM Cartoon ORDER BY Cartoon.Original_air_date;
SELECT "Title", "Directed_by" FROM "Cartoon" ORDER BY "Original_air_date"
SELECT Title FROM Cartoon WHERE Directed_by = '<NAME>' OR Directed_by = '<NAME>';
SELECT Title FROM Cartoon WHERE Directed_by = '<NAME>' OR Directed_by = '<NAME>'
SELECT Country, COUNT(Country) AS "Number of TV Channels" FROM TV_Channel GROUP BY Country ORDER BY "Number of TV Channels" DESC LIMIT 1;
SELECT Country, COUNT(Country) AS "Number of TV Channels" FROM TV_Channel GROUP BY Country ORDER BY "Number of TV Channels" DESC LIMIT 1;
SELECT COUNT(DISTINCT series_name) AS "Number of different series names", COUNT(DISTINCT Content) AS "Number of different contents" FROM TV_Channel;
SELECT COUNT(DISTINCT `series_name`) FROM `TV_Channel`
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Content FROM TV_Channel WHERE id = 'Sky Radio';
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio";
SELECT Package_Option FROM TV_Channel WHERE series_name = 'Sky Radio';
SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English';
SELECT COUNT(DISTINCT `Language`) FROM `TV_Channel` WHERE `Language` = 'English';
SELECT Language, COUNT(Language) AS "Number of TV Channel" FROM TV_Channel GROUP BY Language ORDER BY COUNT(Language) ASC LIMIT 1;  SELECT Language, COUNT(Language) AS "Number of TV Channel" FROM TV_Channel GROUP BY Language ORDER BY COUNT(Language) DESC LIMIT 1;
SELECT Language, COUNT(Language) AS "Number of Channels" FROM TV_Channel GROUP BY Language ORDER BY "Number of Channels" ASC LIMIT 1;
SELECT Language, COUNT(Language) FROM TV_Channel GROUP BY Language;
SELECT Language, COUNT(Language) FROM TV_Channel GROUP BY Language;
SELECT TV_Channel.series_name FROM Cartoon INNER JOIN TV_Channel ON Cartoon.Channel = TV_Channel.id WHERE Cartoon.Title = "The Rise of the Blue Beetle!"
SELECT "series_name" FROM "TV_Channel" WHERE "id" = (SELECT "Channel" FROM "Cartoon" WHERE "Title" = "The Rise of the Blue Beetle");
SELECT "Title" FROM "Cartoon" WHERE "Channel" = (SELECT "id" FROM "TV_Channel" WHERE "series_name" = "Sky Radio");
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio");
SELECT "Episode", "Rating" FROM "TV_series" ORDER BY "Rating" ASC;
SELECT * FROM TV_series ORDER BY Rating DESC;
SELECT "TV_series"."Episode", "TV_series"."Rating" FROM "TV_series" ORDER BY "TV_series"."Rating" DESC LIMIT 3;
SELECT * FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT MIN(Share), MAX(Share) FROM TV_series;
SELECT MAX(Share), MIN(Share) FROM TV_series;
SELECT "Air_Date" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime";
SELECT "Air_Date" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime";
SELECT "TV_Channel"."series_name" FROM "TV_Channel" INNER JOIN "TV_series" ON "TV_Channel"."id" = "TV_series"."Channel" WHERE "TV_series"."Episode" = "A Love of a Lifetime"
SELECT "series_name" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime";
SELECT "Episode" FROM "TV_series" WHERE "Channel" = 'Sky Radio';
SELECT "Episode" FROM "TV_series" WHERE "TV_series"."id" = 1;
SELECT Directed_by, COUNT(Directed_by) AS Number_of_cartoons FROM Cartoon GROUP BY Directed_by
SELECT Directed_by, COUNT(Title) AS "Number of cartoons" FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1;
SELECT Production_code, Channel FROM Cartoon ORDER BY Production_code DESC LIMIT 1;
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes';
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes';
SELECT Country FROM Cartoon WHERE Written_by = '<NAME>'
SELECT DISTINCT Country FROM Cartoon WHERE Written_by = '<NAME>'
SELECT Country FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Written_by = '<NAME>');
SELECT DISTINCT Country FROM Cartoon WHERE Written_by = '<NAME>' AND Country NOT IN (SELECT Country FROM Cartoon WHERE Written_by = '<NAME>');
SELECT "series_name", "Country" FROM "TV_Channel" WHERE "id" IN (SELECT "Channel" FROM "Cartoon" WHERE "Directed_by" = '<NAME>' AND "Written_by" = '<NAME>');
SELECT "series_name", "Country" FROM "TV_Channel" WHERE "Package_Option" = "Cartoon" AND "Directed_by" = "<NAME>" OR "Directed_by" = "<NAME>"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language!= 'English';
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language!= 'English';
SELECT id FROM TV_Channel WHERE Country IN (SELECT Country FROM TV_Channel GROUP BY Country HAVING COUNT(Country) > 2)
SELECT DISTINCT Channel FROM TV_series;
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = '<NAME>');
SELECT DISTINCT `Channel` FROM `Cartoon` WHERE `Directed_by` = '<NAME>'
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = '<NAME>');
SELECT DISTINCT Package_Option FROM TV_Channel WHERE Package_Option NOT IN (SELECT Directed_by FROM Cartoon WHERE Directed_by = '<NAME>');
SELECT COUNT(*) FROM "poker_player";
SELECT COUNT(*) FROM "poker_player";
SELECT "Earnings" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT "Earnings" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT "Final_Table_Made", "Best_Finish" FROM "poker_player"
SELECT "Final_Table_Made", "Best_Finish" FROM "poker_player"
SELECT AVG(Earnings) FROM poker_player;
SELECT AVG(Earnings) FROM poker_player;
SELECT "Money_Rank" FROM "poker_player" WHERE "Earnings" = (SELECT MAX("Earnings") FROM "poker_player");
SELECT "Money_Rank" FROM "poker_player" WHERE "Earnings" = (SELECT MAX("Earnings") FROM "poker_player")
SELECT MAX("Final_Table_Made") FROM "poker_player" WHERE "Earnings" < 200000;
SELECT MAX("Final_Table_Made") FROM "poker_player" WHERE "Earnings" < 200000;
SELECT "Name" FROM "poker_player"
SELECT "Name" FROM "poker_player"
SELECT Name FROM poker_player WHERE Earnings > 300000;
SELECT "Name" FROM "poker_player" WHERE "Earnings" > 300000;
SELECT "Name" FROM "poker_player" ORDER BY "Final_Table_Made" ASC;
SELECT "Name" FROM "poker_player" ORDER BY "Final_Table_Made" ASC;
SELECT "Birth_Date" FROM "people" WHERE "People_ID" = (SELECT "People_ID" FROM "poker_player" WHERE "Earnings" = (SELECT MIN("Earnings") FROM "poker_player"));
SELECT "Birth_Date" FROM "people" WHERE "People_ID" = (SELECT "People_ID" FROM "poker_player" WHERE "Earnings" = (SELECT MIN("Earnings") FROM "poker_player"));
SELECT "Money_Rank" FROM "poker_player" WHERE "Height" = (SELECT MAX("Height") FROM "poker_player");
SELECT "Money_Rank" FROM "poker_player" WHERE "Height" = (SELECT MAX("Height") FROM "poker_player")
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200;
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200;
SELECT "Name" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT "Name" FROM "poker_player" ORDER BY "Earnings" DESC;
SELECT Nationality, COUNT(Nationality) FROM people GROUP BY Nationality;
SELECT Nationality, COUNT(*) AS "Number of People" FROM people GROUP BY Nationality;
SELECT Nationality, COUNT(*) AS "Count" FROM people GROUP BY Nationality ORDER BY "Count" DESC LIMIT 1;
SELECT Nationality, COUNT(Nationality) AS "Count" FROM people GROUP BY Nationality ORDER BY "Count" DESC LIMIT 1;
SELECT DISTINCT Nationality FROM people;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) > 1;
SELECT Name, Birth_Date FROM people ORDER BY Name ASC;
SELECT Name, Birth_Date FROM people ORDER BY Name;
SELECT Name FROM people WHERE Nationality!= "Russia";
SELECT Name FROM people WHERE Nationality!= 'Russia';
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player);
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player);
SELECT DISTINCT Nationality FROM people;
SELECT COUNT(DISTINCT Nationality) FROM people;
SELECT COUNT(DISTINCT state) FROM `AREA_CODE_STATE`;
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC;
SELECT vote_id, phone_number, state FROM VOTES;
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE;
SELECT MAX(created) FROM VOTES WHERE state = 'CA';
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name!= 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES;
SELECT contestant_number, contestant_name FROM CONTESTANTS WHERE contestant_number IN (SELECT contestant_number FROM VOTES GROUP BY contestant_number HAVING COUNT(*) >= 2);
SELECT contestant_number, contestant_name FROM CONTESTANTS WHERE contestant_number = (SELECT contestant_number FROM VOTES GROUP BY contestant_number ORDER BY COUNT(*) LIMIT 1);
SELECT COUNT(*) FROM VOTES WHERE state IN ('NY', 'CA');
SELECT COUNT(*) FROM `CONTESTANTS` WHERE `contestant_number` NOT IN (SELECT `contestant_number` FROM `VOTES`);
SELECT `state`, `area_code` FROM `AREA_CODE_STATE` WHERE `area_code` IN ( 	SELECT `area_code` 	FROM `VOTES` 	GROUP BY `area_code` 	ORDER BY COUNT(`area_code`) DESC 	LIMIT 1 )
SELECT created, state, phone_number FROM VOTES WHERE contestant_name = 'Tabatha Gehling';
SELECT area_code FROM AREA_CODE_STATE WHERE area_code IN ( 	SELECT state 	FROM VOTES 	WHERE contestant_number = 1 	INTERSECT 	SELECT state 	FROM VOTES 	WHERE contestant_number = 2 )
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%';
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Caribbean'
SELECT Continent FROM country WHERE Code = 'AIA';
SELECT Continent FROM country WHERE Code = 'AI';
SELECT c.Region FROM city c WHERE c.Name = 'Kabul';
SELECT `c`.`Region` FROM `city` AS `c` WHERE `c`.`ID` = 1
SELECT `Language` FROM `countrylanguage` WHERE `CountryCode` = 'ABW' ORDER BY `Percentage` DESC LIMIT 1
SELECT countrylanguage.Language, countrylanguage.Percentage FROM countrylanguage INNER JOIN country ON country.Code = countrylanguage.CountryCode WHERE country.Name = 'Aruba' ORDER BY countrylanguage.Percentage DESC LIMIT 1;
SELECT Population, LifeExpectancy FROM country WHERE Code = 'BRA';
SELECT Population, LifeExpectancy FROM city WHERE CountryCode = 'BRA'
SELECT District, Population FROM city WHERE CountryCode = 'AGO';
SELECT c.Region, c.Population FROM city c, country c2 WHERE c.CountryCode = c2.Code AND c2.Name = 'Angola'
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Central Africa';
SELECT Name FROM country WHERE Continent = 'Asia' AND LifeExpectancy = (SELECT MIN(LifeExpectancy) FROM country WHERE Continent = 'Asia');
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1;
SELECT SUM(Population), MAX(GNP) FROM city WHERE CountryCode = 'AS';
SELECT COUNT(*) AS `Count`, MAX(`GNP`) AS `MaxGNP` FROM `city` WHERE `CountryCode` = 'AS';
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic';
SELECT SUM(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe');
SELECT SUM(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe');
SELECT COUNT(*) FROM city WHERE District = 'Gelderland'
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code IN (SELECT Code FROM country WHERE Code IN (SELECT Code FROM city WHERE District IN (SELECT District FROM city WHERE CountryCode = 'US')))
SELECT COUNT(DISTINCT Language) FROM countrylanguage;
SELECT COUNT(DISTINCT Language) FROM countrylanguage;
SELECT COUNT(DISTINCT(GovernmentForm)) FROM country WHERE Continent = 'Africa';
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa';
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'ABW';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T';
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T';
SELECT Name FROM country WHERE Code = (SELECT Code FROM countrylanguage WHERE Language = (SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1));
SELECT Name FROM country WHERE Code = (SELECT Code FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1));
SELECT Continent, COUNT(DISTINCT Language) AS Languages FROM countrylanguage GROUP BY Continent ORDER BY Languages DESC
SELECT Continent, COUNT(Language) AS Languages FROM countrylanguage GROUP BY Continent ORDER BY Languages DESC
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Dutch' AND IsOfficial = 'T' AND CountryCode IN (SELECT Code FROM country WHERE Language = 'English');
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch';
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T' AND CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French' AND IsOfficial = 'T'))
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T') AND Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'French' AND IsOfficial = 'T');
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language IN ('English', 'French') AND IsOfficial = 'T')
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language IN ('English', 'French'));
SELECT COUNT(DISTINCT Continent) FROM countrylanguage WHERE Language = 'Chinese'
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Chinese' AND Continent = 'Asia';
SELECT DISTINCT Region FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch'
SELECT DISTINCT c.Region, c.Name FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE cl.Language = 'Dutch' OR cl.Language = 'English'
SELECT country.Name FROM country, countrylanguage WHERE country.Code = countrylanguage.CountryCode AND (countrylanguage.Language = 'English' OR countrylanguage.Language = 'Dutch')
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language IN ('English', 'Dutch'));
SELECT countrylanguage.Language, countrylanguage.Percentage FROM countrylanguage INNER JOIN country ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Asia' ORDER BY countrylanguage.Percentage DESC LIMIT 1;
SELECT countrylanguage.Language, country.Name, countrylanguage.Percentage FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code WHERE country.Continent = 'Asia' ORDER BY countrylanguage.Percentage DESC LIMIT 1;
SELECT DISTINCT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'Republic') AND Language NOT IN (SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'Republic'))
SELECT DISTINCT countrylanguage.Language FROM countrylanguage WHERE countrylanguage.IsOfficial = 'T' AND countrylanguage.Percentage = (SELECT MAX(countrylanguage.Percentage) FROM countrylanguage WHERE countrylanguage.IsOfficial = 'T' AND countrylanguage.CountryCode = countrylanguage.CountryCode) AND countrylanguage.CountryCode NOT IN (SELECT countrylanguage.CountryCode FROM countrylanguage WHERE countrylanguage.IsOfficial = 'T' AND countrylanguage.Percentage = (SELECT MAX(countrylanguage.Percentage) FROM countrylanguage WHERE countrylanguage.IsOfficial = 'T' AND countrylanguage.CountryCode = countrylanguage.CountryCode))
SELECT city.Name, city.Population FROM city INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' ORDER BY city.Population DESC LIMIT 1;
SELECT city.Name, country.Name FROM city INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' ORDER BY city.Population DESC LIMIT 1;
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' AND SurfaceArea = (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Asia');
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1;
SELECT avg(LifeExpectancy) FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'F';
SELECT AVG(LifeExpectancy) FROM country WHERE Language!= 'English'
SELECT SUM(Population) FROM city WHERE CountryCode NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English');
SELECT COUNT(*) FROM city WHERE CountryCode NOT IN (SELECT Code FROM countrylanguage WHERE Language = 'English');
SELECT `country`.`Name` AS `Country`, `countrylanguage`.`Language` AS `Language` FROM `country` INNER JOIN `countrylanguage` ON `country`.`Code` = `countrylanguage`.`CountryCode` WHERE `country`.`HeadOfState` = 'Beatrix'
SELECT countrylanguage.Language FROM countrylanguage INNER JOIN country ON country.Code = countrylanguage.CountryCode INNER JOIN city ON city.ID = country.Capital WHERE city.Name = 'Beatrix'
SELECT COUNT(DISTINCT countrylanguage.Language) FROM countrylanguage WHERE countrylanguage.IsOfficial = 'T' AND countrylanguage.IndepYear < 1930;
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IndepYear < 1930;
SELECT Name FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = 'Europe');
SELECT Name, Area FROM country WHERE Area > (SELECT MAX(Area) FROM country WHERE Continent = 'Europe');
SELECT Name FROM city INNER JOIN country ON city.CountryCode = country.Code WHERE country.Continent = 'Africa' AND city.Population < (SELECT MAX(Population) FROM city INNER JOIN country ON city.CountryCode = country.Code WHERE country.Continent = 'Asia')
SELECT Name FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') AND Population < (SELECT Population FROM country WHERE Continent = 'Asia');
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa');
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT Population FROM country WHERE Continent = 'Africa');
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English');
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English');
SELECT country.Code FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language!= 'English'
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm!= 'Republic'
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND Code NOT IN (SELECT Code FROM city WHERE District = 'Republic')
SELECT city.Name FROM city INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' AND countrylanguage.IsOfficial = 'F' AND country.Continent = 'Europe'
SELECT Name FROM city WHERE CountryCode = 'EUR' AND Language!= 'English'
SELECT DISTINCT city.Name FROM city INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'Chinese' AND country.Continent = 'Asia'
SELECT Name FROM city WHERE CountryCode = 'CHN' AND Continent = 'Asia'
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country);
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country);
SELECT Population, Name, HeadOfState FROM country WHERE SurfaceArea = (SELECT MAX(SurfaceArea) FROM country)
SELECT Name, Population, HeadOfState FROM country WHERE SurfaceArea = (SELECT MAX(SurfaceArea) FROM country);
SELECT country.Name, COUNT(countrylanguage.Language) AS LanguagesSpoken FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name HAVING COUNT(countrylanguage.Language) >= 3
SELECT country.Name, COUNT(countrylanguage.Language) AS Languages FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode GROUP BY country.Name HAVING COUNT(countrylanguage.Language) > 2
SELECT District, COUNT(*) AS NumCities FROM city WHERE Population > (SELECT AVG(Population) FROM city) GROUP BY District
SELECT District, COUNT(Population) AS Cities_Count, AVG(Population) AS Average_Population FROM city GROUP BY District HAVING AVG(Population) > (SELECT AVG(Population) FROM city)
SELECT `GovernmentForm`, SUM(`Population`) AS `TotalPopulation` FROM `country` WHERE `LifeExpectancy` > 72 GROUP BY `GovernmentForm`
SELECT DISTINCT GovernmentForm, SUM(Population) AS TotalPopulation FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT Continent, AVG(LifeExpectancy), SUM(Population) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5;
SELECT `Name`, `SurfaceArea` FROM `country` ORDER BY `SurfaceArea` DESC LIMIT 5;
SELECT Name FROM country ORDER BY Population DESC LIMIT 3;
SELECT Name FROM country ORDER BY Population DESC LIMIT 3;
SELECT Name FROM country WHERE Population < (SELECT MIN(Population) FROM country) LIMIT 3;
SELECT Name FROM country WHERE Population = (SELECT MIN(Population) FROM country) LIMIT 3;
SELECT COUNT(*) FROM country WHERE Continent = 'Asia';
SELECT COUNT(*) FROM country WHERE Continent = 'Asia';
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000;
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000;
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000;
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000;
SELECT * FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000;
SELECT Language, COUNT(*) AS Count FROM countrylanguage GROUP BY Language ORDER BY Count DESC LIMIT 1;
SELECT Language, COUNT(*) AS Count FROM countrylanguage GROUP BY Language ORDER BY Count DESC LIMIT 1;
SELECT country.Name, countrylanguage.Language, countrylanguage.Percentage FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code GROUP BY countrylanguage.CountryCode, countrylanguage.Language ORDER BY countrylanguage.Percentage DESC
SELECT country.Code, countrylanguage.Language, countrylanguage.Percentage FROM countrylanguage INNER JOIN country ON countrylanguage.CountryCode = country.Code WHERE countrylanguage.Percentage = (SELECT MAX(Percentage) FROM countrylanguage)
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish' AND Percentage = (SELECT MAX(Percentage) FROM countrylanguage WHERE Language = 'Spanish');
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'T';
SELECT Code FROM countrylanguage WHERE Language = 'Spanish' GROUP BY Code ORDER BY SUM(Percentage) DESC LIMIT 1;
SELECT Code FROM countrylanguage WHERE Language = 'Spanish' GROUP BY Code HAVING COUNT(Language) = (SELECT COUNT(Language) FROM countrylanguage WHERE Language = 'Spanish')
SELECT COUNT(*) FROM conductor;
SELECT COUNT(*) FROM conductor;
SELECT "Name" FROM "conductor" ORDER BY "Age" ASC;
SELECT "Name" FROM "conductor" ORDER BY "Age" ASC;
SELECT Name FROM conductor WHERE Nationality!= 'USA'
SELECT "Name" FROM "conductor" WHERE "Nationality"!= "USA"
SELECT Record_Company, Year_of_Founded FROM orchestra ORDER BY Year_of_Founded DESC;
SELECT Record_Company, Year_of_Founded FROM orchestra ORDER BY Year_of_Founded DESC;
SELECT AVG(Attendance) FROM show;
SELECT AVG(Attendance) FROM show;
SELECT MAX(Share) FROM performance WHERE Type!= "Live final"; SELECT MIN(Share) FROM performance WHERE Type!= "Live final";
SELECT max(Share) as max_share, min(Share) as min_share FROM performance WHERE Type!= 'Live final';
SELECT DISTINCT Nationality FROM conductor;
SELECT COUNT(DISTINCT Nationality) FROM conductor;
SELECT "Name" FROM "conductor" ORDER BY "Year_of_Work" DESC;
SELECT "Name" FROM "conductor" ORDER BY "Year_of_Work" DESC;
SELECT Name FROM conductor WHERE Year_of_Work = (SELECT MAX(Year_of_Work) FROM conductor);
SELECT Name FROM conductor WHERE Year_of_Work = (SELECT MAX(Year_of_Work) FROM conductor);
SELECT "Name", "Orchestra" FROM "conductor" JOIN "orchestra" ON "conductor"."Conductor_ID" = "orchestra"."Conductor_ID"
SELECT conductor.Name, orchestra.Orchestra FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID;
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT DISTINCT Conductor_ID FROM orchestra);
SELECT DISTINCT conductor.Name FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Name HAVING COUNT(orchestra.Conductor_ID) > 1;
SELECT conductor.Name, COUNT(orchestra.Conductor_ID) AS "Number of Orchestras" FROM conductor INNER JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID GROUP BY conductor.Conductor_ID ORDER BY "Number of Orchestras" DESC LIMIT 1;
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1);
SELECT "Name" FROM "conductor" WHERE "Year_of_Work" > 2008;
SELECT Name FROM conductor WHERE Year_of_Work > 2008;
SELECT Record_Company, COUNT(DISTINCT Orchestra_ID) FROM orchestra GROUP BY Record_Company;
SELECT Record_Company, COUNT(DISTINCT Orchestra_ID) AS "Number of Orchestras" FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format, COUNT(*) AS Count FROM orchestra GROUP BY Major_Record_Format ORDER BY Count ASC;
SELECT Major_Record_Format, COUNT(*) AS Frequency FROM orchestra GROUP BY Major_Record_Format ORDER BY Frequency DESC;
SELECT Record_Company, COUNT(Record_Company) AS Number_of_orchestras FROM orchestra GROUP BY Record_Company ORDER BY Number_of_orchestras DESC LIMIT 1;
SELECT Record_Company, COUNT(*) AS "Number of Orchestras" FROM orchestra GROUP BY Record_Company ORDER BY "Number of Orchestras" DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance);
SELECT Orchestra_ID, Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance);
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 OR Year_of_Founded > 2003;
SELECT DISTINCT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 AND Year_of_Founded > 2003;
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD';
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD';
SELECT DISTINCT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT DISTINCT Orchestra_ID FROM performance);
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM performance GROUP BY Orchestra_ID HAVING COUNT(*) > 1);
SELECT COUNT(*) FROM Highschooler;
SELECT COUNT(*) FROM Highschooler;
SELECT name, grade FROM Highschooler;
SELECT name, grade FROM Highschooler;
SELECT grade FROM Highschooler;
SELECT grade FROM Highschooler;
SELECT grade FROM Highschooler WHERE ID = 1;
SELECT grade FROM Highschooler WHERE name = 'Kyle';
SELECT name FROM Highschooler WHERE grade = 10;
SELECT name FROM Highschooler WHERE grade = 10;
SELECT ID FROM Highschooler WHERE name = 'Kyle';
SELECT ID FROM Highschooler WHERE name = 'Kyle';
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10;
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10;
SELECT grade, COUNT(grade) FROM Highschooler GROUP BY grade;
SELECT grade, COUNT(grade) FROM Highschooler GROUP BY grade;
SELECT grade, COUNT(grade) FROM Highschooler GROUP BY grade ORDER BY COUNT(grade) DESC LIMIT 1;
SELECT grade, COUNT(grade) FROM Highschooler GROUP BY grade ORDER BY COUNT(grade) DESC LIMIT 1;
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4;
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4;
SELECT student_id, COUNT(friend_id) FROM Friend GROUP BY student_id
SELECT Highschooler.name, count(Friend.friend_id) FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY Highschooler.ID
SELECT Highschooler.name, count(Friend.friend_id) FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY Highschooler.name
SELECT name, COUNT(friend_id) AS friends FROM Friend GROUP BY name
SELECT name, COUNT(friend_id) AS num_friends FROM Friend GROUP BY student_id ORDER BY num_friends DESC LIMIT 1;
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(student_id) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id = 1);
SELECT name FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle');
SELECT COUNT(*) FROM Friend WHERE student_id = 1;
SELECT COUNT(*) FROM Friend WHERE student_id = 1;
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT Highschooler.ID FROM Highschooler INNER JOIN Friend ON Highschooler.ID = Friend.student_id INNER JOIN Likes ON Highschooler.ID = Likes.liked_id WHERE Highschooler.ID = Friend.friend_id AND Highschooler.ID = Likes.student_id;
SELECT student_id, liked_id FROM Likes WHERE student_id IN (SELECT friend_id FROM Friend) AND liked_id IN (SELECT friend_id FROM Friend)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) AND ID IN (SELECT liked_id FROM Likes);
SELECT Highschooler.name FROM Highschooler INNER JOIN Friend ON Highschooler.ID = Friend.student_id INNER JOIN Likes ON Highschooler.ID = Likes.student_id WHERE Friend.friend_id = Likes.liked_id;
SELECT student_id, count(liked_id) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(liked_id) AS likes FROM Likes GROUP BY student_id
SELECT name, count(liked_id) FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name
SELECT name, count(liked_id) FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name
SELECT name, count(liked_id) as likes FROM Likes GROUP BY liked_id ORDER BY likes DESC LIMIT 1;
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE grade > 5 AND ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE grade > 5 AND (SELECT COUNT(*) FROM Friend WHERE student_id = Highschooler.ID) >= 2;
SELECT COUNT(*) FROM Likes WHERE student_id = 1;
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle');
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend);
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT grade FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT grade FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT DISTINCT state FROM Owners UNION SELECT DISTINCT state FROM Professionals
SELECT DISTINCT state FROM Owners UNION SELECT DISTINCT state FROM Professionals
SELECT AVG(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)
SELECT AVG(age) FROM Dogs
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = 'IN' OR (SELECT COUNT(*) FROM Treatments WHERE professional_id = Professionals.professional_id) > 2;
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = 'IN' OR (SELECT COUNT(*) FROM Treatments WHERE professional_id = Professionals.professional_id) > 2;
SELECT Dogs.name FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Treatments.cost_of_treatment > 1000
SELECT Dogs.name FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Treatments.cost_of_treatment > 1000
SELECT DISTINCT first_name FROM Owners WHERE first_name NOT IN (SELECT DISTINCT first_name FROM Dogs) UNION SELECT DISTINCT first_name FROM Professionals WHERE first_name NOT IN (SELECT DISTINCT first_name FROM Dogs)
SELECT DISTINCT first_name FROM Owners WHERE first_name NOT IN (SELECT DISTINCT first_name FROM Dogs) UNION SELECT DISTINCT first_name FROM Professionals WHERE first_name NOT IN (SELECT DISTINCT first_name FROM Dogs)
SELECT p.professional_id, p.role_code, p.email_address FROM Professionals p WHERE p.professional_id NOT IN (SELECT DISTINCT professional_id FROM Treatments);
SELECT p.professional_id, p.role_code, p.email_address FROM Professionals p WHERE p.professional_id NOT IN (SELECT DISTINCT professional_id FROM Treatments);
SELECT owner_id, first_name, last_name FROM Owners WHERE owner_id IN (SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY COUNT(dog_id) DESC LIMIT 1)
SELECT owner_id, first_name, last_name FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id GROUP BY owner_id ORDER BY COUNT(dog_id) DESC LIMIT 1;
SELECT DISTINCT professionals.professional_id, professionals.role_code, professionals.first_name FROM professionals INNER JOIN treatments ON professionals.professional_id = treatments.professional_id GROUP BY professionals.professional_id HAVING COUNT(treatments.treatment_id) >= 2;
SELECT DISTINCT `professional_id`, `role_code`, `first_name` FROM `Professionals` JOIN `Treatments` ON `Professionals`.`professional_id` = `Treatments`.`professional_id` GROUP BY `professional_id`, `role_code`, `first_name` HAVING COUNT(`treatment_id`) > 1;
SELECT breed_name, COUNT(breed_name) AS num_dogs FROM Dogs GROUP BY breed_name ORDER BY num_dogs DESC LIMIT 1;
SELECT breed_name FROM Breeds WHERE breed_code IN (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY COUNT(breed_code) DESC LIMIT 1)
SELECT owner_id, last_name FROM Owners WHERE owner_id IN (SELECT owner_id FROM Treatments GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1);
SELECT owner_id, last_name FROM Owners INNER JOIN Treatments ON Owners.owner_id = Treatments.owner_id GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1;
SELECT treatment_type_description, SUM(cost_of_treatment) AS total_cost FROM treatments GROUP BY treatment_type_description ORDER BY total_cost ASC
SELECT treatment_type_description, SUM(cost_of_treatment) AS total_cost FROM Treatments GROUP BY treatment_type_code ORDER BY total_cost ASC
SELECT owner_id, zip_code, SUM(cost_of_treatment) AS total_cost FROM Treatments GROUP BY owner_id ORDER BY total_cost DESC LIMIT 1;
SELECT owner_id, zip_code, SUM(cost_of_treatment) AS total_cost FROM Treatments GROUP BY owner_id ORDER BY total_cost DESC LIMIT 1;
SELECT DISTINCT professionals.professional_id, professionals.cell_number FROM professionals INNER JOIN treatments ON professionals.professional_id = treatments.professional_id GROUP BY professionals.professional_id HAVING COUNT(treatments.treatment_id) >= 2;
SELECT DISTINCT professionals.professional_id, professionals.cell_number FROM professionals INNER JOIN treatments ON professionals.professional_id = treatments.professional_id GROUP BY professionals.professional_id, professionals.cell_number HAVING COUNT(treatments.treatment_id) > 1;
SELECT first_name, last_name FROM Professionals INNER JOIN Treatments ON Professionals.professional_id = Treatments.professional_id WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT first_name, last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments));
SELECT Treatments.date_of_treatment, Professionals.first_name FROM Treatments INNER JOIN Professionals ON Treatments.professional_id = Professionals.professional_id;
SELECT date_of_treatment, first_name FROM treatments INNER JOIN professionals ON treatments.professional_id = professionals.professional_id;
SELECT Treatments.cost_of_treatment, Treatment_Types.treatment_type_description FROM Treatments INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code;
SELECT Treatments.cost_of_treatment, Treatment_Types.treatment_type_description FROM Treatments INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code;
SELECT o.first_name, o.last_name, s.size_description FROM Owners o INNER JOIN Dogs d ON o.owner_id = d.owner_id INNER JOIN Sizes s ON d.size_code = s.size_code
SELECT o.first_name, o.last_name, s.size_description FROM Owners o INNER JOIN Dogs d ON o.owner_id = d.owner_id INNER JOIN Sizes s ON d.size_code = s.size_code
SELECT o.first_name, d.name FROM Owners o JOIN Dogs d ON o.owner_id = d.owner_id
SELECT o.first_name, d.name FROM Owners o INNER JOIN Dogs d ON o.owner_id = d.owner_id;
SELECT Dogs.name, Treatments.date_of_treatment FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Dogs.breed_code = (SELECT breed_code FROM Breeds ORDER BY Dogs.dog_id LIMIT 1) ORDER BY Dogs.dog_id
SELECT Dogs.name, Treatments.date_of_treatment FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Dogs.breed_code = (SELECT breed_code FROM Breeds WHERE breed_name = 'Rare')
SELECT o.first_name, d.name FROM Owners o INNER JOIN Dogs d ON o.owner_id = d.owner_id WHERE o.state = 'VA'
SELECT first_name, name FROM Owners INNER JOIN Dogs ON Dogs.owner_id = Owners.owner_id WHERE state = 'VA'
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs INNER JOIN Treatments ON Dogs.dog_id = Treatments.dog_id
SELECT last_name FROM Owners INNER JOIN Dogs ON Owners.owner_id = Dogs.owner_id ORDER BY age ASC LIMIT 1;
SELECT last_name FROM Owners WHERE owner_id = (SELECT owner_id FROM Dogs WHERE age = (SELECT MIN(age) FROM Dogs));
SELECT email_address FROM Professionals WHERE state IN ('Hawaii', 'Wisconsin');
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin';
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs;
SELECT Dogs.date_arrived, Dogs.date_departed FROM Dogs;
SELECT COUNT(DISTINCT dog_id) FROM treatments;
SELECT COUNT(DISTINCT treatment_id) FROM treatments;
SELECT COUNT(DISTINCT(professional_id)) FROM Treatments;
SELECT COUNT(DISTINCT(professional_id)) FROM Treatments;
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%';
SELECT `role_code`, `street`, `city`, `state` FROM `Professionals` WHERE `city` LIKE '%West%'
SELECT o.first_name, o.last_name, o.email_address FROM Owners o WHERE o.state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%';
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs);
SELECT COUNT(dog_id) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs);
SELECT MAX(cost_of_treatment) FROM treatments;
SELECT MAX(cost_of_treatment) FROM Treatments;
SELECT COUNT(*) FROM Dogs WHERE abandoned_yn = 'N';
SELECT COUNT(*) FROM Dogs WHERE abandoned_yn = 'N';
SELECT COUNT(*) FROM Owners WHERE dog_id IS NULL;
SELECT COUNT(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs);
SELECT COUNT(*) FROM Professionals WHERE professional_id NOT IN (SELECT DISTINCT professional_id FROM Treatments);
SELECT COUNT(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments);
SELECT dog_name, age, weight, abandoned_yn FROM Dogs WHERE abandoned_yn = 1;
SELECT Dogs.name, Dogs.age, Dogs.weight FROM Dogs WHERE Dogs.abandoned_yn = 1;
SELECT AVG(age) FROM Dogs;
SELECT AVG(age) FROM Dogs;
SELECT MAX(age) FROM Dogs;
SELECT MAX(age) FROM Dogs;
SELECT charge_type, charge_amount FROM Charges;
SELECT charge_type, charge_amount FROM Charges;
SELECT MAX(charge_amount) FROM Charges;
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address, cell_number, home_phone FROM Professionals;
SELECT email_address, cell_number, home_phone FROM Professionals;
SELECT DISTINCT breed_code, size_code FROM Dogs;
SELECT DISTINCT breed_name, size_description FROM Dogs INNER JOIN Breeds ON Dogs.breed_code = Breeds.breed_code INNER JOIN Sizes ON Dogs.size_code = Sizes.size_code
SELECT first_name, treatment_type_description FROM Professionals INNER JOIN Treatments ON Professionals.professional_id = Treatments.professional_id INNER JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code
SELECT p.first_name, t.treatment_type_description FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id;
SELECT COUNT(*) FROM singer;
SELECT COUNT(*) FROM singer;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC;
SELECT "Birth_Year", "Citizenship" FROM "singer";
SELECT "Birth_Year", "Citizenship" FROM "singer";
SELECT Name FROM singer WHERE Citizenship!= "France";
SELECT Name FROM singer WHERE Citizenship!= 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949;
SELECT Name FROM singer WHERE Net_Worth_Millions = (SELECT MAX(Net_Worth_Millions) FROM singer);
SELECT Name FROM singer WHERE Net_Worth_Millions = (SELECT MAX(Net_Worth_Millions) FROM singer);
SELECT citizenship, COUNT(citizenship) AS "Number of Singers" FROM singer GROUP BY citizenship
SELECT citizenship, COUNT(citizenship) AS "Number of Singers" FROM singer GROUP BY citizenship
SELECT citizenship, COUNT(*) AS count FROM singer GROUP BY citizenship ORDER BY count DESC LIMIT 1;
SELECT citizenship, COUNT(*) AS count FROM singer GROUP BY citizenship ORDER BY count DESC LIMIT 1;
SELECT DISTINCT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship;
SELECT citizenship, MAX(net_worth_millions) FROM singer GROUP BY citizenship;
SELECT "Title", "Name" FROM `song` JOIN `singer` ON `song`.`Singer_ID` = `singer`.`Singer_ID`
SELECT "Title", "Name" FROM `song`
SELECT DISTINCT Name FROM singer WHERE Sales > 300000;
SELECT DISTINCT Name FROM singer WHERE Sales > 300000;
SELECT DISTINCT s.Name FROM singer s JOIN song s2 ON s.Singer_ID = s2.Singer_ID GROUP BY s.Singer_ID HAVING COUNT(s2.Singer_ID) > 1;
SELECT DISTINCT Name FROM singer WHERE Singer_ID IN (SELECT DISTINCT Singer_ID FROM song);
SELECT s.Name, SUM(s.Sales) AS Total_Sales FROM song s JOIN singer singer ON singer.Singer_ID = s.Singer_ID GROUP BY s.Singer_ID
SELECT Name, SUM(Sales) AS Total_Sales FROM song JOIN singer ON song.Singer_ID = singer.Singer_ID GROUP BY Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT DISTINCT Singer_ID FROM song);
SELECT DISTINCT s.Name FROM singer s WHERE s.Singer_ID NOT IN (SELECT singer_id FROM song);
SELECT DISTINCT citizenship FROM singer WHERE birth_year < 1945 OR birth_year > 1955;
SELECT DISTINCT citizenship FROM singer WHERE birth_year < 1945 OR birth_year > 1955;
SELECT COUNT(*) FROM `Other_Available_Features`
SELECT `feature_type_name` FROM `Ref_Feature_Types` WHERE `feature_type_code` = 'AirCon';
SELECT `property_type_description` FROM `Ref_Property_Types` WHERE `property_type_code` IN (SELECT `property_type_code` FROM `Properties`)
SELECT property_name FROM Properties WHERE property_type_code = 'HSE' OR property_type_code = 'APT' AND room_count > 1;
