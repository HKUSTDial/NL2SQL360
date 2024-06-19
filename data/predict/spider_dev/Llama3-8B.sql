SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE Country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE Country = "France"
SELECT T1.song_Name, T1.song_release_year FROM singer AS T1 ORDER BY T1.Age DESC LIMIT 1
SELECT Song_Name, Song_Release_Year FROM singer ORDER BY Age DESC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country ORDER BY COUNT(*)
SELECT COUNT(*), Country FROM singer GROUP BY Country ORDER BY COUNT(*)
SELECT Song_Name FROM singer WHERE Age > AVG(Age)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT LOCATION, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION, Name FROM station WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(capacity), AVG(capacity) FROM stadium
SELECT AVG(capacity), MAX(capacity) FROM stadium
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(DISTINCT T1.concert_Name) FROM concert AS T1 JOIN YEAR AS T2 ON T1.year = T2.year WHERE T2.year = 2014 OR T2.year = 2015
SELECT COUNT(DISTINCT T1.concert_Name) FROM concert AS T1 JOIN YEAR AS T2 ON T1.year = T2.year WHERE T2.year = 2014 OR T2.year = 2015
SELECT T1.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.name ORDER BY COUNT(*) DESC LIMIT 5
SELECT T1.name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY COUNT(*) DESC
SELECT T1.name, T1.capacity FROM concert AS T2 JOIN stadium AS T1 ON T2.stadium_id = T1.stadium_id WHERE T2.year >= 2014 GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM concert AS T2 JOIN stadium AS T1 ON T2.stadium_id = T1.stadium_id WHERE T2.year > 2013 GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Song_Release_Year FROM singer GROUP BY Song_Release_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Song_Release_Year FROM singer GROUP BY Song_Release_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT DISTINCT Country FROM singer WHERE Age > 40 INTERSECT SELECT DISTINCT Country FROM singer WHERE Age < 30
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE YEAR <> 2014)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE NOT YEAR = 2014)
SELECT T1.concert_Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name HAVING COUNT(*)
SELECT T1.concert_Name, T2.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name, T2.Theme
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY COUNT(*)
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY COUNT(*)
SELECT T1.Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = 2014
SELECT T1.Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Song_Release_Year = T2.Song_Release_Year WHERE T2.Song_Name = "Hey"
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Song_Release_Year = T2.Song_Release_Year WHERE T2.Song_Title LIKE "%Hey%"
SELECT T1.name, T1.location FROM concert AS T2 JOIN stadium AS T1 ON T2.stadium_id = T1.stadium_id WHERE T2.year = 2014 OR T2.year = 2015
SELECT T1.name, T1.location FROM concert AS T2 JOIN stadium AS T1 ON T2.stadium_id = T1.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name, T1.location FROM concert AS T2 JOIN stadium AS T1 ON T2.stadium_id = T1.stadium_id WHERE T2.year = 2015
SELECT COUNT(DISTINCT T1.concert_Name) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_ID = T2.stadium_ID ORDER BY T2.capacity DESC LIMIT 1
SELECT COUNT(DISTINCT T1.concert_Name) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_ID = T2.stadium_ID GROUP BY T2.name ORDER BY COUNT(DISTINCT T1.concert_Name) DESC LIMIT 1
SELECT COUNT(DISTINCT PetType) FROM Pets WHERE weight > 10
SELECT COUNT(DISTINCT PetType) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype ORDER BY MAX(weight)
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT T1.pet_age) FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT COUNT(DISTINCT T1.pet_age) FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT COUNT(DISTINCT t1.pettype) FROM Student AS t2 JOIN Has_Pet AS t1 ON t2.stuid = t1.stuid WHERE t2.sex = 'F' GROUP BY t1.pettype
SELECT COUNT(DISTINCT t1.pet_age) FROM Student AS t2 JOIN Has_Pet AS t1 ON t2.stuid = t1.stuid WHERE t2.sex = 'F' AND t1.pettype = 'Dog'
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT COUNT(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T1.fname FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = "Cat" AND T1.stuid IN (SELECT T1.stuid FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = "Dog")
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat' AND T2.pettype = 'dog'
SELECT Major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT Major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Has_Pet WHERE PetType <> 'Cat' EXCEPT SELECT StuID FROM Has_Pet WHERE PetType <> 'Cat' INTERSECT SELECT StuID FROM Student
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Cat')
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Dog" AND NOT T2.petid IN (SELECT T2.petid FROM Has_Pet AS T2 JOIN Student AS T1 ON T2.stuid = T1.stuid WHERE T2.pettype = "Cat")
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Dog" AND NOT T2.pettype = "Cat"
SELECT pettype, weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT pettype, weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(DISTINCT pet_age), MAX(DISTINCT pet_age) FROM Pets GROUP BY pettype
SELECT AVG(DISTINCT pet_age), MAX(DISTINCT pet_age) FROM Pets GROUP BY pettype
SELECT AVG(weight), pettype FROM Pets GROUP BY pettype
SELECT AVG(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT Fname, Age FROM Student JOIN Has_Pet ON Student.StuID = Has_Pet.StuID
SELECT PetID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = ¡®Smith¡¯
SELECT PetID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT T1.pet_age, T2.weight, T1.pettype, T1.petid, T2.petid, T1.stuid FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T3.stuid = T2.stuid GROUP BY T1.pettype HAVING COUNT(*) AS COUNT
SELECT T1.StuID, COUNT(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.fname, T1.sex FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT T1.fname, T1.sex FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING COUNT(*) > 1
SELECT T1.lname FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pet_age = 3 AND T2.pettype = 'Cat'
SELECT T1.lname FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3 AND T2.pettype = "Cat"
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM STUDENT WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT continentid, continentname, COUNT(DISTINCT countryid) FROM countries GROUP BY continentid ORDER BY COUNT(DISTINCT countryid)
SELECT ContId, Continent, COUNT(*) FROM continents JOIN countries ON continents.ContId = countries.Continent GROUP BY continents.ContId ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName ORDER BY COUNT(*)
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM model_list ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE T1.Year = 1970
SELECT DISTINCT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE T1.Year = 1970
SELECT T1.Make, T1.Year FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T3.Id = T1.Maker ORDER BY T1.Year DESC LIMIT 1
SELECT T1.FullName, T1.Country, T2.Year FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker ORDER BY T2.Year DESC LIMIT 1
SELECT DISTINCT Model FROM model_list WHERE YEAR > 1980
SELECT DISTINCT model FROM model_list WHERE YEAR > 1980
SELECT COUNT(*), continent FROM car_makers GROUP BY continent ORDER BY COUNT(*)
SELECT T1.Continent, T1.Continent, COUNT(*), T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContinentId = T2.Country GROUP BY T1.ContinentId ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.FullName ORDER BY COUNT(*)
SELECT COUNT(*), id, FullName FROM model_list GROUP BY id, FullName ORDER BY COUNT(*)
SELECT Accelerate FROM cars_data WHERE Make = "amc" AND Model = "hornet sportabout" (sw)
SELECT Accelerate FROM cars_data WHERE Id = (SELECT MakeId FROM car_names WHERE Model = "amc hornet sportabout")
SELECT COUNT(DISTINCT Country) FROM car_makers WHERE Country = "France"
SELECT COUNT(DISTINCT Country) FROM car_makers WHERE Country = "France"
SELECT COUNT(DISTINCT Model) FROM model_list WHERE Country = "United States"
SELECT COUNT(DISTINCT Model) FROM model_list WHERE Country = "United States"
SELECT AVG(mpg) FROM cars WHERE cylinders = 4
SELECT AVG(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Make WHERE T1.Cylinders = 4
SELECT MIN(T2.Weight) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Make WHERE T1.Cylinders = 8 AND T1.Year = 1974 ORDER BY T2.Weight DESC LIMIT 1
SELECT MIN(T2.Weight) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Make WHERE T1.Cylinders = 8 AND T1.Year = 1974
SELECT DISTINCT Maker, DISTINCT Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT Country, CountryId FROM car_makers GROUP BY Country HAVING COUNT(*) >= 1
SELECT CountryName, CountryId FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId GROUP BY CountryId HAVING COUNT(*) >= 1
SELECT COUNT(*) FROM cars WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT AVG(T2.Weight), T1.Year FROM cars AS T1 JOIN YEARLY AS T2 ON T1.Year = T2.Year GROUP BY T1.Year
SELECT AVG(T2.Weight), AVG(T2.Year) FROM cars_data AS T2 GROUP BY T2.Year
SELECT Country FROM car_makers WHERE Country IN (SELECT Country FROM car_makers WHERE Country IN (SELECT Country FROM countries WHERE Continent = 'Europe' GROUP BY Country HAVING COUNT(*) >= 3)
SELECT CountryName FROM countries WHERE Continent = "Europe" GROUP BY CountryName HAVING COUNT(*) >= 3
SELECT MAX(Horsepower), T2.Make FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT T1.Horsepower, T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Cylinders = 3 GROUP BY T2.FullName ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars WHERE YEAR < 1980
SELECT AVG(Horsepower) FROM cars WHERE YEAR < 1980
SELECT AVG(edispl) FROM cars_data WHERE model = "volvo"
SELECT AVG(edispl) FROM model_list WHERE model = "volvo"
SELECT MAX(Accelerate), COUNT(DISTINCT COUNT(*)) FROM cars_data GROUP BY COUNT(DISTINCT COUNT(*))
SELECT MAX(DISTINCT Accelerate) FROM cars_data GROUP BY DISTINCT Accelerate
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT T1.Model) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders > 4
SELECT COUNT(DISTINCT T1.Model) FROM cars AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders > 4
SELECT COUNT(*) FROM cars WHERE YEAR = 1980
SELECT COUNT(*) FROM cars_data WHERE YEAR = 1980
SELECT COUNT(DISTINCT Model) FROM model_list WHERE Maker = "American Motor Company"
SELECT COUNT(DISTINCT Model) FROM model_list WHERE Maker = "American Motor Company"
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3 ORDER BY COUNT(*)
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT Model FROM model_list WHERE Maker = "General Motors" OR Weight > 3500
SELECT DISTINCT Model FROM model_list WHERE Maker = "General Motors" OR Weight > 3500
SELECT DISTINCT YEAR FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000
SELECT DISTINCT YEAR FROM cars WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars WHERE Weight > 3000
SELECT Horsepower FROM cars ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars ORDER BY Accelerate DESC LIMIT 1
SELECT T1.cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.model = "volvo" ORDER BY T2.accelerate DESC LIMIT 1
SELECT T1.cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = "volvo" ORDER BY T1.accelerate DESC LIMIT 1
SELECT COUNT(DISTINCT T1.Accelerate) FROM cars AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.Horsepower DESC LIMIT 1 OFFSET 1
SELECT COUNT(DISTINCT T1.Accelerate) FROM cars AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.Horsepower DESC LIMIT 1 OFFSET 1
SELECT COUNT(DISTINCT Country) FROM countries WHERE COUNT(DISTINCT Country) > 2
SELECT COUNT(DISTINCT Country) FROM countries WHERE COUNT(DISTINCT Country) > 2
SELECT COUNT(DISTINCT T1.Model) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders > 6
SELECT COUNT(DISTINCT T1.Model) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders > 6
SELECT Model FROM model_list WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 4 GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Make, T1.Make FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Horsepower > (SELECT MIN(T2.Horsepower) FROM model_list) + 1) AND T1.Cylinders <= 3
SELECT MakeId, Model FROM car_names WHERE Horsepower <> (SELECT MIN(Horsepower) FROM cars) AND Cylinders <> (SELECT MIN(Cylinders) FROM cars)
SELECT MAX(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 8 AND T1.Year < 1980
SELECT MAX(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 8 AND T1.Year < 1980
SELECT DISTINCT Model FROM model_list WHERE Weight < 3500 AND NOT Maker = 'Ford Motor Company'
SELECT DISTINCT Model FROM model_list WHERE Weight < 3500 AND NOT Maker = "Ford Motor Company"
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) <> 1
SELECT CountryName FROM countries WHERE NOT CountryId IN (SELECT Country FROM car_makers)
SELECT Id, Maker FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT Id, Maker FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 AND COUNT(*) > 3
SELECT CountryId, CountryName FROM car_makers WHERE COUNT(*) > 3 OR Country = 'fiat'
SELECT CountryId, CountryName FROM countries WHERE COUNT(*) > 3 OR CountryName = "Italy" AND NOT CountryName = "United States" AND NOT CountryName = "United Kingdom" AND NOT CountryName = "Germany" AND NOT CountryName = "Spain" AND NOT CountryName = "France" AND NOT CountryName = "Portugal" AND NOT CountryName = "Belgium" AND NOT CountryName = "Netherlands" AND NOT CountryName = "United States" AND NOT CountryName = "United Kingdom" AND NOT CountryName = "Germany" AND NOT CountryName = "Spain" AND NOT CountryName = "France" AND NOT CountryName = "Portugal" AND NOT CountryName = "Belgium" AND NOT CountryName = "Netherlands"
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
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
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT COUNT(DISTINCT Country) FROM airlines WHERE Country = 'USA'
SELECT COUNT(DISTINCT Country) FROM airlines WHERE Country = 'United States'
SELECT T1.City, T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.FlightNo = "ALT"
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE DestAirport = "ATO"
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE DestAirport = "ATL"
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = "ABZ"
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE DestAirport = "ABZ"
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE DestAirport = 'ABZ'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = 'Aberdeen' AND DestAirport = 'Ashley'
SELECT COUNT(DISTINCT FlightNo) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.DestAirport = "Ashley"
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE Airline = 'JetBlue Airways'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE Airline = "JetBlue"
SELECT COUNT(DISTINCT FlightNo) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode WHERE T2.Abbreviation = 'United' AND T3.AirportName = 'ASY'
SELECT COUNT(DISTINCT FlightNo) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID JOIN airports AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T3.AirportName = "ASY" AND T2.Abbreviation = "United"
SELECT COUNT(DISTINCT FlightNo) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline JOIN airports AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T2.Airline = 'United' AND T3.AirportName = 'AHD'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = "AHD" AND Airline = "United"
SELECT COUNT(DISTINCT FlightNo) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.Airline = 'United'
SELECT COUNT(DISTINCT FlightNo) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen" AND T1.Airline = "United"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines GROUP BY COUNT(*) ORDER BY COUNT(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines GROUP BY COUNT(*) ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG' INTERSECT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO'
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "CVO" INTERSECT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG'
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "CVO" EXCEPT SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT DISTINCT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "ABZ"
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = "Aberdeen" OR SourceAirport = "Abilene"
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = "Aberdeen" OR SourceAirport = "Abilene"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT AirportCode FROM flights)
SELECT DISTINCT AirportName FROM airports WHERE NOT AirportCode IN (SELECT DISTINCT AirportCode FROM flights)
SELECT COUNT(*) FROM employee
SELECT COUNT(*) FROM employee
SELECT Name FROM employee ORDER BY Age
SELECT Name FROM employee ORDER BY Age
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT COUNT(*), city FROM employee GROUP BY city
SELECT DISTINCT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(DISTINCT City) > 1
SELECT DISTINCT City FROM employee WHERE Age > 30 GROUP BY City HAVING COUNT(*) > 1
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION ORDER BY COUNT(*)
SELECT COUNT(*), LOCATION FROM shop GROUP BY LOCATION ORDER BY COUNT(*)
SELECT Manager_Name, District FROM shop ORDER BY Number_Products DESC LIMIT 1
SELECT Manager_Name, District FROM shop ORDER BY Number_Products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_Products) FROM shop
SELECT MIN(Number_products), MAX(Number_Products) FROM shop
SELECT Name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT Name, LOCATION, District FROM shop ORDER BY Number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_Products) FROM shop)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1 OFFSET COUNT(*) - COUNT(DISTINCT T1.Shop_ID) / 2
SELECT Name FROM employee ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM hiring ORDER BY Is_full_Time DESC LIMIT 1
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation WHERE NOT YEAR_awarded IN (SELECT DISTINCT YEAR_awarded FROM Evaluation) EXCEPT SELECT DISTINCT YEAR_AWARDED FROM Evaluation WHERE Bonus <> 0)
SELECT Name FROM employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM evaluation)
SELECT T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring WHERE NOT Employee_ID IN (SELECT Employee_ID FROM employee)
SELECT T1.Shop_ID, COUNT(*), T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*)
SELECT T2.Name, COUNT(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT DISTINCT T1.Shop_ID, T1.Employee_ID, T1.Start_From, T1.Is_full_time FROM hiring AS T1
SELECT DISTINCT T1.Shop_ID, T1.Employee_ID, T1.Start_From, T1.Is_full_time FROM hiring AS T1
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_Products > 10000
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT DISTINCT District FROM shop WHERE Number_Products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_ID, Document_Name, Document_Description FROM Documents
SELECT Document_Name, Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Description LIKE "%w%"
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description CONTAINS "w"
SELECT Document_ID, Template_ID, Template_Type_Description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name = "Robbin CV"
SELECT Document_ID, Template_ID, Template_Details FROM Documents WHERE Document_Name = "Robbin CV"
SELECT COUNT(DISTINCT T1.Template_Type_Description) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Description
SELECT COUNT(DISTINCT Template_Type_Description) FROM Ref_Template_types
SELECT COUNT(DISTINCT Document_Name) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'
SELECT COUNT(DISTINCT t1.document_name) FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "PPT"
SELECT T1.Template_ID, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY COUNT(*)
SELECT DISTINCT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID ORDER BY COUNT(*) DESC LIMIT 10
SELECT Template_ID, Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_Type_Code, T1.Template_ID FROM Documents AS T2 JOIN Templates AS T1 ON T2.Template_ID = T1.Template_ID GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT DISTINCT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_Type_Code FROM Templates WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Documents)
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Ref_Template_types
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT Template_Type_Code FROM Ref_Template_types
SELECT Template_ID FROM Templates WHERE Template_Type_Code = PP OR Template_Type_Code = PPT
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PP' OR Template_Type_Code = 'PPT'
SELECT COUNT(*) FROM Ref_Template_types WHERE Template_Type_Code = 'CV'
SELECT COUNT(DISTINCT Template_Type_Description) FROM Ref_Template_types WHERE Template_Type_Description = "CV"
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Template_Type_Code, COUNT(*) FROM Ref_Template_types GROUP BY Template_Type_Code ORDER BY COUNT(*)
SELECT DISTINCT template_type_code, COUNT(*) FROM Ref_Template_types GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_types ORDER BY COUNT(*) DESC LIMIT 3
SELECT Template_Type_Code FROM Ref_Template_types WHERE COUNT(*) < 3
SELECT MIN(Template_Version_Number), MIN(Template_Type_Code) FROM Templates GROUP BY MIN(Template_Version_Number), MIN(Template_Type_Code)
SELECT MIN(T2.Version_Number), T1.Template_Type_Code FROM Templates AS T2 JOIN Ref_Template_types AS T1 ON T2.Template_Type_Code = T1.Template_Type_Code GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Template_Type_Code FROM Documents AS T2 JOIN Templates AS T1 ON T2.Template_ID = T1.Template_ID WHERE T2.Document_Name = "Data Base"
SELECT T1.Template_Type_Code FROM Documents AS T2 JOIN Templates AS T1 ON T2.Template_ID = T1.Template_ID WHERE T2.Document_Name = "Data Base"
SELECT Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'BK'
SELECT Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'BK'
SELECT T1.Template_Type_Code, COUNT(*) FROM Documents AS T2 JOIN Templates AS T1 ON T2.Template_ID = T1.Template_ID GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 10
SELECT DISTINCT template_type_code, COUNT(*) FROM Documents GROUP BY template_type_code ORDER BY COUNT(*) DESC LIMIT 5
SELECT Template_Type_Code FROM Documents GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Documents GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Documents)
SELECT Template_Type_Code FROM Ref_Template_types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Documents)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_types
SELECT Template_Type_Description FROM Ref_Template_types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_types WHERE Template_Type_Description = "Book"
SELECT DISTINCT template_type_descriptions FROM Ref_Template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id GROUP BY T1.template_type_descriptions ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T2.Template_Type_Description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Date_Effective_From <> "null" AND T1.Date_Effective_To <> "null" AND T1.Template_ID IN (SELECT T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Date_Effective_From <> "null" AND T1.Date_Effective_To <> "null")
SELECT Template_ID FROM Templates WHERE Template_Type_Description = "Presentation"
SELECT Template_Type_Code FROM Ref_Template_types WHERE Template_Type_Description = 'Presentation'
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(*) FROM Paragraphs
SELECT COUNT(DISTINCT Paragraph_Text) FROM Documents WHERE Document_Name = 'Summer Show'
SELECT COUNT(DISTINCT Paragraph_Text) FROM Documents WHERE Document_Name = 'Summer Show'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea'
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea'
SELECT Paragraph_ID, Paragraph_Text FROM Documents WHERE Document_Name = 'Welcome To NY'
SELECT Paragraph_ID, Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = 'Welcome To NY'
SELECT Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Paragraph_ID WHERE T1.Document_Name = "Customer Reviews"
SELECT Paragraph_Text FROM Documents WHERE Document_Name = 'Customer Reviews'
SELECT Document_ID, COUNT(*) FROM Documents ORDER BY Document_ID
SELECT DISTINCT Document_ID, COUNT(*) FROM Paragraphs ORDER BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM Documents GROUP BY Document_ID ORDER BY COUNT(*)
SELECT Document_ID, Document_Name, COUNT(*) FROM Documents GROUP BY Document_Name HAVING COUNT(*)
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM Paragraphs WHERE COUNT(*) >= 2
SELECT Document_ID, Document_Name FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID, Document_Name FROM Documents GROUP BY Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Documents ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Document_ID FROM Paragraphs WHERE Paragraph_ID BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' OR Paragraph_Text = 'Ireland'
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Brazil' AND Document_ID FROM Paragraphs WHERE Paragraph_Text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT DISTINCT Hometown, COUNT(*) FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 5
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown ORDER BY COUNT(*)
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(DISTINCT Hometown) >= 2
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(DISTINCT Hometown) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course = T3.Course_ID ORDER BY T1.Age
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T2.Name FROM course_arrANGE AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = 'Math'
SELECT Name FROM teacher WHERE Age <> 'null' AND Hometown <> 'null' AND Subject = 'Math'
SELECT Name, COUNT(DISTINCT course) FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id GROUP BY Name ORDER BY COUNT(DISTINCT course) DESC LIMIT 1
SELECT Name, COUNT(DISTINCT course) FROM teacher GROUP BY Name ORDER BY COUNT(DISTINCT course) DESC LIMIT 1
SELECT Name FROM teacher GROUP BY Name HAVING COUNT(DISTINCT Name) >= 2
SELECT Name FROM teacher GROUP BY Name HAVING COUNT(DISTINCT Name) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrANGE WHERE NOT Grade IN (SELECT Grade FROM course_ARRANGE) WHERE NOT Course_ID IN (SELECT Course_ID FROM COURSE) WHERE NOT Starting_Date IN (SELECT Starting_Date FROM COURSE_ARRANGE) WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM COURSE_ARRANGE) WHERE NOT Grade IN (SELECT Grade FROM COURSE) WHERE NOT Starting_Date IN (SELECT Starting_Date FROM COURSE_ARRANGE) WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM COURSE) WHERE NOT Starting_Date IN (SELECT Starting_Date FROM COURSE_ARRANGE) WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM COURSE) WHERE NOT Starting_Date IN (SELECT Starting_Date FROM COURSE_ARRANGE) WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM COURSE) WHERE NOT Starting_Date IN (SELECT Starting_Date FROM COURSE_ARRANGE) WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM COURSE) WHERE NOT Starting_Date IN (SELECT Starting_Date FROM COURSE_ARRANGE) WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM COURSE) WHERE NOT Starting_Date IN (SELECT Starting_Date FROM COURSE_ARRANGE) WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM COURSE) WHERE NOT Starting_Date IN
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_Of_Membership FROM HIGH TO LOW
SELECT AVG(age) FROM visitor WHERE Level_of_membership <> 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age FROM OLD TO YOUNG
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(DISTINCT num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT Name FROM museum WHERE open_year > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_year > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_year > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_YEAR > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_YEAR > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_YEAR > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_YEAR > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_YEAR > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_YEAR > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open_YEAR > 2010 GROUP BY Name ORDER BY COUNT(*) DESC LIMIT COUNT(*) - (SELECT COUNT(*) FROM museum WHERE open
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T3.museum_id = T2.museum_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY SUM(T2.total_spent) DESC LIMIT 1
SELECT Museum_ID, Name FROM visit GROUP BY Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit WHERE NOT visitor_ID IN (SELECT Visitor_ID FROM visit)
SELECT T1.name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(Total_spent), MAX(Total_spent) FROM Visit
SELECT SUM(Total_spent) FROM visit WHERE Level_of_membership = 1
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent <> 0 AND T1.age <> 0 AND T2.museum_id IN (SELECT museum_id FROM museum WHERE open_year < 2009 UNION SELECT museum_id FROM museum WHERE open_year > 2011)
SELECT COUNT(*) FROM VISITOR WHERE NOT Museum_ID IN (SELECT Museum_ID FROM VISIT WHERE Total_spent <> 0 AND Open_Year > 2010)
SELECT COUNT(DISTINCT Name) FROM museum WHERE open_year >= 2013 OR open_year <= 2008
SELECT COUNT(*) FROM Players
SELECT COUNT(*) FROM Players
SELECT COUNT(DISTINCT tourn_id) FROM matches
SELECT COUNT(DISTINCT match_num) FROM matches
SELECT first_name, birth_date FROM Players WHERE country_code = "USA"
SELECT first_name, birth_date FROM Players WHERE country_code = "USA"
SELECT AVG(DISTINCT loser_age), AVG(DISTINCT winner_age) FROM matches
SELECT AVG(DISTINCT loser_age), AVG(DISTINCT winner_age) FROM matches
SELECT AVG(DISTINCT t1.winner_rank) FROM rankings AS t1 JOIN matches AS t2 ON t1.match_num = t2.match_num GROUP BY t1.match_num
SELECT AVG(DISTINCT winner_rank) FROM matches
SELECT MAX(DISTINCT loser_rank) FROM matches
SELECT MAX(DISTINCT loser_rank) FROM matches
SELECT COUNT(DISTINCT country_code) FROM Players
SELECT COUNT(DISTINCT country_code) FROM Players
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT COUNT(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT DISTINCT T1.winner_name FROM MATCHES AS T1 JOIN PLAYERS AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T1.first_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 AND T1.year = 2016
SELECT COUNT(DISTINCT t1.match_num) FROM matches AS t1 JOIN players AS t2 ON t1.loser_id = t2.player_id WHERE t2.birth_date BETWEEN "2013" AND "2016"
SELECT COUNT(DISTINCT t1.match_num) FROM matches AS t1 JOIN YEAR AS t2 ON t1.year = t2.year WHERE t2.year = 2013 OR t2.year = 2016
SELECT country_code, first_name FROM Players WHERE player_id IN (SELECT winner_id FROM MATCHES WHERE tourney_id = "WTA Championships" INTERSECT SELECT winner_id FROM MATCHES WHERE tourney_id = "Australian Open")
SELECT T1.first_name, T1.country_code FROM Players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_id = "WTA" AND T2.loser_ht = "2001" AND T1.birth_date = "2001-01-01" AND T1.country_code = "AUS" AND T2.tourney_name = "Australian Open" AND T2.year = "2001"
SELECT first_name, country_code FROM Players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM Players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM Players ORDER BY birth_date
SELECT first_name, last_name FROM Players ORDER BY birth_date
SELECT first_name, last_name FROM Players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM Players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, country_code FROM Players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name, country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM MATCHES AS T1 JOIN PLAYERS AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM MATCHES AS T1 JOIN PLAYERS AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name FROM MATCHES AS T1 JOIN TOURNEYS AS T2 ON T1.tourney_id = T2.tourney_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.winner_rank DESC LIMIT 1
SELECT T1.winner_name FROM MATCHES AS T1 JOIN TOURNEYS AS T2 ON T1.tourney_id = T2.tourney_id WHERE T2.tourney_name = "Australian Open" GROUP BY T1.winner_rank ORDER BY COUNT(DISTINCT T1.winner_rank) DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM rankings GROUP BY first_name ORDER BY AVG(ranking)
SELECT AVG(ranking), first_name FROM rankings JOIN players ON ranking.player_id = players.player_id GROUP BY first_name
SELECT SUM(ranking_points), first_name FROM rankings GROUP BY first_name ORDER BY COUNT(*)
SELECT first_name, SUM(ranking_points) FROM rankings GROUP BY first_name
SELECT COUNT(*), country_code FROM Players GROUP BY country_code
SELECT COUNT(*), country_code FROM Players GROUP BY country_code ORDER BY COUNT(*)
SELECT country_code FROM Players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM Players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM Players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM Players GROUP BY country_code HAVING COUNT(*) > 50
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date ORDER BY COUNT(*)
SELECT COUNT(*), ranking_date FROM rankings GROUP BY ranking_date ORDER BY COUNT(*)
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR
SELECT COUNT(*), YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*)
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date DESC LIMIT 3
SELECT T1.first_name, T1.last_name, T1.winner_rank FROM MATCHES AS T1 JOIN PLAYERS AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date DESC LIMIT 3
SELECT COUNT(DISTINCT winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_id IN (SELECT DISTINCT tourney_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_id IN (SELECT DISTINCT tourney_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_id IN (SELECT DISTINCT tourney_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_id IN (SELECT DISTINCT tourney_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_id IN (SELECT DISTINCT tourney_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_id IN (SELECT
SELECT COUNT(DISTINCT t1.winner_id) FROM matches AS t1 JOIN players AS t2 ON t1.winner_id = t2.player_id WHERE t2.hand = "left" AND t1.tourney_id = "WTA"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM Players AS T1 JOIN Matches AS T2 ON T1.player_id = T2.winner ORDER BY T2.winner_rank DESC LIMIT 1
SELECT first_name, country_code, birth_date FROM Players ORDER BY COUNT(DISTINCT t1.first_name) DESC LIMIT 1
SELECT COUNT(*), hand FROM Players GROUP BY hand
SELECT COUNT(*), hand FROM Players GROUP BY hand ORDER BY COUNT(*), hand
SELECT COUNT(DISTINCT t1.name) FROM ship AS t1 JOIN battle AS t2 ON t1.id = t2.id WHERE t2.result = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name
SELECT name, date, result FROM battle
SELECT MAX(DISTINCT death_toll), MIN(DISTINCT death_Toll) FROM death GROUP BY death_time
SELECT AVG(DISTINCT injured), AVG(DISTINCT TONNAGE) FROM ship GROUP BY TONNAGE
SELECT T1.note, T1.killed, T1.Injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name, RESULT FROM battle WHERE bulgarian_commandER <> 'Boril'
SELECT DISTINCT id, name FROM battle WHERE RESULT = 'Lost' AND TONNAGE IN (SELECT TONNAGE FROM ship WHERE ship_type = 'Brig')
SELECT id, name FROM battle WHERE COUNT(DISTINCT T1.result) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN commander AS T2 ON T1.bulgarian_commander = T2.name WHERE T2.name = 'Kaloyan' AND T1.date BETWEEN '2001-01-01' AND '2001-01-31' AND T2.name = 'Baldwin I'
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(DISTINCT T1.name) FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id WHERE T2.tonnage <> '225' AND T1.result <> 'lost'
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta'
SELECT T1.name, T1.result, T2.bulgarian_commander FROM battle AS T1 JOIN ship AS T3 ON T1.lost_in_battle = T3.id JOIN battle AS T2 ON T2.id = T1.id WHERE T3.location = 'English Channel' AND NOT T3.id IN (SELECT T3.id FROM ship AS T3 JOIN battle AS T1 ON T3.id = T1.lost_in_battle WHERE T1.result <> 'null' AND T3.location = 'English Channel')
SELECT note FROM death WHERE note LIKE "%East%"
SELECT DISTINCT line_1, line_2 FROM Addresses
SELECT line_1, line_2 FROM Addresses
SELECT COUNT(DISTINCT course_name) FROM Courses
SELECT COUNT(DISTINCT course_name) FROM Courses
SELECT course_Description FROM COURSES WHERE Course_Name = "Math"
SELECT course_Description FROM COURSES WHERE course_Name = "Math"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM Degrees_Programs GROUP BY department_id ORDER BY COUNT(DISTINCT department_id) DESC LIMIT 1
SELECT department_name, department_id FROM Degrees AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY COUNT(DISTINCT T1.department_id) DESC LIMIT 1
SELECT COUNT(DISTINCT department_name) FROM Departments
SELECT COUNT(DISTINCT department_name) FROM Departments
SELECT COUNT(DISTINCT course_name) FROM COURSES
SELECT COUNT(DISTINCT course_name) FROM COURSES
SELECT COUNT(DISTINCT course_id) FROM COURSES WHERE department_id = 'Engineering'
SELECT COUNT(DISTINCT course_id) FROM COURSES WHERE department_id = 'Engineering'
SELECT section_name, section_description FROM Sections
SELECT section_name, section_description FROM Sections
SELECT course_name, course_id FROM COURSES GROUP BY course_id ORDER BY COUNT(DISTINCT course_id) DESC LIMIT 2
SELECT course_name, course_id FROM COURSES WHERE COUNT(DISTINCT course_id) < 2
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name
SELECT semester_name, semester_id FROM Semesters GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE "%the Computer%"
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM STUDENT_ENROLMENT AS T1 JOIN STUDENT AS T2 ON T1.student_id = T2.student_id JOIN COURSE_PROGRAM AS T3 ON T1.degree_program_id = T3.degree_program_id JOIN SEMESTERS AS T4 ON T1.semester_id = T4.semester_id GROUP BY T1.degree_program_id HAVING COUNT(DISTINCT T1.student_id) = 2 AND COUNT(DISTINCT T4.semester_id) = 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM STUDENT_ENROLMENT AS T1 JOIN STUDENT AS T2 ON T1.student_id = T2.student_id JOIN COURSE_PROGRAM AS T3 ON T1.degree_program_id = T3.degree_program_id JOIN SEMESTERS AS T4 ON T1.semester_id = T4.semester_id WHERE T4.semester_name = "Fall" AND COUNT(DISTINCT T3.degree_summary_name) = 2
SELECT first_name, middle_name, last_name FROM STUDENT_ENROLMENT AS T1 JOIN DEGREE_PROGRAMS AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_type = 'Bachelor'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM STUDENT_ENROLMENT AS T1 JOIN COURSE_PROGRAMS AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = "Bachelor"
SELECT course_summary_name FROM Degree_Programs GROUP BY Course_summary_Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM Degree_Programs GROUP BY degree_summary_name ORDER BY COUNT(DISTINCT student_id) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*), T1.student_id FROM STUDENT_ENROLMENT AS T1 JOIN COURSE_PROGRAM AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(DISTINCT T1.student_id) FROM STUDENT_ENROLMENT AS T1 JOIN COURSE_PROGRAMS AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(DISTINCT T1.student_id) DESC LIMIT 1
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_ID FROM Student_Enrolment)
SELECT semester_name FROM Semesters WHERE NOT semester_id IN (SELECT semester_ID FROM Student_Enrolment WHERE NOT student_id IN (SELECT student_id FROM Transcripts)
SELECT DISTINCT course_name FROM COURSES AS T1 JOIN STUDENT_ENROLMENT AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name
SELECT DISTINCT course_name FROM COURSES AS T1 JOIN STUDENT_ENROLMENT_COURSES AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(DISTINCT T2.student_enrolment_id) <> 0
SELECT course_Name FROM COURSES GROUP BY COURSE_Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT course_Name FROM COURSES GROUP BY COURSE_Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT last_name FROM STUDENTS WHERE stateProvinceCounty = "North Carolina" AND NOT student_id IN (SELECT student_id FROM STUDENT_ENROLMENT) JOIN Degree_Programs ON student_enrolment_id = Degree_Program_id)
SELECT last_name FROM STUDENTS WHERE stateProvinceCounty = "North Carolina" EXCEPT SELECT T1.last_name FROM STUDENTS AS T1 JOIN STUDENT_ENROLMENT AS T2 ON T1.student_id = T2.student_id JOIN COURSE_PROGRAMS AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.other_details <> "null" EXCEPT SELECT T1.last_name FROM STUDENTS AS T1 JOIN STUDENT_ENROLMENT AS T2 ON T1.student_id = T2.student_id JOIN COURSE_PROGRAMS AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.other_details <> "null" AND T2.date_first_registered <> "null" AND T1.date_left <> "null" AND T1.stateProvinceCounty = "North Carolina" EXCEPT SELECT T1.last_name FROM STUDENTS AS T1 JOIN STUDENT_ENROLMENT AS T2 ON T1.student_id = T2.student_id JOIN COURSE_PROGRAMS AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.other_details <> "null" AND T2.date_first_registered <> "null" AND T1.date_left <> "null" AND T1.stateProvinceCounty = "North
SELECT T1.transcript_date, T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN STUDENT_ENROLMENT COURSES AS T2 ON T1.transcript_id = T2.student_enrolment_id GROUP BY T1.transcript_id ORDER BY COUNT(DISTINCT T2.course_id) DESC LIMIT 2
SELECT T1.transcript_date, T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN STUDENT_ENROLMENT COURSES AS T2 ON T1.transcript_id = T2.student_enrolment_id GROUP BY T1.transcript_id HAVING COUNT(DISTINCT T2.course_id) >= 2 ORDER BY COUNT(DISTINCT T2.course_id) DESC LIMIT 1
SELECT cell_mobile_number FROM STUDENTS WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM STUDENTS WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM STUDENTS ORDER BY date_first_registered DESC LIMIT 1
SELECT first_name, middle_name, last_name FROM STUDENTS ORDER BY date_first_registered DESC LIMIT 1
SELECT first_name, middle_name, last_name FROM STUDENTS ORDER BY date_first_registered DESC LIMIT 1
SELECT first_name, middle_name, last_name FROM STUDENTS ORDER BY date_first_registered DESC LIMIT 1
SELECT first_name FROM STUDENTS WHERE permanent_address_id <> current_address_id
SELECT first_name FROM STUDENTS WHERE permanent_address_id <> current_address_id
SELECT address_id, COUNT(*) FROM Addresses GROUP BY address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM Addresses GROUP BY address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(DISTINCT transcript_date) FROM TRANSCRIPTS
SELECT AVG(DISTINCT transcript_date) FROM TRANSCRIPTS
SELECT transcript_date, other_details FROM TRANSCRIPTS ORDER BY transcript_id DESC LIMIT 1
SELECT transcript_date, other_details FROM TRANSCRIPTS ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(DISTINCT transcript_id) FROM TRANSCRIPTS
SELECT COUNT(DISTINCT transcript_id) FROM TRANSCRIPTS
SELECT MAX(DISTINCT transcript_date) FROM TRANSCRIPTS
SELECT transcript_date FROM TRANSCRIPT ORDER BY transcript_date DESC LIMIT 1
SELECT COUNT(DISTINCT T1.transcript_id), T1.course_enrolment_id FROM TRANSCRIPTS AS T1 JOIN STUDENT_ENROLMENT COURSES AS T2 ON T1.transcript_id = T2.student_enrolment_id GROUP BY T1.course_enrolment_id ORDER BY COUNT(DISTINCT T1.transcript_id) DESC LIMIT 1
SELECT course_id, MAX(DISTINCT COUNT(*)) FROM TRANSCRIPTS GROUP BY Course_id ORDER BY COUNT(DISTINCT COUNT(*)) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM TRANSCRIPTS ORDER BY COUNT(DISTINCT course_id) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM TRANSCRIPTS ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.semester_id FROM STUDENT_ENROLMENT AS T1 JOIN SEMESTERS AS T2 ON T1.semester_id = T2.semester_id WHERE T1.student_id IN (SELECT T1.student_id FROM STUDENT_ENROLMENT AS T1 JOIN STUDENTS AS T2 ON T1.student_id = T2.student_id WHERE T2.first_name = "Master" OR T2.first_name = "Bachelor") GROUP BY T1.semester_id)
SELECT semester_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.student_id IN (SELECT student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = "Masters" INTERSECT SELECT student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = "Bachelors")
SELECT COUNT(DISTINCT address_id) FROM Addresses
SELECT DISTINCT address_id FROM Addresses
SELECT DISTINCT other_student_Details FROM STUDENTS ORDER BY student_id DESC
SELECT other_student_details FROM STUDENTS ORDER BY first_name DESC
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT first_name FROM STUDENTS WHERE country = "Haiti" OR cell_mobile_number = 09700166582
SELECT first_name FROM STUDENTS WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = "Haiti") OR cell_mobile_number = 09700166582
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(DISTINCT Title) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(DISTINCT Title) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_By = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_By = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT series_Name) FROM TV_Channel
SELECT COUNT(DISTINCT series_Name) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_NAME = "Sky Radio"
SELECT Content FROM TV_series WHERE series_Name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT DISTINCT Package_Option FROM TV_Channel WHERE series_Name = "Sky Radio"
SELECT COUNT(DISTINCT Language) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(DISTINCT Country) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*)
SELECT COUNT(*), Language FROM TV_Channel GROUP BY Language ORDER BY COUNT(*)
SELECT t1.channel, t2.series_name FROM TV_CHANNEL AS t1 JOIN TV_SERIES AS t2 ON t1.id = t2.id WHERE t2.title = "The Rise Of The Blue Beetle!"
SELECT series_Name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Content = "The Rise Of The Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_series WHERE Series_Name = "Sky Radio")
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_series WHERE Series_Name = "Sky Radio")
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT T2.Episode, T2.Rating FROM TV_SERIES AS T1 JOIN TV_SERIES AS T2 ON T1.id = T2.id ORDER BY T2.Rating DESC LIMIT 3
SELECT MIN(T.Share), MAX(T.Share) FROM TV_series
SELECT MAX(T.Share), MIN(T.Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love Of A Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love Of A Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love Of A Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love Of A Lifetime"
SELECT t1.channel, t1.series_name FROM TV_series AS t1 JOIN TV_Channel AS t2 ON t1.id = t2.id WHERE t1.episode = "A Love Of A Lifetime"
SELECT series_Name FROM TV_series WHERE Episode = "A Love Of A Lifetime"
SELECT Episode FROM TV_series WHERE Channel = (SELECT id FROM TV_Channel WHERE series_Name = "Sky Radio")
SELECT Episode FROM TV_series WHERE Series_Name = "Sky Radio"
SELECT COUNT(*), T2.Directed_by FROM Cartoon AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id GROUP BY T2.Directed_By ORDER BY COUNT(*)
SELECT COUNT(*), T2.Directed_by FROM Cartoon AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id GROUP BY T2.Directed_By ORDER BY COUNT(*)
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel ORDER BY Hight_definition_TV DESC LIMIT 1
SELECT Package_Option, series_name FROM TV_Channel WHERE Hight_definition_TV = "High"
SELECT Country FROM TV_CHANNEL AS T1 JOIN CARTOON AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE Written_by = "Todd Casey" GROUP BY Country
SELECT Country FROM TV_Channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT Country FROM TV_Channel WHERE NOT Language = "Cartoon" AND NOT Written_by = "Todd Casey"
SELECT T2.series_Name, T1.Country FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_By = "Ben Jones" AND T2.Written_By = "Michael Chang"
SELECT T1.series_Name, T1.Country FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_By = "Ben Jones" OR T2.Directed_By = "Michael Chang"
SELECT Pixel_Aspect_Ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Pixel_Aspect_Ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT id FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_CHANNEL GROUP BY id HAVING COUNT(DISTINCT id) > 2
SELECT id FROM Cartoon WHERE Directed_by <> "Ben Jones"
SELECT id FROM TV_CHANNEL WHERE NOT id IN (SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE Directed_By <> "Ben Jones")
SELECT DISTINCT package_option FROM TV_Channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE NOT Directed_by = "Ben Jones")
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM poker_Player
SELECT earnings FROM poker_Player ORDER BY Earnings DESC
SELECT earnings FROM poker_player ORDER BY earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_Player
SELECT Money_Rank FROM poker_Player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_Player ORDER BY Earnings DESC LIMIT 1
SELECT COUNT(DISTINCT T2.final_table_made) FROM poker_player AS T1 JOIN final_table AS T2 ON T1.final_table_made = T2.final_table_made WHERE T1.earnings < 200000 GROUP BY T1.final_table_made ORDER BY COUNT(DISTINCT T2.final_table_made) DESC LIMIT 1
SELECT MAX(T2.final_table_made) FROM poker_Player AS T1 JOIN People AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT Name FROM poker_player
SELECT Name FROM poker_Player
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_Player WHERE Earnings > 300000
SELECT Name FROM poker_Player ORDER BY Final_Table_Made
SELECT T1.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT Birth_Date FROM poker_Player ORDER BY Earnings DESC LIMIT 1
SELECT Birth_Date FROM poker_Player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_Player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_Player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_Player WHERE Height > 200
SELECT Name FROM poker_Player ORDER BY Earnings DESC
SELECT Name FROM poker_Player ORDER BY Earnings DESC
SELECT DISTINCT Nationality, COUNT(*) FROM people GROUP BY Nationality ORDER BY COUNT(*)
SELECT COUNT(*), Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM People ORDER BY Name
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_Player)
SELECT Name FROM people WHERE NOT People_ID IN SELECT People_ID FROM poker_PLAYER
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT MAX(area_code), MIN(area_code) FROM AREA_CODE_STATE
SELECT MAX(DISTINCT created) FROM VOTES WHERE state = 'CA'
SELECT DISTINCT T1.contestant_name FROM CONTESTANTS AS T1 WHERE T1.contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT T1.contestant_number, T1.contestant_name FROM VOTES AS T2 JOIN CONTESTANTS AS T1 ON T2.contestant_number = T1.contestant_number GROUP BY T1.contestant_number HAVING COUNT(DISTINCT T2.phone_number) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM VOTES AS T2 JOIN CONTESTANTS AS T1 ON T2.contestant_number = T1.contestant_number ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT phone_number) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(DISTINCT contestant_name) FROM CONTESTANTS WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM VOTES GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.created, t1.state, t1.phone_number FROM VOTES AS t1 JOIN CONTESTANTS AS t2 ON t1.contestant_number = t2.contestant_number WHERE t2.contestant_name = 'Tabatha Gehling'
SELECT area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Kelly Clauss'
SELECT DISTINCT T1.contestant_name FROM CONTESTANTS AS T1 WHERE T1.contestant_name CONTAINS 'Al'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(DISTINCT governmentform) FROM country WHERE governmentform = 'Republic'
SELECT COUNT(DISTINCT governmentform) FROM country WHERE governmentform = 'Republic'
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Region FROM country WHERE Name = "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.LocalName = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.LocalName = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT population, lifeexpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(DISTINCT T1.LifeExpectancy) FROM country AS T1 JOIN region AS T2 ON T1.Region = T2.Name WHERE T2.Region = 'Central Africa'
SELECT AVG(T2.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Africa' AND T1.Region = 'Central'
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy DESC LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy DESC LIMIT 1
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia'
SELECT SUM(population), MAX(gnp) FROM country WHERE continent = 'Asia' GROUP BY continent
SELECT AVG(T2.LifeExpectancy) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Africa' AND T1.IsOfficial = 'T' AND T2.GovernmentForm = 'Republic'
SELECT AVG(T2.LifeExpectancy) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Africa' AND T2.GovernmentForm = 'Republic' GROUP BY T2.Name
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT SUM(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT Population FROM city WHERE District = 'Gelderland'
SELECT SUM(population) FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP), SUM(population) FROM country WHERE GovernmentForm = "United States" GROUP BY GovernmentForm
SELECT AVG(GNP), SUM(population) FROM country WHERE Code2 = 'US'
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "AW"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "AW"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'AF'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'AF'
SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.language ORDER BY COUNT(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(DISTINCT Language) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT t1.name) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = 'English' AND t1.language = 'Dutch' GROUP BY t1.language HAVING COUNT(DISTINCT t1.language) = 1
SELECT COUNT(DISTINCT T1.Name) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'English' OR T1.Language = 'Dutch'
SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' AND T1.language = 'French' GROUP BY T1.language HAVING COUNT(DISTINCT T2.name) = 2
SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' INTERSECT SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'French'
SELECT T1.LocalName FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'English' AND T1.IsOfficial = 'T' AND T2.GNPOld = '200' AND T2.GNP = '150' AND T2.Population = '150000' AND T2.Continent = 'Europe' AND T2.Region = 'Western' AND T2.Capital = 'Paris' AND T2.HeadOfState = 'Nord' AND T1.Percentage = '50' AND T1.IsOfficial = 'T' INTERSECT SELECT T1.LocalName FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'French' AND T1.IsOfficial = 'T' AND T2.GNPOld = '200' AND T2.GNP = '150' AND T2.Population = '150000' AND T2.Continent = 'Europe' AND T2.Region = 'Western' AND T2.Capital = 'Paris' AND T2.HeadOfState = 'Nord' AND T1.Percentage = '50' AND T1.IsOfficial = 'T
SELECT Name FROM countrylanguage WHERE Language = 'English' OR Language = 'French' GROUP BY CountryCode HAVING COUNT(*) = 2
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT COUNT(DISTINCT t1.Continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t1.Language = 'Chinese' GROUP BY t1.Language HAVING COUNT(DISTINCT t1.Continent)
SELECT Region FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch'
SELECT Region FROM countrylanguage WHERE Language = 'Dutch' OR Language = 'English' GROUP BY Region
SELECT DISTINCT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' OR T1.language = 'Dutch'
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch'
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'F' GROUP BY Language HAVING COUNT(DISTINCT CountryCode) = 1 AND CountryCode IN (SELECT CountryCode FROM country WHERE GovernmentForm = 'Republic')
SELECT DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(DISTINCT T1.Language) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM city WHERE Population = (SELECT MAX(Population) FROM city WHERE Language = 'English')
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.name, T1.population, T1.lifeexpectancy FROM country AS T1 JOIN continent AS T2 ON T1.continent = T2.name ORDER BY T1.surfacearea DESC LIMIT 1
SELECT AVG(T2.LifeExpectancy) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language <> 'English' GROUP BY T1.Language ORDER BY AVG(T2.LifeExpectancy)
SELECT AVG(T2.LifeExpectancy) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language <> 'English' GROUP BY T2.Name
SELECT COUNT(DISTINCT t1.Population) FROM countrylanguage AS t4 JOIN country AS t1 ON t4.CountryCode = t1.Code WHERE t4.Language <> 'English' GROUP BY t1.Name HAVING COUNT(DISTINCT t1.Population)
SELECT COUNT(DISTINCT t1.Population) FROM countrylanguage AS t4 JOIN country AS t1 ON t4.CountryCode = t1.Code WHERE t4.Language <> 'English' GROUP BY t1.Name HAVING COUNT(DISTINCT t1.Population)
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = "T"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = "T"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE foundedbefore1930 = 'T'
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT DISTINCT T1.name FROM country AS T1 JOIN continent AS T2 ON T1.continent = T2.name WHERE T2.continent = 'Africa' AND T1.population < (SELECT MIN(T1.population) FROM country AS T1 JOIN continent AS T2 ON T1.continent = T2.name WHERE T2.continent = 'Asia')
SELECT DISTINCT t1.name FROM country AS t1 JOIN continent AS t2 ON t1.continent = t2.name WHERE t2.name = 'Africa' AND t1.population < (SELECT MIN(t1.population) FROM country AS t1 JOIN continent AS t2 ON t1.continent = t2.name WHERE t2.name = 'Asia')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country WHERE Continent = 'Africa')
SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'F' AND Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'F' AND Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM country WHERE NOT Language = 'English' AND NOT GovernmentForm = 'Republic'
SELECT Code FROM country WHERE NOT Language = 'English' AND NOT GovernmentForm = 'Republic'
SELECT DISTINCT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.id = t2.countrycode JOIN country AS t3 ON t3.id = t2.countrycode WHERE t3.continent = 'Europe' AND t2.language <> 'English' AND t3.isofficial = 'T'
SELECT Name FROM city WHERE Continent = 'Europe' AND NOT Language = 'English'
SELECT DISTINCT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = 'Chinese' AND t1.countrycontinent = 'Asia' GROUP BY t1.name HAVING COUNT(DISTINCT t1.name) = 1
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' AND T2.Language = 'Chinese'
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population DESC LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population DESC LIMIT 1
SELECT T1.Population, T1.Name, T1.Leader FROM country AS T1 ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T1.name, COUNT(DISTINCT T2.language) FROM countrylanguage AS T2 JOIN country AS T1 ON T2.countrycode = T1.code GROUP BY T1.name HAVING COUNT(DISTINCT T2.language) >= 3
SELECT Name, COUNT(DISTINCT Language) FROM countrylanguage GROUP BY COUNT(DISTINCT Language) HAVING COUNT(DISTINCT Language) > 2
SELECT COUNT(*), District FROM city WHERE Population > (SELECT AVG(Population) FROM city)
SELECT COUNT(*), District FROM city GROUP BY District HAVING COUNT(*) > AVG COUNT(*)) FROM city GROUP BY District
SELECT T1.name, SUM(T2.population) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.governmentform HAVING AVG(T2.lifeexpectancy) > 72
SELECT DISTINCT governmentform, AVG(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform ORDER BY AVG(population) DESC LIMIT 5
SELECT AVG(T2.LifeExpectancy), SUM(T2.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' AND T2.LifeExpectancy < 72 GROUP BY T1.Continent
SELECT DISTINCT continent, SUM(population), AVG(lifeexpectancy) FROM country WHERE AVG(lifeexpectancy) < 72 GROUP BY continent
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT COUNT(DISTINCT Name) FROM country WHERE Continent = 'Asia'
SELECT COUNT(DISTINCT Name) FROM country WHERE Continent = 'Asia'
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode, T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryCode, Language, Percentage FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT COUNT(DISTINCT t1.name) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = "Spanish" GROUP BY t1.language ORDER BY COUNT(DISTINCT t1.language) DESC LIMIT 1
SELECT COUNT(DISTINCT t1.name) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = "Spanish" GROUP BY t1.language ORDER BY COUNT(DISTINCT t1.language) DESC LIMIT 1
SELECT CountryCode FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Percentage = (SELECT MAX(Percentage) FROM countrylanguage)
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT AVG(T2.Attendance) FROM performance AS T1 JOIN show AS T2 ON T1.Show_ID = T2.Show_ID GROUP BY T2.Show_ID
SELECT AVG(T2.Attendance) FROM SHOW AS T1 JOIN PERFORMANCE AS T2 ON T1.Performance_ID = T2.Performance_ID GROUP BY T1.Performance_ID
SELECT MAX(T.Share), MIN(T.Share) FROM performance WHERE TYPE <> "Live final"
SELECT MAX(T.Share), MIN(T.Share) FROM performance WHERE T.Type <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT Name FROM conductor GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM conductor WHERE COUNT(*) > 1
SELECT Name FROM conductor GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor WHERE YEAR_OF_WORK > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_Of_Founded > 2008
SELECT DISTINCT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 2
SELECT Major_Record_Format FROM orchestra ORDER BY COUNT(*)
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC LIMIT 5
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT DISTINCT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_Of_Founded < 2003 UNION SELECT DISTINCT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_Of_Founded > 2003
SELECT COUNT(DISTINCT T2.Orchestra) FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Major_Record_Format = "CD" OR T1.Major_Record_Format = "DVD"
SELECT COUNT(DISTINCT T2.Orchestra) FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Major_Record_Format = "CD" OR T1.Major_Record_Format = "DVD"
SELECT DISTINCT T2.Year_Of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Year_Of_Founded HAVING COUNT(*) > 1
SELECT T2.Year_Of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Year_Of_Founded HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(DISTINCT name) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(DISTINCT id) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT COUNT(*), grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT grade FROM Highschooler GROUP BY grade HAVING COUNT(DISTINCT grade) >= 4
SELECT grade FROM Highschooler WHERE COUNT(DISTINCT grade) >= 4
SELECT student_id, COUNT(DISTINCT T1.friend_id) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID GROUP BY T1.student_id ORDER BY COUNT(DISTINCT T1.friend_id)
SELECT COUNT(*), T1.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*)
SELECT T1.name, COUNT(*) FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, COUNT(*) FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name ORDER BY COUNT(*)
SELECT T1.name FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T1.name FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name HAVING COUNT(*) >= 3
SELECT T1.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT T1.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT COUNT(DISTINCT T1.friend_id) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT COUNT(DISTINCT T1.friend_id) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT id FROM Highschooler WHERE NOT id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT student_id FROM Friend JOIN Likes ON student_id = student_id JOIN Highschooler ON student_id = student_id WHERE NOT student_id IN (SELECT student_id FROM Friend JOIN HighSchooler ON student_id = student_id WHERE NOT student_id IN (SELECT student_id FROM Likes JOIN HighSchooler ON student_id = student_id)
SELECT student_id FROM Friend JOIN Likes ON student_id = student_id
SELECT T1.name FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id JOIN Likes AS T3 ON T3.student_id = T1.id WHERE T2.friend_id <> T3.liked_id GROUP BY T1.name HAVING COUNT(DISTINCT T2.friend_id) <> 0 AND COUNT(DISTINCT T3.liked_id) <> 0
SELECT T1.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id JOIN Likes AS T3 ON T3.student_id = T2.id
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*)
SELECT COUNT(*), student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*)
SELECT T1.name, COUNT(*) FROM Likes AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 5
SELECT T1.name, COUNT(DISTINCT T2.name) FROM Likes AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name ORDER BY COUNT(DISTINCT T2.name) DESC LIMIT 5
SELECT T1.name FROM Likes AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(*) >= 2 ORDER BY COUNT(*) DESC LIMIT 2
SELECT T1.name FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING COUNT(DISTINCT T1.student_id) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2 AND T1.grade > 5
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING COUNT(*) >= 2 AND T1.grade > 5
SELECT COUNT(DISTINCT t1.liked_id) FROM Likes AS t1 JOIN Highschooler AS t2 ON t1.student_id = t2.id WHERE t2.name = "Kyle"
SELECT COUNT(DISTINCT t1.liked_id) FROM Likes AS t1 JOIN Highschooler AS t2 ON t1.student_id = t2.id WHERE t2.name = "Kyle"
SELECT AVG(T1.grade) FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.ID WHERE T2.friend_id <> NULL
SELECT AVG(T1.grade) FROM Friend AS T2 JOIN Highschooler AS T1 ON T2.student_id = T1.ID
SELECT MIN(T2.grade) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID WHERE NOT T1.friend_id IN (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID) JOIN Friend AS T3 ON T3.friend_id = T2.ID)
SELECT MIN(T2.grade) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE NOT T1.friend_id IN (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id)
SELECT DISTINCT state FROM Owners JOIN Professionals ON Owners.state = Professionals.state
SELECT DISTINCT state FROM Owners JOIN Professionals ON Owners.state = Professionals.state
SELECT AVG(DISTINCT T1.age) FROM Treatment AS T2 JOIN Dogs AS T1 ON T2.dog_id = T1.dog_id GROUP BY T1.age
SELECT AVG(DISTINCT T1.age) FROM Treatment AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = "Indiana" OR COUNT(DISTINCT t1.treatment_id) > 2 GROUP BY t1.treatment_id ORDER BY COUNT(DISTINCT t1.treatment_id) DESC LIMIT 1
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = "Indiana" OR COUNT(DISTINCT t1.treatment_id) > 2
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment <= 1000
SELECT T1.name FROM Treatment AS T2 JOIN Dogs AS T1 ON T2.dog_id = T1.dog_id JOIN Owners AS T3 ON T3.owner_id = T1.owner_id WHERE T3.cost_of_treatment <= 1000 AND T3.email_address <> "null"
SELECT DISTINCT first_name FROM Owners UNION SELECT DISTINCT first_name FROM Professionals EXCEPT SELECT DISTINCT first_name FROM Dogs
SELECT DISTINCT first_name FROM Owners UNION SELECT DISTINCT first_name FROM Professionals EXCEPT SELECT DISTINCT first_name FROM Dogs
SELECT professional_id, role, email FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT professional_id, role, email FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT OWNER_ID, first_name, last_name FROM Owners GROUP BY OWNER_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT OWNER_ID, first_name, last_name FROM Owners GROUP BY OWNER_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role, first_name FROM Treatments GROUP BY professional_id HAVING COUNT(DISTINCT t1.treatment_id) >= 2 ORDER BY COUNT(DISTINCT t1.treatment_id)
SELECT professional_id, role, first_name FROM Treatments GROUP BY professional_id HAVING COUNT(DISTINCT t1.treatment_id) >= 2
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Charges AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Charges AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY SUM(T2.charge_amount) DESC LIMIT 1
SELECT t1.treatment_type_description FROM Treatment_types AS t1 JOIN Charges AS t2 ON t1.treatment_type_code = t2.charge_type GROUP BY t1.treatment_type_code ORDER BY SUM(t2.charge_amount) DESC LIMIT 1
SELECT t1.treatment_type_description FROM Treatment_types AS t1 JOIN Charges AS t2 ON t1.treatment_type_code = t2.charge_type GROUP BY t1.treatment_type_code ORDER BY SUM(t2.charge_amount) DESC LIMIT 1
SELECT OWNER_ID, ZIP_CODE FROM Owners ORDER BY SUM(TOT_CHARGE_AMOUNT) DESC LIMIT 1
SELECT OWNER_ID, ZIP_CODE FROM Charges GROUP BY OWNER_ID ORDER BY SUM(charge_amount) DESC LIMIT 1
SELECT first_name, cell_number FROM Professionals GROUP BY first_name HAVING COUNT(DISTINCT t1.treatment_type_code) >= 2
SELECT professional_id, cell_number FROM Treatment_types GROUP BY COUNT(DISTINCT treatment_type_description) HAVING COUNT(DISTINCT treatment_type_description) >= 2 JOIN Professionals ON Treatment_types.treatment_type_code = Professionals.role_code GROUP BY COUNT(DISTINCT treatment_type_description) HAVING COUNT(DISTINCT treatment_type_description) >= 2 JOIN Treatment_types ON Treatment_types.treatment_type_code = Treatment_types.treatment_type_code GROUP BY COUNT(DISTINCT treatment_type_description) HAVING COUNT(DISTINCT treatment_type_description) >= 2 JOIN Professionals ON Treatment_types.treatment_type_code = Professionals.role_code GROUP BY COUNT(DISTINCT treatment_type_description) HAVING COUNT(DISTINCT treatment_type_description) >= 2 JOIN Treatment_types ON Treatment_types.treatment_type_code = Treatment_types.treatment_type_code GROUP BY COUNT(DISTINCT treatment_type_description) HAVING COUNT(DISTINCT treatment_type_description) >= 2 JOIN Professionals ON Treatment_types.treatment_type_code = Professionals.role_code GROUP BY COUNT(DISTINCT treatment_type_description) HAVING COUNT(DISTINCT treatment_type_description) >= 2
SELECT first_name, last_name FROM Treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT first_name, last_name FROM Treatment AS T JOIN Professionals AS P ON T.professional_id = P.professional_id WHERE T.cost_of_treatment < (SELECT AVG(T.cost_of_treatment) FROM Treatment)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment, treatment_type_description FROM Charges JOIN Treatment_types ON Charges.treatment_type_code = Treatment_types.treatment_type_code ORDER BY cost_of_treatment
SELECT cost_of_treatment, treatment_type_description FROM Charges JOIN Treatment_types ON Charges.treatment_type_code = Treatment_types.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM Owners AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatment AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Breeds ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN Breeds AS T4 ON T4.breed_code = T1.breed_code ORDER BY COUNT(DISTINCT T4.breed_name) DESC LIMIT 1
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived, T1.date_depart FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.treatment_id = T2.treatment_id
SELECT T1.date_arrived, T1.date_depart FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT COUNT(DISTINCT t1.name) FROM Treatments AS t1 JOIN Dogs AS t2 ON t1.dog_id = t2.dog_id GROUP BY t1.cost_of_treatment ORDER BY COUNT(DISTINCT t1.cost_of_treatment) DESC LIMIT 1
SELECT COUNT(DISTINCT t1.name) FROM Treatment AS t2 JOIN Dogs AS t1 ON t2.dog_id = t1.dog_id GROUP BY t2.treatment_type_code ORDER BY COUNT(DISTINCT t1.name) DESC LIMIT 1
SELECT COUNT(DISTINCT t1.first_name) FROM Treatment AS t1 JOIN Professionals AS t2 ON t1.professional_id = t2.professional_id JOIN Dogs AS t3 ON t1.dog_id = t3.dog_id GROUP BY t1.professional_id HAVING COUNT(DISTINCT t1.professional_id)
SELECT COUNT(DISTINCT t1.first_name) FROM Treatment AS t1 JOIN Professionals AS t2 ON t1.professional_id = t2.professional_id JOIN Dogs AS t3 ON t1.dog_id = t3.dog_id GROUP BY t1.professional_id HAVING COUNT(DISTINCT t1.professional_id)
SELECT first_name, last_name, street, city, state FROM Professionals WHERE city CONTAINS 'West'
SELECT role_code, street, city, state FROM Professionals WHERE city CONTAINS 'West'
SELECT first_name, last_name, email_address FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT state FROM Owners WHERE state = (SELECT
SELECT first_name, last_name, email_address FROM Owners WHERE state IN (SELECT state FROM Owners WHERE state CONTAINS 'North')
SELECT COUNT(DISTINCT t1.age) FROM Dogs AS t1 JOIN Sizes AS t2 ON t1.size_code = t2.size_code GROUP BY t1.age HAVING COUNT(DISTINCT t1.age) < AVG COUNT(DISTINCT t1.age)
SELECT COUNT(DISTINCT t1.name) FROM Dogs AS t1 JOIN Sizes AS t2 ON t1.size_code = t2.size_code WHERE t2.size_description = "small" AND t1.age < AVG(t1.age)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(DISTINCT t1.name) FROM Dogs AS t1 JOIN Treatment AS t2 ON t1.treatment_id = t2.treatment_id WHERE t2.cost_of_treatment <> "null" GROUP BY t1.name HAVING COUNT(DISTINCT t1.name) = 0
SELECT COUNT(DISTINCT t1.name) FROM Dogs AS t1 JOIN Treatment AS t2 ON t1.treatment_id = t2.treatment_id WHERE t2.date_of_treatment = "null"
SELECT COUNT(DISTINCT email_address) FROM Owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM Dogs)
SELECT COUNT(DISTINCT email_address) FROM Owners WHERE NOT OWNER_ID IN (SELECT OWNER_ID FROM Dogs)
SELECT COUNT(DISTINCT t1.first_name) FROM Treatment AS t2 JOIN Professionals AS t1 ON t2.professional_id = t1.professional_id WHERE t2.date_of_treatment <> t1.date_of_treatment GROUP BY t1.first_name HAVING COUNT(DISTINCT t1.first_name) = 0
SELECT COUNT(DISTINCT first_name) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges GROUP BY charge_type ORDER BY charge_amount
SELECT charge_type, charge_amount FROM Charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT breed_type, size_type FROM Breeds JOIN Sizes ON Breeds.breed_type = Sizes.size_type JOIN Dogs ON Dogs.size_type = Sizes.size_type
SELECT T1.first_name, T2.treatment_type_description FROM Treatment_types AS T2 JOIN Professionals AS T1 ON T2.treatment_type_code = T1.role_code
SELECT T1.first_name, T2.treatment_type_description FROM Treatment_types AS T2 JOIN Professionals AS T1 ON T2.treatment_type_code = T1.role_code ORDER BY T1.first_name
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT DISTINCT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 2
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship ORDER BY COUNT(*)
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Citizenship, MAX(T2.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Title, Name FROM song JOIN singer ON Song_ID = Singer_ID
SELECT Title, Name FROM song JOIN singer ON Song_ID = Singer_ID
SELECT DISTINCT T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE Sales > 300000
SELECT Name FROM song GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT Name FROM song GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM Song AS T2 JOIN Singer AS T1 ON T2.Singer_ID = T1.Singer_ID GROUP BY T1.Name ORDER BY SUM(T2.Sales) DESC
SELECT T1.Name, SUM(T2.Sales) FROM Song AS T2 JOIN Singer AS T1 ON T2.Singer_ID = T1.Singer_ID GROUP BY T1.Name ORDER BY SUM(T2.Sales) DESC
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT T2.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE NOT T1.Title IN (SELECT T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE NOT T2.Name IN (SELECT T2.Name FROM singer AS T2 JOIN song AS T1 ON T2.Singer_ID = T1.Singer_ID WHERE NOT T1.Title IN (SELECT T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE NOT T2.Name IN (SELECT T2.Name FROM singer AS T2 JOIN song AS T1 ON T2.Singer_ID = T1.Singer_ID WHERE NOT T1.Title IN (SELECT T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE NOT T2.Name IN (SELECT T2.Name FROM singer AS T2 JOIN song AS T1 ON T2.Singer_ID = T1.Singer_ID WHERE NOT T1.Title IN (SELECT T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 AND Birth_Year > 1955
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945 AND Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Other_Available_Features AS T1 JOIN Ref_Feature_types AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T1.feature_name = "AirCon"
SELECT property_type_description FROM Ref_Property_types WHERE property_type_code = "property_type_code"
SELECT DISTINCT T1.property_name FROM Properties AS T1 JOIN Other_Property_Details AS T2 ON T1.property_id = T2.property_id JOIN Apartments AS T3 ON T3.property_address = T2.property_address JOIN Houses AS T4 ON T4.property_address = T2.property_address WHERE T3.room_count > 1 OR T4.room_count > 1
