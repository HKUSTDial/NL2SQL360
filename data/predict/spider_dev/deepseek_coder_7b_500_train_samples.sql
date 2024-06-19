SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT AVG(age), MIN(age), MAX(age) FROM singer WHERE country = "France"
SELECT AVG(Age), MIN(Age), MAX(Age) FROM singer WHERE Country = "France"
SELECT Song_Name, Song_release_year FROM singer WHERE Age = (SELECT MIN(Age) FROM singer)
SELECT Song_Name, Song_release_year FROM singer WHERE Age = (SELECT MIN(Age) FROM singer)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT MAX(Capacity), AVG(Capacity) FROM stadium
SELECT AVG(Capacity), MAX(Capacity) FROM stadium
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE Year = "2014" OR Year = "2015"
SELECT COUNT(*) FROM concert WHERE Year = "2014" OR Year = "2015"
SELECT stadium_name, COUNT(*) FROM concert GROUP BY stadium_id
SELECT Stadium_ID, COUNT(*) FROM concert GROUP BY Stadium_ID
SELECT Name, Capacity FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year >= "2014"
SELECT Name, Capacity FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year > 2013)
SELECT Year FROM concert GROUP BY Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Year FROM concert GROUP BY Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = "2014")
SELECT Name FROM stadium WHERE NOT Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = "2014")
SELECT concert_name, theme, COUNT(*) FROM concert JOIN singer_in_concert GROUP BY concert_id
SELECT concert_Name, Theme, COUNT(*) FROM concert JOIN singer_in_concert GROUP BY concert_ID
SELECT Name, COUNT(*) FROM singer JOIN singer_in_concert GROUP BY Singer_ID
SELECT Name, COUNT(*) FROM singer GROUP BY Name
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM singer_in_concert WHERE concert_ID IN (SELECT concert_ID FROM concert WHERE Year = "2014"))
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM singer_in_concert WHERE concert_ID IN (SELECT concert_ID FROM concert WHERE Year = "2014"))
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT Name, Location FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = "2014" INTERSECT SELECT Stadium_ID FROM concert WHERE Year = "2015")
SELECT Name, Location FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = "2014") INTERSECT SELECT Stadium_ID, Location FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year = "2015")
SELECT COUNT(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT concert_ID FROM concert ORDER BY stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT MAX(weight), pettype FROM Pets GROUP BY pettype
SELECT PetType, MAX(weight), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT COUNT(*) FROM Student WHERE age > 20
SELECT COUNT(*) FROM Student WHERE age > 20
SELECT COUNT(*) FROM Pets WHERE PetType = "dog"
SELECT COUNT(*) FROM Pets WHERE PetType = "dog"
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT COUNT(DISTINCT PetType) FROM Pets
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" OR PetType = "Dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat") INTERSECT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat")) INTERSECT SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Dog"))
SELECT Major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT Major, Age FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT StuID FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT Fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "dog")) EXCEPT SELECT StuID, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "cat"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "dog")) EXCEPT SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "cat"))
SELECT PetType, weight FROM Pets ORDER BY PetAge LIMIT 1
SELECT PetType, weight FROM Pets ORDER BY PetAge LIMIT 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetID, weight FROM Pets WHERE pet_age > 1
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT PetType, AVG(pet_age), MAX(pet_age) FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) FROM Pets GROUP BY PetType
SELECT Fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT Fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT PetID FROM Student WHERE Lname = "Smith"
SELECT PetID FROM Student WHERE Lname = "Smith"
SELECT StuID, COUNT(*) FROM Student JOIN Has_Pet ON StuID = StuID GROUP BY StuID
SELECT StuID, COUNT(*) FROM Student JOIN Has_Pet ON StuID = StuID GROUP BY StuID
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT Lname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" AND PetAge = 3))
SELECT Lname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Cat" AND PetAge = 3))
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT AVG(age) FROM Student WHERE NOT StuID IN (SELECT StuID FROM Has_Pet)
SELECT COUNT(*) FROM continents
SELECT COUNT(*) FROM continents
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT ContId, Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT COUNT(*) FROM countries
SELECT COUNT(*) FROM countries
SELECT Maker, COUNT(*) FROM model_list GROUP BY Maker
SELECT FullName, Id, COUNT(*) FROM car_makers GROUP BY FullName
SELECT Model FROM model_list ORDER BY Horsepower LIMIT 1
SELECT Model FROM model_list ORDER BY Horsepower LIMIT 1
SELECT Model FROM model_list WHERE ModelId = (SELECT Model FROM cars_data GROUP BY Model ORDER BY AVG(Weight) LIMIT 1)
SELECT Model FROM model_list WHERE ModelId = (SELECT Model FROM cars_data WHERE Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT Maker FROM model_list WHERE Model IN (SELECT Model FROM cars_data WHERE Year = 1970)
SELECT Maker FROM model_list WHERE Year = 1970
SELECT Make, Year FROM car_names ORDER BY Year LIMIT 1
SELECT Maker, Year FROM cars_data ORDER BY Year LIMIT 1
SELECT DISTINCT Model FROM model_list WHERE Year > 1980
SELECT Model FROM model_list WHERE Year > 1980
SELECT Continent, COUNT(*) FROM countries GROUP BY Continent
SELECT Continent, COUNT(*) FROM car_makers GROUP BY Continent
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM car_makers GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS Count, FullName FROM car_makers GROUP BY FullName
SELECT Maker, COUNT(*) FROM model_list GROUP BY Maker
SELECT Accelerate FROM cars_data WHERE MakeId = (SELECT MakeId FROM car_names WHERE Make = "AMC Hornet Sportabout (SW)")
SELECT Accelerate FROM cars_data WHERE MakeId = (SELECT MakeId FROM car_names WHERE Make = "AMC Hornet Sportabout")
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM car_makers WHERE Country = "France"
SELECT COUNT(*) FROM model_list WHERE Country = "USA"
SELECT COUNT(*) FROM model_list WHERE Country = "USA"
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT Maker, Model FROM model_list
SELECT Maker, Model FROM model_list
SELECT CountryId, CountryName FROM countries GROUP BY CountryId HAVING COUNT(*) >= 1
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers)
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE Horsepower > 150
SELECT Year, AVG(Weight) FROM cars_data GROUP BY Year
SELECT Year, AVG(Weight), AVG(Year) FROM cars_data GROUP BY Year
SELECT Country FROM car_makers WHERE Country IN (SELECT Country FROM countries WHERE Continent = 3) GROUP BY Country HAVING COUNT(*) >= 3
SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) >= 3
SELECT Horsepower, Make FROM cars_data WHERE Cylinders = 3
SELECT Horsepower FROM cars_data WHERE Cylinders = 3
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT Model FROM model_list ORDER BY MPG DESC LIMIT 1
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Model = "volvo"
SELECT AVG(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT Cylinders, MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT Cylinders, MAX(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model FROM model_list GROUP BY Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Year = 1980
SELECT COUNT(*) FROM cars_data WHERE Year = 1980
SELECT COUNT(*) FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "American Motor Company")
SELECT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE Maker = "American Motor Company")
SELECT FullName, Id FROM car_makers GROUP BY FullName HAVING COUNT(*) > 3
SELECT Maker, Id FROM model_list GROUP BY Maker HAVING COUNT(*) > 3
SELECT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE FullName = "General Motors") OR Weight > 3500
SELECT Model FROM model_list WHERE Maker = (SELECT Id FROM car_makers WHERE Maker = "General Motors") OR Weight > 3500
SELECT Year FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000
SELECT Year FROM cars_data WHERE Weight < 4000 INTERSECT SELECT Year FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Model = "Volvo" ORDER BY Accelerate LIMIT 1
SELECT Cylinders FROM cars_data WHERE Model = "Volvo" ORDER BY Accelerate LIMIT 1
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data ORDER BY Horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM cars_data WHERE Accelerate > (SELECT Accelerate FROM cars_data ORDER BY Horsepower DESC LIMIT 1)
SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM car_makers GROUP BY Country HAVING COUNT(*) > 2
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT Model FROM model_list WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT Model FROM model_list WHERE Cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT MakeId, Make FROM car_names WHERE Horsepower > (SELECT MIN(Horsepower) FROM cars_data) EXCEPT SELECT MakeId, Make FROM car_names WHERE Cylinders > 3
SELECT MakeId, Make FROM car_names WHERE Horsepower < 4
SELECT MPG FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT MPG FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT Model FROM model_list WHERE Model NOT IN (SELECT Model FROM car_names WHERE Make = 'Ford Motor Company') AND Weight < 3500
SELECT Model FROM model_list WHERE Model NOT IN (SELECT Model FROM car_names WHERE Make = "Ford") AND Weight < 3500
SELECT Country FROM countries EXCEPT SELECT Country FROM car_makers
SELECT Country FROM countries WHERE NOT Country IN (SELECT Country FROM car_makers)
SELECT Maker, Id FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT Maker FROM car_makers GROUP BY Maker HAVING COUNT(*) > 3
SELECT Maker, Id FROM model_list GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT Make FROM cars_data GROUP BY Make HAVING COUNT(*) > 3
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 3)
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 3) UNION SELECT Country FROM model_list WHERE Model = "Fiat"
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "United States"
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
SELECT COUNT(*) FROM airlines WHERE Country = "United States"
SELECT COUNT(*) FROM airlines WHERE Country = "United States"
SELECT City, Country FROM airports WHERE AirportCode = "Alton"
SELECT City, Country FROM airports WHERE AirportCode = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATo"
SELECT COUNT(*) FROM flights WHERE DestAirport = "ATL"
SELECT COUNT(*) FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT COUNT(*) FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABERDEEN"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'ABERDEEN' AND DestAirport = 'ASHLEY'
SELECT COUNT(*) FROM flights WHERE SourceAirport = "ABT" AND DestAirport = "ASH"
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = 'JetBlue Airways')
SELECT COUNT(*) FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Abbreviation = "JetBlue")
SELECT COUNT(*) FROM flights WHERE DestAirport = 'ASY'
SELECT COUNT(*) FROM flights WHERE DestAirport = "ASY"
SELECT COUNT(*) FROM flights WHERE SourceAirport = 'AHD'
SELECT COUNT(*) FROM flights WHERE SourceAirport = "AHD"
SELECT COUNT(*) FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = 'Aberdeen')
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABERDEEN"
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY FlightNo LIMIT 1
SELECT Abbreviation, Country FROM airlines ORDER BY FlightNo LIMIT 1
SELECT Airline FROM flights WHERE SourceAirport = "AHD"
SELECT Airline FROM flights WHERE SourceAirport = "AHD"
SELECT Airline FROM flights WHERE DestAirport = 'AHD'
SELECT Airline FROM flights WHERE DestAirport = "AHD"
SELECT Airline FROM flights WHERE SourceAirport = 'APG' INTERSECT SELECT Airline FROM flights WHERE SourceAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = "APG" INTERSECT SELECT Airline FROM flights WHERE SourceAirport = "CVO"
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport = 'APG'
SELECT Airline FROM flights WHERE SourceAirport = "CVO" EXCEPT SELECT Airline FROM flights WHERE SourceAirport = "APG"
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Airline = "United Airlines")
SELECT FlightNo FROM flights WHERE Airline = (SELECT uid FROM airlines WHERE Abbreviation = "United")
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT FlightNo FROM flights WHERE DestAirport = (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport = "ABERDEEN"
SELECT COUNT(*) FROM flights WHERE DestAirport IN ('ABT', 'ABE')
SELECT COUNT(*) FROM flights WHERE DestAirport = "ABE" OR DestAirport = "ABI"
SELECT AirportName FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports WHERE NOT AirportCode IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT COUNT(*) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT Name FROM Employee ORDER BY Age ASC
SELECT Name FROM Employee ORDER BY Age
SELECT City, COUNT(*) FROM Employee GROUP BY City
SELECT City, COUNT(*) FROM Employee GROUP BY City
SELECT City FROM Employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1
SELECT City FROM Employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Location, COUNT(*) FROM shop GROUP BY Location
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT MIN(Number_products), MAX(Number_products) FROM shop
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC
SELECT Name, Location, District FROM shop ORDER BY Number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM shop WHERE Number_products > (SELECT AVG(Number_products) FROM shop)
SELECT Name FROM Employee WHERE Employee_ID = (SELECT Employee_ID FROM Evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1)
SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM Employee WHERE Employee_ID = (SELECT Employee_ID FROM Evaluation GROUP BY Employee_ID ORDER BY SUM(Bonus) DESC LIMIT 1)
SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY SUM(Bonus) DESC LIMIT 1
SELECT Name FROM Employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM Evaluation)
SELECT Name FROM Employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM Evaluation)
SELECT Name FROM shop WHERE Shop_ID = (SELECT Shop_ID FROM hiring GROUP BY Shop_ID ORDER BY COUNT(*) DESC LIMIT 1)
SELECT Name FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Name FROM shop WHERE NOT Shop_ID IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE NOT Employee_ID IS NULL
SELECT Name, COUNT(*) FROM shop JOIN hiring ON Shop_ID = Shop_ID GROUP BY Shop_ID
SELECT COUNT(*) AS Employee_count, Name FROM shop GROUP BY Shop_ID
SELECT SUM(Bonus) FROM evaluation
SELECT SUM(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(DISTINCT Location) FROM shop
SELECT COUNT(*) FROM documents
SELECT COUNT(*) FROM documents
SELECT Document_ID, Document_Name, Document_Description FROM documents
SELECT Document_ID, Document_Name, Document_Description FROM documents
SELECT Document_Name, Template_ID FROM documents WHERE Document_Description LIKE '%w%'
SELECT Document_Name, Template_ID FROM documents WHERE Document_Description LIKE '%w%'
SELECT Document_ID, Template_ID, Document_Description FROM documents WHERE Document_Name = "Robbin CV"
SELECT Document_ID, Template_ID, Document_Description FROM documents WHERE Document_Name = "Robbin CV"
SELECT COUNT(DISTINCT Template_ID) FROM documents
SELECT COUNT(DISTINCT Template_ID) FROM documents
SELECT COUNT(*) FROM documents WHERE template_id = (SELECT template_id FROM templates WHERE template_type_code = 'PPT')
SELECT COUNT(*) FROM documents WHERE Template_ID IN (SELECT Template_ID FROM templates WHERE Template_Type_Code = "PPT")
SELECT Template_ID, COUNT(*) FROM documents GROUP BY Template_ID
SELECT Template_ID, COUNT(*) FROM documents GROUP BY Template_ID
SELECT Template_ID, Template_Type_Code FROM templates GROUP BY Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID, Template_Type_Code FROM templates GROUP BY Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_ID FROM documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM templates WHERE NOT Template_ID IN (SELECT Template_ID FROM documents)
SELECT Template_ID FROM templates WHERE NOT Template_ID IN (SELECT Template_ID FROM documents)
SELECT COUNT(*) FROM templates
SELECT COUNT(*) FROM templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM templates
SELECT Template_ID, Version_Number, Template_Type_Code FROM templates
SELECT DISTINCT Template_Type_Code FROM templates
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types
SELECT Template_ID FROM templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Template_ID FROM templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT COUNT(*) FROM templates WHERE Template_Type_Code = 'CV'
SELECT COUNT(*) FROM templates WHERE Template_Type_Code = "CV"
SELECT Version_Number, Template_Type_Code FROM templates WHERE Version_Number > 5
SELECT Version_Number, Template_Type_Code FROM templates WHERE Version_Number > 5
SELECT Template_Type_Code, COUNT(*) FROM templates GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(*) FROM templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT Template_Type_Code FROM Ref_Template_Types GROUP BY Template_Type_Code HAVING COUNT(*) < 3
SELECT Version_Number, Template_Type_Code FROM templates ORDER BY Version_Number LIMIT 1
SELECT Template_Type_Code, MIN(Version_Number) FROM templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM templates WHERE Document_Name = "Data base"
SELECT Template_Type_Code FROM templates WHERE Template_Details = "Data base"
SELECT Document_Name FROM documents WHERE Template_ID IN (SELECT Template_ID FROM templates WHERE Template_Type_Code = "BK")
SELECT Document_Name FROM documents WHERE Template_ID = (SELECT Template_ID FROM templates WHERE Template_Type_Code = "BK")
SELECT Template_Type_Code, COUNT(*) FROM documents GROUP BY Template_Type_Code
SELECT Template_Type_Code, COUNT(*) FROM templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code FROM Ref_Template_Types WHERE NOT Template_Type_Code IN (SELECT Template_Type_Code FROM Templates)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = 'AD'
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT Template_Type_Description FROM templates
SELECT DISTINCT Template_Details FROM templates
SELECT Template_ID FROM templates WHERE Template_Type_Code = (SELECT Template_Type_Code FROM ref_template_types WHERE Template_Type_Description = "Presentation")
SELECT Template_ID FROM templates WHERE Template_Details = 'Presentation'
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs
SELECT COUNT(*) FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM documents WHERE Document_Name = 'Summer Show')
SELECT COUNT(*) FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM documents WHERE Document_Name = 'Summer Show')
SELECT Other_Details FROM paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Other_Details FROM paragraphs WHERE Paragraph_Text = 'Korea '
SELECT Paragraph_ID, Paragraph_Text FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM documents WHERE Document_Name = 'Welcome to NY')
SELECT Paragraph_ID, Paragraph_Text FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM documents WHERE Document_Name = 'Welcome to NY')
SELECT Paragraph_Text FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM documents WHERE Document_Name = "Customer reviews")
SELECT Paragraph_Text FROM paragraphs WHERE Document_ID = (SELECT Document_ID FROM documents WHERE Document_Name = 'Customer reviews')
SELECT Document_ID, COUNT(*) FROM paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, COUNT(*) FROM paragraphs GROUP BY Document_ID ORDER BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM documents GROUP BY Document_ID
SELECT Document_ID, Document_Name, COUNT(*) FROM documents GROUP BY Document_ID
SELECT Document_ID FROM paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID FROM paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT Document_ID, Document_Name FROM documents ORDER BY Document_ID DESC LIMIT 1
SELECT Document_ID, Document_Name FROM documents ORDER BY Document_ID DESC LIMIT 1
SELECT Document_ID FROM documents ORDER BY Document_ID LIMIT 1
SELECT Document_ID FROM documents ORDER BY Document_ID LIMIT 1
SELECT Document_ID FROM paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM paragraphs GROUP BY Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT Document_ID FROM documents WHERE Document_Name = 'Brazil'
SELECT Document_ID FROM paragraphs WHERE Paragraph_Text = 'Brazil' INTERSECT SELECT Document_ID FROM paragraphs WHERE Paragraph_Text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Name, Course FROM teacher JOIN course_arrange ON Teacher_ID = Teacher_ID
SELECT Name, Course FROM teacher JOIN course_arrange ON Teacher_ID = Teacher_ID
SELECT Name, Course FROM teacher JOIN course_arrange ON Teacher_ID = Teacher_ID ORDER BY Name
SELECT Name, Course FROM teacher JOIN course_arrange ON Teacher_ID = Teacher_ID ORDER BY Name
SELECT Name FROM teacher WHERE Teacher_ID = (SELECT Teacher_ID FROM course_arrange WHERE Course_ID = (SELECT Course_ID FROM course WHERE Course = "Math")
SELECT Name FROM teacher WHERE Course = "Math"
SELECT Name, COUNT(*) FROM teacher JOIN course_arrange ON Teacher_ID = Teacher_ID GROUP BY Teacher_ID
SELECT Name, COUNT(*) FROM teacher JOIN course_arrange ON Teacher_ID = Teacher_ID GROUP BY Teacher_ID
SELECT Name FROM teacher GROUP BY Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher GROUP BY Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE NOT Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT COUNT(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT AVG(Age) FROM visitor WHERE Level_of_membership <= 4
SELECT Name, Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age DESC
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT AVG(Num_of_Staff) FROM museum WHERE Open_Year < "2009"
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > "2010")
SELECT visitor_ID, Name, Age FROM visitor WHERE visitor_ID IN (SELECT visitor_ID FROM visit GROUP BY visitor_ID HAVING COUNT(*) > 1)
SELECT visitor_ID, Name, Level_of_membership FROM visitor WHERE ID IN (SELECT visitor_ID FROM visit GROUP BY visitor_ID ORDER BY SUM(Total_spent) DESC LIMIT 1)
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT Name FROM museum WHERE NOT Museum_ID IN (SELECT Museum_ID FROM visit)
SELECT Name, Age FROM visitor WHERE ID = (SELECT visitor_ID FROM visit GROUP BY visitor_ID ORDER BY COUNT(*) DESC LIMIT 1)
SELECT AVG(Num_of_Ticket), MAX(Num_of_Ticket) FROM visit
SELECT Total_spent FROM visit WHERE Level_of_membership = 1
SELECT Name FROM visitor WHERE ID IN (SELECT visitor_ID FROM visit WHERE museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year < "2009") INTERSECT SELECT visitor_ID FROM visit WHERE museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > "2011"))
SELECT COUNT(*) FROM visitor WHERE NOT ID IN (SELECT visitor_ID FROM visit WHERE museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > "2010"))
SELECT COUNT(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM players
SELECT COUNT(*) FROM matches
SELECT COUNT(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
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
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING COUNT(*) > 10
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT COUNT(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT COUNT(*) FROM matches WHERE year = 2013 OR year = 2016
SELECT country_code, first_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_id = "WTA Championships" INTERSECT SELECT winner_id FROM matches WHERE tourney_id = "Australian Open")
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT winner_id FROM matches WHERE tourney_name = "Australian Open")
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "Left" ORDER BY birth_date
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, ranking_points FROM matches GROUP BY winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open"
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name, loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT AVG(ranking), first_name FROM players GROUP BY player_id
SELECT first_name, AVG(ranking_points) FROM players JOIN rankings ON player_id = player_id GROUP BY player_id
SELECT first_name, SUM(ranking_points) FROM players JOIN rankings ON player_id = player_id GROUP BY player_id
SELECT first_name, SUM(ranking_points) FROM players JOIN rankings ON player_id = player_id GROUP BY player_id
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code, COUNT(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING COUNT(*) > 50
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT ranking_date, SUM(tours) FROM rankings GROUP BY ranking_date
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT year, COUNT(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT COUNT(*) FROM players WHERE ioc = "USA" AND hand = "Left"
SELECT COUNT(*) FROM players WHERE hand = "Left"
SELECT first_name, country_code, birth_date FROM players WHERE player_id = (SELECT winner_id FROM matches GROUP BY winner_id ORDER BY SUM(winner_rank_points) DESC LIMIT 1)
SELECT first_name, country_code, birth_date FROM players WHERE player_id = (SELECT winner_id FROM matches GROUP BY winner_id ORDER BY SUM(winner_rank_points) DESC LIMIT 1)
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT hand, COUNT(*) FROM players GROUP BY hand
SELECT COUNT(*) FROM ship WHERE disposition_of_ship = "Captured"
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT MAX(killed), MIN(killed) FROM death
SELECT AVG(injured) FROM death
SELECT note, killed, injured FROM death WHERE caused_by_ship_id = (SELECT id FROM ship WHERE tonnage = 't')
SELECT name, result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT id, name FROM battle WHERE id IN (SELECT lost_in_battle FROM ship WHERE ship_type = "Brig")
SELECT id, name FROM battle WHERE result = "Victory"
SELECT caused_by_ship_id, name FROM ship WHERE id = (SELECT caused_by_ship_id FROM death GROUP BY caused_by_ship_id ORDER BY SUM(injured) DESC LIMIT 1)
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = "Kaloyan" OR latin_commander = "Baldwin I"
SELECT COUNT(DISTINCT result) FROM battle
SELECT COUNT(*) FROM battle WHERE NOT id IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT name, date FROM battle WHERE id = (SELECT lost_in_battle FROM ship WHERE name = 'Lettice')
SELECT name, result, bulgarian_commander FROM battle WHERE NOT lost_in_battle = 1
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT COUNT(*) FROM courses
SELECT COUNT(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name = "Mathematics"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM departments GROUP BY department_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_id, department_name FROM departments ORDER BY department_id DESC LIMIT 1
SELECT COUNT(*) FROM degree_programs
SELECT COUNT(DISTINCT department_id) FROM degree_programs
SELECT COUNT(DISTINCT degree_summary_name) FROM degree_programs
SELECT COUNT(*) FROM degree_programs
SELECT COUNT(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT COUNT(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT section_name, section_description FROM sections
SELECT section_name, section_description FROM sections
SELECT course_id, course_name FROM courses WHERE section_count <= 2
SELECT course_name, course_id FROM courses WHERE course_id NOT IN (SELECT course_id FROM sections GROUP BY course_id HAVING COUNT(*) >= 2)
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT semester_name, semester_id FROM semesters GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_id, semester_name FROM semesters GROUP BY semester_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%the computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT first_name, middle_name, last_name, student_id FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment GROUP BY student_id HAVING COUNT(*) = 2)
SELECT student_id, first_name, middle_name, last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment GROUP BY student_id HAVING COUNT(*) = 2)
SELECT first_name, middle_name, last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_id = 1))
SELECT first_name, middle_name, last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_id = 1))
SELECT degree_program_id FROM student_enrolment GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs GROUP BY degree_program_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT student_id, first_name, middle_name, last_name, COUNT(*) AS num_enrollments FROM students JOIN student_enrolment ON student_id = student_id GROUP BY student_id ORDER BY num_enrollments DESC LIMIT 1
SELECT first_name, middle_name, last_name, student_id, COUNT(*) FROM students JOIN student_enrolment ON student_id = student_id GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE NOT semester_id IN (SELECT semester_id FROM student_enrolment)
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses)
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses)
SELECT course_name FROM courses ORDER BY course_id DESC LIMIT 1
SELECT course_name FROM courses ORDER BY course_id DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment)
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment)
SELECT transcript_date, transcript_id FROM Transcripts GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT transcript_id, transcript_date FROM Transcripts GROUP BY transcript_id HAVING COUNT(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT first_name FROM students WHERE permanent_address_id <> current_address_id
SELECT current_address_id, line_1, line_2, line_3, city, zip_postcode, state_province_county, country FROM addresses GROUP BY current_address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses GROUP BY address_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(transcript_date) FROM transcripts
SELECT AVG(transcript_date) FROM transcripts
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT COUNT(*) FROM Transcripts
SELECT COUNT(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT student_course_id FROM student_enrolment_courses GROUP BY student_course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT course_id, COUNT(*) FROM student_enrolment_courses GROUP BY course_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT transcript_date, transcript_id FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_id, transcript_date FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Master") INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Bachelor")
SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name IN ('Bachelor of Arts', 'Master of Arts'))
SELECT COUNT(DISTINCT current_address_id) FROM students
SELECT DISTINCT current_address_id FROM students
SELECT * FROM students ORDER BY last_name DESC, first_name DESC, middle_name DESC
SELECT other_student_details FROM students ORDER BY last_name DESC
SELECT section_description FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id = (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
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
SELECT COUNT(DISTINCT Series_name), COUNT(DISTINCT Content) FROM TV_Channel
SELECT COUNT(DISTINCT Series_name), COUNT(DISTINCT Content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT COUNT(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Series_name FROM TV_series WHERE Episode = "The Rise of the Blue Beetle!"
SELECT Series_name FROM TV_channel WHERE id = (SELECT Channel FROM Cartoon WHERE Title = "The Rise of the Blue Beetle")
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE Series_name = "Sky Radio")
SELECT Title FROM Cartoon WHERE Channel = (SELECT id FROM TV_Channel WHERE Series_name = "Sky Radio")
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM tv_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode, Rating FROM tv_series ORDER BY Rating DESC LIMIT 3
SELECT MIN(Share), MAX(Share) FROM TV_series
SELECT MAX(Share), MIN(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Channel FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Series_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = (SELECT id FROM TV_channel WHERE Series_name = "Sky Radio")
SELECT Episode FROM TV_series WHERE Title = "Sky Radio"
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Directed_by, COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option, Series_name FROM TV_channel WHERE Hight_definition_TV = "Yes"
SELECT Package_Option, Series_name FROM TV_Channel WHERE Hight_definition_TV = "Yes"
SELECT Country FROM TV_Channel WHERE Channel IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT Country FROM TV_Channel WHERE Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE NOT Channel IN (SELECT Channel FROM Cartoon WHERE Written_by = "Todd Casey")
SELECT Country FROM TV_Channel WHERE NOT Written_by = "Todd Casey"
SELECT series_name, country FROM TV_series WHERE channel IN (SELECT id FROM TV_channel WHERE directed_by = "Ben Jones" OR directed_by = "Michael Chang")
SELECT series_name, country FROM TV_Channel WHERE id IN (SELECT channel FROM Cartoon WHERE directed_by = "Ben Jones" INTERSECT SELECT channel FROM Cartoon WHERE directed_by = "Michael Chang")
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language <> "English"
SELECT Channel FROM TV_series GROUP BY Channel HAVING COUNT(*) > 2
SELECT Channel FROM TV_series GROUP BY Channel HAVING COUNT(*) > 2
SELECT id FROM TV_Channel WHERE NOT id IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT Channel FROM Cartoon WHERE Directed_by <> "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE NOT Channel = (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
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
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT Birth_Date FROM people WHERE People_ID = (SELECT People_ID FROM poker_player ORDER BY Earnings LIMIT 1)
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
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE Nationality <> "Russia"
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE NOT People_ID IN (SELECT People_ID FROM poker_player)
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(DISTINCT Nationality) FROM people
SELECT COUNT(*) FROM area_code_state
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM votes
SELECT MAX(area_code), MIN(area_code) FROM area_code_state
SELECT created FROM votes WHERE state = 'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM contestants WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state, created FROM votes
SELECT contestant_number, contestant_name FROM contestants WHERE contestant_number IN (SELECT contestant_number FROM votes GROUP BY contestant_number HAVING COUNT(*) >= 2)
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_number LIMIT 1
SELECT vote_id FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT COUNT(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT state FROM votes GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT created, state, phone_number FROM votes WHERE contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = 'Tabatha Gehling')
SELECT area_code FROM votes WHERE contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = "Tabatha Gehling") INTERSECT SELECT area_code FROM votes WHERE contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = "Kelly Clauss")
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT COUNT(*) FROM country WHERE GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Region = "Caribbean"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT Language FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT Region, Population FROM country WHERE Name = "Angola"
SELECT AVG(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy LIMIT 1
SELECT SUM(Population), MAX(GNP) FROM country WHERE Continent = "Asia"
SELECT Population FROM country WHERE Continent = "Asia"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT AVG(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia"
SELECT SUM(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT SUM(Population) FROM city WHERE District = "Gelderland"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "US Territory"
SELECT AVG(GNP), SUM(Population) FROM country WHERE GovernmentForm = "United States Territory"
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT Language) FROM countrylanguage
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'ABW'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T'
SELECT COUNT(*) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 'T'
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM country WHERE Code = (SELECT CountryCode FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1)
SELECT Continent FROM country GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM country GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT COUNT(*) FROM countrylanguage WHERE Language = 'Dutch'
SELECT COUNT(*) FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") INTERSECT SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "French")
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English") INTERSECT SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "French")
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" INTERSECT SELECT CountryCode FROM countrylanguage WHERE Language = "French")
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" INTERSECT SELECT CountryCode FROM countrylanguage WHERE Language = "French")
SELECT COUNT(DISTINCT Continent) FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "Chinese")
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Chinese"
SELECT Region FROM country WHERE GovernmentForm = "Constitutional Monarchy" AND Capital = ID
SELECT Region FROM country WHERE LocalName = "Netherlands" OR LocalName = "United Kingdom"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT Language FROM country WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'T' GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'T' GROUP BY Language HAVING COUNT(*) = 1
SELECT Name FROM city WHERE ID = (SELECT City FROM countrylanguage WHERE Language = 'English')
SELECT Name FROM city WHERE ID = (SELECT City FROM countrylanguage WHERE Language = 'English')
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = "Asia" ORDER BY SurfaceArea DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code2 = 'GB'
SELECT AVG(LifeExpectancy) FROM country WHERE NOT Code2 = 'GB'
SELECT SUM(Population) FROM country WHERE NOT Code2 = 'GB'
SELECT Population FROM country WHERE NOT Code2 = 'GB'
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = "Beatrix") AND IsOfficial = "T"
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE HeadOfState = "Beatrix") AND IsOfficial = "T"
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 'T' AND CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE Continent = "Africa" AND Population < (SELECT MIN(Population) FROM country WHERE Continent = "Asia")
SELECT Name FROM country WHERE Continent = "Africa" HAVING Population < (SELECT MIN(Population) FROM country WHERE Continent = "Asia")
SELECT Name FROM country WHERE Continent = "Asia" GROUP BY Name HAVING Population > (SELECT MAX(Population) FROM country WHERE Continent = "Africa")
SELECT Name FROM country WHERE Continent = "Asia" GROUP BY Name HAVING SUM(Population) > (SELECT SUM(Population) FROM country WHERE Continent = "Africa")
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT CountryCode FROM countrylanguage WHERE Language <> 'English'
SELECT Code FROM country WHERE NOT Language = 'English' AND GovernmentForm <> 'Republic'
SELECT Code FROM country WHERE NOT Code2 = 'US' AND GovernmentForm <> 'Republic'
SELECT Name FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Code NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" AND IsOfficial = "T")
SELECT Name FROM city WHERE CountryCode NOT IN (SELECT Code FROM country WHERE Continent = 'Europe')
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "Chinese" AND T3.IsOfficial = "T"
SELECT Name FROM city WHERE CountryCode = (SELECT Code FROM country WHERE Continent = "Asia") INTERSECT SELECT Name FROM city WHERE CountryCode = (SELECT Code FROM countrylanguage WHERE Language = "Chinese" AND IsOfficial = "T")
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population LIMIT 1
SELECT Population, Name, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, Population, HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT Name, COUNT(*) FROM country GROUP BY Code HAVING COUNT(*) >= 3
SELECT Name, COUNT(*) FROM country GROUP BY Name HAVING COUNT(*) > 2
SELECT COUNT(*) FROM city GROUP BY District HAVING Population > (SELECT AVG(Population) FROM city)
SELECT District, COUNT(*) FROM city GROUP BY District HAVING AVG(Population) > (SELECT AVG(Population) FROM city)
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT GovernmentForm, SUM(Population) FROM country GROUP BY GovernmentForm HAVING AVG(LifeExpectancy) > 72
SELECT Continent, AVG(LifeExpectancy), SUM(Population) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT Continent, SUM(Population), AVG(LifeExpectancy) FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT COUNT(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population >= 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Population, SurfaceArea FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT Population, SurfaceArea FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY SUM(Percentage) DESC LIMIT 1
SELECT CountryCode, Language FROM countrylanguage GROUP BY CountryCode ORDER BY Percentage DESC
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT COUNT(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode HAVING COUNT(*) > 1
SELECT COUNT(*) FROM conductor
SELECT COUNT(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Name FROM conductor WHERE Nationality <> "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT AVG(Attendance) FROM show
SELECT AVG(Attendance) FROM show
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT MAX(Share), MIN(Share) FROM performance WHERE Type <> "Live final"
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name, Orchestra FROM conductor JOIN orchestra ON Conductor_ID = Conductor_ID
SELECT Name, Orchestra FROM conductor JOIN orchestra ON Conductor_ID = Conductor_ID
SELECT Name FROM conductor GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM conductor GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM conductor GROUP BY Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor GROUP BY Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor WHERE Year_of_Work > 2008
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra WHERE Year_of_Founded > 2008)
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE NOT Orchestra_ID IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT COUNT(*) FROM orchestra WHERE Major_Record_Format = "CD" OR Major_Record_Format = "DVD"
SELECT Year_of_Founded FROM orchestra GROUP BY Orchestra_ID HAVING COUNT(*) > 1
SELECT Year_of_Founded FROM orchestra GROUP BY Orchestra_ID HAVING COUNT(*) > 1
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
SELECT ID FROM Highschooler WHERE name = "Kyle"
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade, COUNT(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY COUNT(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING COUNT(*) >= 4
SELECT student_id, friend_id FROM Friend
SELECT student_id, COUNT(*) FROM Friend GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler JOIN Friend ON ID = student_id GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler JOIN Friend ON ID = student_id GROUP BY student_id
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) >= 3)
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"))
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle"))
SELECT COUNT(*) FROM Friend WHERE student_id = 10000
SELECT COUNT(*) FROM Friend WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT ID FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) INTERSECT SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend) INTERSECT (SELECT student_id FROM Likes)
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT student_id, COUNT(*) FROM Likes GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler JOIN Likes ON ID = student_id GROUP BY student_id
SELECT name, COUNT(*) FROM Highschooler JOIN Likes ON ID = student_id GROUP BY student_id
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID = (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY ID HAVING COUNT(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY ID HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT COUNT(*) FROM Likes WHERE student_id = (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT MIN(grade) FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT AVG(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana"
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana"
SELECT name FROM dogs WHERE NOT cost_of_treatment > 1000
SELECT name FROM dogs WHERE owner_id NOT IN (SELECT owner_id FROM treatments GROUP BY owner_id HAVING SUM(cost_of_treatment) > 1000)
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT professional_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT owner_id, first_name, last_name FROM owners GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, first_name, last_name FROM owners GROUP BY owner_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT professional_id, role_code, first_name FROM Professionals GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, role_code, first_name FROM professionals GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT breed_name FROM breeds GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT breed_name FROM breeds GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT owner_id, last_name FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT owner_id, last_name FROM owners WHERE owner_id = (SELECT owner_id FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1)
SELECT treatment_type_description FROM treatment_types ORDER BY treatment_type_code LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY treatment_type_code LIMIT 1
SELECT owner_id, zip_code FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT owner_id, zip_code FROM dogs GROUP BY owner_id ORDER BY SUM(cost_of_treatment) DESC LIMIT 1
SELECT professional_id, cell_number FROM Professionals GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id, cell_number FROM Professionals GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT first_name, last_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM treatments)
SELECT first_name, last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE cost_of_treatment < (SELECT AVG(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment, first_name FROM treatments JOIN professionals ON professional_id = professional_id
SELECT date_of_treatment, first_name FROM treatments
SELECT cost_of_treatment, treatment_type_description FROM treatments JOIN treatment_types ON treatment_type_code = treatment_type_description
SELECT cost_of_treatment, treatment_type_description FROM treatments JOIN treatment_types ON treatment_type_code = treatment_type_description
SELECT first_name, last_name, size_description FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id JOIN sizes ON dogs.size_code = sizes.size_code
SELECT first_name, last_name, size_code FROM owners JOIN dogs ON owner_id = owner_id
SELECT first_name, name FROM owners JOIN dogs ON owner_id = owner_id
SELECT first_name, name FROM owners JOIN dogs ON owner_id = owner_id
SELECT name, date_of_treatment FROM dogs JOIN treatments ON dog_id = dog_id WHERE breed_code = (SELECT breed_code FROM breeds GROUP BY breed_code ORDER BY COUNT(*) LIMIT 1)
SELECT name, date_of_treatment FROM dogs JOIN treatments ON dog_id = dog_id ORDER BY breed_code LIMIT 1
SELECT first_name, name FROM owners JOIN dogs ON owner_id = owner_id WHERE state = "Virginia"
SELECT first_name FROM owners WHERE state = "Virginia"
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT date_arrived, date_departed FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT last_name FROM owners WHERE owner_id = (SELECT owner_id FROM dogs ORDER BY age LIMIT 1)
SELECT last_name FROM owners ORDER BY date_of_birth DESC LIMIT 1
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM dogs
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT COUNT(*) FROM treatments
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code, street, city, state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT COUNT(*) FROM dogs WHERE age < (SELECT AVG(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM dogs WHERE NOT dog_id IN (SELECT dog_id FROM treatments)
SELECT COUNT(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Owners WHERE NOT owner_id IN (SELECT owner_id FROM Dogs)
SELECT COUNT(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT COUNT(*) FROM Professionals WHERE NOT professional_id IN (SELECT professional_id FROM Treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT AVG(age) FROM dogs
SELECT AVG(age) FROM dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT breed_code, size_code FROM breeds JOIN sizes ON breed_code = size_code
SELECT DISTINCT breed_code, size_code FROM dogs
SELECT first_name, treatment_type_description FROM professionals JOIN treatments ON professional_id = professional_id JOIN treatment_types ON treatment_type_code = treatment_type_code
SELECT first_name, treatment_type_description FROM professionals JOIN treatments ON professional_id = professional_id JOIN treatment_types ON treatment_type_code = treatment_type_code
SELECT COUNT(*) FROM singer
SELECT COUNT(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE NOT Citizenship = "France"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Title, Name FROM song JOIN singer ON Song.Singer_ID = Singer.Singer_ID
SELECT Title, Name FROM song JOIN singer ON Song.Singer_ID = Singer.Singer_ID
SELECT DISTINCT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song WHERE Sales > 300000)
SELECT Name FROM singer WHERE Sales > 300000
SELECT Name FROM singer GROUP BY Name HAVING COUNT(*) > 1
SELECT Name FROM singer GROUP BY Name HAVING COUNT(*) > 1
SELECT Name, SUM(Sales) FROM singer JOIN song ON Singer_ID = Singer_ID GROUP BY Singer_ID
SELECT Name, SUM(Sales) FROM singer JOIN song ON Singer_ID = Singer_ID GROUP BY Name
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE NOT Singer_ID IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT COUNT(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM properties WHERE property_type_code = "APT"
SELECT property_name FROM properties WHERE property_type_code = "Hse" OR property_type_code = "Apt" AND room_count > 1
