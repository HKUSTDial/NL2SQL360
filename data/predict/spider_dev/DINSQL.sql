SELECT COUNT(*) FROM singer	concert_singer
SELECT COUNT(*) FROM singer	concert_singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC	concert_singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC	concert_singer
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = 'France'	concert_singer
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = 'France'	concert_singer
SELECT Song_Name, Song_release_year FROM singer WHERE Age = (SELECT MIN(Age) FROM singer)	concert_singer
SELECT Song_Name, Song_release_year FROM singer WHERE Age = (SELECT MIN(Age) FROM singer)	concert_singer
SELECT DISTINCT Country FROM singer WHERE Age > 20	concert_singer
SELECT DISTINCT Country FROM singer WHERE Age > 20	concert_singer
SELECT Country, COUNT(Singer_ID) as NumberOfSingers FROM singer GROUP BY Country	concert_singer
SELECT COUNT(Singer_ID) AS NumberOfSingers, Country FROM singer GROUP BY Country	concert_singer
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)	concert_singer
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)	concert_singer
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000	concert_singer
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000	concert_singer
SELECT MAX(Capacity), AVG(Capacity) FROM stadium	concert_singer
SELECT AVG(Capacity) AS Average_Capacity, MAX(Capacity) AS Maximum_Capacity FROM stadium	concert_singer
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1	concert_singer
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1	concert_singer
SELECT COUNT(*) FROM concert WHERE Year = 2014 OR Year = 2015	concert_singer
SELECT COUNT(*) FROM concert WHERE Year IN (2014, 2015)	concert_singer
SELECT T1.Name, COUNT(T2.concert_ID) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name	concert_singer
SELECT T1.Stadium_ID, T1.Name, COUNT(T2.concert_ID)  FROM stadium AS T1  JOIN concert AS T2  ON T1.Stadium_ID = T2.Stadium_ID  GROUP BY T1.Stadium_ID, T1.Name	concert_singer
SELECT T2.Name, T2.Capacity FROM (SELECT T1.Stadium_ID, COUNT(T1.concert_ID) as num_concerts FROM concert AS T1 WHERE T1.Year >= 2014 GROUP BY T1.Stadium_ID ORDER BY num_concerts DESC LIMIT 1) AS T3 JOIN stadium AS T2 ON T3.Stadium_ID = T2.Stadium_ID	concert_singer
SELECT T2.Name, T2.Capacity FROM stadium AS T2 WHERE T2.Stadium_ID IN (SELECT T1.Stadium_ID FROM concert AS T1 WHERE T1.Year > 2013 GROUP BY T1.Stadium_ID HAVING count(*) = (SELECT MAX(concert_count) FROM (SELECT COUNT(*) as concert_count FROM concert WHERE Year > 2013 GROUP BY Stadium_ID) as subquery) LIMIT 1)	concert_singer
SELECT Year FROM concert GROUP BY Year ORDER BY COUNT(concert_ID) DESC LIMIT 1	concert_singer
SELECT Year FROM concert GROUP BY Year ORDER BY COUNT(concert_ID) DESC LIMIT 1	concert_singer
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT DISTINCT Stadium_ID FROM concert)	concert_singer
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT DISTINCT Stadium_ID FROM concert)	concert_singer
SELECT Country FROM singer WHERE Country IN (SELECT Country FROM singer WHERE Age > 40) INTERSECT SELECT Country FROM singer WHERE Country IN (SELECT Country FROM singer WHERE Age < 30)	concert_singer
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE Year = '2014')	concert_singer
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT T1.Stadium_ID FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T2.Year  =  2014)	concert_singer
SELECT T1.concert_Name, T1.Theme, COUNT(T2.Singer_ID)  FROM concert AS T1  JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID  GROUP BY T1.concert_ID, T1.concert_Name, T1.Theme	concert_singer
SELECT T1.concert_Name, T1.Theme, COUNT(T2.Singer_ID)  FROM concert AS T1  JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID  GROUP BY T1.concert_ID, T1.concert_Name, T1.Theme	concert_singer
SELECT T1.Name, COUNT(T2.concert_ID)  FROM singer AS T1  JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID  GROUP BY T1.Singer_ID, T1.Name	concert_singer
SELECT T1.Name, count(T2.concert_ID) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name, T2.Singer_ID	concert_singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = '2014'	concert_singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Year = '2014'	concert_singer
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'	concert_singer
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'	concert_singer
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015	concert_singer
SELECT Name, Location FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = 2014) AND Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = 2015)	concert_singer
SELECT count(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)	concert_singer
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)	concert_singer
SELECT COUNT(*) FROM Pets WHERE weight > 10	pets_1
SELECT COUNT(*) FROM Pets WHERE weight > 10	pets_1
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets WHERE PetType = 'dog') AND PetType = 'dog'	pets_1
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets WHERE PetType = 'dog') AND PetType = 'dog'	pets_1
SELECT MAX(weight), PetType FROM Pets GROUP BY PetType	pets_1
SELECT MAX(weight), PetType FROM Pets GROUP BY PetType	pets_1
SELECT count(T1.PetID) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Age > 20	pets_1
SELECT count(T1.PetID) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Age > 20	pets_1
SELECT count(T1.PetID) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T1.PetType = 'dog' AND T3.Sex = 'F'	pets_1
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T1.PetType = 'dog' AND T3.Sex = 'female'	pets_1
SELECT COUNT(DISTINCT PetType) FROM Pets	pets_1
SELECT COUNT(DISTINCT PetType) FROM Pets	pets_1
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat' OR T3.PetType = 'dog'	pets_1
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat' OR T3.PetType = 'dog'	pets_1
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'cat' INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'dog'	pets_1
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'cat' INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'dog'	pets_1
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS HP JOIN Pets AS P ON HP.PetID = P.PetID WHERE P.PetType = 'cat')	pets_1
SELECT Major, Age FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.PetType = 'cat')	pets_1
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat')	pets_1
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat')	pets_1
SELECT T1.Fname, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'dog' EXCEPT SELECT T1.Fname, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat'	pets_1
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'dog' EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'cat'	pets_1
SELECT PetType, weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)	pets_1
SELECT PetType, weight FROM Pets WHERE pet_age = (SELECT MIN(pet_age) FROM Pets)	pets_1
SELECT PetID, weight FROM Pets WHERE pet_age > 1	pets_1
SELECT PetID, weight FROM Pets WHERE pet_age > 1	pets_1
SELECT AVG(pet_age), MAX(pet_age), PetType FROM Pets GROUP BY PetType	pets_1
SELECT AVG(pet_age), MAX(pet_age), PetType FROM Pets GROUP BY PetType	pets_1
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType	pets_1
SELECT AVG(weight), PetType FROM Pets GROUP BY PetType	pets_1
SELECT T1.Fname, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID	pets_1
SELECT DISTINCT T1.Fname, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID	pets_1
SELECT T1.PetID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'	pets_1
SELECT T1.PetID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'	pets_1
SELECT count(T1.PetID), T1.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID	pets_1
SELECT StuID, count(PetID) FROM Has_Pet GROUP BY StuID	pets_1
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING count(PetID) > 1)	pets_1
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING count(PetID) > 1)	pets_1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat' AND T3.pet_age = 3	pets_1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'cat' AND T3.pet_age = 3	pets_1
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)	pets_1
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)	pets_1
SELECT COUNT(*) FROM continents	car_1
SELECT COUNT(*) FROM continents	car_1
SELECT T1.ContId, T1.Continent, COUNT(T2.CountryId)  FROM continents AS T1  JOIN countries AS T2 ON T1.ContId = T2.Continent  GROUP BY T1.ContId, T1.Continent	car_1
SELECT T1.ContId, T1.Continent, COUNT(T2.CountryId)  FROM continents AS T1  JOIN countries AS T2 ON T1.ContId = T2.Continent  GROUP BY T1.ContId, T1.Continent	car_1
SELECT COUNT(*) FROM countries	car_1
SELECT COUNT(*) FROM countries	car_1
SELECT T2.FullName, T2.Id, COUNT(T1.Model) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.FullName, T2.Id	car_1
SELECT T1.FullName, T1.Id, count(T2.Model) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName, T1.Id	car_1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model JOIN cars_data AS T3 ON T2.MakeId = T3.Id WHERE T3.Horsepower = (SELECT min(Horsepower) FROM cars_data)	car_1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Horsepower LIMIT 1	car_1
SELECT Model FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data))	car_1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Weight < (SELECT avg(Weight) FROM cars_data)	car_1
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T4.Year = 1970	car_1
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T4 ON T1.Id = T4.Maker JOIN car_names AS T2 ON T4.Model = T2.Model JOIN cars_data AS T3 ON T2.MakeId = T3.Id WHERE T3.Year = 1970	car_1
SELECT T1.Make , T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId  =  T2.Id WHERE T2.Year  =  (SELECT min(Year) FROM cars_data)	car_1
SELECT T1.Maker, T2.Year FROM car_makers AS T1 JOIN model_list AS T3 ON T1.Id = T3.Maker JOIN car_names AS T4 ON T3.Model = T4.Model JOIN cars_data AS T2 ON T4.MakeId = T2.Id ORDER BY T2.Year ASC LIMIT 1	car_1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN cars_data AS T3 ON T1.MakeId = T3.Id WHERE T3.Year > 1980	car_1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id JOIN model_list AS T3 ON T1.Model = T3.Model WHERE T2.Year > 1980	car_1
SELECT count(T1.Id), T3.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId JOIN continents AS T3 ON T2.Continent = T3.ContId GROUP BY T3.Continent	car_1
SELECT T1.Continent, COUNT(T3.Id)  FROM continents AS T1  JOIN countries AS T2 ON T1.ContId = T2.Continent  JOIN car_makers AS T3 ON T2.CountryId = T3.Country  GROUP BY T1.Continent	car_1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.CountryName ORDER BY count(*) DESC LIMIT 1	car_1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1	car_1
SELECT count(T1.Model) ,  T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker  =  T2.Id GROUP BY T2.Id, T2.FullName	car_1
SELECT count(T1.Model), T2.Id, T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Id, T2.FullName	car_1
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = 'amc hornet sportabout (sw)'	car_1
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = 'amc hornet sportabout (sw)'	car_1
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = 'France'	car_1
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = 'France'	car_1
SELECT count(T1.Model) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = 'usa'	car_1
SELECT count(T1.Model) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = 'United States'	car_1
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4	car_1
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4	car_1
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974	car_1
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974	car_1
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker	car_1
SELECT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker	car_1
SELECT DISTINCT T2.CountryName, T2.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId	car_1
SELECT DISTINCT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country	car_1
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150	car_1
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150	car_1
SELECT AVG(Weight), Year FROM cars_data GROUP BY Year	car_1
SELECT AVG(Weight), Year FROM cars_data GROUP BY Year	car_1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country JOIN continents AS T3 ON T1.Continent  =  T3.ContId WHERE T3.Continent  =  'Europe' GROUP BY T1.CountryName HAVING count(*)  >=  3	car_1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId JOIN continents AS T3 ON T2.Continent = T3.ContId WHERE T3.Continent = 'Europe' GROUP BY T2.CountryName HAVING count(*) >= 3	car_1
SELECT max(T1.Horsepower), T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 3 GROUP BY T2.Make	car_1
SELECT max(T1.Horsepower), T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 3 GROUP BY T2.Make	car_1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.MPG = (SELECT max(MPG) FROM cars_data)	car_1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.MPG DESC LIMIT 1	car_1
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980	car_1
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980	car_1
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Model = 'volvo'	car_1
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model JOIN car_makers AS T4 ON T3.Maker = T4.Id WHERE T4.Maker = 'volvo'	car_1
SELECT max(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders	car_1
SELECT max(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders	car_1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY count(T2.Make) DESC LIMIT 1	car_1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY count(T2.Model) DESC LIMIT 1	car_1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4	car_1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4	car_1
SELECT COUNT(*) FROM cars_data WHERE Year = 1980	car_1
SELECT COUNT(*) FROM cars_data WHERE Year = 1980	car_1
SELECT count(T1.Model) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = 'American Motor Company'	car_1
SELECT count(T1.Model) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = 'American Motor Company'	car_1
SELECT T1.Id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id, T1.FullName HAVING count(T2.Model) > 3	car_1
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id, T1.Maker HAVING count(*) > 3	car_1
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN car_names AS T3 ON T1.Model = T3.Model JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T2.FullName = 'General Motors' OR T4.Weight > 3500	car_1
SELECT T3.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T1.Maker = 'General Motors' OR T4.Weight > 3500	car_1
SELECT DISTINCT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000	car_1
SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT Year FROM cars_data WHERE Weight > 3000	car_1
SELECT Horsepower FROM cars_data WHERE Accelerate = (SELECT MAX(Accelerate) FROM cars_data)	car_1
SELECT Horsepower FROM cars_data WHERE Accelerate = (SELECT MAX(Accelerate) FROM cars_data)	car_1
SELECT T3.Cylinders FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model  =  T2.Model JOIN cars_data AS T3 ON T2.MakeId  =  T3.Id WHERE T3.Accelerate  =  (SELECT min(T3.Accelerate) FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model  =  T2.Model JOIN cars_data AS T3 ON T2.MakeId  =  T3.Id WHERE T1.Model  =  'volvo') AND T1.Model  =  'volvo'	car_1
SELECT T4.Cylinders FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T1.Maker = 'Volvo' ORDER BY T4.Accelerate ASC LIMIT 1	car_1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Horsepower) FROM cars_data)	car_1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data WHERE Horsepower = (SELECT max(Horsepower) FROM cars_data))	car_1
SELECT COUNT(DISTINCT Id), Country FROM car_makers GROUP BY Country HAVING COUNT(DISTINCT Id) > 2	car_1
SELECT count(T1.Id) ,  T2.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.Country HAVING count(*)  >  2	car_1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6	car_1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6	car_1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1	car_1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1	car_1
SELECT T1.MakeId, T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND T2.Cylinders <= 3	car_1
SELECT T1.MakeId, T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Horsepower > (SELECT MIN(Horsepower) FROM cars_data) AND T2.Cylinders < 4	car_1
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980	car_1
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980	car_1
SELECT T3.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model JOIN car_makers AS T4 ON T3.Maker = T4.Id WHERE T1.Weight < 3500 AND T4.FullName != 'Ford Motor Company'	car_1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model JOIN cars_data AS T3 ON T2.MakeId = T3.Id JOIN car_makers AS T4 ON T1.Maker = T4.Id WHERE T3.Weight < 3500 AND T4.Maker != 'Ford Motor Company'	car_1
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)	car_1
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)	car_1
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id, T1.Maker HAVING count(*) >= 2 AND count(*) > 3	car_1
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model GROUP BY T1.Id HAVING count(DISTINCT T2.Model) >= 2 AND count(T3.Make) > 3	car_1
SELECT T1.CountryId, T1.CountryName  FROM countries AS T1  JOIN car_makers AS T2 ON T1.CountryId = T2.Country  GROUP BY T1.CountryId, T1.CountryName  HAVING COUNT(*) > 3  UNION  SELECT T1.CountryId, T1.CountryName  FROM countries AS T1  JOIN car_makers AS T2 ON T1.CountryId = T2.Country  JOIN model_list AS T3 ON T2.Id = T3.Maker  WHERE T3.Model = 'fiat'	car_1
SELECT T1.CountryId, T1.CountryName  FROM countries AS T1  JOIN car_makers AS T2 ON T1.CountryId = T2.Country  GROUP BY T1.CountryId, T1.CountryName  HAVING COUNT(*) > 3 	car_1
SELECT Country FROM airlines WHERE Airline = 'JetBlue Airways'	flight_2
SELECT Country FROM airlines WHERE Airline = 'Jetblue Airways'	flight_2
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue Airways'	flight_2
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'	flight_2
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'	flight_2
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'	flight_2
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony'	flight_2
SELECT AirportCode, AirportName FROM airports WHERE City = 'Anthony'	flight_2
SELECT COUNT(*) FROM airlines	flight_2
SELECT COUNT(*) FROM airlines	flight_2
SELECT COUNT(*) FROM airports	flight_2
SELECT COUNT(*) FROM airports	flight_2
SELECT COUNT(*) FROM flights	flight_2
SELECT COUNT(*) FROM flights	flight_2
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'	flight_2
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'	flight_2
SELECT COUNT(*) FROM airlines WHERE Country = 'USA'	flight_2
SELECT COUNT(*) FROM airlines WHERE Country = 'USA'	flight_2
SELECT City, Country FROM airports WHERE AirportName = 'Alton'	flight_2
SELECT City, Country FROM airports WHERE AirportName = 'Alton'	flight_2
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'	flight_2
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'	flight_2
SELECT AirportName FROM airports WHERE City = 'Aberdeen'	flight_2
SELECT AirportName FROM airports WHERE City = 'Aberdeen'	flight_2
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'	flight_2
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'	flight_2
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ATO'	flight_2
SELECT count(*) FROM flights WHERE DestAirport = 'ATO'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'	flight_2
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = 'Aberdeen') AND DestAirport IN (SELECT AirportCode FROM airports WHERE City = 'Ashley')	flight_2
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' AND DestAirport = 'Ashley'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'	flight_2
SELECT COUNT(FlightNo) FROM flights WHERE Airline = 'Jetblue Airways'	flight_2
SELECT COUNT(*) FROM flights WHERE Airline = 'United Airlines' AND DestAirport = 'ASY'	flight_2
SELECT COUNT(FlightNo) FROM flights WHERE Airline = 'United Airlines' AND DestAirport = 'ASY'	flight_2
SELECT COUNT(*) FROM flights WHERE Airline = 'United Airlines' AND SourceAirport = 'AHD'	flight_2
SELECT COUNT(FlightNo) FROM flights WHERE Airline = 'United Airlines' AND SourceAirport = 'AHD'	flight_2
SELECT count(T1.FlightNo) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.Airline = 'United Airlines' AND T2.City = 'Aberdeen'	flight_2
SELECT count(T1.FlightNo) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.Airline = 'United Airlines' AND T2.City = 'Aberdeen'	flight_2
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(T2.DestAirport) DESC LIMIT 1	flight_2
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport OR T1.AirportCode  =  T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON (T1.AirportCode  =  T2.SourceAirport OR T1.AirportCode  =  T2.DestAirport) GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.AirportCode FROM airports AS T1 LEFT JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport OR T1.AirportCode  =  T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1	flight_2
SELECT AirportCode FROM (SELECT AirportCode, count(*) as num_flights FROM (SELECT SourceAirport as AirportCode FROM flights UNION ALL SELECT DestAirport as AirportCode FROM flights) AS T1 GROUP BY AirportCode) AS T2 ORDER BY num_flights ASC LIMIT 1	flight_2
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(FlightNo) DESC LIMIT 1	flight_2
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid HAVING COUNT(*) = (SELECT COUNT(*) as flight_count FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.Airline GROUP BY T3.uid ORDER BY flight_count ASC LIMIT 1)	flight_2
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.uid, T1.Abbreviation, T1.Country HAVING COUNT(*) = (SELECT COUNT(*) as flight_count FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.Airline GROUP BY T3.uid ORDER BY flight_count ASC LIMIT 1)	flight_2
SELECT DISTINCT Airline FROM flights WHERE SourceAirport = 'AHD'	flight_2
SELECT DISTINCT airlines.Airline FROM flights JOIN airlines ON flights.Airline = airlines.uid WHERE flights.SourceAirport = 'AHD'	flight_2
SELECT DISTINCT airlines.Airline FROM flights JOIN airlines ON flights.Airline = airlines.uid WHERE flights.DestAirport = 'AHD'	flight_2
SELECT DISTINCT airlines.Airline FROM flights JOIN airlines ON flights.Airline = airlines.uid WHERE flights.DestAirport = 'AHD'	flight_2
SELECT Airline FROM flights WHERE SourceAirport  =  'APG' INTERSECT SELECT Airline FROM flights WHERE SourceAirport  =  'CVO'	flight_2
SELECT Airline FROM flights WHERE SourceAirport  =  'APG' INTERSECT SELECT Airline FROM flights WHERE SourceAirport  =  'CVO'	flight_2
SELECT Airline FROM flights WHERE SourceAirport  =  'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport  =  'APG'	flight_2
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport = 'APG'	flight_2
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(T2.FlightNo) >= 10	flight_2
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(FlightNo) >= 10	flight_2
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(T2.FlightNo) < 200	flight_2
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(FlightNo) < 200	flight_2
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'	flight_2
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'	flight_2
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'	flight_2
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportCode = 'APG'	flight_2
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportCode = 'APG'	flight_2
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'	flight_2
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'	flight_2
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'	flight_2
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'	flight_2
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' OR T2.City = 'Abilene'	flight_2
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' OR T2.City = 'Abilene'	flight_2
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)	flight_2
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)	flight_2
SELECT COUNT(*) FROM employee	employee_hire_evaluation
SELECT COUNT(*) FROM employee	employee_hire_evaluation
SELECT Name FROM employee ORDER BY Age ASC	employee_hire_evaluation
SELECT Name FROM employee ORDER BY Age ASC	employee_hire_evaluation
SELECT COUNT(*) ,  City FROM employee GROUP BY City	employee_hire_evaluation
SELECT COUNT(Employee_ID), City FROM employee GROUP BY City	employee_hire_evaluation
SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING count(Employee_ID) > 1	employee_hire_evaluation
SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING count(*) > 1	employee_hire_evaluation
SELECT count(*) ,  Location FROM shop GROUP BY Location	employee_hire_evaluation
SELECT COUNT(*) ,  Location FROM shop GROUP BY Location	employee_hire_evaluation
SELECT Manager_name, District FROM shop WHERE Number_products = (SELECT max(Number_products) FROM shop)	employee_hire_evaluation
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1	employee_hire_evaluation
SELECT MIN(Number_products), MAX(Number_products) FROM shop	employee_hire_evaluation
SELECT MIN(Number_products), MAX(Number_products) FROM shop	employee_hire_evaluation
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC	employee_hire_evaluation
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC	employee_hire_evaluation
SELECT Name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)	employee_hire_evaluation
SELECT Name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)	employee_hire_evaluation
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Name HAVING count(*) = (SELECT max(count_eval) FROM (SELECT count(*) as count_eval FROM evaluation GROUP BY Employee_ID) AS subquery)	employee_hire_evaluation
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Name HAVING count(*) = (SELECT max(awards) FROM (SELECT count(*) as awards FROM evaluation GROUP BY Employee_ID) as subquery)	employee_hire_evaluation
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID  =  T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1	employee_hire_evaluation
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.Bonus = (SELECT max(Bonus) FROM evaluation)	employee_hire_evaluation
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)	employee_hire_evaluation
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)	employee_hire_evaluation
SELECT T1.Name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Name HAVING count(T2.Employee_ID) = (SELECT max(count_employee) FROM (SELECT count(Employee_ID) as count_employee FROM hiring GROUP BY Shop_ID) as subquery)	employee_hire_evaluation
SELECT T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID, T2.Name HAVING count(T1.Employee_ID)  =  (SELECT max(counted) FROM (SELECT count(Employee_ID) AS counted FROM hiring GROUP BY Shop_ID) AS subquery)	employee_hire_evaluation
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)	employee_hire_evaluation
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)	employee_hire_evaluation
SELECT count(T1.Employee_ID), T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID, T2.Name	employee_hire_evaluation
SELECT count(T1.Employee_ID), T2.Name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID, T2.Name	employee_hire_evaluation
SELECT SUM(Bonus) FROM evaluation	employee_hire_evaluation
SELECT sum(Bonus) FROM evaluation	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT * FROM hiring	employee_hire_evaluation
SELECT District FROM shop WHERE District IN (SELECT District FROM shop WHERE Number_products < 3000) AND District IN (SELECT District FROM shop WHERE Number_products > 10000)	employee_hire_evaluation
SELECT T1.District FROM shop AS T1 WHERE T1.Number_products < 3000 INTERSECT SELECT T2.District FROM shop AS T2 WHERE T2.Number_products > 10000	employee_hire_evaluation
SELECT COUNT(DISTINCT Location) FROM shop	employee_hire_evaluation
SELECT COUNT(DISTINCT Location) FROM shop	employee_hire_evaluation
SELECT COUNT(*) FROM Documents	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM Documents	cre_Doc_Template_Mgt
SELECT Document_ID, Document_Name, Document_Description FROM Documents	cre_Doc_Template_Mgt
SELECT Document_ID, Document_Name, Document_Description FROM Documents	cre_Doc_Template_Mgt
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'	cre_Doc_Template_Mgt
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'	cre_Doc_Template_Mgt
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'	cre_Doc_Template_Mgt
SELECT Document_ID, Template_ID, Document_Description FROM Documents WHERE Document_Name = 'Robbin CV'	cre_Doc_Template_Mgt
SELECT count(DISTINCT T1.Template_ID) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID	cre_Doc_Template_Mgt
SELECT count(DISTINCT Template_ID) FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT T1.Template_ID, COUNT(T2.Document_ID)  FROM Templates AS T1  JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID  GROUP BY T1.Template_ID	cre_Doc_Template_Mgt
SELECT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID	cre_Doc_Template_Mgt
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID, T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Template_ID, T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID, T1.Template_Type_Code HAVING COUNT(*) = (     SELECT MAX(COUNT(*))     FROM Documents     GROUP BY Template_ID )	cre_Doc_Template_Mgt
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING count(T2.Document_ID) > 1	cre_Doc_Template_Mgt
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING count(*) > 1	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM Templates	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM Templates	cre_Doc_Template_Mgt
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates	cre_Doc_Template_Mgt
SELECT Template_ID, Version_Number, Template_Type_Code FROM Templates	cre_Doc_Template_Mgt
SELECT DISTINCT Template_Type_Code FROM Templates	cre_Doc_Template_Mgt
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PP' OR Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PP' OR Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM Templates WHERE Template_Type_Code = 'CV'	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'CV'	cre_Doc_Template_Mgt
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5	cre_Doc_Template_Mgt
SELECT Version_Number, Template_Type_Code FROM Templates WHERE Version_Number > 5	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code, count(T2.Template_ID) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code, COUNT(T2.Template_ID)  FROM Ref_Template_Types AS T1  JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code  GROUP BY T1.Template_Type_Code	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code  =  T2.Template_Type_Code GROUP BY T1.Template_Type_Code ORDER BY count(T2.Template_ID) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code HAVING COUNT(T2.Template_ID) < 3	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code HAVING count(T2.Template_ID) < 3	cre_Doc_Template_Mgt
SELECT MIN(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY Version_Number ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT MIN(Version_Number) AS Lowest_Version_Number, Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY Lowest_Version_Number ASC	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = 'Data base'	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = 'Data base'	cre_Doc_Template_Mgt
SELECT Documents.Document_Name FROM Documents JOIN Templates ON Documents.Template_ID = Templates.Template_ID WHERE Templates.Template_Type_Code = 'BK'	cre_Doc_Template_Mgt
SELECT Document_Name FROM Documents JOIN Templates ON Documents.Template_ID = Templates.Template_ID WHERE Templates.Template_Type_Code = 'BK'	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code, COUNT(T2.Document_ID)  FROM Ref_Template_Types AS T1  JOIN Templates AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code  JOIN Documents AS T2 ON T3.Template_ID = T2.Template_ID  GROUP BY T1.Template_Type_Code	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code, COUNT(T2.Document_ID)  FROM Ref_Template_Types AS T1  JOIN Templates AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code  JOIN Documents AS T2 ON T3.Template_ID = T2.Template_ID  GROUP BY T1.Template_Type_Code	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID)	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID)	cre_Doc_Template_Mgt
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types	cre_Doc_Template_Mgt
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types	cre_Doc_Template_Mgt
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'	cre_Doc_Template_Mgt
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'	cre_Doc_Template_Mgt
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Book'	cre_Doc_Template_Mgt
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID	cre_Doc_Template_Mgt
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID	cre_Doc_Template_Mgt
SELECT T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'Presentation'	cre_Doc_Template_Mgt
SELECT T1.Template_ID FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'Presentation'	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM Paragraphs	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM Paragraphs	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Summer Show'	cre_Doc_Template_Mgt
SELECT count(*) FROM Paragraphs AS P JOIN Documents AS D ON P.Document_ID = D.Document_ID WHERE D.Document_Name = 'Summer Show'	cre_Doc_Template_Mgt
SELECT * FROM Paragraphs WHERE Paragraph_Text = 'Korea'	cre_Doc_Template_Mgt
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'	cre_Doc_Template_Mgt
SELECT Paragraphs.Paragraph_ID, Paragraphs.Paragraph_Text FROM Paragraphs JOIN Documents ON Paragraphs.Document_ID = Documents.Document_ID WHERE Documents.Document_Name = 'Welcome to NY'	cre_Doc_Template_Mgt
SELECT T1.Paragraph_ID, T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Welcome to NY'	cre_Doc_Template_Mgt
SELECT Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Customer reviews'	cre_Doc_Template_Mgt
SELECT Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = 'Customer reviews'	cre_Doc_Template_Mgt
SELECT Documents.Document_ID, count(Paragraphs.Paragraph_ID) FROM Documents JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Documents.Document_ID ORDER BY Documents.Document_ID	cre_Doc_Template_Mgt
SELECT Documents.Document_ID, count(Paragraphs.Paragraph_ID) FROM Documents JOIN Paragraphs ON Documents.Document_ID = Paragraphs.Document_ID GROUP BY Documents.Document_ID ORDER BY Documents.Document_ID	cre_Doc_Template_Mgt
SELECT T1.Document_ID, T1.Document_Name, count(T2.Paragraph_ID) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID, T1.Document_Name	cre_Doc_Template_Mgt
SELECT T1.Document_ID, T1.Document_Name, count(T2.Paragraph_ID) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID, T1.Document_Name	cre_Doc_Template_Mgt
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID  =  T2.Document_ID GROUP BY T1.Document_ID HAVING count(*)  >=  2	cre_Doc_Template_Mgt
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID HAVING count(*) >= 2	cre_Doc_Template_Mgt
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID, T1.Document_Name ORDER BY count(T2.Paragraph_ID) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID, T1.Document_Name ORDER BY COUNT(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Document_ID, COUNT(T2.Paragraph_ID) as paragraph_count FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY paragraph_count ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Document_ID, COUNT(T2.Paragraph_ID) as paragraph_count FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY paragraph_count ASC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID HAVING count(T2.Paragraph_ID) BETWEEN 1 AND 2	cre_Doc_Template_Mgt
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID HAVING count(T2.Paragraph_ID) BETWEEN 1 AND 2	cre_Doc_Template_Mgt
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Paragraph_Text LIKE '%Brazil%' OR T2.Paragraph_Text LIKE '%Ireland%'	cre_Doc_Template_Mgt
SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text LIKE '%Brazil%' INTERSECT SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text LIKE '%Ireland%'	cre_Doc_Template_Mgt
SELECT COUNT(*) FROM teacher	course_teach
SELECT COUNT(*) FROM teacher	course_teach
SELECT Name FROM teacher ORDER BY Age ASC	course_teach
SELECT Name FROM teacher ORDER BY Age ASC	course_teach
SELECT Age, Hometown FROM teacher	course_teach
SELECT Age, Hometown FROM teacher	course_teach
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'	course_teach
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'	course_teach
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33	course_teach
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33	course_teach
SELECT Hometown FROM teacher WHERE Age = (SELECT MIN(Age) FROM teacher)	course_teach
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1	course_teach
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown	course_teach
SELECT COUNT(Teacher_ID), Hometown FROM teacher GROUP BY Hometown	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1	course_teach
SELECT Hometown, COUNT(*) as count FROM teacher GROUP BY Hometown ORDER BY count DESC LIMIT 1	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown HAVING count(*) > 1	course_teach
SELECT Hometown FROM teacher GROUP BY Hometown HAVING count(Teacher_ID) >= 2	course_teach
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T3 ON T1.Teacher_ID = T3.Teacher_ID JOIN course AS T2 ON T3.Course_ID = T2.Course_ID	course_teach
SELECT T1.Name, T2.Course  FROM teacher AS T1  JOIN course_arrange AS T3 ON T1.Teacher_ID = T3.Teacher_ID  JOIN course AS T2 ON T3.Course_ID = T2.Course_ID	course_teach
SELECT T1.Name, T3.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID ORDER BY T1.Name ASC	course_teach
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T3 ON T1.Teacher_ID = T3.Teacher_ID JOIN course AS T2 ON T3.Course_ID = T2.Course_ID ORDER BY T1.Name ASC	course_teach
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = 'math'	course_teach
SELECT DISTINCT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = 'math'	course_teach
SELECT T1.Name, COUNT(T2.Course_ID) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID, T1.Name	course_teach
SELECT T1.Name, COUNT(T2.Course_ID) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID, T1.Name	course_teach
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING count(*)  >=  2	course_teach
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID, T1.Name HAVING count(*)  >=  2	course_teach
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)	course_teach
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)	course_teach
SELECT COUNT(*) FROM visitor WHERE Age < 30	museum_visit
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC	museum_visit
SELECT AVG(Age) FROM visitor WHERE Level_of_membership <= 4	museum_visit
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC	museum_visit
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1	museum_visit
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < 2009	museum_visit
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = 'Plaza Museum'	museum_visit
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > 2010)	museum_visit
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 WHERE T1.ID IN (SELECT visitor_ID FROM visit GROUP BY visitor_ID, Museum_ID HAVING count(*) > 1)	museum_visit
SELECT T1.ID, T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T2.Total_spent = (SELECT max(Total_spent) FROM visit)	museum_visit
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID, T1.Name HAVING COUNT(*) = (     SELECT MAX(count)     FROM (         SELECT COUNT(*) AS count         FROM visit         GROUP BY Museum_ID     ) AS T3 )	museum_visit
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)	museum_visit
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T2.Num_of_Ticket = (SELECT max(Num_of_Ticket) FROM visit)	museum_visit
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit	museum_visit
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID  =  T2.ID WHERE T2.Level_of_membership  =  1	museum_visit
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID  =  T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID  =  T3.Museum_ID WHERE T3.Open_Year  <  2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID  =  T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID  =  T3.Museum_ID WHERE T3.Open_Year  >  2011	museum_visit
SELECT count(ID) FROM visitor WHERE ID NOT IN (SELECT visitor_ID FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Open_Year > 2010)	museum_visit
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008	museum_visit
SELECT COUNT(*) FROM players	wta_1
SELECT COUNT(*) FROM players	wta_1
SELECT COUNT(*) FROM matches	wta_1
SELECT COUNT(*) FROM matches	wta_1
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'	wta_1
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'	wta_1
SELECT AVG(loser_age) AS avg_loser_age, AVG(winner_age) AS avg_winner_age FROM matches	wta_1
SELECT AVG(loser_age) AS avg_loser_age, AVG(winner_age) AS avg_winner_age FROM matches	wta_1
SELECT AVG(winner_rank) FROM matches	wta_1
SELECT AVG(winner_rank) FROM matches	wta_1
SELECT MAX(loser_rank) FROM matches	wta_1
SELECT MIN(loser_rank) FROM matches	wta_1
SELECT COUNT(DISTINCT country_code) FROM players	wta_1
SELECT COUNT(DISTINCT country_code) FROM players	wta_1
SELECT COUNT(DISTINCT loser_name) FROM matches	wta_1
SELECT COUNT(DISTINCT loser_name) FROM matches	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(match_num) > 10	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(match_num) > 10	wta_1
SELECT T1.first_name, T1.last_name  FROM players AS T1  JOIN matches AS T2 ON T1.player_id = T2.winner_id  WHERE T2.year = 2013 	wta_1
SELECT T1.first_name, T1.last_name  FROM players AS T1  JOIN matches AS T2 ON T1.player_id = T2.winner_id  WHERE T2.year = 2013 	wta_1
SELECT count(*) FROM matches WHERE year = 2013 OR year = 2016	wta_1
SELECT count(*) FROM matches WHERE year = 2013 OR year = 2016	wta_1
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'	wta_1
SELECT T1.first_name, T1.country_code  FROM players AS T1  JOIN matches AS T2 ON T1.player_id = T2.winner_id  WHERE T2.tourney_name = 'WTA Championships'  INTERSECT  SELECT T1.first_name, T1.country_code  FROM players AS T1  JOIN matches AS T2 ON T1.player_id = T2.winner_id  WHERE T2.tourney_name = 'Australian Open'	wta_1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1	wta_1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1	wta_1
SELECT first_name, last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name, last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date	wta_1
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date	wta_1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tours = (SELECT max(tours) FROM rankings)	wta_1
SELECT T1.first_name, T1.country_code  FROM players AS T1  JOIN rankings AS T2 ON T1.player_id = T2.player_id  WHERE T2.tours = (SELECT max(tours) FROM rankings)	wta_1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT T1.first_name, T1.last_name, T2.rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.player_id = (     SELECT winner_id     FROM matches     GROUP BY winner_id     ORDER BY COUNT(*) DESC     LIMIT 1 )	wta_1
SELECT T1.first_name, T1.last_name, T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.player_id = (     SELECT winner_id     FROM matches     GROUP BY winner_id     ORDER BY COUNT(*) DESC     LIMIT 1 )	wta_1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T2.rank_points DESC LIMIT 1	wta_1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T2.rank_points DESC LIMIT 1	wta_1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON (T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id) WHERE T2.minutes = (SELECT MAX(minutes) FROM matches) ORDER BY T2.minutes DESC LIMIT 2	wta_1
SELECT T1.first_name, T1.last_name, T2.first_name, T2.last_name FROM players AS T1 JOIN matches ON T1.player_id = matches.winner_id JOIN players AS T2 ON T2.player_id = matches.loser_id WHERE matches.minutes = (SELECT max(minutes) FROM matches)	wta_1
SELECT avg(T1.ranking), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name, T1.player_id	wta_1
SELECT T1.first_name, AVG(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id, T1.first_name	wta_1
SELECT sum(T1.ranking_points), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id, T2.first_name	wta_1
SELECT T1.first_name, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id, T1.first_name	wta_1
SELECT COUNT(player_id), country_code FROM players GROUP BY country_code	wta_1
SELECT count(*) ,  country_code FROM players GROUP BY country_code	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(player_id) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(player_id) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(player_id) > 50	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(player_id) > 50	wta_1
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date	wta_1
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date	wta_1
SELECT count(*) ,  year FROM matches GROUP BY year	wta_1
SELECT count(*) ,  year FROM matches GROUP BY year	wta_1
SELECT T1.first_name, T1.last_name, T3.winner_rank FROM players AS T1 JOIN matches AS T3 ON T1.player_id = T3.winner_id ORDER BY T3.winner_age ASC LIMIT 3	wta_1
SELECT T1.first_name, T1.last_name, T2.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3	wta_1
SELECT count(DISTINCT winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'WTA Championships' AND T2.hand = 'L'	wta_1
SELECT COUNT(*) FROM matches WHERE winner_hand = 'L' AND tourney_name = 'WTA Championships'	wta_1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1	wta_1
SELECT T1.first_name, T1.country_code, T1.birth_date  FROM players AS T1  JOIN matches AS T2 ON T1.player_id = T2.winner_id  ORDER BY T2.winner_rank_points DESC  LIMIT 1	wta_1
SELECT count(*) , hand FROM players GROUP BY hand	wta_1
SELECT count(*) , hand FROM players GROUP BY hand	wta_1
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = 'Captured'	battle_death
SELECT name, tonnage FROM ship ORDER BY name DESC	battle_death
SELECT name, date, result FROM battle	battle_death
SELECT max(killed), min(killed), caused_by_ship_id FROM death GROUP BY caused_by_ship_id	battle_death
SELECT AVG(injured) FROM death	battle_death
SELECT T1.killed, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'	battle_death
SELECT name, result FROM battle WHERE bulgarian_commander != 'Boril'	battle_death
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'	battle_death
SELECT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN death AS T3 ON T2.id = T3.caused_by_ship_id GROUP BY T1.id, T1.name HAVING sum(T3.killed) > 10	battle_death
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id, T1.name HAVING sum(T2.injured) = (SELECT max(sum_injured) FROM (SELECT sum(T3.injured) AS sum_injured FROM death AS T3 GROUP BY T3.caused_by_ship_id) AS T4)	battle_death
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'	battle_death
SELECT COUNT(DISTINCT result) FROM battle	battle_death
SELECT COUNT(id) FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE tonnage = 225)	battle_death
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' OR T2.name = 'HMS Atalanta'	battle_death
SELECT name, result, bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE location = 'English Channel')	battle_death
SELECT note FROM death WHERE note LIKE '%East%'	battle_death
SELECT line_1, line_2 FROM Addresses	student_transcripts_tracking
SELECT line_1, line_2 FROM Addresses	student_transcripts_tracking
SELECT COUNT(*) FROM Courses	student_transcripts_tracking
SELECT COUNT(*) FROM Courses	student_transcripts_tracking
SELECT course_description FROM Courses WHERE course_name = 'math'	student_transcripts_tracking
SELECT course_description FROM Courses WHERE course_name LIKE '%math%'	student_transcripts_tracking
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'	student_transcripts_tracking
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'	student_transcripts_tracking
SELECT T1.department_name, T1.department_id, count(T2.degree_program_id) as num_degrees FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id, T1.department_name ORDER BY num_degrees DESC LIMIT 1	student_transcripts_tracking
SELECT T1.department_id, T1.department_name, count(T2.degree_program_id) as num_degrees FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id, T1.department_name ORDER BY num_degrees DESC LIMIT 1	student_transcripts_tracking
SELECT count(distinct department_id) FROM Degree_Programs	student_transcripts_tracking
SELECT count(distinct department_id) FROM Degree_Programs	student_transcripts_tracking
SELECT COUNT(DISTINCT degree_summary_name) FROM Degree_Programs	student_transcripts_tracking
SELECT COUNT(DISTINCT degree_program_id) FROM Degree_Programs	student_transcripts_tracking
SELECT count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'engineering'	student_transcripts_tracking
SELECT count(degree_program_id) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'engineering'	student_transcripts_tracking
SELECT section_name, section_description FROM Sections	student_transcripts_tracking
SELECT section_name, section_description FROM Sections	student_transcripts_tracking
SELECT T1.course_id, T1.course_name FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id, T1.course_name HAVING count(*) <= 2	student_transcripts_tracking
SELECT T1.course_id, T1.course_name FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id, T1.course_name HAVING count(*) < 2	student_transcripts_tracking
SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
SELECT section_name FROM Sections ORDER BY section_name DESC	student_transcripts_tracking
SELECT T2.semester_id, T2.semester_name, count(T1.student_id) as student_count FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T2.semester_id, T2.semester_name ORDER BY student_count DESC LIMIT 1	student_transcripts_tracking
SELECT T1.semester_id, T1.semester_name, COUNT(T2.student_id) AS num_students FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id, T1.semester_name ORDER BY num_students DESC LIMIT 1	student_transcripts_tracking
SELECT department_description FROM Departments WHERE department_name LIKE '%the computer%'	student_transcripts_tracking
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'	student_transcripts_tracking
SELECT T2.first_name, T2.middle_name, T2.last_name, T2.student_id  FROM Students AS T2  WHERE T2.student_id IN (     SELECT T1.student_id      FROM Student_Enrolment AS T1      GROUP BY T1.student_id, T1.semester_id      HAVING count(*) = 2 )	student_transcripts_tracking
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name  FROM Students AS T1  JOIN (     SELECT student_id, semester_id      FROM Student_Enrolment      GROUP BY student_id, semester_id      HAVING count(degree_program_id) = 2 ) AS T2  ON T1.student_id = T2.student_id	student_transcripts_tracking
SELECT T2.first_name, T2.middle_name, T2.last_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T3 ON T1.degree_program_id = T3.degree_program_id JOIN Students AS T2 ON T3.student_id = T2.student_id WHERE T1.degree_summary_name = 'Bachelor'	student_transcripts_tracking
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'	student_transcripts_tracking
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(T2.student_id) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(T2.student_id) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.degree_program_id, T2.degree_summary_name, count(T1.student_id) as num_students FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id, T2.degree_summary_name ORDER BY num_students DESC LIMIT 1	student_transcripts_tracking
SELECT T1.degree_program_id, T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id, T1.degree_summary_name HAVING COUNT(*) = (     SELECT MAX(counted)     FROM (         SELECT COUNT(*) AS counted         FROM Student_Enrolment         GROUP BY degree_program_id     ) AS subquery )	student_transcripts_tracking
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, count(T2.student_enrolment_id) as num_enrollments FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id, T1.first_name, T1.middle_name, T1.last_name ORDER BY num_enrollments DESC LIMIT 1	student_transcripts_tracking
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(T2.student_enrolment_id) as num_enrollments FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY num_enrollments DESC LIMIT 1	student_transcripts_tracking
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)	student_transcripts_tracking
SELECT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)	student_transcripts_tracking
SELECT DISTINCT course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id	student_transcripts_tracking
SELECT DISTINCT course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id	student_transcripts_tracking
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(T2.student_course_id) DESC LIMIT 1	student_transcripts_tracking
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' AND T1.student_id NOT IN (SELECT student_id FROM Student_Enrolment)	student_transcripts_tracking
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' AND T1.student_id NOT IN (SELECT student_id FROM Student_Enrolment)	student_transcripts_tracking
SELECT T1.transcript_id, T1.transcript_date FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id, T1.transcript_date HAVING count(*) >= 2	student_transcripts_tracking
SELECT T1.transcript_id, T1.transcript_date  FROM Transcripts AS T1  JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id  GROUP BY T1.transcript_id, T1.transcript_date  HAVING count(*) >= 2	student_transcripts_tracking
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward'	student_transcripts_tracking
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timmothy' AND last_name = 'Ward'	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
SELECT first_name, middle_name, last_name FROM Students WHERE date_left IS NOT NULL ORDER BY date_left ASC LIMIT 1	student_transcripts_tracking
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id	student_transcripts_tracking
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id	student_transcripts_tracking
SELECT A.address_id, A.line_1, A.line_2, A.line_3 FROM Addresses AS A WHERE A.address_id = (     SELECT S.current_address_id     FROM Students AS S     GROUP BY S.current_address_id     ORDER BY COUNT(*) DESC     LIMIT 1 )	student_transcripts_tracking
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id OR T1.address_id = T2.permanent_address_id GROUP BY T1.address_id, T1.line_1, T1.line_2 ORDER BY count(*) DESC LIMIT 1	student_transcripts_tracking
SELECT AVG(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT AVG(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT transcript_id, transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1	student_transcripts_tracking
SELECT COUNT(*) FROM Transcripts	student_transcripts_tracking
SELECT COUNT(*) FROM Transcripts	student_transcripts_tracking
SELECT MAX(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT MAX(transcript_date) FROM Transcripts	student_transcripts_tracking
SELECT count(T1.student_course_id) ,  T1.student_course_id FROM Transcript_Contents AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_course_id  =  T2.student_course_id GROUP BY T1.student_course_id ORDER BY count(T1.student_course_id) DESC LIMIT 1	student_transcripts_tracking
SELECT max(count(T1.student_course_id)), T2.student_enrolment_id FROM Transcript_Contents AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_course_id  =  T2.student_course_id GROUP BY T2.student_enrolment_id	student_transcripts_tracking
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T2.transcript_id HAVING COUNT(*) = (     SELECT MIN(COUNT(*))     FROM Transcript_Contents     GROUP BY transcript_id )	student_transcripts_tracking
SELECT T1.transcript_id, T1.transcript_date, COUNT(T2.student_course_id) AS num_results FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id, T1.transcript_date ORDER BY num_results ASC LIMIT 1	student_transcripts_tracking
SELECT semester_name FROM Semesters WHERE semester_id IN (SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id  =  T2.degree_program_id WHERE T2.degree_summary_name  =  'Master') AND semester_id IN (SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id  =  T2.degree_program_id WHERE T2.degree_summary_name  =  'Bachelor')	student_transcripts_tracking
SELECT semester_id FROM Semesters WHERE semester_id IN (SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id  =  T2.degree_program_id WHERE T2.degree_summary_name  =  'Masters') AND semester_id IN (SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id  =  T2.degree_program_id WHERE T2.degree_summary_name  =  'Bachelors')	student_transcripts_tracking
SELECT count(DISTINCT T1.address_id) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id	student_transcripts_tracking
SELECT DISTINCT * FROM Addresses WHERE address_id IN (SELECT current_address_id FROM Students) OR address_id IN (SELECT permanent_address_id FROM Students)	student_transcripts_tracking
SELECT * FROM Students ORDER BY first_name DESC, middle_name DESC, last_name DESC	student_transcripts_tracking
SELECT other_student_details FROM Students ORDER BY last_name DESC	student_transcripts_tracking
SELECT section_description FROM Sections WHERE section_name = 'h'	student_transcripts_tracking
SELECT section_description FROM Sections WHERE section_name = 'h'	student_transcripts_tracking
SELECT DISTINCT first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'	student_transcripts_tracking
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'	student_transcripts_tracking
SELECT Title FROM Cartoon ORDER BY Title ASC	tvshow
SELECT Title FROM Cartoon ORDER BY Title ASC	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones'	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones'	tvshow
SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr'	tvshow
SELECT COUNT(*) FROM Cartoon WHERE Written_by = 'Joseph Kuhr'	tvshow
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones' OR Directed_by = 'Brandon Vietti'	tvshow
SELECT Title FROM Cartoon WHERE Directed_by = 'Ben Jones' OR Directed_by = 'Brandon Vietti'	tvshow
SELECT Country, COUNT(*) as num_channels FROM TV_Channel GROUP BY Country ORDER BY num_channels DESC LIMIT 1	tvshow
SELECT Country, COUNT(*) as num_channels FROM TV_Channel GROUP BY Country ORDER BY num_channels DESC LIMIT 1	tvshow
SELECT COUNT(DISTINCT series_name) ,  COUNT(DISTINCT Content) FROM TV_Channel	tvshow
SELECT COUNT(DISTINCT series_name) ,  COUNT(DISTINCT Content) FROM TV_Channel	tvshow
SELECT Content FROM TV_Channel WHERE series_name = 'Sky Radio'	tvshow
SELECT Content FROM TV_Channel WHERE series_name = 'Sky Radio'	tvshow
SELECT Package_Option FROM TV_Channel WHERE series_name = 'Sky Radio'	tvshow
SELECT Package_Option FROM TV_Channel WHERE series_name = 'Sky Radio'	tvshow
SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English'	tvshow
SELECT COUNT(*) FROM TV_Channel WHERE Language = 'English'	tvshow
SELECT Language, COUNT(*) as num_channels FROM TV_Channel GROUP BY Language ORDER BY num_channels ASC LIMIT 1	tvshow
SELECT Language, count(*) AS num_channels FROM TV_Channel GROUP BY Language HAVING count(*) = (SELECT min(count(*)) FROM TV_Channel GROUP BY Language)	tvshow
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language	tvshow
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language	tvshow
SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON Cartoon.Channel = TV_Channel.id WHERE Cartoon.Title = 'The Rise of the Blue Beetle!'	tvshow
SELECT TV_Channel.series_name FROM TV_Channel JOIN Cartoon ON TV_Channel.id = Cartoon.Channel WHERE Cartoon.Title = 'The Rise of the Blue Beetle'	tvshow
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = 'Sky Radio'	tvshow
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = 'Sky Radio'	tvshow
SELECT Episode FROM TV_series ORDER BY Rating DESC	tvshow
SELECT Episode FROM TV_series ORDER BY Rating DESC	tvshow
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3	tvshow
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3	tvshow
SELECT MIN(Share), MAX(Share) FROM TV_series	tvshow
SELECT max(Share), min(Share) FROM TV_series	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = 'A Love of a Lifetime'	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = 'A Love of a Lifetime'	tvshow
SELECT Weekly_Rank FROM TV_series WHERE Episode = 'A Love of a Lifetime'	tvshow
SELECT Weekly_Rank FROM TV_series WHERE Episode = 'A Love of a Lifetime'	tvshow
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = 'A Love of a Lifetime'	tvshow
SELECT T1.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = 'A Love of a Lifetime'	tvshow
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = 'Sky Radio'	tvshow
SELECT Episode FROM TV_series JOIN TV_Channel ON TV_series.Channel = TV_Channel.id WHERE TV_Channel.series_name = 'Sky Radio'	tvshow
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by	tvshow
SELECT COUNT(*) ,  Directed_by FROM Cartoon GROUP BY Directed_by	tvshow
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1	tvshow
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1	tvshow
SELECT series_name, Package_Option FROM TV_Channel WHERE Hight_definition_TV = 'Yes'	tvshow
SELECT T1.Package_Option, T2.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Hight_definition_TV = 'Yes'	tvshow
SELECT DISTINCT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = 'Todd Casey'	tvshow
SELECT DISTINCT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = 'Todd Casey'	tvshow
SELECT Country FROM TV_Channel WHERE id NOT IN (SELECT T1.id FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.Channel WHERE T2.Written_by  =  'Todd Casey')	tvshow
SELECT Country FROM TV_Channel WHERE Country NOT IN (SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.Channel WHERE T2.Written_by  =  'Todd Casey')	tvshow
SELECT T1.series_name, T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = 'Ben Jones' OR T2.Directed_by = 'Michael Chang'	tvshow
SELECT T1.series_name, T1.Country  FROM TV_Channel AS T1  WHERE T1.id IN (     SELECT T2.id      FROM TV_Channel AS T2      JOIN Cartoon AS T3 ON T2.id = T3.Channel      WHERE T3.Directed_by = 'Ben Jones'  ) AND T1.id IN (     SELECT T4.id      FROM TV_Channel AS T4      JOIN Cartoon AS T5 ON T4.id = T5.Channel      WHERE T5.Directed_by = 'Michael Chang' )	tvshow
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English'	tvshow
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English'	tvshow
SELECT id FROM TV_Channel WHERE Country IN (SELECT Country FROM TV_Channel GROUP BY Country HAVING count(*) > 2)	tvshow
SELECT T1.id FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel GROUP BY T1.id HAVING count(*) > 2	tvshow
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT T1.id FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.Channel WHERE T2.Directed_by  =  'Ben Jones')	tvshow
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT T1.id FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.Channel WHERE T2.Directed_by  =  'Ben Jones')	tvshow
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = 'Ben Jones')	tvshow
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = 'Ben Jones')	tvshow
SELECT COUNT(*) FROM poker_player	poker_player
SELECT COUNT(*) FROM poker_player	poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC	poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC	poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player	poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player	poker_player
SELECT AVG(Earnings) FROM poker_player	poker_player
SELECT AVG(Earnings) FROM poker_player	poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1	poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1	poker_player
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000	poker_player
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Final_Table_Made ASC	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Final_Table_Made ASC	poker_player
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings = (SELECT min(Earnings) FROM poker_player)	poker_player
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1	poker_player
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)	poker_player
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)	poker_player
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200	poker_player
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings DESC	poker_player
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings DESC	poker_player
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality	poker_player
SELECT count(*) ,  Nationality FROM people GROUP BY Nationality	poker_player
SELECT Nationality FROM people GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1	poker_player
SELECT Nationality FROM people GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1	poker_player
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*) > 1	poker_player
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*) >= 2	poker_player
SELECT Name, Birth_Date FROM people ORDER BY Name ASC	poker_player
SELECT Name, Birth_Date FROM people ORDER BY Name	poker_player
SELECT Name FROM people WHERE Nationality != 'Russia'	poker_player
SELECT Name FROM people WHERE Nationality != 'Russia'	poker_player
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)	poker_player
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)	poker_player
SELECT COUNT(DISTINCT Nationality) FROM people	poker_player
SELECT COUNT(DISTINCT Nationality) FROM people	poker_player
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE	voter_1
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC	voter_1
SELECT vote_id, phone_number, state FROM VOTES	voter_1
SELECT max(area_code), min(area_code) FROM AREA_CODE_STATE	voter_1
SELECT MAX(created) FROM VOTES WHERE state = 'CA'	voter_1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'	voter_1
SELECT DISTINCT state, created FROM VOTES	voter_1
SELECT T2.contestant_number, T2.contestant_name  FROM CONTESTANTS AS T2  WHERE T2.contestant_number IN (     SELECT T1.contestant_number      FROM VOTES AS T1      GROUP BY T1.contestant_number      HAVING count(*) >= 2 )	voter_1
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number, T1.contestant_name HAVING count(*) = (     SELECT min(count_votes)     FROM (         SELECT count(*) AS count_votes         FROM VOTES         GROUP BY contestant_number     ) AS subquery )	voter_1
SELECT COUNT(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'	voter_1
SELECT COUNT(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)	voter_1
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state  =  T2.state GROUP BY T1.area_code ORDER BY count(T2.vote_id) DESC LIMIT 1	voter_1
SELECT T1.created, T1.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'	voter_1
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state  =  T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number  =  T3.contestant_number WHERE T3.contestant_name  =  'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state  =  T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number  =  T3.contestant_number WHERE T3.contestant_name  =  'Kelly Clauss'	voter_1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'	voter_1
SELECT Name FROM country WHERE IndepYear > 1950	world_1
SELECT Name FROM country WHERE IndepYear > 1950	world_1
SELECT COUNT(*) FROM country WHERE GovernmentForm LIKE '%republic%'	world_1
SELECT COUNT(*) FROM country WHERE GovernmentForm LIKE '%republic%'	world_1
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'	world_1
SELECT SUM(SurfaceArea) FROM country WHERE Region = 'Caribbean'	world_1
SELECT Continent FROM country WHERE Name = 'Anguilla'	world_1
SELECT Continent FROM country WHERE Name = 'Anguilla'	world_1
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = 'Kabul'	world_1
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = 'Kabul'	world_1
SELECT Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Name  =  'Aruba' ORDER BY T1.Percentage DESC LIMIT 1	world_1
SELECT Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Name  =  'Aruba' ORDER BY T1.Percentage DESC LIMIT 1	world_1
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'	world_1
SELECT Population, LifeExpectancy FROM country WHERE Name = 'Brazil'	world_1
SELECT Region, Population FROM country WHERE Name = 'Angola'	world_1
SELECT Region, Population FROM country WHERE Name = 'Angola'	world_1
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'	world_1
SELECT AVG(LifeExpectancy) FROM country WHERE Region = 'Central Africa'	world_1
SELECT Name FROM country WHERE LifeExpectancy = (SELECT min(LifeExpectancy) FROM country WHERE Continent = 'Asia') AND Continent = 'Asia'	world_1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1	world_1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = 'Asia'	world_1
SELECT sum(Population), max(GNP) FROM country WHERE Continent = 'Asia'	world_1
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm LIKE '%Republic%'	world_1
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm LIKE '%Republic%'	world_1
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'	world_1
SELECT SUM(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'	world_1
SELECT sum(Population) FROM city WHERE District = 'Gelderland'	world_1
SELECT sum(Population) FROM city WHERE District = 'Gelderland'	world_1
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = 'US territory'	world_1
SELECT AVG(GNP), SUM(Population) FROM country WHERE Code2 = 'US'	world_1
SELECT COUNT(DISTINCT Language) FROM countrylanguage	world_1
SELECT COUNT(DISTINCT Language) FROM countrylanguage	world_1
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'	world_1
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'	world_1
SELECT count(Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Aruba'	world_1
SELECT count(Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Name  =  'Aruba'	world_1
SELECT count(Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 'T' AND T2.Name = 'Afghanistan'	world_1
SELECT count(Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 'T' AND T2.Name = 'Afghanistan'	world_1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(T2.Language) DESC LIMIT 1	world_1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1	world_1
SELECT T1.Continent, COUNT(DISTINCT T2.Language) AS num_languages FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY num_languages DESC LIMIT 1	world_1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1	world_1
SELECT COUNT(*) FROM (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT CountryCode FROM countrylanguage WHERE Language = 'Dutch') AS T1	world_1
SELECT COUNT(DISTINCT CountryCode) FROM countrylanguage WHERE Language = 'English' OR Language = 'Dutch'	world_1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'French'	world_1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'French'	world_1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'English' AND T2.IsOfficial  =  'T' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'French' AND T2.IsOfficial  =  'T'	world_1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'English' AND T2.IsOfficial  =  'T' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'French' AND T2.IsOfficial  =  'T'	world_1
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'	world_1
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'	world_1
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'	world_1
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Dutch' OR T2.Language = 'English'	world_1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE (T2.Language = 'English' OR T2.Language = 'Dutch') AND T2.IsOfficial = 'T'	world_1
SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE (T2.Language = 'English' OR T2.Language = 'Dutch') AND T2.IsOfficial = 'T'	world_1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY sum(T1.Percentage) DESC LIMIT 1	world_1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1	world_1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING count(*) = 1	world_1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm LIKE '%republic%' GROUP BY T1.Language HAVING count(*) = 1	world_1
SELECT Name FROM city WHERE Population = (SELECT max(Population) FROM city WHERE CountryCode IN (SELECT T2.Code FROM country AS T2 JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = 'English'))	world_1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' ORDER BY T1.Population DESC LIMIT 1	world_1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')	world_1
SELECT avg(LifeExpectancy) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English' AND IsOfficial = 'T')	world_1
SELECT sum(Population) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')	world_1
SELECT sum(Population) FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')	world_1
SELECT Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 'T' AND T2.HeadOfState = 'Beatrix'	world_1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 'T' AND T2.HeadOfState = 'Beatrix'	world_1
SELECT count(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)	world_1
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'T' AND T1.IndepYear < 1930	world_1
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')	world_1
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')	world_1
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT MIN(Population) FROM country WHERE Continent = 'Asia')	world_1
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT min(Population) FROM country WHERE Continent = 'Asia')	world_1
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT max(Population) FROM country WHERE Continent = 'Africa')	world_1
SELECT Name FROM country WHERE Continent = 'Asia' AND Population > (SELECT max(Population) FROM country WHERE Continent = 'Africa')	world_1
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')	world_1
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language != 'English'	world_1
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm != 'Republic'	world_1
SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English') AND GovernmentForm != 'Republic'	world_1
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Europe' AND T2.Code NOT IN (SELECT T3.CountryCode FROM countrylanguage AS T3 WHERE T3.Language = 'English' AND T3.IsOfficial = 'T')	world_1
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Continent  =  'Europe' AND T1.Name NOT IN (SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code JOIN countrylanguage AS T3 ON T2.Code  =  T3.CountryCode WHERE T2.Continent  =  'Europe' AND T3.Language  =  'English' AND T3.IsOfficial  =  'T')	world_1
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = 'Asia' AND T3.Language = 'Chinese' AND T3.IsOfficial = 'T'	world_1
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = 'Asia' AND T3.Language = 'Chinese' AND T3.IsOfficial = 'T'	world_1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population ASC LIMIT 1	world_1
SELECT Name, IndepYear, SurfaceArea FROM country WHERE Population = (SELECT MIN(Population) FROM country)	world_1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1	world_1
SELECT T1.Name, COUNT(T2.Language)  FROM country AS T1  JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode  GROUP BY T1.Name  HAVING COUNT(T2.Language) >= 3	world_1
SELECT T1.Name, COUNT(T2.Language)  FROM country AS T1  JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode  GROUP BY T1.Name  HAVING COUNT(T2.Language) > 2	world_1
SELECT count(*) , District FROM city WHERE Population > (SELECT avg(Population) FROM city) GROUP BY District	world_1
SELECT count(*) ,  District FROM city WHERE Population  >  (SELECT avg(Population) FROM city) GROUP BY District	world_1
SELECT GovernmentForm, sum(Population) FROM country WHERE GovernmentForm IN (SELECT GovernmentForm FROM country GROUP BY GovernmentForm HAVING avg(LifeExpectancy) > 72) GROUP BY GovernmentForm	world_1
SELECT GovernmentForm, SUM(Population) FROM country WHERE GovernmentForm IN (SELECT GovernmentForm FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72) GROUP BY GovernmentForm	world_1
SELECT avg(LifeExpectancy), sum(Population), Continent FROM country GROUP BY Continent HAVING avg(LifeExpectancy) < 72	world_1
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72	world_1
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5	world_1
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5	world_1
SELECT Name FROM country ORDER BY Population DESC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population DESC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population ASC LIMIT 3	world_1
SELECT Name FROM country ORDER BY Population ASC LIMIT 3	world_1
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'	world_1
SELECT COUNT(*) FROM country WHERE Continent = 'Asia'	world_1
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000	world_1
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000	world_1
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000	world_1
SELECT SUM(Population), AVG(SurfaceArea) FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000	world_1
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000	world_1
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000	world_1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(CountryCode) DESC LIMIT 1	world_1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(CountryCode) DESC LIMIT 1	world_1
SELECT T1.Language FROM countrylanguage AS T1 JOIN (SELECT CountryCode, max(Percentage) AS max_percentage FROM countrylanguage GROUP BY CountryCode) AS T2 ON T1.CountryCode = T2.CountryCode AND T1.Percentage = T2.max_percentage	world_1
SELECT T1.CountryCode, T1.Language, max(T1.Percentage) FROM countrylanguage AS T1 GROUP BY T1.CountryCode	world_1
SELECT count(*) FROM (SELECT CountryCode FROM countrylanguage AS T1 WHERE Language = 'Spanish' AND Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE CountryCode = T1.CountryCode)) AS T2	world_1
SELECT COUNT(CountryCode) FROM countrylanguage WHERE Language = 'Spanish' AND IsOfficial = 'T'	world_1
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish' ORDER BY T2.Percentage DESC	world_1
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish' AND T2.IsOfficial = 'T'	world_1
SELECT COUNT(*) FROM conductor	orchestra
SELECT COUNT(*) FROM conductor	orchestra
SELECT Name FROM conductor ORDER BY Age ASC	orchestra
SELECT Name FROM conductor ORDER BY Age	orchestra
SELECT Name FROM conductor WHERE Nationality != 'USA'	orchestra
SELECT Name FROM conductor WHERE Nationality != 'USA'	orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC	orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC	orchestra
SELECT AVG(Attendance) FROM show	orchestra
SELECT AVG(Attendance) FROM show	orchestra
SELECT max(Share), min(Share) FROM performance WHERE Type != 'Live final'	orchestra
SELECT max(Share), min(Share) FROM performance WHERE Type != 'Live final'	orchestra
SELECT COUNT(DISTINCT Nationality) FROM conductor	orchestra
SELECT COUNT(DISTINCT Nationality) FROM conductor	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	orchestra
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID	orchestra
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING count(*) > 1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING count(*) > 1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID, T1.Name ORDER BY count(*) DESC LIMIT 1	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008	orchestra
SELECT Record_Company, COUNT(Orchestra_ID) FROM orchestra GROUP BY Record_Company	orchestra
SELECT COUNT(*) , Record_Company FROM orchestra GROUP BY Record_Company	orchestra
SELECT Major_Record_Format, COUNT(*) as count FROM orchestra GROUP BY Major_Record_Format ORDER BY count ASC	orchestra
SELECT Major_Record_Format, COUNT(*) as frequency FROM orchestra GROUP BY Major_Record_Format ORDER BY frequency DESC	orchestra
SELECT Record_Company, COUNT(*) as count FROM orchestra GROUP BY Record_Company ORDER BY count DESC LIMIT 1	orchestra
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1	orchestra
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)	orchestra
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)	orchestra
SELECT DISTINCT Record_Company FROM orchestra WHERE Record_Company IN (SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003) AND Record_Company IN (SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003)	orchestra
SELECT Record_Company FROM orchestra WHERE Record_Company IN (SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003) AND Record_Company IN (SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003)	orchestra
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD'	orchestra
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = 'CD' OR Major_Record_Format = 'DVD'	orchestra
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT T1.Orchestra_ID FROM performance AS T1 GROUP BY T1.Orchestra_ID HAVING count(*) > 1)	orchestra
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT T1.Orchestra_ID FROM performance AS T1 GROUP BY T1.Orchestra_ID HAVING count(*) > 1)	orchestra
SELECT COUNT(*) FROM Highschooler	network_1
SELECT COUNT(*) FROM Highschooler	network_1
SELECT name, grade FROM Highschooler	network_1
SELECT name, grade FROM Highschooler	network_1
SELECT DISTINCT grade FROM Highschooler	network_1
SELECT ID, name, grade FROM Highschooler	network_1
SELECT grade FROM Highschooler WHERE name = 'Kyle'	network_1
SELECT grade FROM Highschooler WHERE name = 'Kyle'	network_1
SELECT name FROM Highschooler WHERE grade = 10	network_1
SELECT name FROM Highschooler WHERE grade = 10	network_1
SELECT ID FROM Highschooler WHERE name = 'Kyle'	network_1
SELECT ID FROM Highschooler WHERE name = 'Kyle'	network_1
SELECT COUNT(*) FROM Highschooler WHERE grade IN (9, 10)	network_1
SELECT COUNT(*) FROM Highschooler WHERE grade IN (9, 10)	network_1
SELECT COUNT(*) ,  grade FROM Highschooler GROUP BY grade	network_1
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade	network_1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1	network_1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(ID) >= 4	network_1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(ID) >= 4	network_1
SELECT T1.ID, count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID	network_1
SELECT T1.ID, T1.name, count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID, T1.name	network_1
SELECT T1.name, count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID, T1.name	network_1
SELECT T1.name, count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID, T1.name	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID  =  T2.student_id GROUP BY T1.ID HAVING count(*)  =  (SELECT max(count_friends) FROM (SELECT count(*) AS count_friends FROM Friend GROUP BY student_id) AS T3)	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID ORDER BY count(T2.friend_id) DESC LIMIT 1	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID  =  T2.student_id GROUP BY T1.ID HAVING count(*)  >=  3	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID HAVING count(*) >= 3	network_1
SELECT T1.name FROM Highschooler AS T1 WHERE T1.ID IN (SELECT T2.friend_id FROM Friend AS T2 WHERE T2.student_id = (SELECT T3.ID FROM Highschooler AS T3 WHERE T3.name = 'Kyle'))	network_1
SELECT T1.name FROM Highschooler AS T1 WHERE T1.ID IN (SELECT T2.friend_id FROM Friend AS T2 WHERE T2.student_id = (SELECT T3.ID FROM Highschooler AS T3 WHERE T3.name = 'Kyle'))	network_1
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID WHERE T2.name = 'Kyle'	network_1
SELECT count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID WHERE T2.name = 'Kyle'	network_1
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT T1.ID FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID  =  T2.student_id OR T1.ID  =  T2.friend_id)	network_1
SELECT DISTINCT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.liked_id	network_1
SELECT T1.student_id FROM Friend AS T1 JOIN Likes AS T2 ON T1.student_id = T2.liked_id GROUP BY T1.student_id	network_1
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) AND ID IN (SELECT liked_id FROM Likes)	network_1
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) AND ID IN (SELECT liked_id FROM Likes)	network_1
SELECT count(T1.liked_id), T1.student_id FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID GROUP BY T1.student_id	network_1
SELECT student_id, count(liked_id) FROM Likes GROUP BY student_id	network_1
SELECT T1.name, count(T2.liked_id) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID, T1.name	network_1
SELECT T1.name, count(T2.liked_id) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID, T1.name	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.ID HAVING count(T2.liked_id) = (SELECT max(count_likes) FROM (SELECT count(liked_id) as count_likes FROM Likes GROUP BY liked_id) as subquery)	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID  =  T2.liked_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2	network_1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2	network_1
SELECT T1.name FROM Highschooler AS T1 WHERE T1.grade > 5 AND T1.ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING count(*) >= 2)	network_1
SELECT T1.name FROM Highschooler AS T1 WHERE T1.grade > 5 AND T1.ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING count(*) >= 2)	network_1
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.ID WHERE T2.name = 'Kyle'	network_1
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID WHERE T2.name = 'Kyle'	network_1
SELECT avg(grade) FROM Highschooler WHERE ID IN (SELECT DISTINCT student_id FROM Friend)	network_1
SELECT avg(grade) FROM Highschooler WHERE ID IN (SELECT DISTINCT student_id FROM Friend)	network_1
SELECT min(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT min(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)	network_1
SELECT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.state  =  T2.state GROUP BY T1.state	dog_kennels
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals	dog_kennels
SELECT avg(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)	dog_kennels
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id	dog_kennels
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = 'Indiana' UNION (SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2)	dog_kennels
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = 'Indiana' UNION (SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id, T1.last_name, T1.cell_number HAVING count(*) > 2)	dog_kennels
SELECT name FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments GROUP BY dog_id HAVING sum(cost_of_treatment) > 1000)	dog_kennels
SELECT name FROM Dogs WHERE dog_id NOT IN (SELECT T1.dog_id FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING sum(T2.cost_of_treatment) > 1000)	dog_kennels
SELECT first_name FROM (SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners) AS T1 WHERE first_name NOT IN (SELECT name FROM Dogs)	dog_kennels
SELECT first_name FROM (SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners) AS T1 WHERE first_name NOT IN (SELECT name FROM Dogs)	dog_kennels
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)	dog_kennels
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)	dog_kennels
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN (SELECT owner_id, count(*) as dog_count FROM Dogs GROUP BY owner_id) AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.dog_count DESC LIMIT 1	dog_kennels
SELECT T2.owner_id, T2.first_name, T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id, T2.first_name, T2.last_name ORDER BY COUNT(*) DESC LIMIT 1	dog_kennels
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2	dog_kennels
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2	dog_kennels
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(T2.breed_code) DESC LIMIT 1	dog_kennels
SELECT T2.owner_id, T3.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Owners AS T3 ON T2.owner_id = T3.owner_id GROUP BY T2.owner_id, T3.last_name ORDER BY COUNT(*) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id, T1.last_name ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T2.treatment_type_description FROM Treatment_Types AS T2 JOIN (SELECT T1.treatment_type_code, SUM(T1.cost_of_treatment) as total_cost FROM Treatments AS T1 GROUP BY T1.treatment_type_code) AS T3 ON T2.treatment_type_code = T3.treatment_type_code ORDER BY T3.total_cost ASC LIMIT 1	dog_kennels
SELECT T2.treatment_type_description FROM Treatment_Types AS T2 WHERE T2.treatment_type_code = (SELECT T1.treatment_type_code FROM Treatments AS T1 GROUP BY T1.treatment_type_code ORDER BY sum(T1.cost_of_treatment) ASC LIMIT 1)	dog_kennels
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id, T1.zip_code ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id, T1.zip_code ORDER BY SUM(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T3.professional_id, T3.cell_number FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id GROUP BY T1.professional_id, T3.cell_number HAVING count(DISTINCT T1.treatment_type_code) >= 2	dog_kennels
SELECT T2.professional_id, T2.cell_number FROM Professionals AS T2 WHERE T2.professional_id IN (     SELECT T1.professional_id     FROM Treatments AS T1     GROUP BY T1.professional_id     HAVING COUNT(DISTINCT T1.treatment_type_code) >= 2 )	dog_kennels
SELECT T1.first_name, T1.last_name  FROM Professionals AS T1  JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id  WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)	dog_kennels
SELECT T1.first_name, T1.last_name  FROM Professionals AS T1  JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id  WHERE T2.cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)	dog_kennels
SELECT Treatments.date_of_treatment, Professionals.first_name FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id	dog_kennels
SELECT Treatments.date_of_treatment, Professionals.first_name FROM Treatments JOIN Professionals ON Treatments.professional_id = Professionals.professional_id	dog_kennels
SELECT Treatments.cost_of_treatment, Treatment_Types.treatment_type_description FROM Treatments JOIN Treatment_Types ON Treatments.treatment_type_code = Treatment_Types.treatment_type_code	dog_kennels
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code	dog_kennels
SELECT T1.first_name, T1.last_name, T3.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code	dog_kennels
SELECT T1.first_name, T1.last_name, T3.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code	dog_kennels
SELECT Owners.first_name, Dogs.name FROM Owners JOIN Dogs ON Dogs.owner_id = Owners.owner_id	dog_kennels
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id	dog_kennels
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (     SELECT breed_code     FROM Dogs     GROUP BY breed_code     ORDER BY COUNT(*) ASC     LIMIT 1 )	dog_kennels
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (     SELECT breed_code     FROM Dogs     GROUP BY breed_code     ORDER BY COUNT(*) ASC     LIMIT 1 )	dog_kennels
SELECT Dogs.name, Owners.first_name FROM Dogs JOIN Owners ON Dogs.owner_id = Owners.owner_id WHERE Owners.state = 'Virginia'	dog_kennels
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'	dog_kennels
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id	dog_kennels
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id	dog_kennels
SELECT T2.last_name FROM Owners AS T2 JOIN Dogs AS T1 ON T1.owner_id = T2.owner_id WHERE T1.date_of_birth = (SELECT max(date_of_birth) FROM Dogs)	dog_kennels
SELECT last_name FROM Owners WHERE owner_id IN (SELECT owner_id FROM Dogs ORDER BY date_of_birth DESC LIMIT 1)	dog_kennels
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'	dog_kennels
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'	dog_kennels
SELECT date_arrived, date_departed FROM Dogs	dog_kennels
SELECT date_arrived, date_departed FROM Dogs	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT T1.dog_id) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id	dog_kennels
SELECT count(DISTINCT T1.professional_id) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id	dog_kennels
SELECT count(DISTINCT T1.professional_id) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id	dog_kennels
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'	dog_kennels
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'	dog_kennels
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)	dog_kennels
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)	dog_kennels
SELECT cost_of_treatment FROM Treatments WHERE date_of_treatment = (SELECT max(date_of_treatment) FROM Treatments)	dog_kennels
SELECT cost_of_treatment FROM Treatments WHERE date_of_treatment = (SELECT max(date_of_treatment) FROM Treatments)	dog_kennels
SELECT COUNT(dog_id) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments)	dog_kennels
SELECT COUNT(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments)	dog_kennels
SELECT COUNT(owner_id) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)	dog_kennels
SELECT count(owner_id) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)	dog_kennels
SELECT COUNT(professional_id) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)	dog_kennels
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)	dog_kennels
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1	dog_kennels
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1	dog_kennels
SELECT AVG(age) FROM Dogs	dog_kennels
SELECT AVG(age) FROM Dogs	dog_kennels
SELECT MAX(age) FROM Dogs	dog_kennels
SELECT MAX(age) FROM Dogs	dog_kennels
SELECT charge_type, charge_amount FROM Charges	dog_kennels
SELECT charge_type, charge_amount FROM Charges	dog_kennels
SELECT MAX(charge_amount) FROM Charges	dog_kennels
SELECT MAX(charge_amount) FROM Charges	dog_kennels
SELECT email_address, cell_number, home_phone FROM Professionals	dog_kennels
SELECT email_address, cell_number, home_phone FROM Professionals	dog_kennels
SELECT breed_name, size_description FROM Breeds, Sizes	dog_kennels
SELECT DISTINCT T1.breed_name, T2.size_description FROM Dogs AS T3 JOIN Breeds AS T1 ON T3.breed_code = T1.breed_code JOIN Sizes AS T2 ON T3.size_code = T2.size_code	dog_kennels
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T3 ON T1.professional_id = T3.professional_id JOIN Treatment_Types AS T2 ON T3.treatment_type_code = T2.treatment_type_code	dog_kennels
SELECT P.first_name, TT.treatment_type_description FROM Professionals AS P JOIN Treatments AS T ON P.professional_id = T.professional_id JOIN Treatment_Types AS TT ON T.treatment_type_code = TT.treatment_type_code	dog_kennels
SELECT COUNT(*) FROM singer	singer
SELECT COUNT(*) FROM singer	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC	singer
SELECT Birth_Year, Citizenship FROM singer	singer
SELECT Birth_Year, Citizenship FROM singer	singer
SELECT Name FROM singer WHERE Citizenship != 'France'	singer
SELECT Name FROM singer WHERE Citizenship != 'French'	singer
SELECT Name FROM singer WHERE Birth_Year IN (1948, 1949)	singer
SELECT Name FROM singer WHERE Birth_Year IN (1948, 1949)	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1	singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1	singer
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT COUNT(*) ,  Citizenship FROM singer GROUP BY Citizenship	singer
SELECT Citizenship, COUNT(*) as count FROM singer GROUP BY Citizenship ORDER BY count DESC LIMIT 1	singer
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY count(*) DESC LIMIT 1	singer
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT MAX(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship	singer
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID	singer
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID	singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000	singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000	singer
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID, T1.Name HAVING count(*) > 1	singer
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING count(*) > 1	singer
SELECT T1.Name, sum(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID, T1.Name	singer
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID, T1.Name	singer
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)	singer
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)	singer
SELECT Citizenship FROM singer WHERE Citizenship IN (SELECT Citizenship FROM singer WHERE Birth_Year < 1945) AND Citizenship IN (SELECT Citizenship FROM singer WHERE Birth_Year > 1955)	singer
SELECT Citizenship FROM singer WHERE Citizenship IN (SELECT Citizenship FROM singer WHERE Birth_Year < 1945) AND Citizenship IN (SELECT Citizenship FROM singer WHERE Birth_Year > 1955)	singer
SELECT COUNT(*) FROM Other_Available_Features	real_estate_properties
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = 'AirCon'	real_estate_properties
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code	real_estate_properties
SELECT P.property_name FROM Properties AS P JOIN Ref_Property_Types AS RPT ON P.property_type_code = RPT.property_type_code WHERE (RPT.property_type_description = 'house' OR RPT.property_type_description = 'apartment') AND P.room_count > 1	real_estate_properties