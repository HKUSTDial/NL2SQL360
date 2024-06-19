SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT name, country, Age FROM singer ORDER BY Age
SELECT name, country, Age FROM singer ORDER BY Age
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT T1.Name, T1.song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T2.Singer_ID = T1.Singer_ID ORDER BY T2.Singer_ID LIMIT 1
SELECT T1.Name, T1.song_release_year FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Age LIMIT 1
SELECT DISTINCT country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE Age > 20
SELECT country, COUNT(*) FROM singer GROUP BY country
SELECT COUNT(*), country FROM singer GROUP BY country
SELECT T1.Name FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Age > (SELECT AVG(age) FROM singer)
SELECT T1.Name FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Age > (SELECT AVG(age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM station WHERE capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM Stadium
SELECT AVG(Capacity), MAX(Capacity) FROM Stadium
SELECT T1.name, T1.capacity FROM Stadium AS T1 JOIN Concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id ORDER BY AVG(T2.attendance) DESC LIMIT 1
SELECT T1.name, T1.capacity FROM Stadium AS T1 JOIN Concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id ORDER BY AVG(T2.attendance) DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE year = "2014" OR year = "2015"
SELECT COUNT(*) FROM concert WHERE year = "2014" OR year = "2015"
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T1.name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = "2014" OR T2.Year > "2014"
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013
SELECT year FROM concert GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM concert GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert)
SELECT T1.country FROM singer AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T2.age > 40 INTERSECT SELECT T1.country FROM singer AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T2.age < 30
SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Year = "2014"
SELECT name FROM stadium WHERE NOT stadium_id IN (SELECT stadium_id FROM concert WHERE year = "2014")
SELECT T1.Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID
SELECT T1.Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_id = T3.Stadium_ID GROUP BY T2.Name
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_id = T3.Stadium_ID GROUP BY T2.Name
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_id = T3.Stadium_ID WHERE T3.Year = "2014"
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = "2014"
SELECT T1.Name, T1.country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Name = "Hey"
SELECT T1.Name, T1.country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.title = "Hey"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Year = "2014" INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Year = "2015"
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Year = "2014" INTERSECT SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Year = "2015"
SELECT COUNT(*) FROM concert WHERE capacity = (SELECT MAX(capacity) FROM stadium)
SELECT COUNT(*) FROM concert WHERE capacity = (SELECT MAX(capacity) FROM stadium)
SELECT COUNT(*) FROM Pet WHERE weight > 10
SELECT COUNT(*) FROM Pet WHERE weight > 10
SELECT weight FROM Pet WHERE pet_age = (SELECT MIN(age) FROM Pet)
SELECT weight FROM Pet WHERE pet_age = (SELECT MIN(age) FROM Pet)
SELECT T1.weight, T1.pet_type FROM Has_Pet AS T1 JOIN Pet AS T2 ON T1.pet_id = T2.pet_id GROUP BY T2.pet_type ORDER BY MAX(T2.weight)
SELECT MAX(weight), Pettype FROM Pet GROUP BY Pettype
SELECT COUNT(*) FROM Student WHERE age > 20
SELECT COUNT(*) FROM Student WHERE age > 20 INTERSECT SELECT StuID FROM Has_Pet WHERE age > 20
SELECT COUNT(*) FROM Student WHERE Sex = "F" AND StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Dog" AND StuID IN (SELECT StuID FROM Student WHERE Sex = "F"
SELECT COUNT(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F" AND T2.pet_type = "Dog"
SELECT DISTINCT pet_type FROM Pet
SELECT COUNT(DISTINCT pet_type) FROM Pet
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog" UNION SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION Select StuID FROM Has_Pet WHERE PetID
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog" UNION SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat" UNION Select StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog"
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Dog" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT StuID FROM Pet WHERE Pettype = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT StuID FROM Pet WHERE Pettype = "Dog" INTERseCT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT StuID FROM Pet WHERE Pettype = "Cat" INTERseCT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT StuID FROM Pet WHERE Pettype = "Dog" INTERseCT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT StuID FROM Pet WHERE Pettype = "Cat" INTERseCT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT StuID FROM Pet WHERE Pettype = "Dog" interseCT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Dog" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Dog" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Cat" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Dog" INTERseCT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Cat" INTERseCT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Dog" InterseCT SELECT StuID FROM Has_Pet WHERE PetID IN (
SELECT major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE pet_type = "Cat")
SELECT major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat")
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat")
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet WHERE Pettype = "Cat")
SELECT Fname, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Dog") WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Cat")
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pet) WHERE Pettype = "Dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT StuID FROM Pet WHERE Pettype = "Cat"
SELECT T2.pet_type, T2.weight FROM Student AS T1 JOIN Has_Pet AS T3 ON T1.stuid = T3.stuid JOIN Pet AS T2 ON T3.pet_id = T2.pet_id ORDER BY T1.age LIMIT 1
SELECT pet_type, weight FROM Pet ORDER BY pet_age LIMIT 1
SELECT StuID, weight FROM Pet WHERE age > 1
SELECT StuID, weight FROM Pet WHERE pet_age > 1
SELECT AVG(age), MAX(age) FROM Pet
SELECT AVG(age), MAX(age) FROM Pet
SELECT AVG(weight) FROM Pet
SELECT AVG(weight) FROM Pet GROUP BY PetType
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT DISTINCT T1.Fname, T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T2.StuID = T1.StuID JOIN Pet AS T3 ON T3.PetID = T2.PetID WHERE T3.pet_type = "Cat"
SELECT StuID FROM Student WHERE Lname = "Smith"
SELECT StuID FROM Student WHERE Lname = "Smith"
SELECT StuID, COUNT(*) FROM Has_Pet GROUP BY StuID
SELECT StuID FROM Has_Pet GROUP BY StuID
SELECT T1.Fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T2.StuID = T1.StuID GROUP BY T2.StuID HAVING COUNT(*) > 1
SELECT Fname, Sex FROM Student GROUP BY StuID HAVING COUNT(*) > 1
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T3.PetID = T2.PetID WHERE T3.pet_age = "3"
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pet AS T3 ON T3.PetID = T2.PetID WHERE T3.pet_age = 3
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM Continents
SELECT COUNT(*) FROM Continents
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContId GROUP BY T2.ContId
SELECT T1.ContId, T1.Continent, COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContId GROUP BY T2.ContId
SELECT COUNT(*) FROM country
SELECT COUNT(*) FROM country
SELECT T1.Maker, T1.MakerId, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakerId GROUP BY T2.MakerId
SELECT T1.FullName, T1.id, COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.MakerId GROUP BY T2.MakerId
SELECT Model FROM car_names ORDER BY Horsepower LIMIT 1
SELECT Model FROM car_names ORDER BY Horsepower LIMIT 1
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM car_names)
SELECT Model FROM car_names WHERE Weight < (SELECT AVG(Weight) FROM car_names)
SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT T1.Make, T1.Year FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Year = (SELECT MIN(T2.Year) FROM model_list)
SELECT T1.Model, T2.Year FROM car_makers AS T1 JOIN cars AS T2 ON T1.id = T2.makeid WHERE T2.Year = (SELECT MIN(T2.Year) FROM car_makers AS T1 JOIN cars AS T2 ON T1.id = T2.makeid)
SELECT DISTINCT Model FROM model_list WHERE year > 1980
SELECT DISTINCT T1.Model FROM card AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN continents AS T2 ON T1.ContId = T2.ContId GROUP BY T2.Continent
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T2.ContId = T1.ContId GROUP BY T2.ContId
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.country FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.country WHERE T2.continent = (SELECT T2.continent FROM country AS T2 JOIN car_makers AS T1 ON T1.country = T2.country WHERE T1.continent = (SELECT T2.continent FROM country AS T2 JOIN car_makers AS T1 ON T1.country = T2.country WHERE T1.continent = (SELECT T2.continent FROM country AS T2 JOIN car_makers AS T1 ON T1.country = T2.country WHERE T1.continent = (SELECT T2.continent FROM country AS T2 JOIN car_makers AS T1 ON T1.country = T2.country WHERE T1.continent = (SELECT T2.continent FROM country AS T2 JOIN car_makers AS T1 ON T1.country = T2.country WHERE T1.continent = (SELECT T2.continent FROM country AS T2 JOIN car_makers AS T1 ON T1.country = T2.country WHERE T1.continent = (SELECT T2.continent FROM country AS T2 JOIN car_makers AS T1 ON T1.country = T2.country WHERE T1.continent = (SELECT
SELECT T1.Model, T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker_id GROUP BY T2.maker_id
SELECT T1.Model, T1.MakerId, T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakerId JOIN car_names AS T3 ON T2.MakerId = T3.MakeId JOIN car_makers AS T4 ON T1.MakerId = T4.Id WHERE T3.Model = T2.Model
SELECT Accelerate FROM car_name WHERE Model = "Macintosh" AND Make = "Sportabout"
SELECT Accelerate FROM car_name WHERE Model = "Mac Hornet Sportabout (sw)"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM car_makers WHERE country = "France"
SELECT COUNT(*) FROM model_list WHERE country = "USA"
SELECT COUNT(*) FROM model_list WHERE country = "USA"
SELECT AVG(Mpg) FROM car_data WHERE Cylinders = 4
SELECT AVG(MilesPerGal) FROM car_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM car_data WHERE Cylinders = 8 AND year = 1974
SELECT MIN(Weight) FROM car_data WHERE Cylinders = 8 AND year = 1974
SELECT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT T1.country, T1.countryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.country WHERE T1.country = "USA"
SELECT T1.country_name, T1.country_id FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id
SELECT COUNT(*) FROM car_data WHERE Horsepower > 150
SELECT COUNT(*) FROM car_data WHERE Horsepower > 150
SELECT AVG(Weight), year FROM car_data GROUP BY year
SELECT AVG(Weight), AVG(year) FROM car_data GROUP BY year
SELECT country FROM car_makers GROUP BY country HAVING COUNT(*) >= 3 WHERE continent = "Europe"
SELECT T1.country_name FROM countries AS T1 JOIN car_makers AS T2 ON T2.country_id = T1.country_id GROUP BY T2.country_id HAVING COUNT(*) >= 3
SELECT MAX(Horsespower), Make FROM car_names WHERE Cylinders = 3
SELECT T1.Horsespower, T2.Model FROM car_models AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 3
SELECT Model FROM model_list ORDER BY MAX(MilesPerGal) DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MAX(MPG) DESC LIMIT 1
SELECT AVG(Horsespower) FROM car_data WHERE year < 1980
SELECT AVG(Horsespower) FROM car_data WHERE year < 1980
SELECT AVG(Edispl) FROM car_names WHERE Model = "Volvo"
SELECT AVG(Edispl) FROM car_names WHERE Model = "Volvo"
SELECT MAX(accelerate), COUNT(*) FROM car_data GROUP BY COUNT(*)
SELECT MAX(accelerate) FROM car_data GROUP BY Cylinder
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY COUNT(DISTINCT T2.Model) DESC
SELECT COUNT(*) FROM car_data WHERE Cylinders > 4
SELECT COUNT(*) FROM car_data WHERE Cylinders > 4
SELECT COUNT(*) FROM car_data WHERE year = 1980
SELECT COUNT(*) FROM car_names WHERE year = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = "American Motors Company"
SELECT COUNT(*) FROM model_list WHERE Maker = "American Motors Company"
SELECT T1.FullName, T1.MakerId FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakerId GROUP BY T2.MakerId HAVING COUNT(*) > 3
SELECT T1.Name, T1.MakerId FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakerId GROUP BY T2.MakerId HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker_id WHERE T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors" OR T2.maker = "General Motors"
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker = "General Motors" OR T2.ModelWeight > 3500"
SELECT year FROM car_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT year FROM car_data WHERE weight < 4000 INTERSECT SELECT DISTINCT year FROM car_data WHERE weight > 3000
SELECT MAX(accelerate) FROM car_data
SELECT T1.Horsespower FROM car_data AS T1 JOIN car_name AS T2 ON T1.MakeId = T2.MakeId ORDER BY T2.Accelerate DESC LIMIT 1
SELECT COUNT(*) FROM car_data WHERE Model = "Volvo" ORDER BY Accelerate LIMIT 1
SELECT COUNT(*) FROM car_data WHERE Model = "Volvo" ORDER BY Accelerate LIMIT 1
SELECT COUNT(*) FROM car_data WHERE Accelerate > (SELECT MAX(accelerate) FROM car_data)
SELECT COUNT(*) FROM car_data WHERE Accelerate > (SELECT MAX(accelerate) FROM car_data)
SELECT COUNT(*) FROM car_makers GROUP BY country_id HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY country_id HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_data WHERE Cylinders > 6
SELECT COUNT(*) FROM car_data WHERE Cylinders > 6
SELECT Model FROM car_data WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN car_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Cylinders = 4 ORDER BY T2.Horsespower DESC LIMIT 1
SELECT T1.MakeId, T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Horsespower > (SELECT MIN(T2.Horsespower) FROM model_list AS T2)
SELECT MakeId, Model FROM car_names WHERE NOT Horsepower > 4
SELECT MAX(MilesPerGal) FROM car_data WHERE Cylinders = 8 OR year < 1980
SELECT MAX(Mpg) FROM car_data WHERE Cylinders = 8 OR year < 1980
SELECT Model FROM car_names WHERE Weight < 3500 AND Make <> 'Ford Motor Company'
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN car_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Weight < 3500 AND T1.Make <> "Ford Motor Company"
SELECT country_name FROM country WHERE NOT country_id IN (SELECT id FROM car_makers)
SELECT CountryName FROM country WHERE NOT CountryId IN (SELECT Id FROM car_makers)
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker_id GROUP BY T2.maker_id HAVING COUNT(*) > 3 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker_id GROUP BY T2.maker_id HAVING COUNT(*) >= 2
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE COUNT(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE COUNT(*) >= 2 INTERseCT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE COUNT(*) >= 2 interseCT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE COUNT(*) >= 2 intersect SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE COUNT(*) >= 2 intersect SELECT T1.id, T1.maker FROM car_makers AS T1
SELECT T1.country_id, T1.country_name FROM car_makers AS T1 JOIN car_names AS T2 ON T1.make_id = T2.make_id WHERE T2.model = "fiat" GROUP BY T1.country_id HAVING COUNT(*) > 3
SELECT T1.country_id, T1.country_name FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id WHERE COUNT(*) > 3 UNION SELECT T1.country_id, T1.country_name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.country_id = T2.country_id WHERE T2.model = "Fiat"
SELECT country FROM airline WHERE airline = "JetBlue Airways"
SELECT country FROM airline WHERE airline = "JetBlue"
SELECT T1.Abbreviation FROM Flight AS T1 JOIN Airline AS T2 ON T1.Airline = T2.uid WHERE T2.Name = "JetBlue Airways"
SELECT T1.Abbreviation FROM Flight AS T1 JOIN Airline AS T2 ON T1.Airline = T2.uid WHERE T2.Name = "JetBlue"
SELECT T1.name, T1.abbreviation FROM airline AS T1 JOIN country AS T2 ON T1.country = T2.name WHERE T2.country = "USA"
SELECT name, abbreviation FROM airline WHERE country = "USA"
SELECT airport_code, airport_name FROM airport WHERE city = "Anthony"
SELECT airport_code, airport_name FROM airport WHERE city = "Anthony"
SELECT COUNT(*) FROM airline
SELECT COUNT(*) FROM airline
SELECT COUNT(*) FROM airport
SELECT COUNT(*) FROM airport
SELECT COUNT(*) FROM Flight
SELECT COUNT(*) FROM Flight
SELECT T1.Airline FROM Flight AS T1 JOIN Airline AS T2 ON T1.Airline = T2.uid WHERE T2.Abbreviation = "UAL"
SELECT T1.Airline FROM Flight AS T1 JOIN Airline AS T2 ON T1.Airline = T2.uid WHERE T2.Abbreviation = "UAL"
SELECT COUNT(*) FROM airline WHERE country = "USA"
SELECT COUNT(*) FROM airline WHERE country = "USA"
SELECT city, country FROM airport WHERE airport_name = "Alton"
SELECT city, country FROM airport WHERE airport_name = "Alton"
SELECT AirportName FROM airport WHERE AirportCode = "AKo"
SELECT T1.City FROM airport AS T1 JOIN airport AS T2 ON T1.airport_code = T2.airport_code WHERE T2.airport_code = "AKo"
SELECT AirportName FROM airport WHERE city = "Aberdeen"
SELECT city FROM airport WHERE city = "Abingdon"
SELECT COUNT(*) FROM Flight WHERE sourceairport = "APg"
SELECT COUNT(*) FROM Flight WHERE sourceairport = "APg"
SELECT COUNT(*) FROM Flight WHERE destination = "ATO"
SELECT COUNT(*) FROM Flight WHERE destination = "Ato"
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "Abbots Airport" AND City = "Abbots"
SELECT COUNT(*) FROM Flight WHERE sourceairport = "Abbotsford"
SELECT COUNT(*) FROM Flight WHERE destination = "Abbotsford"
SELECT COUNT(*) FROM Flight WHERE destination = "Abbotsford"
SELECT COUNT(*) FROM Flight WHERE SourceCity = "Aberdeen" AND DestCity = "Ashley"
SELECT COUNT(*) FROM Flight WHERE SourceAirport = "Abbotsford" AND DestAirport = "Ashley"
SELECT COUNT(*) FROM Flight WHERE airline = "JetBlue Airways"
SELECT COUNT(*) FROM Flight WHERE airline = "JetBlue"
SELECT COUNT(*) FROM Flight WHERE destination = "ASY" AND airline = "United Airlines"
SELECT COUNT(*) FROM Flight WHERE destination = "ASy" AND airline = "United Airlines"
SELECT COUNT(*) FROM Flight WHERE sourceairport = "AHD" AND airline = "United Airlines"
SELECT COUNT(*) FROM Flight WHERE source_airport = "AHD" AND airline = "United"
SELECT COUNT(*) FROM Flight WHERE destination = "Aberdeen" AND airline = 1
SELECT COUNT(*) FROM Flight WHERE destination = "Abbotsford" AND airline = "United Airlines"
SELECT T1.City FROM Flight AS T2 JOIN Airport AS T1 ON T2.SourceAirport = T1.City GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestCity FROM airport
SELECT T1.City FROM Flight AS T2 JOIN Airport AS T1 ON T2.SourceAirport = T1.City GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM Flight
SELECT T1.AirportCode FROM Flight AS T2 JOIN Airport AS T1 ON T2.SourceAirport = T1.City JOIN Flight AS T3 ON T3.Airline = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM Flight AS T2 JOIN Airport AS T1 ON T2.SourceAirport = T1.City JOIN Flight AS T3 ON T3.Airline = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM Flight AS T2 JOIN Airport AS T1 ON T2.SourceAirport = T1.AirportName GROUP BY T2.SourceAirport ORDER BY COUNT(*) LIMIT 1
SELECT T1.AirportCode FROM Flight AS T2 JOIN Airport AS T1 ON T2.SourceAirport = T1.City JOIN Flight AS T3 ON T3.Airline = T2.Airline GROUP BY T2.Airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.name FROM Flight AS T2 JOIN Airline AS T1 ON T2.airline = T1.uid GROUP BY T1.uid ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM Flight AS T2 JOIN Airline AS T1 ON T2.Airline = T1.uid GROUP BY T1.uid ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.abbreviation, T1.country FROM Flight AS T2 JOIN Airline AS T1 ON T2.airline = T1.uid GROUP BY T2.airline ORDER BY COUNT(*) LIMIT 1
SELECT T1.abbreviation, T1.country FROM Flight AS T1 JOIN Flight AS T2 ON T1. FlightNo = T2. FlightNo GROUP BY T2. FlightNo ORDER BY COUNT(*) LIMIT 1
SELECT T1.name FROM Flight AS T2 JOIN Airport AS T3 ON T2.source_airport = T3.name WHERE T3.name = "AHD"
SELECT T1.name FROM Flight AS T2 JOIN Airport AS T3 ON T2.source_airport = T3.name WHERE T3.name = "AHD"
SELECT T1.name FROM Flight AS T1 JOIN Flight AS T2 ON T1.airline = T2.airline WHERE T2.destairport = "AHD"
SELECT T1.name FROM Flight AS T2 JOIN Airport AS T3 ON T2.destairport = T3.name WHERE T3.name = "AHD"
SELECT T1.name FROM Flight AS T1 JOIN Flight AS T2 ON T1.id = T2.id WHERE T2.source_airport = "Apg" INTERSECT SELECT T1.name FROM Flight AS T1 JOIN Flight AS T2 ON T1.id = T2.id WHERE T2.dest_airport = "Cvo"
SELECT T1.name FROM Flight AS T1 JOIN Flight AS T2 ON T1.id = T2.id JOIN Airport AS T3 ON T3.id = T2.source_airport_id WHERE T3.name = "APg" INTERSECT SELECT T1.name FROM Flight AS T1 JOIN Flight AS T2 ON T1.id = T2.id join Airport AS T3 ON T3.id = T2.source_airport_id WHERE T3.name = "Cvo"
SELECT T1.name FROM Flight AS T1 JOIN Flight AS T2 ON T1.id = T2.airline_id WHERE T2.source_airport = "CVO" AND T2.source_airport <> "Apg"
SELECT T1.name FROM Flight AS T1 JOIN Flight AS T2 ON T1.id = T2.id WHERE T2.sourceairport = "CVO" WHERE T2.sourceairport <> "Apg"
SELECT T1.name FROM Flight AS T2 JOIN Airline AS T1 ON T2.airline = T1.uid GROUP BY T2.airline HAVING COUNT(*) >= 10
SELECT T1.name FROM Flight AS T2 JOIN Airline AS T1 ON T2.airline = T1.uid GROUP BY T2.airline HAVING COUNT(*) >= 10
SELECT T1.name FROM Flight AS T2 JOIN Airline AS T1 ON T2.airline = T1.uid WHERE COUNT(*) < 200
SELECT T1.name FROM Flight AS T2 JOIN Airline AS T1 ON T2.airline = T1.uid WHERE COUNT(*) < 200
SELECT FlightNo FROM Flight WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flight WHERE Airline = "United Airlines"
SELECT FlightNo FROM Flight WHERE SourceAirport = "Apg"
SELECT FlightNo FROM Flight WHERE SourceAirport = "APg"
SELECT FlightNo FROM Flight WHERE destination = "Apg"
SELECT FlightNo FROM Flight WHERE destination = "APg"
SELECT FlightNo FROM Flight WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flight WHERE SourceAirport = "Abbots Airport"
SELECT FlightNo FROM Flight WHERE destination = "Aberdeen"
SELECT FlightNo FROM Flight WHERE destination = "Abbotsford"
SELECT COUNT(*) FROM Flight WHERE city = "Abilene" OR city = "Abingdon"
SELECT COUNT(*) FROM Flight WHERE destination = "Abilene" OR destination = "Abingdon"
SELECT T1.City FROM Flight AS T2 JOIN Airport AS T1 ON T2.SourceAirport = T1.City JOIN Flight AS T3 ON T3 FlightNo = T2 FlightNo WHERE T3.DestAirport = T1.city
SELECT airport FROM airport WHERE NOT airport_code IN (SELECT airport_code FROM Flight) UNION SELECT airport_code FROM Flight)
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY Age
SELECT name FROM Employee ORDER BY Age
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city, COUNT(*) FROM Employee GROUP BY city
SELECT city FROM Employee WHERE age > 30 GROUP BY city HAVING COUNT(*) > 1
SELECT city FROM Employee WHERE age > 30 GROUP BY city HAVING COUNT(*) > 1
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT LOCATION, COUNT(*) FROM shop GROUP BY LOCATION
SELECT Manager_name, District FROM shop ORDER BY Number_of_products DESC LIMIT 1
SELECT Manager_name, District FROM shop ORDER BY Number_of_products DESC LIMIT 1
SELECT MIN(number_of_product), MAX(number_of_product) FROM shop
SELECT MIN(number_of_products), MAX(number_of_products) FROM shop
SELECT name, LOCATION, district FROM shop ORDER BY number_of_products
SELECT name, LOCATION, district FROM shop ORDER BY number_product DESC
SELECT name FROM shop WHERE number_of_products > (SELECT AVG(number_of_products) FROM shop)
SELECT name FROM shop WHERE number_product > (SELECT AVG(number_product) FROM shop)
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Hiring AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.Is_full_time = 'Yes' ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.Name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID ORDER BY T2.Bonus DESC LIMIT 1
SELECT name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM Evaluation)
SELECT name FROM Employee WHERE NOT Employee_ID IN (SELECT Employee_ID FROM Evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM shop WHERE NOT shop_id IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE NOT shop_id IN (SELECT Employee_id FROM Employee)
SELECT T1.name, COUNT(*) FROM Employee AS T1 JOIN Hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.shop_id
SELECT T1.name, COUNT(*) FROM shop AS T1 JOIN Employee AS T2 ON T1.shop_id = T2.shop_id
SELECT SUM(Bonus) FROM Evaluation
SELECT SUM(bonus) FROM Evaluation
SELECT * FROM Hiring
SELECT * FROM Hiring
SELECT District FROM shop WHERE Number_of_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_of_products > 10000
SELECT District FROM shop WHERE Number_of_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_of_products > 10000
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(DISTINCT LOCATION) FROM shop
SELECT COUNT(*) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Document_id, document_name, document_description FROM documents
SELECT Document_id, document_name, document_description FROM documents
SELECT T1.Document_Name, T1.Template_ID FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.document_id WHERE T2.Paragraph_text = "w"
SELECT T1.Document_Name, T1.Template_ID FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_ID = T2.Document_id WHERE T2.Paragraph_text LIKE "%w%"
SELECT Document_id, Template_id, Description FROM Documents WHERE Document_name = "Robbin CV"
SELECT Document_id, Template_id, Description FROM Documents WHERE Document_name = "Robbin CV"
SELECT COUNT(DISTINCT T1.template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT COUNT(DISTINCT T1) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT COUNT(*) FROM Documents WHERE Template_type_code = "PPT"
SELECT COUNT(*) FROM Documents WHERE Template_type_code = "PPT" AND Template_type_code = "Document"
SELECT T1.template_id, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id
SELECT T1.template_id, COUNT(*) FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.template_id = T2.document_id GROUP BY T2.template_id
SELECT T1.id, T1.type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.id = T2.template_id GROUP BY T2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.id, T1.type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.id = T2.template_id GROUP BY T2.template_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.template_id FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id HAVING COUNT(*) > 1
SELECT T1.template_id FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT Template_ID FROM Templates WHERE NOT Template_ID IN (SELECT Template_ID FROM Documents)
SELECT COUNT(*) FROM Templates
SELECT COUNT(*) FROM Templates
SELECT T1.template_id, T1.version_number, T1.template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.template_id
SELECT T1.id, T1.version_number, T1.template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.id = T2.template_id
SELECT DISTINCT (Template_type_code) FROM templates
SELECT DISTINCT T2.Template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.Template_id = T2.template_id
SELECT T1.template_id FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PP" OR T2.template_type_code = "PPT"
SELECT T1.template_id FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.par_id WHERE T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll" OR T2.par_text = "Payroll"
SELECT COUNT(*) FROM Templates WHERE template_type_code = "CV"
SELECT COUNT(*) FROM Templates WHERE Template_type_code = "CV"
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT version_number, template_type_code FROM templates WHERE version_number > 5
SELECT T2.template_type_code, COUNT(*) FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code
SELECT T2.template_type_code, COUNT(*) FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.document_id GROUP BY T2.template_type_code
SELECT T2.Template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.Template_type_code = T2.Template_type_code GROUP BY T2.Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.Template_type_code = T2.Template_type_code GROUP BY T2.Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T2.template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code HAVING COUNT(*) < 3
SELECT T2.Template_type_code FROM Refs AS T1 JOIN Templates AS T2 ON T1.Template_id = T2.template_id GROUP BY T2.Template_type_code HAVING COUNT(*) < 3
SELECT MIN(version_number), MIN(template_type_code) FROM templates
SELECT version_number, template_type_code FROM templates ORDER BY version_number LIMIT 1
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.Template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_id = T2.template_id WHERE T2.document_name = "Data Base"
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_type_code = "BK"
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_type_code = "BK"
SELECT T2.template_type_code, COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code
SELECT T2.template_type_code, COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code
SELECT T2.Template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.Template_id = T2.Document_id GROUP BY T2.Template_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T2.Template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.Template_id = T2.Document_id WHERE T2.Document_type_code = "Document"
SELECT DISTINCT T2.Template_type_code FROM Refs AS T1 JOIN Templates AS T2 ON T1.Template_id = T2.template_id WHERE NOT T1.document_id IN (SELECT DISTINCT T1.document_id FROM Documents)
SELECT T2.template_type_code, T2.template_type_description FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.template_id
SELECT T2.template_type_code, T2.template_type_description FROM Refs AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "Template"
SELECT T2.template_type_description FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "AD"
SELECT T2.template_type_description FROM Refs AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "AD"
SELECT T2.Template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.Template_id = T2.Document_id WHERE T2.Paragraph_text = "Book"
SELECT T2.Template_type_code FROM Templates AS T1 JOIN Refs AS T2 ON T1.Template_id = T2.Document_id WHERE T2.Paragraph_text = "Book"
SELECT DISTINCT (Template_type_description) FROM Templates
SELECT DISTINCT (Document_description) FROM documents WHERE template_id IN (SELECT template_id FROM templates)
SELECT T1.template_id FROM Templates AS T1 JOIN Refs AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_description = "Presentation"
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Presentation"
SELECT COUNT(*) FROM Paragraph
SELECT COUNT(*) FROM Paragraph
SELECT COUNT(*) FROM Paragraph WHERE Document_Name = "Summer Show"
SELECT COUNT(*) FROM Paragraph WHERE Document_Name = "Summer Shows"
SELECT T1.Text FROM Paragraph AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.document_id WHERE T2.Text = "Korea"
SELECT Paragraph_text FROM Paragraph WHERE Paragraph_text LIKE '%Korea%'
SELECT T1.Paragraph_id, T1.Paragraph_text FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Paragraph_id = T2.Paragraph_id WHERE T1.Document_name = "Welcome to New York"
SELECT T1.id, T1.text FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.id = T2.document_id WHERE T1.document_name = "Welcome to New York"
SELECT T1.Paragraph_text FROM customers AS T1 JOIN documents AS T2 ON T1.document_id = T2.template_id WHERE T2.document_name = "Customer reviews"
SELECT T1.Paragraph_text FROM customers AS T1 JOIN documents AS T2 ON T1.document_id = T2.template_id WHERE T2.document_name = "Customer reviews"
SELECT T1.Document_ID, COUNT(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID ORDER BY T2.Document_id
SELECT T1.Document_ID, COUNT(*) FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID ORDER BY T2.Document_ID
SELECT T1.Document_ID, T1.Document_Name, COUNT(*) FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID
SELECT T1.Document_id, T1.Document_name, COUNT(*) FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.Document_id GROUP BY T2.Document_id
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_id HAVING COUNT(*) >= 2
SELECT T1.Document_id FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.Document_id GROUP BY T2.document_id HAVING COUNT(*) >= 2
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.Document_id GROUP BY T2.Document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.id, T1.name FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.id = T2.document_id GROUP BY T2.document_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_id = T2.Document_id GROUP BY T2.Document_id ORDER BY COUNT(*) LIMIT 1
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_ID = T2.Document_ID ORDER BY COUNT(*) LIMIT 1
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.Document_id WHERE T2.Paragraph_text = "1" INTERSECT SELECT T1.Document_id FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.document_id = T2.document_id WHERE T2.Paragraph_text = "2"
SELECT T1.Document_id FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.Document_id WHERE T2.Paragraph_id BETWEEN 1 AND 2
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_ID = T2.Document_id WHERE T2.Paragraph_text = "Brazil" OR T2.Paragraph_text = "Ireland"
SELECT T1.Document_id FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.Document_id WHERE T2.Paragraph_text = "Brazil" INTERSECT SELECT T1.Document_id FROM Documents AS T1 JOIN Paragraph AS T2 ON T1.Document_id = T2.document_id WHERE T2.Paragraph_text = "Ireland"
SELECT COUNT(*) FROM teacher
SELECT COUNT(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age
SELECT Age, Homeland FROM teacher
SELECT Age, Homeland FROM teacher
SELECT Name FROM teacher WHERE HomeTown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE HomeTown <> "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Homeland FROM teacher ORDER BY Age LIMIT 1
SELECT Age FROM teacher ORDER BY Age LIMIT 1
SELECT DISTINCT (Homeland), COUNT(*) FROM teacher GROUP BY Homeland
SELECT hometown, COUNT(*) FROM teacher GROUP BY hometown
SELECT DISTINCT (Homeland) FROM Teacher GROUP BY Homeland ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT (Homeland) FROM Teacher GROUP BY (Homeland) ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT (Homeland) FROM Teacher GROUP BY (Homeland) HAVING COUNT(*) >= 2
SELECT DISTINCT (Homeland) FROM Teacher GROUP BY Homeland HAVING COUNT(*) >= 2
SELECT T1.Name, T1.Name FROM Teacher AS T1 JOIN course_arrange AS T2 ON T2.T1_id = T2.T2.T1_id
SELECT T1.Name, T1.course FROM Teacher AS T1 JOIN course_arrange AS T2 ON T2.teacher_id = T1.teacher_id WHERE T2.course_id = T2.course_id
SELECT T1.Name FROM Teacher AS T1 JOIN course_arrange AS T2 ON T1.Name = T2.Name ORDER BY T1.Name
SELECT T1.Name, T1.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T2.course_id = T1.course_id JOIN course AS T3 ON T2.course_id = T3.course_id ORDER BY T1.Name
SELECT T1.Name FROM Course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id WHERE T2.course_id = (SELECT T1.course_id FROM Course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id WHERE T2.course_id = (SELECT T1.course_id FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id WHERE T2.course_id = (SELECT T1.course_id FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id WHERE T2.course_id = (SELECT T1.course_id FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id WHERE T2.course_id = (SELECT T1.course_id FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id WHERE T2.course_id = (SELECT T1.course_id FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id WHERE T2.course_id = (SELECT T1.course_id FROM course AS T1 JOIN course_arrange AS T2 ON T
SELECT Name FROM Teacher WHERE Course_ID IN (SELECT Course_ID FROM course_arrange WHERE Course = "Math"
SELECT T1.Name, COUNT(*) FROM Teacher AS T1 JOIN course_arrange AS T2 ON T1 Teacher_ID = T2Teacher_ID GROUP BY T2Teacher_ID
SELECT T1.Name, COUNT(*) FROM Teacher AS T1 JOIN course_arrange AS T2 ON T1 Teacher_ID = T2Teacher_ID GROUP BY T2Teacher_ID
SELECT T1.Name FROM Teacher AS T1 JOIN course_arrange AS T2 ON T1.Name = T2.Name GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T1.Name FROM Teacher AS T1 JOIN course_arrange AS T2 ON T1.Name = T2.Name GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT T1.Name FROM Teacher AS T1 JOIN course_arrange AS T2 ON T1.Name = T2.Name WHERE NOT T2.Name IN (SELECT T1.Name FROM Teacher AS T1 JOIN course_arrange AS T2 ON T1.Name = T2.Name)
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT Name FROM Visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership FROM Visitor WHERE Level_of_membership > 4
SELECT AVG(age) FROM visitor WHERE level_of_membership <> 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY Age FROM visitor WHERE level_of_membership > 4
SELECT T1.museum_ID, T1.Name FROM museum AS T1 JOIN visitor AS T2 ON T1.museum_id = T2.id GROUP BY T2.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(num_of_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year, num_of_Staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_employees > (SELECT MIN(num_of_employees) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING COUNT(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY SUM(T2.total_spent) DESC LIMIT 1
SELECT T1.museum_id, T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T2.museum_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE NOT museum_id IN (SELECT museum_id FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(num_of_tickets), MAX(num_of_tickets) FROM visit
SELECT Total_spent FROM visit WHERE Level_of_membership = 1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.museum_id = (SELECT Museum_id FROM museum WHERE open_year < 2009) INTERSECT SELECT museum_id FROM museum WHERE open_year > 2011)
SELECT COUNT(*) FROM visitor WHERE NOT ID IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT COUNT(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT COUNT(*) FROM player
SELECT COUNT(*) FROM player
SELECT COUNT(*) FROM match
SELECT COUNT(*) FROM match
SELECT T1.first_name, T1.birth_date FROM player AS T1 JOIN country AS T2 ON T1.country_code = T2.country_code WHERE T2.country_code = "USA"
SELECT T1.first_name, T1.birth_date FROM player AS T1 JOIN country AS T2 ON T1.country_code = T2.country_code WHERE T2.country = "USA"
SELECT AVG(loser_age), AVG(winner_age) FROM match
SELECT AVG(loser_age), AVG(winner_age) FROM match
SELECT AVG(winner_rank) FROM match
SELECT AVG(winner_rank) FROM match
SELECT T1.losers_id FROM match AS T1 JOIN player AS T2 ON T1.losser_id = T2.player_id WHERE T2.country_code = "USA" ORDER BY T2.country_code = "USA"
SELECT T1.bested_of FROM match AS T1 JOIN player AS T2 ON T1.winner_id = T2.player_id WHERE T2.country_code = "USA" ORDER BY T1.bested_of DESC
SELECT DISTINCT country_code FROM player
SELECT COUNT(DISTINCT country_code) FROM player
SELECT DISTINCT (loser_name) FROM match
SELECT COUNT(DISTINCT (loser_name) FROM match
SELECT T1.tour FROM match AS T2 JOIN tour AS T1 ON T2.tour_id = T1.tour_id GROUP BY T1.tour_id HAVING COUNT(*) > 10
SELECT T1.tourney_name FROM match AS T2 JOIN tournament AS T1 ON T2.tourney_id = T1.tour_id GROUP BY T1.tour_id HAVING COUNT(*) > 10
SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT COUNT(*) FROM match WHERE year = 2013 OR year = 2016"
SELECT COUNT(*) FROM match WHERE year = 2013 OR year = 2016"
SELECT T1.country_code, T1.first_name FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id WHERE T2.tour = "WTA Championship" INTERSECT SELECT T1.country_code, T1.first_name FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id WHERE T2.tour = "Australian Open"
SELECT T1.first_name, T1.country_code FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id JOIN match AS T3 ON T2.winner_id = T3.winner_id WHERE T3.tour = "WTA Championship" INTERSE SELECT T1.first_name, T1.country_code FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id join match AS T3 ON T2.winner_id = T3.winner_id WHERE T3.tour = "Australian Open"
SELECT T1.first_name, T1.country_code FROM player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id ORDER BY T2.birth_date LIMIT 1
SELECT first_name, country_code FROM player ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM player ORDER BY birth_date
SELECT first_name, last_name FROM player ORDER BY birth_date
SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN player AS T2 ON T2.player_id = T1.player_id JOIN hand AS T3 ON T3.player_id = T1.player_id WHERE T3.hand = "Left" ORDER BY T2.birth_date
SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN left_hand AS T2 ON T2.player_id = T1.player_id ORDER BY T1.birth_date
SELECT T1.first_name, T1.country_code FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id WHERE T2.tour = (SELECT COUNT(*) FROM ranking)
SELECT T1.first_name, T1.country_code FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id WHERE T2.tour = (SELECT T2.tour FROM ranking AS T2 JOIN player AS T1 ON T1.player_id = T2.player_id WHERE T2.tour = (SELECT T2.tour FROM ranking AS T2 JOIN player AS T1 ON T1.player_id = T2.player_id WHERE T2.tour = (SELECT T2.tour FROM ranking AS T2 JOIN player AS T1 ON T1.player_id = T2.player_id WHERE T2.tour = (SELECT T2.tour FROM ranking AS T2 JOIN player AS T1 ON T1.player_id = T2.player_id WHERE T2.tour = (SELECT T2.tour FROM ranking AS T2 JOIN player AS T1 ON T1.player_id = T2.player_id WHERE T2.tour = (SELECT T2.tour FROM ranking AS T2 JOIN player AS T1 ON T1.player_id = T2.player_id WHERE T2.tour = (SELECT T2.tour FROM ranking AS T2 JOIN player AS T1 ON T1.player_id = T2.player_id WHERE T
SELECT year FROM match GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM match
SELECT T1.first_name, T1.last_name, T2.winner_id, T2.winner_rank_point FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, COUNT(*) FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id WHERE T2.rank_point = (SELECT MAX(T2.rank_point) FROM ranking)
SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id WHERE T2.tour = "Australian Open" ORDER BY T2.rank_point DESC LIMIT 1
SELECT T1.loser_entry, T1.winner_entry FROM match AS T1 JOIN player AS T2 ON T1.loser_id = T2.player_id JOIN player AS T3 ON T1.winner_id = T3.player_id ORDER BY T1.minute DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id JOIN player AS T3 ON T3.player_id = T2.loser_id ORDER BY T2.duration DESC LIMIT 1
SELECT AVG(ranking), T1.first_name FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.first_name, AVG(T1.rank) FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id
SELECT T1.first_name, T1.last_name, T1.country_code, T1.total_ranking_point FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.first_name, T1.total_rank_point FROM player AS T1 JOIN ranking AS T2 ON T1.player_id = T2.player_id
SELECT COUNT(*), country_code FROM player GROUP BY country_code
SELECT country_code, COUNT(*) FROM player GROUP BY country_code
SELECT country_code FROM player GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM player GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM player GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM player GROUP BY country_code HAVING COUNT(*) > 50
SELECT T1.tour FROM ranking AS T1 JOIN ranking_date AS T2 ON T1.player_id = T2.player_id GROUP BY T2.rank_date
SELECT T1.tour, COUNT(*) FROM ranking AS T1 JOIN tour AS T2 ON T1.tour = T2.tour GROUP BY T1.tour ORDER BY COUNT(*)
SELECT year, COUNT(*) FROM match GROUP BY year
SELECT year, COUNT(*) FROM match GROUP BY year
SELECT T1.first_name, T1.last_name, T1.rank FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_id LIMIT 3
SELECT T1.first_name, T1.last_name, T1.rank FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_id LIMIT 3
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE T1.tour = "WTA Championship" AND T1.losser_hand = "Left Hand"
SELECT COUNT(*) FROM player WHERE hand = "Left" AND T1.country_code = "USA" AND T1.tour = "WTA"
SELECT T1.first_name, T1.country_code, T1.birth_date FROM player AS T1 JOIN match AS T2 ON T2.winner_id = T1.player_id ORDER BY T2.winner_rank_point DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM player AS T1 JOIN match AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT hand, COUNT(*) FROM player GROUP BY hand
SELECT hand, COUNT(*) FROM player GROUP BY hand
SELECT COUNT(*) FROM ship WHERE name = "Captured"
SELECT name, tonnage FROM ship ORDER BY name
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death GROUP BY time
SELECT AVG(injured) FROM death GROUP BY time
SELECT T1.note, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = "t"
SELECT name, RESULT FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id, T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.ship_type = "Brig"
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T2.caused_by_ship_id = T1.id GROUP BY T2.caused_by_ship_id HAVING COUNT(*) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T2.caused_by_ship_id = T1.id GROUP BY T2.caused_by_ship_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT COUNT(DISTINCT RESULT) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT lost_in_battle AND tonnage = '225'
SELECT T1.name, T1.date FROM Battle AS T1 JOIN Ship AS T2 ON T1.id = T2.id WHERE T2.name = "Lattices" INTERSECT SELECT T1.name FROM Battle AS T1 JOIN Ship AS T2 ON T1.id = T2.id WHERE T2.name = "HMS Atalanta"
SELECT name, result, bulgarian_commander FROM battle WHERE NOT id IN (SELECT id FROM ship WHERE LOCATION = "English Channel")
SELECT Note FROM death WHERE Note LIKE '%East%'
SELECT line_1, line_2 FROM address
SELECT line_1, line_2 FROM address
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses AS T1 JOIN student_course_id AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "Math"
SELECT zip_post_code FROM address WHERE city = "Port Chelsea"
SELECT zip_code FROM address WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM Degree
SELECT T1.department_name, T1.department_id FROM Degree_program AS T1 JOIN Department AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Degree
SELECT COUNT(DISTINCT department_name) FROM Degree
SELECT COUNT(DISTINCT degree_name) FROM Degree_program
SELECT COUNT(DISTINCT degree) FROM Degree_program
SELECT COUNT(*) FROM Degree_program_id = (SELECT department_id FROM Degree_program_id = (SELECT department_id FROM Degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM degree_program_id = (SELECT department_id FROM
SELECT COUNT(*) FROM Degree AS T1 JOIN Degree_program_id AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = "Engineering"
SELECT section_name, section_description FROM Section
SELECT section_name, section_description FROM Section
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING COUNT(*) > 2
SELECT T1.course_name, T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id WHERE T2.section_id < 2
SELECT section_name FROM Section ORDER BY section_name
SELECT section_name FROM Section ORDER BY section_name
SELECT T1.sem_name, T1.sem_id FROM semesters AS T1 JOIN student_enrolments AS T2 ON T2.student_enrolment_id = T1.student_course_id WHERE T2.student_id IN (SELECT student_id FROM students)
SELECT T1.sem_name, T1.sem_id FROM Semesters AS T1 JOIN Student_Enrolments AS T2 ON T2.student_enrolment_id = T1.student_course_id GROUP BY T1.student_course_id ORDER BY COUNT(*) DESC
SELECT department_description FROM Department WHERE department_name LIKE "%computer%"
SELECT department_description FROM Department WHERE department_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Student AS T1 JOIN Degree_program AS T2 ON T1.student_id = T2.student_id WHERE T2.sem_id = (SELECT T3.sem_id FROM Student AS T1 JOIN degree_program AS T2 ON T1.student_id = T2.student_id JOIN Semester AS T3 ON T2.student_id = T3.student_id) WHERE T3.sem_id = (SELECT T3.sem_id FROM Student AS T1 JOIN degree_program AS T2 ON T1.student_id = T2.student_id JOIN semester AS T3 ON T2.student_id = T3.student_id) WHERE T3.sem_id = (SELECT T3.sem_id FROM Student AS T1 JOIN degree_program AS T2 ON T1.student_id = T2.student_id JOIN semester AS T3 ON T2.student_id = T3.student_id) WHERE T3.sem_id = (SELECT T3.sem_id FROM Student AS T1 JOIN degree_program AS T2 ON T1.student_id = T2.student_id JOIN semester AS T3 ON T2.student_id = T3.student_id) WHERE T3.sem_id = (SELECT T3.sem_id FROM Student AS T1 JOIN degree
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Student AS T1 JOIN Degree_program_id AS T2 ON T2.department_id = T1.student_id JOIN Degree_program_id AS T3 ON T3.department_id = T1.student_id WHERE T3.course_id = T2.course_id JOIN courses AS T4 ON T4.course_id = T2.course_id WHERE T4.course_name = "2" JOIN semesters AS T5 ON T5.course_id = T2.course_id WHERE T5.sem_id = T3.course_id
SELECT first_name, middle_name, last_name FROM Degree_program_id = (SELECT degree_program_id FROM Degree_program) WHERE degree_name = "Bachelor"
SELECT first_name, middle_name, last_name FROM Degree_Programs WHERE degree_program_id = (SELECT degree_program_id FROM Degree_program) WHERE degree_name = "Bachelors"
SELECT T1.degree_program_name FROM Degree_program AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM Degree_program
SELECT program_id, degree_summary_name FROM Degree_program
SELECT degree_program_id, degree_summary_name FROM Degree_program
SELECT T1.student_id, T1.first_name, T1.middle_name, T1.last_name, COUNT(*) FROM Student AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T2.student_course_id = T3.transcript_id WHERE T3.course_id = (SELECT T4.course_id FROM Course AS T4 JOIN Student_Enrolment_course AS T2 ON T2.student_course_id = T4.course_id JOIN Transcripts AS T3 ON T2.student_course_id = T3.transcript_id WHERE T3.course_id = (SELECT T4.course_id FROM course AS T4 JOIN Student_Enrolment_course AS T2 ON T2.student_course_id = T4.course_id join Transcripts AS T3 ON T2.student_course_id = T3.transcript_id WHERE T3.course_id = (SELECT T4.course_id FROM course AS T4 join Student_Enrolment_course AS T2 ON T2.student_course_id = T4.course_id join Transcripts AS T3 on T2.student_course_id = T3.transcript_id WHERE T3.course_id = (SELECT T4.course_id FROM course AS T4 join Student_Enrolment
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id, COUNT(*) FROM Student AS T1 JOIN Student_Enrollment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT student_id IN (SELECT student_id FROM Student)
SELECT semester_name FROM semesters WHERE NOT student_id IN (SELECT student_id FROM students)
SELECT T1.course_name FROM courses AS T1 JOIN student_course_id AS T2 ON T1.course_id = T2.course_id JOIN students AS T3 ON T2.student_course_id = T3.address_id
SELECT T1.course_name FROM courses AS T1 JOIN student_course_id AS T2 ON T1.course_id = T2.course_id JOIN students AS T3 ON T2.student_course_id = T3.student_id
SELECT T1.course_name FROM courses AS T1 JOIN student_course_id AS T2.student_course_id ON T1.course_id = T2.course_id JOIN student_enrolments AS T3 ON T2.student_course_id = T3.student_course_id GROUP BY T3.student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_course_id AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.last_name FROM Student AS T1 JOIN Address AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Student AS T1 JOIN Degree_program AS T2 ON T1.student_id = T2.student_id WHERE T2.state = "North Carolina"
SELECT T1.last_name FROM Student AS T1 JOIN Address AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state = "NC" EXCEPT SELECT T1.last_name FROM Student AS T1 JOIN Degree_program AS T2 ON T1.student_id = T2.student_id WHERE T2.state = "nc"
SELECT T1.transcript_date, T1.transcript_id FROM courses AS T1 JOIN transcript_contents AS T2 ON T1.course_id = T2.student_course_id GROUP BY T2.student_course_id HAVING COUNT(*) >= 2
SELECT T1.transcript_date, T1.transcript_id FROM courses AS T1 JOIN transcript_contents AS T2 ON T1.course_id = T2.student_course_id GROUP BY T2.student_course_id HAVING COUNT(*) >= 2
SELECT email_address FROM Student WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT cell_phone_number FROM Student WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM Student WHERE date_first_registered = (SELECT date_first_registered FROM Student) ORDER BY date_first_registered LIMIT 1)
SELECT first_name, middle_name, last_name FROM Student WHERE date_first_registered = (SELECT date_first_registered FROM Student) ORDER BY date_first_registered LIMIT 1)
SELECT first_name, middle_name, last_name FROM Student
SELECT first_name, middle_name, last_name FROM Student WHERE date_first_attended = (SELECT date_first_attended FROM Student) ORDER BY date_first_attended LIMIT 1)
SELECT DISTINCT T1.first_name FROM Student AS T1 JOIN Address AS T2 ON T1.current_address_id = T2.address_id WHERE T1.first_name <> T2.first_name AND T1.first_name <> T2.first_name
SELECT first_name FROM Student WHERE permanent_address_id <> current_address_id
SELECT current_address_id, line_1, line_2, line_3 FROM address
SELECT address_id, line_1, line_2 FROM address
SELECT AVG(transcript_date) FROM Transcripts
SELECT AVG(transcript_date) FROM Transcripts
SELECT T1.transcript_date, T1.other_details FROM Transcripts AS T1 JOIN Transcripts_contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN Transcripts AS T3 ON T2.transcript_id = T3.transcript_id WHERE T3.transcript_id = (SELECT T3.transcript_id FROM Transcripts AS T1 JOIN Transcripts_contents AS T2 ON T1.student_course_id = T2.student_course_id join Transcripts AS T3 ON T2.transcript_id = T3.transcript_id WHERE T3.transcript_id = (SELECT T3.transcript_id FROM transcripts AS T1 JOIN transcripts_contents AS T2 ON T1.student_course_id = T2.student_course_id join transcripts AS T3 ON T2.transcript_id = T3.transcript_id WHERE T3.transcript_id = (SELECT T3.transcript_id FROM transcripts AS T1 JOIN transcripts_contents AS T2 ON T1.student_course_id = T2.student_course_id join transcripts AS T3 on T2.transcript_id = T3.transcript_id WHERE T3.transcript_id = (SELECT T3.transcript_id FROM transcripts AS T1 JOIN transcripts_contents AS T2 on T1.student
SELECT T1.transcript_date, T1.other_details FROM Transcripts AS T1 JOIN Transcripts_contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN Transcripts AS T3 ON T2.transcript_id = T3.transcript_id WHERE T3.transcript_date = (SELECT MIN(T2.transcript_date) FROM Transcripts AS T1 JOIN Transcripts_contents AS T2 ON T1.student_course_id = T2.student_course_id) JOIN Transcripts AS T3 ON T2.transcript_id = T3.transcript_id) WHERE T3.transcript_date = (SELECT MIN(T2.transcript_date) FROM Transcripts AS T1 JOIN Transcripts_contents AS T2 ON T1.student_course_id = T2.student_course_id) join Transcripts AS T3 ON T2.transcript_id = T3.transcript_id) WHERE T3.transcript_date = (SELECT MIN(t2.transcript_date) FROM transcripts AS T1 JOIN transcripts_contents AS T2 ON T1.student_course_id = T2.student_course_id join transcripts AS T3 ON T2.transcript_id = T3.transcript_id) WHERE T3.transcript_date = (SELECT MIN(t2.transcript_date) FROM transcripts AS
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT T1.course_id FROM courses AS T1 JOIN student_course_id AS T2.course_id FROM courses AS T1 JOIN student_course_id AS T2.course_id FROM courses AS T1 JOIN student_course_id AS T2.course_id FROM courses AS T1 JOIN student_course_id AS T2.course_id FROM courses AS T1 JOIN student_course_id AS T2.course_id FROM courses AS T1 JOIN student_course_id AS T2.course_id FROM courses AS T1 JOIN student_course_id AS T2.course_id FROM courses AS T1 JOIN student_course_id AS T2.course_id FROM courses AS T1 JOIN student_course_id As T2.course_id FROM courses AS T1 JOIN student_course_id As T2.course_id FROM courses AS T1 JOIN student_course_id As T2.course_id FROM course AS T1 JOIN student_course_id As T2.course_id FROM course AS T1 JOIN student_course_id As T2.course_id FROM course AS T1 JOIN student_course_id As T2.course_id FROM course AS T1 JOIN student_course_id As T2.course_id FROM course AS T1 JOIN student_course_id As T2.course_id FROM course AS T1 JOIN student_course_id As T2.course_id FROM course AS T1 JOIN student_course_id As T2.course
SELECT T1.course_id, T1.enrollment_id FROM courses AS T1 JOIN transcript_contents AS T2 ON T1.course_id = T2.student_course_id WHERE T2.course_name = "Introduction to Computer Science"
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcripts_Contents AS T2 ON T1.transcript_id = T2.student_course_id GROUP BY T2.student_course_id ORDER BY COUNT(*) LIMIT 1
SELECT T1.transcript_date, T1.transcript_id FROM Transcripts AS T1 JOIN Transcripts_Contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T2.student_course_id ORDER BY COUNT(*) LIMIT 1
SELECT T1.sem_name FROM Student AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_program_id AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Student AS T4 ON T2.student_id = T4.student_id JOIN Degree_program_id AS T5 ON T3.degree_program_id = T5.degree_program_id WHERE T4.first_name = "Master" AND T4.last_name = "Master" INTERSECT SELECT T1.sem_name FROM Student AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program_id AS T3 ON T2.degree_program_id = T3.degree_program_id join Student AS T4 ON T2.student_id = T4.student_id join degree_program_id As T5 ON T3.degree_program_id = T5.degree_program_id WHERE T4.first_name = "Bachelor" AND T4.last_name = "Bachelor"
SELECT T1.sem_id FROM Student AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_program_id AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_name = "Master of Science" INTERSECT SELECT T1.sem_id FROM Student AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program_id AS T3 on T2.degree_program_id = T3.degree_program_id WHERE T3.degree_name = "Bachelor of science"
SELECT COUNT(DISTINCT current_address) FROM Student
SELECT DISTINCT T1.address_id FROM Student AS T1 JOIN Address AS T2 ON T1.current_address_id = T2.address_id
SELECT other_student_details FROM Student
SELECT other_student_details FROM Student
SELECT section_description FROM Section WHERE section_name = "h"
SELECT section_description FROM Section WHERE section_name = "h"
SELECT first_name FROM Student WHERE country = "Hait" OR cell_phone_number = "09700166582"
SELECT first_name FROM Student WHERE permanent_address_id = (SELECT address_id FROM Address WHERE country = "Hait" UNION SELECT first_name FROM Student WHERE cell_phone_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT COUNT(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT T1.Title, T1.Directed_by FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id ORDER BY T2.Air_Date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC
SELECT country, COUNT(*) FROM TV_channel GROUP BY country ORDER BY COUNT(*) DESC
SELECT DISTINCT T1.Series_name, T1.Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id
SELECT DISTINCT T1.Series_name, T1.Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_series WHERE series_name = "Sky Radio"
SELECT Package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_channel WHERE Language = "English"
SELECT language, COUNT(*) FROM TV_channel GROUP BY language ORDER BY COUNT(*) LIMIT 1
SELECT language, COUNT(*) FROM TV_channel GROUP BY language ORDER BY COUNT(*) LIMIT 1
SELECT language, COUNT(*) FROM TV_channel GROUP BY language
SELECT language, COUNT(*) FROM TV_channel GROUP BY language
SELECT T1.series_name FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T1.Series_name FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = (SELECT T1.Channel FROM TV_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.id WHERE T2.series_name = "Sky Radio")
SELECT Title FROM Cartoon WHERE T1.Title = T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Episode, T1.Rating FROM TV_series AS T1 JOIN TV_show AS T2 ON T1.id = T2.id ORDER BY T2.Rating DESC LIMIT 3
SELECT T1.Episode, T1.Rating FROM TV_series AS T1 JOIN TV_episode AS T2 ON T1.id = T2.id JOIN TV_rating AS T3 ON T2.id = T3.id ORDER BY T3.Rating DESC LIMIT 3
SELECT MIN(share), MAX(share) FROM TV_series
SELECT MAX(share), MIN(share) FROM TV_series
SELECT T1.Air_Date FROM TV_series AS T1 JOIN TV_episode AS T2 ON T1.id = T2.id WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.Air_Date FROM TV_series AS T1 JOIN Cartoons AS T2 ON T1.id = T2.id WHERE T2.Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_episode AS T2 ON T1.id = T2.id WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_episode AS T2 ON T1.id = T2.id WHERE T2.episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = (SELECT Channel FROM TV_channel WHERE Series_name = "Sky Radio")
SELECT T1.Episode FROM TV_series AS T1 JOIN Cartoons AS T2 ON T1.id = T2.id WHERE T2.Title = "Sky Radio"
SELECT COUNT(*), T1.Name FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = T1.Name GROUP BY T2.Directed_by
SELECT COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_option, Series_name FROM TV_channel WHERE High_Definitions_TV = 'Yes'
SELECT Package_option, Series_name FROM TV_channel WHERE High_Definitions_tv
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.written_by = "Todd Casey"
SELECT country FROM Cartoon WHERE written_by = "Todd Casey"
SELECT country FROM TV_channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT country FROM TV_channel WHERE NOT country = (SELECT country FROM Cartoon WHERE written_by = "Todd Casey")
SELECT T1.Series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Michael Chang"
SELECT T1.Series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name, T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language <> "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language <> "English"
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING COUNT(*) > 2
SELECT id FROM TV_channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Package_option FROM TV_channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT DISTINCT (package_option) FROM TV_channel WHERE NOT id IN (SELECT id FROM Cartoon WHERE directed_by = "Ben Jones")
SELECT COUNT(*) FROM poker_player
SELECT COUNT(*) FROM Poker_player
SELECT earnings FROM poker_player ORDER BY earnings
SELECT earnings FROM poker_player ORDER BY value
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT AVG(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY earnings DESC LIMIT 1
SELECT COUNT(*) FROM poker_player WHERE earnings < 200000
SELECT MAX(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT Name FROM people WHERE Nationality = "Poker Player"
SELECT Name FROM poker_player
SELECT Name FROM poker_player WHERE earnings > 300000
SELECT Name FROM poker_player WHERE earnings > 300000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.Person_ID = T2.Poker_player_ID ORDER BY T2.Final_Table_Made
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.Person_ID = T2.Poker_player_ID GROUP BY T2.Poker_player_ID ORDER BY COUNT(*)
SELECT Birth_Date FROM people ORDER BY earnings LIMIT 1
SELECT Birth_Date FROM people ORDER BY earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT AVG(Earnings) FROM people WHERE Height > 200
SELECT AVG(Earnings) FROM people WHERE Height > 200
SELECT name FROM poker_player ORDER BY earnings DESC
SELECT name FROM poker_player ORDER BY earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT COUNT(*), Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT name, birth_date FROM people ORDER BY name
SELECT name, birth_date FROM people ORDER BY name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE NOT people_id IN (SELECT people_id FROM poker_player)
SELECT Name FROM people WHERE NOT people_id IN (SELECT people_id FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM AREA_code_state
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTants AS T1 JOIN VOTERS AS T2 ON T1.contestant_number = T2.contestant_number ORDER BY T2.contestant_name
SELECT vote_id, phone_number, state FROM Vote
SELECT MAX(area_code), MIN(area_code) FROM AREA_code_state
SELECT created FROM VOTEs WHERE state = "CA"
SELECT T1.contestant_name FROM CONTESTants AS T1 JOIN Votates AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.state <> 'IL' AND T2.state <> 'IL' AND T2.state <> 'IL' AND T2.state <> 'IL' AND T2.state <> 'IL' AND T2.state <> 'IL' AND T2.state <> 'IL' WHERE T2.contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM Vote
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTants AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING COUNT(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTants AS T1 JOIN VOTEs AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY COUNT(*) LIMIT 1
SELECT COUNT(*) FROM VOTe WHERE state = "NY" OR state = "CA"
SELECT COUNT(*) FROM CONTESTants WHERE NOT contestant_number IN (SELECT contestant_number FROM VOTEs)
SELECT area_code FROM AREA_code_state GROUP BY area_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.created, T1.state, T1.phone_number FROM VOTE AS T1 JOIN CONTestants AS T2 ON T2.contestant_number = T1.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM VOTERS AS T1 JOIN CONTestants AS T2 ON T1.area_code = T2.area_code WHERE T2.contestant_name = "Tabatha Gehling" INTERSECT SELECT T1.area_code FROM VOTers AS T1 JOIN ConTestants AS T2 ON T1.area_code = T2.area_code WHERE T2.contestant_name = "Kelly Clauss"
SELECT T1.contestant_name FROM CONTESTants AS T1 JOIN VOTEs AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.state = 'IL'
SELECT name FROM country WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes' AND independence = 'Yes' AND independence = 'Yes' WHERE independence = 'Yes'
SELECT name FROM country WHERE founded > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT COUNT(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT SurfaceArea FROM country WHERE Region = "Caribbean"
SELECT COUNT(*) FROM city WHERE name = "Caribbean"
SELECT Continent FROM country WHERE name = "Anguilla"
SELECT T1.Continent FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.country_code WHERE T2.Name = "Anguilla"
SELECT Region FROM city WHERE name = "Kabul"
SELECT Region FROM city WHERE name = "Kabul"
SELECT Language FROM country_language WHERE name = "Arabic" ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM country_language WHERE Name = "Aruba" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE name = "Brazil"
SELECT Region, Population FROM country WHERE name = "Angola"
SELECT Region, Population FROM country WHERE name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT name FROM country WHERE life_expectancy = (SELECT MIN(life_expectancy) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE continent = "Asia" ORDER BY life_expectancy LIMIT 1
SELECT COUNT(*) FROM country WHERE Continent = "Asia" ORDER BY GNP DESC LIMIT 1
SELECT COUNT(*) FROM country WHERE Continent = "Asia" ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'Africa'
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SurfaceArea FROM continent WHERE name = "Asia" UNION SELECT SurfaceArea FROM continent WHERE name = "Europe"
SELECT SUM(surface_area) FROM country WHERE region = "Asia" OR region = "Europe"
SELECT COUNT(*) FROM city WHERE District = "Galdland"
SELECT COUNT(*) FROM city WHERE District = "Galdland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "USA"
SELECT AVG(GNP), SUM(Population) FROM country WHERE name = "USA" AND region = "Territor"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT T1.GovernmentForm) FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.country_code WHERE T2.Continent = "Africa"
SELECT COUNT(DISTINCT government_form) FROM country WHERE continent = "Africa"
SELECT COUNT(*) FROM country_language WHERE name = "Aruba"
SELECT COUNT(*) FROM country_language WHERE name = "Aruba"
SELECT COUNT(*) FROM country_language WHERE IsOfficial = 'Yes' AND Country = "Afghan"
SELECT COUNT(*) FROM country_language WHERE IsOfficial = 'Yes' AND Country = "Afghan"
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.ID = T2.country_id WHERE T2.Language = (SELECT Language FROM country_language GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1)
SELECT Language FROM country_language GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.ID = T2.country_id JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.Continent = 'Asia'
SELECT T1.Continent FROM country AS T1 JOIN country_language AS T2 ON T1.ID = T2.country_id JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.Continent = "Asia"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT name FROM country WHERE name = "United States" INTERSECT SELECT name FROM country WHERE name = "France"
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT name FROM country_language WHERE language = "English" INTERSECT SELECT name FROM country_language WHERE language = "French"
SELECT Language FROM country_language WHERE IsOfficial = 'Yes' AND Language = "English" OR Language = "French"
SELECT COUNT(DISTINCT continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT COUNT(*) FROM country WHERE name = "China"
SELECT Region FROM country WHERE Language = "English" OR Language = "Dutch"
SELECT Region FROM country WHERE Language = "Dutch" OR Language = "English"
SELECT country FROM country_language WHERE Language = "English" OR Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN country_language AS T2 ON T1.ID = T2.country_id WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM country_language GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM country_language WHERE GovernmentForm = 'Republic' GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM country_language WHERE GovernmentForm = 'Republic' GROUP BY Language ORDER BY COUNT(*) = 1
SELECT city FROM city WHERE Population > (SELECT Population FROM country WHERE Language = "English")
SELECT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.Name = T2.Name WHERE T2.Language = "English" ORDER BY COUNT(*) DESC LIMIT 1
SELECT name, Population, LifeExpectancy FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia") ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Asia" ORDER BY SurfaceArea > (SELECT SurfaceArea
SELECT name, population, life_expectancy FROM country WHERE region = "Asia" ORDER BY population DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country_language WHERE Language <> "English"
SELECT AVG(LifeExpectancy) FROM country_language WHERE Language <> "English"
SELECT COUNT(*) FROM country WHERE NOT CountryCode = "USA" AND NOT CountryCode = "Canada" AND NOT CountryCode = "United Kingdom" AND NOT CountryCode = "Australia" AND NOT CountryCode = "New Zealand" AND NOT CountryCode = "Germany" AND NOT CountryCode = "France" AND NOT CountryCode = "Spain"
SELECT COUNT(*) FROM country WHERE NOT CountryCode = "USA" AND NOT CountryCode = "Canada" AND NOT CountryCode = "United Kingdom" AND NOT CountryCode = "Australia" AND NOT CountryCode = "New Zealand"
SELECT Official FROM country_language WHERE HeadOfState = "Beatrix"
SELECT Official FROM country_language WHERE name = (SELECT HeadOfState FROM country) WHERE name = "Beatrix")
SELECT COUNT(DISTINCT Official) FROM country_language WHERE founded < 1930
SELECT COUNT(DISTINCT Official) FROM country_language WHERE founded < 1930
SELECT name FROM country WHERE surface_area > (SELECT MAX(surface_area) FROM country WHERE region = "Europe")
SELECT SurfaceArea FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Region = "Europe")
SELECT Name FROM country WHERE Population < (SELECT MIN(Population) FROM country WHERE Region = "Asia")
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.country_code WHERE T2.Population < (SELECT Population FROM country WHERE Region = "Asia")
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.code JOIN country_language AS T3 ON T3.country_code = T2.code WHERE T3.Percentage > (SELECT MAX(Population) FROM country AS T2 JOIN city AS T1 ON T1.country_code = T2.code FROM country AS T2 JOIN country_language AS T3 ON T3.country_code = T2.code WHERE T3.Percentage > (SELECT MAX(Population) FROM country AS T2 JOIN city AS T1 ON T1.country_code = T2.code FROM country AS T2 JOIN country_language AS T3 ON T3.country_code = T2.code WHERE T3.Percentage > (SELECT MAX(Population) FROM country AS T2 JOIN city AS T1 ON T1.country_code = T2.code FROM country AS T2 JOIN country_language As T3 ON T3.country_code = T2.code WHERE T3.Percentage > (SELECT MAX(Population) FROM country AS T2 JOIN city As T1 ON T1.country_code = T2.code FROM country AS T2 JOIN country_language As T3 ON T3.country_code = T2.code WHERE T3.Percentage > (SELECT max(P
SELECT AsianCountry FROM country WHERE Population > (SELECT Population FROM country WHERE Region = "Africa")
SELECT CountryCode FROM country_language WHERE Language <> "English"
SELECT CountryCode FROM country_language WHERE Language <> "English"
SELECT CountryCode FROM country_language WHERE Language <> "English"
SELECT CountryCode FROM country_language WHERE Language <> "English"
SELECT Code FROM country WHERE NOT CountryCode = "USA" AND GovernmentForm <> "Republic" AND NOT CountryCode = "Canada" AND GovernmentForm <> "Republic"
SELECT Code FROM country WHERE NOT name = "United States" AND NOT name = "Canada" AND NOT name = "England" AND NOT name = "Scotland" AND NOT name = "Germany" AND NOT name = "France" AND NOT name = "Spain" AND NOT name = "Portugal"
SELECT city FROM city WHERE NOT city IN (SELECT city FROM countrylanguage WHERE Language = "English" AND IsOfficial = "Yes")
SELECT name FROM city WHERE NOT name = (SELECT OfficialName FROM country_language WHERE language = "English")
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.ID = T2.CityID WHERE T2.Language = "Chinese" AND T2.IsOfficial = 'Yes' AND T2.country = "Asia"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country_language AS T2 ON T1.ID = T2.CityID WHERE T2.Language = "Chinese" AND T1.country = "Asia"
SELECT name, independence_year, surface_area FROM country ORDER BY Population LIMIT 1
SELECT T1.name, T1.IndepYear, T1.surface_area FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.country_code ORDER BY T2.Population LIMIT 1
SELECT Population, name, head_of_state FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name, population, head_of_state FROM country ORDER BY surface_area DESC LIMIT 1
SELECT T1.name, COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN country_language AS T2 ON T1.ID = T2.country_id WHERE COUNT(*) > 2
SELECT district, COUNT(*) FROM city GROUP BY district HAVING COUNT(*) > (SELECT AVG(Population) FROM city)
SELECT district, COUNT(*) FROM city GROUP BY district HAVING AVG(Population) > (SELECT AVG(Population) FROM city)
SELECT GovernmentForm, AVG(Population) FROM country WHERE AVG(Population) > 72
SELECT T1.Name, AVG(T1.LifeExpectancy) FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.country_code WHERE AVG(T2.LifeExpectancy) > 72 GROUP BY T1.GovernmentForm
SELECT AVG(LifeExpectancy), SUM(Population) FROM country WHERE AVG(LifeExpectancy) < 72
SELECT T1.Name, T1.Population, AVG(T1.LifeExpectancy) FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.code WHERE AVG(T1.LifeExpectancy) < 72
SELECT name, surface_area FROM country ORDER BY surface_area DESC LIMIT 5
SELECT name, surface_area FROM country ORDER BY surface_area DESC LIMIT 5
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY Population LIMIT 3
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.country_code = T2.country_code GROUP BY T2.country_code ORDER BY COUNT(*) LIMIT 3
SELECT COUNT(*) FROM country WHERE Region = "Asia"
SELECT COUNT(*) FROM country WHERE Region = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND Population > 80000
SELECT name FROM country WHERE region = "Europe" AND Population = 80000
SELECT COUNT(*) FROM country WHERE SurfaceArea > 3000 AND Region = "North America"
SELECT COUNT(*), AVG(surface_area) FROM country WHERE surface_area > 3000 AND Region = "North America"
SELECT city FROM city WHERE Population BETWEEN 160000 AND Population BETWEEN 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM country_language GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM country_language GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM country_language GROUP BY Language ORDER BY COUNT(*) DESC
SELECT T1.country_code, T2.language FROM country AS T1 JOIN country_language AS T2 ON T1.country_code = T2.country_code JOIN country AS T1 ON T1.country_code = T1.country_code JOIN country_language AS T2 ON T2.country_code = T2.country_code JOIN country AS T1 ON T1.country_code = T1.country_code JOIN country_language AS T2 ON T2.country_code = T2.country_code JOIN country AS T1 ON T1.country_code = T1.country_code JOIN country_language AS T2 ON T2.country_code = T2.country_code WHERE T2.Percentage > (SELECT AVG(T2.Percentage) FROM country AS T1 JOIN country_language AS T2 ON T1.country_code = T2.country_code) JOIN country AS T1 ON T1.country_code = T1.country_code) JOIN country_language AS T2 ON T2.country_code = T2.country_code) WHERE T2.Percentage > (SELECT AVG(T2.Percentage) FROM country AS T1 JOIN country_language AS T2 ON T1.country_code = T2.country_code) JOIN country AS T1 ON T1.country_code = T1.country_code) join country_language AS T2 on T2.country_code =
SELECT COUNT(*) FROM country_language WHERE Language = "Spanish" ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM country_language WHERE Language = "Spanish" GROUP BY Language ORDER BY COUNT(*) DESC
SELECT Code FROM country_language WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT Code FROM country_language WHERE Language = "Spanish" GROUP BY Code ORDER BY COUNT(*) DESC
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM Conductor ORDER BY Age
SELECT Name FROM Conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_company FROM orchestra ORDER BY year_of_founded
SELECT Record_company FROM Orchestra ORDER BY year_of_founded
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY year_of_work
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID ORDER BY COUNT(*) DESC
SELECT T1.Name FROM Conductor AS T1 JOIN Performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Conductor AS T1 JOIN Performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T1.Orchestra FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID JOIN orchestra AS T3 ON T2.Orchestra_ID = T3.Orchestra_id WHERE T3.Name = T1.Name
SELECT T1.Name FROM Conductor AS T1 JOIN Orchestrra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Name = T2.Name
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM Conductor AS T1 JOIN Orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchest AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchest AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_founded > 2008
SELECT record_company, COUNT(*) FROM orchestra
SELECT COUNT(*), Record_company FROM Orchestra
SELECT Major_record_format FROM Orchestra ORDER BY COUNT(*)
SELECT Major_Record_Format FROM Orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT Record_company FROM orchest
SELECT Record_company FROM orchest
SELECT T1.orchestra FROM Orchestra AS T1 JOIN Performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.orchestra_id = (SELECT T3.orchestra_id FROM Orchestra AS T1 JOIN Performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.orchestra_id = (SELECT T4.orchestra_id FROM orchestra AS T1 JOIN Performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.orchestra_id = (SELECT T5.orchestra_id FROM orchestra AS T1 JOIN Performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.orchestra_id = (SELECT T6.orchestra_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.orchestra_id = (SELECT T7.orchestra_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2
SELECT T1.orchestra FROM Orchestra AS T1 JOIN Performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.orchestra_id IN (SELECT T1.orchestra_id FROM Orchestra AS T1 JOIN Performance AS T2 ON T1.orchestra_id = T2.orchestra_id) WHERE T2.orchestra_id IN (SELECT T1.orchestra_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id) WHERE T2.orchestra_id IN (SELECT T1.orchestra_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id) WHERE T2.orchestra_id IN (SELECT T1.orchestra_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id) WHERE T2.orchestra_id IN (SELECT T1.orchestra_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra
SELECT Record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT Record_company FROM orchestra WHERE year_of_founded > 2003
SELECT Record_company FROM Orchestra WHERE year_of_founded < 2003 INTERSECT SELECT Record_company FROM Orchestra WHERE year_of_founded > 2003
SELECT COUNT(*) FROM Orchestra WHERE Major_record_format = "CD" OR Major_record_format = "DVD"
SELECT COUNT(*) FROM Orchestra WHERE Major_record_format = "CD" OR Major_record_format = "DVD"
SELECT T1.Year_of_founded FROM Orchestra AS T1 JOIN Performance AS T2 ON T1.Orchestra_id = T2.Orchestra_id GROUP BY T2.Orchestra_id HAVING COUNT(*) > 1
SELECT T1.Year_of_founded FROM Orchestra AS T1 JOIN Performance AS T2 ON T1.Orchestra_id = T2.Orchestra_id GROUP BY T2.Orchestra_id HAVING COUNT(*) > 1
SELECT COUNT(*) FROM Highschooler
SELECT COUNT(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT student_id FROM Student WHERE name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler WHERE grade >= 4
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT COUNT(*) FROM Friend GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler GROUP BY name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Highschooler GROUP BY name HAVING COUNT(*) >= 3
SELECT name FROM Highschooler GROUP BY name HAVING COUNT(*) >= 3
SELECT name FROM Friend WHERE student_id = (SELECT student_id FROM Highschooler WHERE name = "Kyle")
SELECT name FROM Friend WHERE student_id = (SELECT student_id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT student_id FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Friend WHERE name = "Kyle"
SELECT student_id FROM Student WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT ID FROM Student WHERE NOT ID IN (SELECT student_id FROM Friend)
SELECT name FROM Student WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT name FROM Student WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T3.student_id = T2.student_id WHERE T3.liked_id = (SELECT T3.liked_id FROM likes) UNION SELECT T3.liked_id FROM likes)
SELECT student_id FROM Student WHERE student_id IN (SELECT student_id FROM Friend) INTERSECT SELECT student_id FROM Like)
SELECT name FROM Student WHERE student_id IN (SELECT student_id FROM Friend) UNION SELECT student_id FROM Like) UNION SELECT student_id FROM Friend) UNION SELECT student_id FROM Like) UNION SELECT student_id FROM Friend) UNION SELECT student_id FROM Like) UNION SELECT student_id FROM friend) UNION SELECT student_id FROM like) UNION SELECT student_id FROM friend) UNION SELECT student_id FROM like) UNION SELECT student_id FROM friend) UNION SELECT student_id FROM like) UNION SELECT student_id FROM friend) UNION SELECT student_id FROM like) UNION SELECT student_id FROM friend) UNION SELECT student_id FROM like) union SELECT student_id FROM friend) union SELECT student_id FROM like) union SELECT student_id FROM friend) union SELECT student_id FROM like) union SELECT student_id FROM friend) union SELECT student_id FROM like) union select student_id FROM friend) union select student_id FROM like) union select student_id FROM friend) union select student_id FROM like) union select student_id FROM friend) union select student_id FROM like) union select student_id FROM friend) union select student_id FROM like) union select student_id FROM friend) union select student_id FROM like) union select student_id FROM friend) union select student_id FROM like) union select student_id FROM friend) union select student
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend) INTERSECT SELECT student_id FROM Like)
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Like AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, COUNT(*) FROM Highschooler AS T1 JOIN Like AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Student AS T1 JOIN Like AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM Student GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM Student GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM Student WHERE grade > 5 INTERSECT SELECT name FROM Student GROUP BY name HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 INTERSECT SELECT name FROM Highschooler WHERE 2 OR more friends
SELECT COUNT(*) FROM Likes WHERE name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE name = "Kyle"
SELECT AVG(grade) FROM Student WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Student WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Student WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Student WHERE NOT student_id IN (SELECT student_id FROM Friend)
SELECT state FROM Owner WHERE NOT owner_id IN (SELECT owner_id FROM Professional)
SELECT state FROM Owner WHERE NOT owner_id IN (SELECT owner_id FROM Professional)
SELECT AVG(age) FROM Treatments
SELECT AVG(age) FROM Treatments
SELECT T1.owner_id, T1.last_name, T1.home_phone FROM Owner AS T1 JOIN Treatment AS T2 ON T2.professional_id = T1.owner_id WHERE T2.cost_of_treatment > 2
SELECT T1.id, T1.last_name, T1.home_phone FROM Treatment AS T1 JOIN Professional AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "IN" OR COUNT(*) > 2
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Owners AS T3 ON T3.owner_id = T2.owner_id WHERE T3.cell_number > 1000
SELECT first_name FROM Owner WHERE first_name <> (SELECT first_name FROM Dog)
SELECT DISTINCT T1.first_name FROM Owner AS T1 JOIN Professional AS T2 ON T1.owner_id = T2.professional_id WHERE T2.first_name <> (SELECT T3.first_name FROM Dog AS T3 JOIN Owner AS T1 ON T3.dog_id = T1.dog_id) WHERE T1.first_name <> T1.first_name)
SELECT professional_id, role_code, email_address FROM Professions WHERE NOT professional_id IN (SELECT dog_id FROM Treatments)
SELECT T1.id, T1.role_code, T1.email_address FROM Professional AS T1 JOIN Treatment AS T2 ON T1.id = T2.professional_id WHERE T2.treatment_type_code = "Treatment" WHERE NOT T1.id IN (SELECT dog_id FROM Treatment)
SELECT owner_id, first_name, last_name FROM Owner GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM Owner GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Treatment AS T1 JOIN Professional AS T2 ON T1.professional_id = T2.owner_id GROUP BY T2.owner_id HAVING COUNT(*) >= 2
SELECT T1.id, T1.role_code, T1.first_name FROM Treatment AS T1 JOIN Professional AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_id = T2.breed_id GROUP BY T2.breed_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM Breeds GROUP BY breed_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Treatment AS T2 JOIN Owner AS T1 ON T2.owner_id = T1.owner_id GROUP BY T2.owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM Treatment AS T2 JOIN Owner AS T1 ON T2.owner_id = T1.owner_id
SELECT T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T1.cost_of_treatment LIMIT 1
SELECT T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T1.cost_of_treatment LIMIT 1
SELECT owner_id, zip_code FROM Owner
SELECT owner_id, zip_code FROM Charges GROUP BY owner_id ORDER BY SUM(charge_amount) DESC LIMIT 1
SELECT professional_id, home_phone FROM Treatment
SELECT T1.id, T1.home_phone FROM Treatment AS T1 JOIN Treatment AS T2 ON T1.id = T2.id JOIN Treatment AS T3 ON T2.id = T3.id JOIN Treatment AS T4 ON T3.id = T4.id JOIN Treatment AS T5 on T2.id = T5.id JOIN Treatment AS T6 on T3.id = T6.id JOIN Treatment AS T7 on T2.id = T7.id JOIN Treatment AS T8 on T3.id = T8.id JOIN Treatment AS T9 on T2.id = T9.id JOIN Treatment AS T10 on T3.id = T10.id JOIN Treatment AS T11 on T2.id = T11.id JOIN Treatment AS T12 on T3.id = T12.id JOIN Treatment AS T13 on T2.id = T13.id JOIN Treatment AS T14 on T2.id = T14.id JOIN Treatment AS T15 on T2.id = T15.id JOIN Treatment AS T16 on T2.id = T16.id JOIN Treatment AS T17 on T2.id = T17.id JOIN Treatment AS T18 on T2.id = T18.id join Treatment AS T19 on T2.id = T19.id join Treatment AS T20 on T2
SELECT T1.first_name, T1.last_name FROM Treatment AS T1 JOIN Professional AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT AVG(T1.cost_of_treatment) FROM Treatment)
SELECT T1.first_name, T1.last_name FROM Treatment AS T1 JOIN Professional AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT AVG(T1.cost_of_treatment) FROM Treatment)
SELECT T1.date_of_treatment, T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T1.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = "Operating Professional"
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size FROM Owner AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size FROM Owner AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.name FROM Owner AS T1 JOIN Dog AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.name FROM Owner AS T1 JOIN Dog AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "Rare"
SELECT T1.name, T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "Rare"
SELECT T1.first_name, T1.last_name, T2.name FROM Owner AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T1.last_name, T2.name FROM Owner AS T1 JOIN Dog AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_of_treatment, date_of_depart FROM Treatments
SELECT date_of_treatment, date_of_depart FROM Treatments
SELECT T1.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.date_of_birth LIMIT 1
SELECT T1.last_name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T2.date_of_treatment LIMIT 1
SELECT email_address FROM Professional WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professional WHERE state = "HI" OR state = "WI"
SELECT date_of_arrival, date_of_depart FROM Treatments
SELECT date_of_arrival, date_of_departure FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments
SELECT COUNT(*) FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "Dog"
SELECT role_code, street, city, state FROM Professions WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professions WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owner WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owner WHERE state LIKE '%North%'
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(*) FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Dogs WHERE NOT dog_id IN (SELECT dog_id FROM Treatments)
SELECT COUNT(*) FROM Owner WHERE NOT owner_id IN (SELECT dog_id FROM Dogs)
SELECT COUNT(*) FROM Owner WHERE NOT owner_id IN (SELECT dog_id FROM Dogs)
SELECT COUNT(*) FROM Professional WHERE NOT owner_id IN (SELECT dog_id FROM Treat)
SELECT COUNT(*) FROM Professional WHERE NOT owner_id IN (SELECT dog_id FROM Treatments)
SELECT T1.name, T1.age, T1.weight FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Abandon"
SELECT T1.name, T1.age, T1.weight FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Abandon"
SELECT AVG(age) FROM Dogs
SELECT AVG(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age LIMIT 1
SELECT age FROM Dogs ORDER BY age LIMIT 1
SELECT charge_type, charge_amount FROM Charges GROUP BY charge_type
SELECT charge_type, charge_amount FROM Charges GROUP BY charge_type
SELECT charge_amount FROM Charges WHERE charge_type = (SELECT charge_type FROM Charges GROUP BY charge_type ORDER BY MAX(charge_amount) FROM Charges)
SELECT charge_amount FROM Charges WHERE charge_type = (SELECT charge_type FROM Charges GROUP BY charge_type ORDER BY MAX(charge_amount) FROM Charges)
SELECT email_address, cell_number, home_phone FROM Professional
SELECT email_address, cell_number, home_phone FROM Professional
SELECT DISTINCT T1.treatment_type_code, T1.size_type_code FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.treatment_id = T2.treatment_id JOIN Sizes AS T3 ON T3.size_id = T2.dog_id
SELECT DISTINCT T1.treatment_type_code, T1.size_type_code FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.treatment_id = T2.treatment_id JOIN Sizes AS T3 ON T2.size_id = T3.size_id JOIN Treatment_Types AS T4 ON T2.treatment_id = T4.treatment_id WHERE T4.treatment_type_code = "Distinct" INTERSE SELECT DISTINCT T1.treatment_type_code, T1.size_type_code FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.treatment_id = T2.treatment_id join Size AS T3 ON T2.size_id = T3.size_id join Treatment_type AS T4 ON T2.treatment_id = T4.treatment_id WHERE T4.treatment_type_code = "Distinct"
SELECT T1.first_name, T1.treatment_type_description FROM Treatment AS T1 JOIN Professional AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T1.description FROM Treatment AS T1 JOIN Professional AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = "Treatment"
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN person AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Net_Worth_Millions DESC LIMIT 1
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship, COUNT(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY citizenship
SELECT T1.Title, T1.Name FROM song AS T1 JOIN singer AS T2 ON T2.Singer_ID = T1.Singer_ID
SELECT T1.Title, T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Name, SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE NOT T1.Name IN (SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.singer_id)
SELECT Title FROM song WHERE NOT T1.Singer_ID IN (SELECT T2.Singer_ID FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID) WHERE T2.citizenship = 'No'
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_available_features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_name = "Air Conditioning"
SELECT property_type_description FROM Property_type_code = "A"
SELECT property_name FROM Property WHERE room_count > 1 UNION SELECT property_name FROM Apartment WHERE room_count > 1
