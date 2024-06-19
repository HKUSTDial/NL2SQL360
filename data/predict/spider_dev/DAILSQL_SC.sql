SELECT count(*) FROM singer	concert_singer
SELECT count(*) FROM singer	concert_singer
SELECT Name , Country , Age FROM singer ORDER BY Age DESC	concert_singer
SELECT Name , Country , Age FROM singer ORDER BY Age DESC	concert_singer
SELECT avg(age) , min(age) , max(age) FROM singer WHERE Country = 'France'	concert_singer
SELECT avg(age), min(age), max(age) FROM singer WHERE Country = 'France'	concert_singer
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 ORDER BY T1.Age ASC LIMIT 1	concert_singer
SELECT Song_Name, Song_release_year FROM singer WHERE Age = (SELECT min(Age) FROM singer)	concert_singer
SELECT DISTINCT Country FROM singer WHERE Age > 20	concert_singer
SELECT DISTINCT country FROM singer WHERE age > 20	concert_singer
SELECT Country , count(*) FROM singer GROUP BY Country	concert_singer
SELECT Country, COUNT(*) FROM singer GROUP BY Country	concert_singer
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)	concert_singer
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)	concert_singer
SELECT Location , Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000	concert_singer
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000	concert_singer
SELECT max(Capacity) , avg(Capacity) FROM stadium	concert_singer
SELECT avg(Capacity) , max(Capacity) FROM stadium	concert_singer
SELECT T1.Name, T1.Capacity FROM stadium AS T1 ORDER BY T1.Average DESC LIMIT 1	concert_singer
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1	concert_singer
SELECT count(*) FROM concert WHERE Year IN ('2014', '2015')	concert_singer
SELECT count(*) FROM concert WHERE Year IN ('2014', '2015')	concert_singer
SELECT s.Name, count(c.concert_ID) FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID GROUP BY s.Name	concert_singer
SELECT count(*) , T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name	concert_singer
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year >= '2014' GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year > 2013 GROUP BY T1.Stadium_ID ORDER BY COUNT(*) DESC LIMIT 1	concert_singer
SELECT Year FROM concert GROUP BY Year ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT Year FROM concert GROUP BY Year ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)	concert_singer
SELECT name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)	concert_singer
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30	concert_singer
SELECT Name FROM stadium EXCEPT SELECT T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = '2014'	concert_singer
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT T1.Stadium_ID FROM concert AS T1 WHERE YEAR = '2014')	concert_singer
SELECT T2.concert_Name, T2.Theme, count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID	concert_singer
SELECT T1.concert_Name , T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID	concert_singer
SELECT T2.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID	concert_singer
SELECT T2.Name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID	concert_singer
SELECT s.Name FROM singer AS s JOIN singer_in_concert AS sc ON sc.Singer_ID = s.Singer_ID JOIN concert AS c ON c.concert_ID = sc.concert_ID WHERE c.Year = "2014"	concert_singer
SELECT "Name" FROM singer WHERE "Singer_ID" IN (SELECT "Singer_ID" FROM singer_in_concert WHERE "concert_ID" IN (SELECT "concert_ID" FROM concert WHERE "Year" = '2014'))	concert_singer
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'	concert_singer
SELECT Name , Country FROM singer WHERE Song_Name LIKE "%Hey%"	concert_singer
SELECT Name, Location FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = "2014" INTERSECT SELECT Stadium_ID FROM concert WHERE Year = "2015")	concert_singer
SELECT T3.name , T3.Location FROM concert AS T1 JOIN stadium AS T3 ON T1.Stadium_ID = T3.Stadium_ID WHERE T1.Year = '2014' INTERSECT SELECT T3.name , T3.Location FROM concert AS T1 JOIN stadium AS T3 ON T1.Stadium_ID = T3.Stadium_ID WHERE T1.Year = '2015'	concert_singer
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(Capacity) FROM stadium)	concert_singer
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)	concert_singer
SELECT count(*) FROM Pets WHERE weight > 10	pets_1
SELECT count(*) FROM Pets WHERE weight > 10	pets_1
SELECT weight FROM Pets JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID JOIN Student ON Has_Pet.StuID = Student.StuID WHERE PetType = 'dog' ORDER BY pet_age ASC LIMIT 1	pets_1
SELECT weight FROM Pets JOIN Has_Pet ON Pets.PetID = Has_Pet.PetID JOIN Student ON Has_Pet.StuID = Student.StuID WHERE PetType = 'dog' ORDER BY pet_age ASC LIMIT 1	pets_1
SELECT PetType , max(weight) FROM Pets GROUP BY PetType	pets_1
SELECT PetType, max(weight) FROM Pets GROUP BY PetType	pets_1
SELECT count(*) FROM Student AS t1 JOIN Has_Pet AS t2 ON t1.StuID = t2.StuID WHERE t1.Age > 20	pets_1
SELECT count(*) FROM Pets WHERE PetID IN (SELECT PetID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20))	pets_1
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'dog' AND T1.Sex = 'F'	pets_1
SELECT count(*) FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'Dog' AND T1.Sex = 'F'	pets_1
SELECT count(DISTINCT PetType) FROM Pets	pets_1
SELECT count(DISTINCT PetType) FROM Pets	pets_1
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Dog"	pets_1
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType IN ('cat', 'dog'))	pets_1
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat") INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog"))	pets_1
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType = 'Cat' INTERSECT SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType = 'Dog')	pets_1
SELECT Major , Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType = 'Cat')	pets_1
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType = 'cat')	pets_1
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType = 'Cat')	pets_1
SELECT StuID FROM Student EXCEPT SELECT T1.StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'cat'	pets_1
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Dog')) AND StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Cat'))	pets_1
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType = 'Dog') AND StuID NOT IN (SELECT StuID FROM Has_Pet JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE PetType = 'Cat')	pets_1
SELECT PetType, weight FROM Pets ORDER BY pet_age ASC LIMIT 1	pets_1
SELECT T2.PetType , T2.weight FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID ORDER BY T2.pet_age ASC LIMIT 1	pets_1
SELECT PetID, weight FROM Pets WHERE pet_age > 1	pets_1
SELECT PetID, weight FROM Pets WHERE pet_age > 1	pets_1
SELECT PetType , avg(pet_age) , max(pet_age) FROM Pets GROUP BY PetType	pets_1
SELECT avg(pet_age) , max(pet_age) , PetType FROM Pets GROUP BY PetType	pets_1
SELECT PetType , avg(weight) FROM Pets GROUP BY PetType	pets_1
SELECT PetType , avg(weight) FROM Pets GROUP BY PetType	pets_1
SELECT Fname, Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID	pets_1
SELECT DISTINCT Fname, Age FROM Student AS s JOIN Has_Pet AS h ON s.StuID = h.StuID	pets_1
SELECT PetID FROM Has_Pet JOIN Student ON Has_Pet.StuID = Student.StuID WHERE Student.LName = "Smith"	pets_1
SELECT PetID FROM Has_Pet JOIN Student ON Has_Pet.StuID = Student.StuID WHERE Student.LName = 'Smith'	pets_1
SELECT Has_Pet.StuID , count(*) FROM Has_Pet JOIN Student ON Has_Pet.StuID = Student.StuID GROUP BY Has_Pet.StuID HAVING count(*) > 0	pets_1
SELECT T1.StuID , count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID	pets_1
SELECT S.FName, S.Sex FROM Student AS S JOIN Has_Pet AS P ON S.StuID = P.StuID GROUP BY S.StuID HAVING count(*) > 1	pets_1
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1	pets_1
SELECT s.LName FROM Student s JOIN Has_Pet hp ON s.StuID = hp.StuID JOIN Pets p ON hp.PetID = p.PetID WHERE p.PetType = 'cat' AND p.pet_age = 3	pets_1
SELECT S.LName FROM Student S JOIN Has_Pet P ON S.StuID = P.StuID JOIN Pets T ON P.PetID = T.PetID WHERE T.PetType = 'cat' AND T.pet_age = 3;	pets_1
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)	pets_1
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)	pets_1
SELECT count(*) FROM continents	car_1
SELECT count(*) FROM continents	car_1
SELECT T1.ContId , T1.Continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId	car_1
SELECT T1.ContId, T1.Continent, count(T2.CountryId) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId, T1.Continent	car_1
SELECT count(*) FROM countries	car_1
SELECT count(*) FROM countries;	car_1
SELECT T1.FullName, T1.Id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id, T1.FullName	car_1
SELECT T1.Id, T1.FullName, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id, T1.FullName	car_1
SELECT Model FROM model_list WHERE ModelId = ( SELECT Id FROM cars_data ORDER BY Horsepower ASC LIMIT 1 );	car_1
SELECT model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE CountryName = (SELECT Horsepower FROM cars_data ORDER BY Horsepower ASC LIMIT 1)));	car_1
SELECT Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.weight < (SELECT AVG(weight) FROM cars_data)	car_1
SELECT model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.ModelId WHERE weight < (SELECT avg(weight) FROM cars_data)	car_1
SELECT car_makers.Maker FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker JOIN car_names ON model_list.Model = car_names.Model JOIN cars_data ON car_names.MakeId = cars_data.Id WHERE cars_data.Year = 1970	car_1
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.ModelId = T3.MakeId JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T4.Year = 1970	car_1
SELECT car_names.Make , cars_data.Year FROM cars_data JOIN car_names ON cars_data.Id = car_names.MakeId ORDER BY cars_data.Year LIMIT 1	car_1
SELECT T1.Maker, T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1	car_1
SELECT DISTINCT model_list.Model FROM model_list JOIN cars_data ON model_list.ModelId = cars_data.Id WHERE cars_data.Year > 1980	car_1
SELECT DISTINCT model_list.Model FROM model_list JOIN cars_data ON model_list.ModelId = cars_data.Id WHERE cars_data.Year > 1980	car_1
SELECT continents.Continent , COUNT(*) FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country JOIN continents ON countries.Continent = continents.ContId GROUP BY continents.Continent	car_1
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent JOIN car_makers AS T3 ON T2.CountryId = T3.Country GROUP BY T1.Continent	car_1
SELECT countries.CountryName FROM car_makers JOIN countries ON car_makers.Country = countries.CountryId GROUP BY countries.CountryName ORDER BY COUNT(*) DESC LIMIT 1	car_1
SELECT T2.CountryName FROM countries AS T2 JOIN car_makers AS T1 ON T2.CountryId = T1.Country GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1	car_1
SELECT T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName	car_1
SELECT car_makers.Id, car_makers.FullName, COUNT(model_list.Model) FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker GROUP BY car_makers.Id, car_makers.FullName	car_1
SELECT Accelerate FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names WHERE Make = 'amc hornet sportabout (sw)')	car_1
SELECT Accelerate FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names WHERE Make = 'amc hornet sportabout (sw)')	car_1
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = 'France'	car_1
SELECT count(DISTINCT Maker) FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE CountryName = 'France')	car_1
SELECT count(*) FROM model_list AS ml JOIN car_makers AS cm ON ml.Maker = cm.Id JOIN countries AS c ON cm.Country = c.CountryId JOIN continents as cnt ON c.Continent = cnt.ContId WHERE cnt.Continent = 'USA';	car_1
SELECT count(*) FROM car_makers WHERE Country = (SELECT CountryId FROM countries WHERE CountryName = "United States");	car_1
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4	car_1
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4	car_1
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974	car_1
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974	car_1
SELECT car_makers.Maker , model_list.Model FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker	car_1
SELECT Maker , Model FROM model_list	car_1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1	car_1
SELECT T2.CountryId, T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.CountryId HAVING COUNT(*) >= 1	car_1
SELECT count(*) FROM cars_data WHERE Horsepower > 150	car_1
SELECT count(*) FROM cars_data WHERE Horsepower > 150	car_1
SELECT avg(weight) , Year FROM cars_data GROUP BY Year	car_1
SELECT avg(Weight) , Year FROM cars_data GROUP BY Year	car_1
SELECT countries.CountryName FROM countries JOIN car_makers ON countries.CountryId = car_makers.Country WHERE countries.Continent = (SELECT ContId FROM continents WHERE Continent = 'Europe') GROUP BY countries.CountryName HAVING COUNT(DISTINCT car_makers.Maker) >= 3	car_1
SELECT countries.CountryName FROM countries JOIN continents ON countries.Continent = continents.ContId JOIN car_makers ON countries.CountryId = car_makers.Country WHERE continents.Continent = 'Europe' GROUP BY countries.CountryName HAVING count(car_makers.Id) >= 3	car_1
SELECT max(T1.Horsepower), T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 3 GROUP BY T2.Make	car_1
SELECT max(Horsepower) , Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE Cylinders = 3	car_1
SELECT model FROM model_list JOIN cars_data ON model_list.ModelId = cars_data.Id ORDER BY MPG DESC LIMIT 1;	car_1
SELECT model FROM model_list JOIN cars_data ON model_list.ModelId = cars_data.Id ORDER BY MPG DESC LIMIT 1	car_1
SELECT avg(Horsepower) FROM cars_data WHERE Year < 1980	car_1
SELECT avg(Horsepower) FROM cars_data WHERE Year < 1980	car_1
SELECT avg(Edispl) FROM cars_data WHERE Id IN (SELECT MakeId FROM car_names WHERE Model IN (SELECT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Maker = 'volvo')))	car_1
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Make = 'volvo'	car_1
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders	car_1
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders	car_1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1;	car_1
SELECT Model , COUNT(*) FROM car_names GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1	car_1
SELECT count(*) FROM cars_data WHERE Cylinders > 4	car_1
SELECT count(*) FROM cars_data WHERE Cylinders > 4	car_1
SELECT count(*) FROM cars_data WHERE Year = 1980	car_1
SELECT count(*) FROM cars_data WHERE Year = 1980	car_1
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company";	car_1
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = "American Motor Company";	car_1
SELECT T1.Id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3	car_1
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(T1.Id) > 3;	car_1
SELECT Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN cars_data AS T3 ON T1.ModelId = T3.Id WHERE T2.FullName = "General Motors" UNION SELECT Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Id WHERE T2.Weight > 3500	car_1
SELECT Model FROM model_list WHERE Maker IN (SELECT Id FROM car_makers WHERE Maker = "General Motors") UNION SELECT Make FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data where Weight > 3500)	car_1
SELECT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000	car_1
SELECT Year FROM cars_data WHERE Weight < 4000 INTERSECT SELECT Year FROM cars_data WHERE Weight > 3000	car_1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1	car_1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1	car_1
SELECT Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Model = 'volvo' ORDER BY T1.Accelerate ASC LIMIT 1;	car_1
SELECT Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = (SELECT Id FROM car_makers WHERE Maker = 'volvo') ORDER BY T1.Accelerate LIMIT 1;	car_1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data ORDER BY Horsepower DESC LIMIT 1);	car_1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data ORDER BY Horsepower DESC LIMIT 1)	car_1
SELECT COUNT(*) FROM (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 2)	car_1
SELECT count(*) FROM (SELECT Country FROM car_makers GROUP BY Country HAVING count(*) > 2)	car_1
SELECT count(*) FROM cars_data WHERE Cylinders > 6	car_1
SELECT count(*) FROM cars_data WHERE Cylinders > 6	car_1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1;	car_1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1;	car_1
SELECT car_names.MakeId, car_names.Make FROM cars_data JOIN car_names ON cars_data.Id = car_names.MakeId WHERE cars_data.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND cars_data.Cylinders <= 3	car_1
SELECT MakeId, Make FROM cars_data JOIN car_names ON cars_data.Id = car_names.MakeId WHERE Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND Cylinders < 4	car_1
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980	car_1
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980	car_1
SELECT model_list.Model FROM model_list JOIN car_makers ON model_list.Maker = car_makers.Id JOIN cars_data ON model_list.ModelId = cars_data.Id WHERE cars_data.Weight < 3500 AND car_makers.Maker != 'Ford Motor Company'	car_1
SELECT T3.Model FROM model_list AS T3 JOIN car_makers AS T2 ON T3.Maker = T2.Id JOIN cars_data AS T1 ON T3.ModelId = T1.Id WHERE T1.Weight < 3500 AND T2.Maker != 'Ford Motor Company'	car_1
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)	car_1
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)	car_1
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(T2.Model) >= 2 INTERSECT SELECT T1.Id, T1.Maker FROM car_makers AS T1 GROUP BY T1.Maker HAVING count(*) > 3	car_1
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(DISTINCT T2.Model) >= 2 AND count(T2.Model) > 3	car_1
SELECT CountryId, CountryName FROM countries WHERE (SELECT COUNT(Id) FROM car_makers WHERE Country = CountryId) > 3 OR CountryId IN (SELECT Country FROM car_makers JOIN model_list ON car_makers.Id = model_list.Maker WHERE Model = 'fiat')	car_1
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING count(*) > 3) OR CountryId IN (SELECT Country FROM car_makers WHERE Id IN (SELECT Maker FROM model_list WHERE Model = 'fiat'))	car_1
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"	flight_2
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways";	flight_2
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"	flight_2
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"	flight_2
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"	flight_2
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'	flight_2
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"	flight_2
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony'	flight_2
SELECT count(*) FROM airlines	flight_2
SELECT count(*) FROM airlines	flight_2
SELECT count(*) FROM airports	flight_2
SELECT count(*) FROM airports	flight_2
SELECT count(*) FROM flights	flight_2
SELECT count(*) FROM flights	flight_2
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"	flight_2
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'	flight_2
SELECT count(*) FROM airlines WHERE Country = 'USA'	flight_2
SELECT count(*) FROM airlines WHERE Country = 'USA'	flight_2
SELECT City, Country FROM airports WHERE AirportName = "Alton"	flight_2
SELECT City , Country FROM airports WHERE AirportName = 'Alton'	flight_2
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'	flight_2
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'	flight_2
SELECT AirportName FROM airports WHERE City = "Aberdeen"	flight_2
SELECT AirportName FROM airports WHERE City = 'Aberdeen'	flight_2
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'	flight_2
SELECT count(*) FROM flights WHERE SourceAirport = "APG"	flight_2
SELECT count(*) FROM flights WHERE DestAirport = "ATO"	flight_2
SELECT count(*) FROM flights WHERE DestAirport = 'ATO'	flight_2
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen')	flight_2
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen'	flight_2
SELECT count(*) FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen')	flight_2
SELECT count(*) FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen')	flight_2
SELECT count(*) FROM flights JOIN airports AS source ON flights.SourceAirport = source.AirportCode JOIN airports AS dest ON flights.DestAirport = dest.AirportCode WHERE source.City = 'Aberdeen' AND dest.City = 'Ashley'	flight_2
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' AND DestAirport = 'Ashley'	flight_2
SELECT count(*) FROM flights AS t1 JOIN airlines AS t2 ON t1.Airline = t2.uid WHERE t2.Airline = 'JetBlue Airways'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "Jetblue Airways"	flight_2
SELECT count(*) FROM flights AS f JOIN airlines AS a ON f.Airline = a.uid WHERE a.Airline = 'United Airlines' AND f.DestAirport = 'ASY';	flight_2
SELECT count(*) FROM flights AS f JOIN airlines AS a ON f.Airline = a.uid WHERE a.Airline = 'United Airlines' AND f.DestAirport = 'ASY'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'United Airlines' AND T1.SourceAirport = 'AHD';	flight_2
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'United Airlines' AND T1.SourceAirport = 'AHD'	flight_2
SELECT count(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'United Airlines') AND DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen')	flight_2
SELECT count(*) FROM flights WHERE Airline IN (SELECT uid FROM airlines WHERE Airline = 'United Airlines') AND DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen')	flight_2
SELECT City FROM airports JOIN flights ON airports.AirportCode = flights.DestAirport GROUP BY City ORDER BY count(*) DESC LIMIT 1;	flight_2
SELECT City FROM airports JOIN flights ON airports.AirportCode = flights.DestAirport GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1	flight_2
SELECT City FROM airports JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY City ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT City FROM airports JOIN flights ON airports.AirportCode = flights.SourceAirport GROUP BY flights.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1	flight_2
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) ASC LIMIT 1	flight_2
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1	flight_2
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1	flight_2
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T2.Airline ORDER BY count(*) ASC LIMIT 1	flight_2
SELECT A.Abbreviation, A.Country FROM airlines AS A JOIN flights AS F ON A.uid = F.Airline GROUP BY F.Airline ORDER BY count(*) LIMIT 1	flight_2
SELECT Airline FROM airlines WHERE uid IN (SELECT Airline FROM flights WHERE SourceAirport = 'AHD')	flight_2
SELECT Airline FROM airlines WHERE uid IN (SELECT Airline FROM flights WHERE SourceAirport = 'AHD')	flight_2
SELECT t1.Airline FROM airlines AS t1 JOIN flights AS t2 ON t1.uid = t2.Airline WHERE t2.DestAirport = "AHD"	flight_2
SELECT a.Airline FROM airlines AS a JOIN flights AS f ON a.uid = f.Airline WHERE f.DestAirport = "AHD"	flight_2
SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline WHERE f.SourceAirport IN ('APG', 'CVO') GROUP BY a.Airline HAVING COUNT(DISTINCT f.SourceAirport) = 2	flight_2
SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline WHERE f.SourceAirport = "APG" INTERSECT SELECT a.Airline FROM airlines a JOIN flights f ON a.uid = f.Airline WHERE f.SourceAirport = "CVO"	flight_2
SELECT Airline FROM airlines WHERE uid IN (SELECT Airline FROM flights WHERE SourceAirport = 'CVO') EXCEPT SELECT Airline FROM airlines WHERE uid IN (SELECT Airline FROM flights WHERE SourceAirport = 'APG')	flight_2
SELECT A.Airline FROM airlines A INNER JOIN flights F ON A.uid = F.Airline WHERE F.SourceAirport = 'CVO' AND A.uid NOT IN (SELECT Airline FROM flights WHERE SourceAirport = 'APG')	flight_2
SELECT A.Airline FROM airlines AS A JOIN flights AS F ON A.uid = F.Airline GROUP BY A.Airline HAVING COUNT(*) >= 10	flight_2
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) >= 10	flight_2
SELECT Airline FROM airlines WHERE uid IN (SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200)	flight_2
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.uid HAVING count(T1.FlightNo) < 200;	flight_2
SELECT FlightNo FROM flights WHERE Airline IN (SELECT uid FROM airlines WHERE Airline = 'United Airlines')	flight_2
SELECT FlightNo FROM flights JOIN airlines ON flights.Airline = airlines.uid WHERE airlines.Airline = "United Airlines"	flight_2
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"	flight_2
SELECT FlightNo FROM flights WHERE SourceAirport = "APG";	flight_2
SELECT FlightNo FROM flights WHERE DestAirport = "APG"	flight_2
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'	flight_2
SELECT FlightNo FROM flights AS T1 JOIN airports as T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"	flight_2
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"	flight_2
SELECT FlightNo FROM flights AS F JOIN airports AS A ON F.DestAirport = A.AirportCode WHERE A.City = "Aberdeen"	flight_2
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen')	flight_2
SELECT count(*) FROM 'flights' INNER JOIN 'airports' ON flights.DestAirport = airports.AirportCode WHERE City IN ('Aberdeen', 'Abilene')	flight_2
SELECT count(*) FROM flights WHERE DestAirport = "ABZ" OR DestAirport = "ABI"	flight_2
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)	flight_2
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)	flight_2
SELECT count(*) FROM employee	employee_hire_evaluation
SELECT count(*) FROM employee	employee_hire_evaluation
SELECT Name FROM employee ORDER BY Age ASC	employee_hire_evaluation
SELECT Name FROM employee ORDER BY Age ASC	employee_hire_evaluation
SELECT City , COUNT(*) FROM employee GROUP BY City	employee_hire_evaluation
SELECT City , count(*) FROM employee GROUP BY City	employee_hire_evaluation
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1	employee_hire_evaluation
SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1	employee_hire_evaluation
SELECT count(*) , Location FROM shop GROUP BY Location	employee_hire_evaluation
SELECT count(*) , Location FROM shop GROUP BY Location	employee_hire_evaluation
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1	employee_hire_evaluation
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1	employee_hire_evaluation
SELECT min(Number_products) , max(Number_products) FROM shop	employee_hire_evaluation
SELECT min(Number_products) , max(Number_products) FROM shop	employee_hire_evaluation
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC	employee_hire_evaluation
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC	employee_hire_evaluation
SELECT Name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)	employee_hire_evaluation
SELECT Name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)	employee_hire_evaluation
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1	employee_hire_evaluation
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1	employee_hire_evaluation
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1	employee_hire_evaluation
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1	employee_hire_evaluation
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)	employee_hire_evaluation
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)	employee_hire_evaluation
SELECT T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY count(*) DESC LIMIT 1	employee_hire_evaluation
SELECT T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1	employee_hire_evaluation
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)	employee_hire_evaluation
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)	employee_hire_evaluation
SELECT shop.Name , count(*) FROM hiring JOIN shop ON hiring.Shop_ID = shop.Shop_ID GROUP BY shop.Shop_ID	employee_hire_evaluation
SELECT T1.Name , COUNT(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Name	employee_hire_evaluation
SELECT sum(Bonus) FROM evaluation	employee_hire_evaluation
SELECT sum(Bonus) FROM evaluation	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000	employee_hire_evaluation
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000	employee_hire_evaluation
SELECT count(DISTINCT Location) FROM shop	employee_hire_evaluation
SELECT count(DISTINCT Location) FROM shop	employee_hire_evaluation
SELECT count(*) FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents	cre_Doc_Template_Mgt
SELECT Document_ID , Document_Name , Document_Description FROM Documents	cre_Doc_Template_Mgt
SELECT Document_ID, Document_Name, Document_Description FROM Documents	cre_Doc_Template_Mgt
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'	cre_Doc_Template_Mgt
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE "%w%"	cre_Doc_Template_Mgt
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = "Robbin CV"	cre_Doc_Template_Mgt
SELECT document_id , template_id , document_description FROM Documents WHERE document_name = "Robbin CV"	cre_Doc_Template_Mgt
SELECT count(DISTINCT Template_ID) FROM Documents	cre_Doc_Template_Mgt
SELECT count(DISTINCT Template_ID) FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents AS D JOIN Templates AS T ON D.Template_ID = T.Template_ID WHERE T.Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT Template_ID , count(*) FROM Documents GROUP BY Template_ID	cre_Doc_Template_Mgt
SELECT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID	cre_Doc_Template_Mgt
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Template_ID , T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY COUNT(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING count(*) > 1	cre_Doc_Template_Mgt
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates	cre_Doc_Template_Mgt
SELECT Template_ID , Version_Number , Template_Type_Code FROM Templates	cre_Doc_Template_Mgt
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates	cre_Doc_Template_Mgt
SELECT distinct(Template_Type_Code) FROM Templates	cre_Doc_Template_Mgt
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PP' OR Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates WHERE Template_Type_Code IN ("PP", "PPT")	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'CV'	cre_Doc_Template_Mgt
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5	cre_Doc_Template_Mgt
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5	cre_Doc_Template_Mgt
SELECT Template_Type_Code, COUNT(*) FROM Templates GROUP BY Template_Type_Code	cre_Doc_Template_Mgt
SELECT Template_Type_Code , count(*) FROM Templates GROUP BY Template_Type_Code	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING count(*) < 3	cre_Doc_Template_Mgt
SELECT Version_Number, Template_Type_Code FROM Templates ORDER BY Version_Number ASC LIMIT 1;	cre_Doc_Template_Mgt
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code	cre_Doc_Template_Mgt
SELECT T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name = "Data base"	cre_Doc_Template_Mgt
SELECT Templates.Template_Type_Code FROM Documents JOIN Templates ON Documents.Template_ID = Templates.Template_ID WHERE Documents.Document_Name = "Data base"	cre_Doc_Template_Mgt
SELECT T2.Document_Name FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code = "BK"	cre_Doc_Template_Mgt
SELECT D.document_name FROM Documents AS D JOIN Templates AS T ON D.Template_ID = T.Template_ID WHERE T.Template_Type_Code = 'BK'	cre_Doc_Template_Mgt
SELECT t.Template_Type_Code , COUNT(*) FROM Ref_Template_Types t JOIN Templates tem ON t.Template_Type_Code = tem.Template_Type_Code JOIN Documents d ON tem.Template_ID = d.Template_ID GROUP BY t.Template_Type_Code	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID GROUP BY T1.Template_Type_Code	cre_Doc_Template_Mgt
SELECT t2.Template_Type_Code FROM Documents AS t1 JOIN Templates AS t2 ON t1.Template_ID = t2.Template_ID GROUP BY t2.Template_Type_Code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN ( SELECT Template_Type_Code FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents ) )	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN ( SELECT Template_Type_Code FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents ) );	cre_Doc_Template_Mgt
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types	cre_Doc_Template_Mgt
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types	cre_Doc_Template_Mgt
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"	cre_Doc_Template_Mgt
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"	cre_Doc_Template_Mgt
SELECT DISTINCT Template_Type_Description FROM Ref_Template_Types JOIN Templates ON Ref_Template_Types.Template_Type_Code = Templates.Template_Type_Code JOIN Documents ON Templates.Template_ID = Documents.Template_ID	cre_Doc_Template_Mgt
SELECT DISTINCT Template_Type_Description FROM Ref_Template_Types RTT JOIN Templates T ON RTT.Template_Type_Code = T.Template_Type_Code JOIN Documents D ON T.Template_ID = D.Template_ID	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "Presentation"	cre_Doc_Template_Mgt
SELECT T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "Presentation"	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs;	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs AS p JOIN Documents AS d ON p.Document_ID = d.Document_ID WHERE d.Document_Name = "Summer Show"	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Summer Show'	cre_Doc_Template_Mgt
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = "Korea"	cre_Doc_Template_Mgt
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE "%Korea%"	cre_Doc_Template_Mgt
SELECT Paragraph_ID , Paragraph_Text FROM Paragraphs WHERE Document_ID = (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY')	cre_Doc_Template_Mgt
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID IN (SELECT Document_ID FROM Documents WHERE Document_Name = 'Welcome to NY')	cre_Doc_Template_Mgt
SELECT Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Customer reviews"	cre_Doc_Template_Mgt
SELECT T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Customer reviews'	cre_Doc_Template_Mgt
SELECT Document_ID, COUNT(*) AS Paragraph_Count FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID	cre_Doc_Template_Mgt
SELECT Document_ID, COUNT(*) FROM Paragraphs GROUP BY Document_ID ORDER BY Document_ID	cre_Doc_Template_Mgt
SELECT T1.Document_ID , T1.Document_Name , COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID, T1.Document_Name	cre_Doc_Template_Mgt
SELECT T1.Document_ID , T1.Document_Name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID	cre_Doc_Template_Mgt
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2	cre_Doc_Template_Mgt
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING count(*) >= 2	cre_Doc_Template_Mgt
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Document_ID , T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY COUNT(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY count(*) LIMIT 1;	cre_Doc_Template_Mgt
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID ORDER BY count(*) ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT Document_ID FROM Documents WHERE Document_ID IN (SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) BETWEEN 1 AND 2)	cre_Doc_Template_Mgt
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID HAVING COUNT(*) BETWEEN 1 AND 2;	cre_Doc_Template_Mgt
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text IN ('Brazil', 'Ireland')	cre_Doc_Template_Mgt
SELECT T1.Document_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Paragraph_Text LIKE '%Brazil%' INTERSECT SELECT T1.Document_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Paragraph_Text LIKE '%Ireland%'	cre_Doc_Template_Mgt
SELECT count(*) FROM teacher	course_teach
SELECT count(*) FROM teacher	course_teach
SELECT Name FROM teacher ORDER BY Age ASC	course_teach
SELECT Name FROM teacher ORDER BY Age ASC	course_teach
SELECT Age , Hometown FROM teacher	course_teach
SELECT Age , Hometown FROM teacher	course_teach
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"	course_teach
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"	course_teach
SELECT Name FROM teacher WHERE Age = '32' OR Age = '33'	course_teach
SELECT Name FROM teacher WHERE Age = '32' OR Age = '33'	course_teach
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1	course_teach
SELECT Hometown FROM teacher WHERE Age = (SELECT min(Age) FROM teacher)	course_teach
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown	course_teach
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY count(*) DESC LIMIT 1	course_teach
SELECT "Hometown" FROM teacher GROUP BY "Hometown" HAVING COUNT(*) >= 2	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2	course_teach
SELECT teacher.Name, course.Course FROM course_arrange JOIN teacher ON course_arrange.Teacher_ID = teacher.Teacher_ID JOIN course ON course_arrange.Course_ID = course.Course_ID	course_teach
SELECT T2.Name , T1.Course FROM course AS T1 JOIN course_arrange AS T3 ON T1.Course_ID = T3.Course_ID JOIN teacher AS T2 ON T3.Teacher_ID = T2.Teacher_ID	course_teach
SELECT T2.Name, T1.Course FROM course_arrange AS T0 JOIN course AS T1 ON T0.Course_ID = T1.Course_ID JOIN teacher AS T2 ON T0.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC	course_teach
SELECT T.Name, C.Course FROM teacher AS T JOIN course_arrange AS CA ON T.Teacher_ID = CA.Teacher_ID JOIN course AS C ON CA.Course_ID = C.Course_ID ORDER BY T.Name ASC	course_teach
SELECT T2.Name FROM course AS T1 JOIN course_arrange AS T3 ON T1.Course_ID = T3.Course_ID JOIN teacher AS T2 ON T3.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"	course_teach
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Course_ID IN (SELECT Course_ID FROM course WHERE Course = 'Math'))	course_teach
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name	course_teach
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name	course_teach
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2	course_teach
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2	course_teach
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)	course_teach
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)	course_teach
SELECT count(*) FROM visitor WHERE Age < 30;	museum_visit
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC	museum_visit
SELECT avg(Age) FROM visitor WHERE Level_of_membership <= 4	museum_visit
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC	museum_visit
SELECT Museum_ID , Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1	museum_visit
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < '2009'	museum_visit
SELECT Open_Year , Num_of_Staff FROM museum WHERE Name = "Plaza Museum"	museum_visit
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > '2010')	museum_visit
SELECT T1.ID, T1.Name, T1.Age FROM Visitor AS T1 JOIN Visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID HAVING COUNT(*) > 1	museum_visit
SELECT T2.ID, T2.Name, T2.Level_of_membership FROM visitor AS T2 JOIN visit AS T1 ON T2.ID = T1.visitor_ID GROUP BY T2.ID ORDER BY SUM(T1.Total_spent) DESC LIMIT 1	museum_visit
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1	museum_visit
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)	museum_visit
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID ORDER BY T2.Num_of_Ticket DESC LIMIT 1	museum_visit
SELECT avg(Num_of_Ticket) , max(Num_of_Ticket) FROM visit	museum_visit
SELECT sum(Total_spent) FROM visit JOIN visitor ON visit.visitor_ID = visitor.ID WHERE visitor.Level_of_membership = 1	museum_visit
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year < '2009' INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year > '2011'	museum_visit
SELECT count(*) FROM visitor WHERE ID NOT IN ( SELECT visitor_ID FROM visit WHERE Museum_ID IN ( SELECT Museum_ID FROM museum WHERE Open_Year > '2010' ) )	museum_visit
SELECT count(*) FROM museum WHERE Open_Year > '2013' OR Open_Year < '2008'	museum_visit
SELECT count(*) FROM players	wta_1
SELECT count(*) FROM players	wta_1
SELECT count(*) FROM matches	wta_1
SELECT count(*) FROM matches	wta_1
SELECT first_name, birth_date FROM players WHERE country_code = "USA"	wta_1
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'	wta_1
SELECT avg(loser_age), avg(winner_age) FROM matches	wta_1
SELECT avg(loser_age) , avg(winner_age) FROM matches	wta_1
SELECT avg(winner_rank) AS AverageWinnerRank FROM matches	wta_1
SELECT avg(winner_rank) FROM matches	wta_1
SELECT max(loser_rank) FROM matches	wta_1
SELECT min(loser_rank) FROM matches	wta_1
SELECT count(DISTINCT country_code) FROM players	wta_1
SELECT COUNT(DISTINCT country_code) FROM players	wta_1
SELECT count(DISTINCT loser_name) FROM matches	wta_1
SELECT count(DISTINCT loser_name) FROM matches	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(match_num) > 10;	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;	wta_1
SELECT DISTINCT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT DISTINCT winner_name FROM matches WHERE year = 2016	wta_1
SELECT first_name, last_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE year = 2013 INTERSECT SELECT winner_id FROM matches WHERE year = 2016)	wta_1
SELECT count(*) FROM matches WHERE year IN (2013, 2016)	wta_1
SELECT count(*) FROM matches WHERE year IN (2013, 2016);	wta_1
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"	wta_1
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT winner_id FROM matches WHERE tourney_name = "Australian Open")	wta_1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1	wta_1
SELECT first_name , last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name, last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date	wta_1
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date	wta_1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY sum(tours) DESC LIMIT 1	wta_1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.tours) DESC LIMIT 1	wta_1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1	wta_1
SELECT p.first_name, p.last_name, r.ranking_points FROM players p JOIN matches m ON p.player_id = m.winner_id JOIN rankings r ON p.player_id = r.player_id GROUP BY p.player_id, r.ranking_points ORDER BY COUNT(*) DESC LIMIT 1	wta_1
SELECT p.first_name, p.last_name, r.ranking_points FROM players AS p JOIN matches AS m ON p.player_id = m.winner_id JOIN rankings AS r ON p.player_id = r.player_id GROUP BY p.player_id ORDER BY count(*) DESC, r.ranking_points DESC LIMIT 1	wta_1
SELECT players.first_name, players.last_name, rankings.ranking_points FROM players JOIN rankings ON players.player_id = rankings.player_id JOIN matches ON players.player_id = matches.winner_id WHERE matches.tourney_name = 'Australian Open' ORDER BY rankings.ranking_points DESC LIMIT 1;	wta_1
SELECT "first_name", "last_name" FROM players INNER JOIN matches ON players.player_id = matches.winner_id WHERE matches.tourney_name = 'Australian Open' ORDER BY matches.winner_rank_points DESC LIMIT 1;	wta_1
SELECT p1.first_name AS loser_first_name, p1.last_name AS loser_last_name, p2.first_name AS winner_first_name, p2.last_name AS winner_last_name FROM matches INNER JOIN players AS p1 ON matches.loser_id = p1.player_id INNER JOIN players AS p2 ON matches.winner_id = p2.player_id ORDER BY matches.minutes DESC LIMIT 1	wta_1
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 ORDER BY T1.minutes DESC LIMIT 1	wta_1
SELECT players.first_name, avg(rankings.ranking) FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY players.player_id, players.first_name	wta_1
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name	wta_1
SELECT sum(ranking_points), first_name FROM rankings JOIN players ON rankings.player_id = players.player_id GROUP BY players.first_name	wta_1
SELECT sum(rankings.ranking_points) , players.first_name FROM rankings JOIN players ON rankings.player_id = players.player_id GROUP BY players.first_name	wta_1
SELECT count(*) , country_code FROM players GROUP BY country_code	wta_1
SELECT country_code , COUNT(*) FROM players GROUP BY country_code	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;	wta_1
SELECT ranking_date , count(*) FROM rankings GROUP BY ranking_date	wta_1
SELECT ranking_date , sum(tours) FROM rankings GROUP BY ranking_date	wta_1
SELECT count(*) , year FROM matches GROUP BY year	wta_1
SELECT year, COUNT(*) FROM matches GROUP BY year	wta_1
SELECT players.first_name, players.last_name, matches.winner_rank FROM players INNER JOIN matches ON players.player_id = matches.winner_id ORDER BY players.birth_date DESC LIMIT 3	wta_1
SELECT first_name , last_name , winner_rank FROM players JOIN matches ON players.player_id = matches.winner_id ORDER BY birth_date DESC LIMIT 3;	wta_1
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE tourney_name = 'WTA Championships' AND winner_hand = 'L'	wta_1
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "L" AND T2.tourney_name = "WTA Championships"	wta_1
SELECT first_name, country_code, birth_date FROM players WHERE player_id = (SELECT winner_id FROM matches ORDER BY winner_rank_points DESC LIMIT 1)	wta_1
SELECT first_name, country_code, birth_date FROM players WHERE player_id = (SELECT winner_id FROM matches ORDER BY winner_rank_points DESC LIMIT 1)	wta_1
SELECT hand , count(*) FROM players GROUP BY hand	wta_1
SELECT hand , count(*) FROM players GROUP BY hand	wta_1
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured';	battle_death
SELECT name, tonnage FROM ship ORDER BY name DESC	battle_death
SELECT name , date , result FROM battle	battle_death
SELECT max(killed) , min(killed) FROM death	battle_death
SELECT avg(injured) FROM death	battle_death
SELECT T3.killed, T3.injured FROM ship AS T1 JOIN death AS T3 ON T1.id = T3.caused_by_ship_id WHERE T1.tonnage = 't'	battle_death
SELECT name, result FROM battle WHERE bulgarian_commander != 'Boril'	battle_death
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'	battle_death
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN death AS T3 ON T2.id = T3.caused_by_ship_id GROUP BY T1.id HAVING SUM(T3.killed) > 10	battle_death
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY SUM(T2.injured) DESC LIMIT 1	battle_death
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'	battle_death
SELECT count(DISTINCT result) FROM battle	battle_death
SELECT count(*) FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')	battle_death
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta'	battle_death
SELECT b.name, b.result, b.bulgarian_commander FROM battle AS b LEFT JOIN ship AS s ON b.id = s.lost_in_battle WHERE s.location != 'English Channel' OR s.location IS NULL	battle_death
SELECT note FROM death WHERE note LIKE "%East%"	battle_death
SELECT line_1, line_2 FROM Addresses	student_transcripts_tracking
SELECT line_1, line_2 FROM Addresses;	student_transcripts_tracking
SELECT count(*) FROM Courses	student_transcripts_tracking
SELECT count(*) FROM Courses	student_transcripts_tracking
SELECT course_description FROM Courses WHERE course_name = "Math"	student_transcripts_tracking
SELECT course_description FROM Courses WHERE course_name LIKE "%math%"	student_transcripts_tracking
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"	student_transcripts_tracking
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"	student_transcripts_tracking
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT count(DISTINCT department_id) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT department_id) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs	student_transcripts_tracking
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs	student_transcripts_tracking
SELECT count(*) FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Departments WHERE department_name = 'engineering')	student_transcripts_tracking
SELECT count(*) FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Departments WHERE department_name = 'Engineering')	student_transcripts_tracking
SELECT section_name, section_description FROM Sections	student_transcripts_tracking
SELECT section_name, section_description FROM Sections	student_transcripts_tracking
SELECT T1.course_id, T1.course_name FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(T2.section_id) <= 2;	student_transcripts_tracking
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2	student_transcripts_tracking
SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY COUNT(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.semester_id, T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"	student_transcripts_tracking
SELECT department_description FROM Departments WHERE department_name LIKE "%computer%"	student_transcripts_tracking
SELECT T1.first_name , T1.middle_name , T1.last_name, T2.student_id FROM Students AS T1, Student_Enrolment AS T2 WHERE T1.student_id = T2.student_id GROUP BY T2.student_id, T2.semester_id HAVING COUNT(T2.degree_program_id) = 2	student_transcripts_tracking
SELECT S.first_name, S.middle_name, S.last_name, S.student_id FROM Students as S JOIN ( SELECT student_id FROM Student_Enrolment GROUP BY student_id, semester_id HAVING COUNT(degree_program_id) = 2 ) AS SE ON S.student_id = SE.student_id	student_transcripts_tracking
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name LIKE "%Bachelor%"	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students AS S JOIN Student_Enrolment AS SE ON S.student_id = SE.student_id JOIN Degree_Programs AS DP ON SE.degree_program_id = DP.degree_program_id WHERE DP.degree_summary_name LIKE "Bachelors%";	student_transcripts_tracking
SELECT T3.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T3 ON T1.degree_program_id = T3.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.degree_program_id, T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.degree_program_id, T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(T2.degree_program_id) as num_enrollments FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY num_enrollments DESC LIMIT 1	student_transcripts_tracking
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) AS number_of_enrollments FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY number_of_enrollments DESC LIMIT 1	student_transcripts_tracking
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)	student_transcripts_tracking
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)	student_transcripts_tracking
SELECT DISTINCT course_name FROM Courses AS c JOIN Student_Enrolment_Courses AS sec ON c.course_id = sec.course_id	student_transcripts_tracking
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id	student_transcripts_tracking
SELECT `Courses`.`course_name` FROM `Courses` JOIN `Student_Enrolment_Courses` ON `Courses`.`course_id` = `Student_Enrolment_Courses`.`course_id` GROUP BY `Courses`.`course_name` ORDER BY COUNT(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T2.course_name FROM Student_Enrolment_Courses AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_name ORDER BY COUNT(*) DESC LIMIT 1	student_transcripts_tracking
SELECT last_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = 'North Carolina') AND student_id NOT IN (SELECT student_id FROM Student_Enrolment)	student_transcripts_tracking
SELECT last_name FROM Students WHERE current_address_id IN (SELECT address_id FROM Addresses WHERE state_province_county = 'North Carolina') AND student_id NOT IN (SELECT student_id FROM Student_Enrolment)	student_transcripts_tracking
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2	student_transcripts_tracking
SELECT T2.transcript_date, T2.transcript_id FROM Transcript_Contents AS T1 JOIN Transcripts AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id HAVING COUNT(*) >= 2	student_transcripts_tracking
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"	student_transcripts_tracking
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students WHERE date_left IS NOT NULL ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students WHERE date_left IS NOT NULL ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
SELECT first_name FROM Students WHERE current_address_id != permanent_address_id	student_transcripts_tracking
SELECT first_name FROM Students WHERE current_address_id != permanent_address_id LIMIT 1	student_transcripts_tracking
SELECT T2.address_id, T2.line_1, T2.line_2, T2.line_3 FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id GROUP BY T2.address_id ORDER BY COUNT(*) DESC LIMIT 1;	student_transcripts_tracking
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT AVG(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT avg(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT `transcript_date`, `other_details` FROM `Transcripts` ORDER BY `transcript_date` ASC LIMIT 1	student_transcripts_tracking
SELECT count(*) FROM `Transcripts`	student_transcripts_tracking
SELECT count(*) FROM Transcripts	student_transcripts_tracking
SELECT max(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1	student_transcripts_tracking
SELECT count(*) , T1.student_course_id FROM Student_Enrolment_Courses AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_course_id ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.student_course_id, T1.course_id, COUNT(*) FROM Student_Enrolment_Courses AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.course_id ORDER BY COUNT(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.transcript_date , T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1	student_transcripts_tracking
SELECT T1.transcript_date , T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1	student_transcripts_tracking
SELECT semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Master' INTERSECT SELECT semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'	student_transcripts_tracking
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN ( SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name IN ('Masters', 'Bachelors') ) GROUP BY semester_id HAVING COUNT(DISTINCT degree_program_id) > 1;	student_transcripts_tracking
SELECT count(DISTINCT current_address_id) FROM Students	student_transcripts_tracking
SELECT DISTINCT T1.* FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id OR T1.address_id = T2.permanent_address_id	student_transcripts_tracking
SELECT * FROM Students ORDER BY first_name DESC, middle_name DESC, last_name DESC	student_transcripts_tracking
SELECT other_student_details FROM Students ORDER BY last_name DESC, first_name DESC	student_transcripts_tracking
SELECT section_description FROM Sections WHERE section_name = "h"	student_transcripts_tracking
SELECT section_description FROM Sections WHERE section_name = "h";	student_transcripts_tracking
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = 'Haiti') OR cell_mobile_number = '09700166582'	student_transcripts_tracking
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"	student_transcripts_tracking
SELECT Title FROM Cartoon ORDER BY Title ASC	tvshow
SELECT Title FROM Cartoon ORDER BY Title ASC	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones'	tvshow
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"	tvshow
SELECT count(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr'	tvshow
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones' OR Directed_by = 'Brandon Vietti'	tvshow
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	tvshow
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	tvshow
SELECT count(DISTINCT series_name) , count(DISTINCT Content) FROM TV_Channel	tvshow
SELECT count(DISTINCT series_name), count(DISTINCT Content) FROM TV_Channel	tvshow
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"	tvshow
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio";	tvshow
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"	tvshow
SELECT "Package_Option" FROM "TV_Channel" WHERE "series_name" = 'Sky Radio'	tvshow
SELECT count(*) FROM "TV_Channel" WHERE "Language" = 'English'	tvshow
SELECT count(*) FROM TV_Channel WHERE Language = 'English'	tvshow
SELECT Language , count(*) FROM TV_Channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1;	tvshow
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;	tvshow
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language	tvshow
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language	tvshow
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle!"	tvshow
SELECT T1.series_name FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = "The Rise of the Blue Beetle"	tvshow
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"	tvshow
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"	tvshow
SELECT Episode FROM TV_series ORDER BY Rating	tvshow
SELECT Episode FROM TV_series ORDER BY Rating	tvshow
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3	tvshow
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3	tvshow
SELECT max(Share) , min(Share) FROM TV_series	tvshow
SELECT max(Share) , min(Share) FROM TV_series	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"	tvshow
SELECT "Weekly_Rank" FROM "TV_series" WHERE "Episode" = "A Love of a Lifetime"	tvshow
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"	tvshow
SELECT T1.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime"	tvshow
SELECT series_name FROM TV_Channel WHERE id IN (SELECT Channel FROM TV_series WHERE Episode = 'A Love of a Lifetime')	tvshow
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"	tvshow
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"	tvshow
SELECT Directed_by , count(*) FROM Cartoon GROUP BY Directed_by	tvshow
SELECT Directed_by, count(*) FROM Cartoon GROUP BY Directed_by	tvshow
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1	tvshow
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1	tvshow
SELECT T1.Package_Option , T1.series_name FROM TV_Channel AS T1 WHERE T1.Hight_definition_TV = "Yes"	tvshow
SELECT TV_Channel.Package_Option, TV_Channel.series_name FROM TV_Channel WHERE TV_Channel.Hight_definition_TV = 'Yes';	tvshow
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey";	tvshow
SELECT DISTINCT TV_Channel.Country FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Written_by = "Todd Casey"	tvshow
SELECT Country FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Written_by = 'Todd Casey')	tvshow
SELECT "Country" FROM "TV_Channel" WHERE "id" NOT IN (SELECT "Channel" FROM "Cartoon" WHERE "Written_by" = 'Todd Casey')	tvshow
SELECT T1.series_name, T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by IN ("Ben Jones", "Michael Chang")	tvshow
SELECT T1.series_name, T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name, T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Michael Chang"	tvshow
SELECT "Pixel_aspect_ratio_PAR", "Country" FROM "TV_Channel" WHERE "Language" != "English"	tvshow
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English'	tvshow
SELECT Country FROM TV_Channel GROUP BY Country HAVING count(id) > 2	tvshow
SELECT "Channel" FROM "TV_series" GROUP BY "Channel" HAVING count(*) > 2;	tvshow
SELECT id FROM TV_Channel EXCEPT SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones"	tvshow
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = 'Ben Jones')	tvshow
SELECT "Package_Option" FROM "TV_Channel" WHERE "id" NOT IN (SELECT "Channel" FROM "Cartoon" WHERE "Directed_by" = 'Ben Jones')	tvshow
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = 'Ben Jones')	tvshow
SELECT count(*) FROM poker_player	poker_player
SELECT count(*) FROM poker_player	poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC	poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC	poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player	poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player	poker_player
SELECT avg(Earnings) FROM poker_player	poker_player
SELECT avg(Earnings) FROM poker_player	poker_player
SELECT money_rank FROM poker_player ORDER BY Earnings DESC LIMIT 1	poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1	poker_player
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000	poker_player
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000	poker_player
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID	poker_player
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID	poker_player
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000	poker_player
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000	poker_player
SELECT people.Name FROM people JOIN poker_player ON people.People_ID = poker_player.People_ID ORDER BY poker_player.Final_Table_Made ASC	poker_player
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC	poker_player
SELECT P.birth_Date FROM people P JOIN poker_player PP ON P.People_ID = PP.People_ID ORDER BY PP.Earnings ASC LIMIT 1	poker_player
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1	poker_player
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1	poker_player
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1	poker_player
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200	poker_player
SELECT avg(Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200	poker_player
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC	poker_player
SELECT people.Name FROM people INNER JOIN poker_player ON people.People_ID = poker_player.People_ID ORDER BY poker_player.Earnings DESC	poker_player
SELECT Nationality, count(*) FROM people GROUP BY Nationality	poker_player
SELECT Nationality , count(*) FROM people GROUP BY Nationality	poker_player
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	poker_player
SELECT Nationality FROM people GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1	poker_player
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2	poker_player
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*) >= 2	poker_player
SELECT Name, Birth_Date FROM people ORDER BY Name ASC	poker_player
SELECT people.Name, people.Birth_Date FROM people ORDER BY people.Name	poker_player
SELECT Name FROM people WHERE Nationality != "Russia"	poker_player
SELECT Name FROM people WHERE Nationality != "Russia"	poker_player
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)	poker_player
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)	poker_player
SELECT count(DISTINCT Nationality) FROM people	poker_player
SELECT count(DISTINCT Nationality) FROM people	poker_player
SELECT count(distinct state) FROM AREA_CODE_STATE	voter_1
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC	voter_1
SELECT vote_id , phone_number , state FROM VOTES	voter_1
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE	voter_1
SELECT max(created) FROM VOTES WHERE state = 'CA'	voter_1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'	voter_1
SELECT DISTINCT state , created FROM VOTES	voter_1
SELECT T2.contestant_number, T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2	voter_1
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1	voter_1
SELECT count(*) FROM VOTES WHERE state IN ('NY', 'CA')	voter_1
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN ( SELECT contestant_number FROM VOTES )	voter_1
SELECT area_code FROM AREA_CODE_STATE as acs JOIN VOTES as v ON acs.state = v.state GROUP BY acs.area_code ORDER BY count(*) DESC LIMIT 1;	voter_1
SELECT V.created, V.state, V.phone_number FROM VOTES AS V JOIN CONTESTANTS AS C ON V.contestant_number = C.contestant_number WHERE C.contestant_name = 'Tabatha Gehling'	voter_1
SELECT area_code FROM AREA_CODE_STATE AS ACS JOIN VOTES V ON ACS.state = V.state JOIN CONTESTANTS C ON V.contestant_number = C.contestant_number WHERE C.contestant_name = 'Tabatha Gehling' INTERSECT SELECT area_code FROM AREA_CODE_STATE AS ACS JOIN VOTES V ON ACS.state = V.state JOIN CONTESTANTS C ON V.contestant_number = C.contestant_number WHERE C.contestant_name = 'Kelly Clauss'	voter_1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"	voter_1
SELECT Name FROM country WHERE IndepYear > 1950	world_1
SELECT Name FROM country WHERE IndepYear > 1950	world_1
SELECT count(*) FROM country WHERE GovernmentForm LIKE "%republic%"	world_1
SELECT count(*) FROM country WHERE GovernmentForm LIKE "%Republic%"	world_1
SELECT sum(SurfaceArea) FROM country WHERE Region = 'Caribbean'	world_1
SELECT sum(SurfaceArea) FROM country WHERE Region = 'Caribbean'	world_1
SELECT Continent FROM country WHERE Name = "Anguilla";	world_1
SELECT T2.Continent FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Anguilla"	world_1
SELECT Region FROM city AS C JOIN country AS Co ON C.CountryCode = Co.Code WHERE C.Name = "Kabul"	world_1
SELECT District FROM city WHERE Name = "Kabul";	world_1
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE Name = "Aruba") ORDER BY Percentage DESC LIMIT 1;	world_1
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE Name = "Aruba") AND IsOfficial = "T"	world_1
SELECT Population , LifeExpectancy FROM country WHERE Name = 'Brazil'	world_1
SELECT Population , LifeExpectancy FROM country WHERE Name = 'Brazil'	world_1
SELECT Region, Population FROM country WHERE Name = "Angola"	world_1
SELECT `Region`, `Population` FROM `country` WHERE `Name` = 'Angola';	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Central Africa'	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Central Africa'	world_1
SELECT `Name` FROM `country` WHERE `Continent` = 'Asia' ORDER BY `LifeExpectancy` ASC LIMIT 1;	world_1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1;	world_1
SELECT sum(Population) , max(GNP) FROM country WHERE Continent = 'Asia'	world_1
SELECT sum(Population) , max(GNP) FROM country WHERE Continent = 'Asia'	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm LIKE '%Republic%'	world_1
SELECT avg(`LifeExpectancy`) FROM `country` WHERE `Continent` = 'Africa' AND `GovernmentForm` LIKE '%Republic%'	world_1
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'	world_1
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'	world_1
SELECT SUM(Population) FROM city WHERE District = "Gelderland"	world_1
SELECT SUM(Population) FROM city WHERE District = 'Gelderland'	world_1
SELECT avg(GNP), sum(Population) FROM country WHERE GovernmentForm = 'US territory'	world_1
SELECT avg(GNP), sum(Population) FROM country WHERE GovernmentForm = "US Territory"	world_1
SELECT count(DISTINCT Language) FROM countrylanguage	world_1
SELECT count(DISTINCT Language) FROM countrylanguage	world_1
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'	world_1
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'	world_1
SELECT count(*) FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE Name = 'Aruba')	world_1
SELECT count(*) FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE Name = 'Aruba')	world_1
SELECT COUNT(Language) FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE Name = 'Afghanistan') AND IsOfficial = 'T';	world_1
SELECT count(*) FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE Name = 'Afghanistan') AND IsOfficial = 'T'	world_1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1;	world_1
SELECT `country`.`Name` FROM `countrylanguage` JOIN `country` ON `countrylanguage`.`CountryCode` = `country`.`Code` GROUP BY `country`.`Name` ORDER BY COUNT(*) DESC LIMIT 1	world_1
SELECT Continent FROM ( SELECT Country.Continent, COUNT(DISTINCT countrylanguage.Language) AS num_languages FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code GROUP BY Country.Continent ) AS t1 ORDER BY num_languages DESC LIMIT 1	world_1
SELECT Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY Continent ORDER BY COUNT(DISTINCT Language) DESC LIMIT 1	world_1
SELECT count(DISTINCT c.Code) FROM country AS c JOIN countrylanguage AS cl1 ON c.Code = cl1.CountryCode AND cl1.Language = 'English' JOIN countrylanguage AS cl2 ON c.Code = cl2.CountryCode AND cl2.Language = 'Dutch'	world_1
SELECT count(DISTINCT CountryCode) FROM countrylanguage WHERE Language IN ('English', 'Dutch')	world_1
SELECT Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'	world_1
SELECT country.Name FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' INTERSECT SELECT country.Name FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'French'	world_1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'English' AND T1.IsOfficial = 'T' INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'French' AND T1.IsOfficial = 'T'	world_1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' AND T2.IsOfficial = 'T' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French' AND T2.IsOfficial = 'T'	world_1
SELECT count(distinct T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'	world_1
SELECT count(DISTINCT Continent) FROM country WHERE Code IN ( SELECT CountryCode FROM countrylanguage WHERE Language = 'Chinese' )	world_1
SELECT `Region` FROM `country` WHERE `Code` IN (SELECT `CountryCode` FROM `countrylanguage` WHERE `Language` IN ('English', 'Dutch'))	world_1
SELECT Region FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language IN ('Dutch', 'English') GROUP BY Region;	world_1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language IN ('English', 'Dutch') AND T1.IsOfficial = 'T'	world_1
SELECT `Name` FROM country WHERE `Code` IN (SELECT `CountryCode` FROM `countrylanguage` WHERE `Language` IN ('English', 'Dutch') AND `IsOfficial` = 'T')	world_1
SELECT Language FROM countrylanguage AS lang JOIN country AS c ON lang.CountryCode = c.Code WHERE c.Continent = 'Asia' GROUP BY lang.Language ORDER BY count(*) DESC LIMIT 1	world_1
SELECT language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;	world_1
SELECT Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING count(*) = 1	world_1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'Republic') GROUP BY Language HAVING COUNT(*) = 1	world_1
SELECT city.Name FROM city JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language = 'English' ORDER BY city.Population DESC LIMIT 1;	world_1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1;	world_1
SELECT `Name`, `Population`, `LifeExpectancy` FROM `country` WHERE `Continent` = 'Asia' ORDER BY `SurfaceArea` DESC LIMIT 1;	world_1
SELECT `Name`, `Population`, `LifeExpectancy` FROM `country` WHERE `Continent` = 'Asia' ORDER BY `SurfaceArea` DESC LIMIT 1;	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')	world_1
SELECT SUM(Population) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')	world_1
SELECT sum(Population) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')	world_1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode = (SELECT Code FROM country WHERE HeadOfState = 'Beatrix')	world_1
SELECT `Language` FROM `countrylanguage` WHERE `CountryCode` IN (SELECT `Code` FROM `country` WHERE `HeadOfState` = 'Beatrix') AND `IsOfficial` = 'T'	world_1
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 AND T1.IsOfficial = 'T'	world_1
SELECT count(DISTINCT Language) FROM countrylanguage JOIN country ON country.Code = countrylanguage.CountryCode WHERE country.IndepYear < 1930 AND countrylanguage.IsOfficial = 'T';	world_1
SELECT `Name` FROM `country` WHERE `SurfaceArea` > (SELECT max(`SurfaceArea`) FROM `country` WHERE `Continent` = 'Europe')	world_1
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')	world_1
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT min(Population) FROM country WHERE Continent = 'Asia')	world_1
SELECT Name FROM country WHERE Continent = "Africa" AND Population < (SELECT min(Population) FROM country WHERE Continent = "Asia")	world_1
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT max(Population) FROM country WHERE Continent = 'Africa')	world_1
SELECT `Name` FROM `country` WHERE `Continent` = 'Asia' AND `Population` > (SELECT MAX(`Population`) FROM `country` WHERE `Continent` = 'Africa')	world_1
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')	world_1
SELECT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm != 'Republic'	world_1
SELECT `Code` FROM `country` WHERE `Code` NOT IN (SELECT `CountryCode` FROM `countrylanguage` WHERE `Language` = 'English') AND `GovernmentForm` NOT LIKE '%Republic%'	world_1
SELECT City.Name AS 'City Name' FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Europe' AND (countrylanguage.Language != 'English' OR countrylanguage.IsOfficial != 'T')	world_1
SELECT city.Name FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Continent = 'Europe' AND (countrylanguage.Language <> 'English' OR countrylanguage.IsOfficial = 'F')	world_1
SELECT DISTINCT city.Name FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'Chinese' AND countrylanguage.IsOfficial = 'T' AND country.Continent = 'Asia'	world_1
SELECT DISTINCT city.Name FROM city JOIN country ON city.CountryCode = country.Code JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE country.Continent = 'Asia' AND countrylanguage.Language = 'Chinese' AND countrylanguage.IsOfficial = 'T'	world_1
SELECT Name , IndepYear , SurfaceArea FROM country ORDER BY Population LIMIT 1	world_1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1	world_1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT Name , Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT T1.Name, COUNT(T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(T2.language) >= 3	world_1
SELECT Country.Name , COUNT(*) FROM countryLanguage JOIN country ON country.Code = countryLanguage.CountryCode GROUP BY countryLanguage.CountryCode HAVING COUNT(*) > 2;	world_1
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district	world_1
SELECT count(*) , District FROM city WHERE Population > (SELECT avg(Population) FROM city) GROUP BY District	world_1
SELECT avg(t1.LifeExpectancy) , t1.GovernmentForm, sum(t1.Population) FROM country AS t1 GROUP BY t1.GovernmentForm HAVING avg(t1.LifeExpectancy) > 72	world_1
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72	world_1
SELECT Continent, avg(LifeExpectancy), sum(Population) FROM country GROUP BY Continent HAVING avg(LifeExpectancy) < 72	world_1
SELECT Continent , sum(Population) , avg(LifeExpectancy) FROM country GROUP BY Continent HAVING avg(LifeExpectancy) < 72	world_1
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5	world_1
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5	world_1
SELECT Name FROM country ORDER BY Population DESC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population DESC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population ASC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population ASC LIMIT 3	world_1
SELECT count(*) FROM country WHERE Continent = 'Asia'	world_1
SELECT count(*) FROM country WHERE Continent = 'Asia'	world_1
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000	world_1
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000	world_1
SELECT sum(Population) , avg(SurfaceArea) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000	world_1
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000	world_1
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000	world_1
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000	world_1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1	world_1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1	world_1
SELECT CountryCode, Language, MAX(Percentage) FROM countrylanguage GROUP BY CountryCode;	world_1
SELECT CountryCode, Language FROM countrylanguage WHERE Percentage = ( SELECT MAX(Percentage) FROM countrylanguage GROUP BY CountryCode )	world_1
SELECT count(*) FROM countrylanguage WHERE Language = 'Spanish' AND Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE Language = 'Spanish')	world_1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish' AND T2.IsOfficial = 'T'	world_1
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' ORDER BY Percentage DESC	world_1
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'T'	world_1
SELECT count(*) FROM conductor	orchestra
SELECT count(*) FROM conductor	orchestra
SELECT Name FROM conductor ORDER BY Age ASC	orchestra
SELECT Name FROM conductor ORDER BY Age ASC	orchestra
SELECT Name FROM conductor WHERE Nationality != 'USA'	orchestra
SELECT Name FROM conductor WHERE Nationality != 'USA'	orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC	orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC	orchestra
SELECT avg(Attendance) FROM show	orchestra
SELECT avg(Attendance) FROM show	orchestra
SELECT max(Share), min(Share) FROM performance WHERE Type != 'Live final'	orchestra
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"	orchestra
SELECT count(DISTINCT Nationality) FROM conductor	orchestra
SELECT count(DISTINCT Nationality) FROM conductor	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	orchestra
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID	orchestra
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID	orchestra
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1	orchestra
SELECT t1.Name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.Conductor_ID = t2.Conductor_ID GROUP BY t1.Name ORDER BY count(*) DESC LIMIT 1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008	orchestra
SELECT DISTINCT C.Name FROM conductor AS C JOIN orchestra AS O ON C.Conductor_ID = O.Conductor_ID WHERE O.Year_of_Founded > 2008	orchestra
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company	orchestra
SELECT Record_Company , count(*) FROM orchestra GROUP BY Record_Company	orchestra
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC	orchestra
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC	orchestra
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1	orchestra
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)	orchestra
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)	orchestra
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003	orchestra
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003	orchestra
SELECT count(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"	orchestra
SELECT count(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"	orchestra
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN ( SELECT Orchestra_ID FROM performance GROUP BY Orchestra_ID HAVING COUNT(*) > 1)	orchestra
SELECT Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1	orchestra
SELECT count(*) FROM Highschooler	network_1
SELECT count(*) FROM Highschooler	network_1
SELECT name , grade FROM Highschooler	network_1
SELECT name , grade FROM Highschooler	network_1
SELECT grade FROM Highschooler	network_1
SELECT Grade FROM Highschooler	network_1
SELECT grade FROM Highschooler WHERE name = "Kyle";	network_1
SELECT grade FROM Highschooler WHERE name = "Kyle"	network_1
SELECT name FROM Highschooler WHERE grade = 10	network_1
SELECT name FROM Highschooler WHERE grade = 10	network_1
SELECT ID FROM Highschooler WHERE name = 'Kyle'	network_1
SELECT ID FROM Highschooler WHERE name = 'Kyle';	network_1
SELECT count(*) FROM Highschooler WHERE grade IN (9, 10)	network_1
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10	network_1
SELECT grade , count(*) FROM Highschooler GROUP BY grade	network_1
SELECT grade , count(*) FROM Highschooler GROUP BY grade	network_1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1	network_1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4	network_1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4	network_1
SELECT student_id , COUNT(friend_id) FROM Friend GROUP BY student_id	network_1
SELECT student_id, count(friend_id) as num_friends FROM Friend GROUP BY student_id	network_1
SELECT H.name, COUNT(F.friend_id) FROM Highschooler H LEFT JOIN Friend F ON H.ID = F.student_id GROUP BY H.ID, H.name	network_1
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.name ORDER BY COUNT(*) DESC LIMIT 1	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID HAVING COUNT(*) >= 3	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID HAVING COUNT(T1.ID) >= 3	network_1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.ID WHERE T1.student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle')	network_1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.ID WHERE T1.student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle')	network_1
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID WHERE T2.name = "Kyle"	network_1
SELECT count(*) FROM Friend AS t1 JOIN Highschooler AS t2 ON t1.student_id = t2.ID WHERE t2.name = "Kyle"	network_1
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT ID FROM Highschooler EXCEPT SELECT student_id FROM Friend	network_1
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.liked_id	network_1
SELECT DISTINCT student_id FROM Friend WHERE student_id IN (SELECT student_id FROM Likes)	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T1.ID = T3.liked_id	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id JOIN Likes AS T3 ON T1.ID = T3.liked_id GROUP BY T1.ID, T1.name	network_1
SELECT student_id , count(*) FROM Likes GROUP BY student_id	network_1
SELECT student_id , count(*) FROM Likes GROUP BY student_id	network_1
SELECT T1.name, count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T1.name	network_1
SELECT H.name, COUNT(*) FROM Highschooler H JOIN Likes L ON H.ID = L.student_id GROUP BY H.name	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.ID ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.ID ORDER BY COUNT(*) DESC LIMIT 1	network_1
SELECT H.name FROM Highschooler AS H JOIN Likes AS L ON H.ID = L.student_id GROUP BY L.student_id HAVING count(*) >= 2	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID HAVING COUNT(T1.ID) >= 2	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id WHERE T1.grade > 5 GROUP BY T1.ID HAVING count(*) >= 2	network_1
SELECT T1.name FROM Highschooler T1 JOIN Friend T2 ON T1.ID = T2.student_id WHERE T1.grade > 5 GROUP BY T1.ID HAVING count(*) >= 2	network_1
SELECT count(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle')	network_1
SELECT count(*) FROM Likes AS L JOIN Highschooler AS H ON L.student_id = H.ID WHERE H.name = "Kyle"	network_1
SELECT avg(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)	network_1
SELECT avg(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)	network_1
SELECT min(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT MIN(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT DISTINCT t1.state FROM Owners AS t1 JOIN Professionals AS t2 ON t1.state = t2.state	dog_kennels
SELECT state FROM Owners WHERE state IN (SELECT state FROM Professionals)	dog_kennels
SELECT avg(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)	dog_kennels
SELECT avg(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)	dog_kennels
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 WHERE T1.state = 'Indiana' OR T1.professional_id IN ( SELECT T2.professional_id FROM Treatments AS T2 GROUP BY T2.professional_id HAVING COUNT(T2.treatment_id) > 2)	dog_kennels
SELECT P.professional_id, P.last_name, P.cell_number FROM Professionals P WHERE P.state = 'Indiana' OR P.professional_id IN (SELECT T.professional_id FROM Treatments T GROUP BY T.professional_id HAVING COUNT(T.treatment_id) > 2)	dog_kennels
SELECT name FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments GROUP BY dog_id HAVING SUM(cost_of_treatment) > 1000)	dog_kennels
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING sum(T2.cost_of_treatment) <= 1000	dog_kennels
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT name FROM Dogs	dog_kennels
SELECT first_name FROM ( SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners ) AS People WHERE first_name NOT IN (SELECT name FROM Dogs)	dog_kennels
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)	dog_kennels
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)	dog_kennels
SELECT owner_id, first_name, last_name FROM Owners WHERE owner_id IN (SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1)	dog_kennels
SELECT owner_id, first_name, last_name FROM Owners WHERE owner_id = (SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY count(*) DESC LIMIT 1)	dog_kennels
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2	dog_kennels
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2	dog_kennels
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT t2.breed_name FROM Dogs AS t1 JOIN Breeds AS t2 ON t1.breed_code = t2.breed_code GROUP BY t2.breed_name ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id, T1.last_name ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1	dog_kennels
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1	dog_kennels
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T1.professional_id , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT (DISTINCT T2.treatment_type_code) >= 2	dog_kennels
SELECT professional_id, cell_number FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments GROUP BY professional_id HAVING COUNT(DISTINCT treatment_type_code) >= 2 )	dog_kennels
SELECT first_name, last_name FROM Professionals WHERE professional_id IN ( SELECT professional_id FROM Treatments WHERE cost_of_treatment < ( SELECT AVG(cost_of_treatment) FROM Treatments ) )	dog_kennels
SELECT P.first_name, P.last_name FROM Professionals AS P JOIN Treatments AS T ON P.professional_id = T.professional_id WHERE T.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)	dog_kennels
SELECT date_of_treatment , Professionals.first_name FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id	dog_kennels
SELECT date_of_treatment, first_name FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id	dog_kennels
SELECT T2.cost_of_treatment, T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code	dog_kennels
SELECT T2.cost_of_treatment , T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code	dog_kennels
SELECT T1.first_name , T1.last_name , T3.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code	dog_kennels
SELECT T1.first_name, T1.last_name, T3.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code	dog_kennels
SELECT Owners.first_name , Dogs.name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id	dog_kennels
SELECT Owners.first_name, Dogs.name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id	dog_kennels
SELECT Dogs.name, Treatments.date_of_treatment FROM Dogs JOIN Treatments ON Dogs.dog_id = Treatments.dog_id WHERE Dogs.breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) ASC LIMIT 1)	dog_kennels
SELECT d.name, t.date_of_treatment FROM Dogs AS d JOIN Treatments AS t ON d.dog_id = t.dog_id WHERE breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY COUNT(*) ASC LIMIT 1)	dog_kennels
SELECT O.first_name, D.name FROM Dogs D JOIN Owners O ON D.owner_id = O.owner_id WHERE O.state = 'Virginia'	dog_kennels
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"	dog_kennels
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id	dog_kennels
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id	dog_kennels
SELECT Owners.last_name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id ORDER BY Dogs.date_of_birth DESC LIMIT 1;	dog_kennels
SELECT Owners.last_name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id ORDER BY Dogs.date_of_birth DESC LIMIT 1;	dog_kennels
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"	dog_kennels
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'	dog_kennels
SELECT date_arrived, date_departed FROM Dogs;	dog_kennels
SELECT date_arrived , date_departed FROM Dogs	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT COUNT(DISTINCT professional_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT professional_id) FROM Treatments	dog_kennels
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"	dog_kennels
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE "%West%"	dog_kennels
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE "%North%"	dog_kennels
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)	dog_kennels
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments)	dog_kennels
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments)	dog_kennels
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn != 'Y')	dog_kennels
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE date_adopted IS NULL AND date_departed IS NULL)	dog_kennels
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )	dog_kennels
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)	dog_kennels
SELECT name, age, weight from Dogs WHERE abandoned_yn = "1"	dog_kennels
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = '1'	dog_kennels
SELECT avg(age) FROM Dogs	dog_kennels
SELECT avg(age) FROM Dogs	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels
SELECT Age FROM Dogs ORDER BY Age DESC LIMIT 1	dog_kennels
SELECT charge_type , sum(charge_amount) FROM Charges GROUP BY charge_type	dog_kennels
SELECT charge_type , charge_amount FROM Charges;	dog_kennels
SELECT charge_type FROM Charges ORDER BY charge_amount DESC LIMIT 1	dog_kennels
SELECT charge_type, charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1	dog_kennels
SELECT email_address, cell_number, home_phone FROM Professionals	dog_kennels
SELECT email_address, cell_number, home_phone FROM Professionals	dog_kennels
SELECT B.breed_name, S.size_description FROM Breeds B CROSS JOIN Sizes S	dog_kennels
SELECT DISTINCT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Dogs AS T3 ON T1.breed_code = T3.breed_code JOIN Sizes AS T2 ON T3.size_code = T2.size_code	dog_kennels
SELECT T2.first_name , T3.treatment_type_description FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code	dog_kennels
SELECT T2.first_name, T3.treatment_type_description FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code	dog_kennels
SELECT count(*) FROM singer	singer
SELECT count(*) FROM singer	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC	singer
SELECT Birth_Year , Citizenship FROM singer	singer
SELECT Birth_Year , Citizenship FROM singer	singer
SELECT Name FROM singer WHERE Citizenship != "France"	singer
SELECT Name FROM singer WHERE Citizenship != 'French'	singer
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949	singer
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1	singer
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1	singer
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1	singer
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID	singer
SELECT song.Title , singer.Name FROM song JOIN singer ON song.Singer_ID = singer.Singer_ID	singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000	singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000	singer
SELECT s.Name FROM singer AS s JOIN song AS sg ON s.Singer_ID = sg.Singer_ID GROUP BY s.Name HAVING COUNT(*) > 1	singer
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1	singer
SELECT singer.Name , sum(song.Sales) FROM song JOIN singer ON song.Singer_ID = singer.Singer_ID GROUP BY singer.Name	singer
SELECT T1.Name , sum(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name	singer
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)	singer
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)	singer
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955	singer
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955	singer
SELECT count(*) FROM Other_Available_Features	real_estate_properties
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon";	real_estate_properties
SELECT property_type_description FROM Ref_Property_Types RPT, Properties P WHERE RPT.property_type_code = P.property_type_code	real_estate_properties
SELECT property_name FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description IN ('House','Apartment')) AND room_count > 1	real_estate_properties
