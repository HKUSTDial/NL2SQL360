select count(*) from singer
select count(*) from singer
select singer.name , singer.country , singer.age from singer   order by singer.age asc
select singer.name , singer.country , singer.age from singer   order by singer.age desc
select avg(singer.age) , min(singer.age) , max(singer.age) from singer where  singer.country = "France"
select avg(singer.age) , min(singer.age) , max(singer.age) from singer where  singer.country = "France"
select singer.song_name , singer.song_release_year from singer   order by singer.age asc limit 1
select singer.song_name , singer.song_release_year from singer   order by singer.age asc limit 1
select distinct singer.country from singer where  singer.age > 20
select distinct singer.country from singer where  singer.age > 20
select singer.country , count(*) from singer  group by singer.country
select singer.country , count(*) from singer  group by singer.country
select singer.song_name from singer where  singer.age > (select avg(singer.age) from singer  )
select singer.song_name from singer where  singer.age > (select avg(singer.age) from singer  )
select stadium.location , stadium.name from stadium where  stadium.capacity between 5000 and 10000
select stadium.location , stadium.name from stadium where  stadium.capacity between 5000 and 10000
select max(stadium.capacity) , avg(stadium.average) from stadium
select stadium.average , stadium.capacity from stadium
select stadium.name , stadium.capacity from stadium  group by stadium.capacity  order by avg(stadium.average) desc limit 1
select stadium.name , stadium.capacity from stadium  group by stadium.capacity  order by avg(stadium.average) desc limit 1
select count(*) from concert where  concert.year = 2014 or concert.year = 2015
select count(*) from concert where  concert.year = 2014 or concert.year = 2015
select stadium.name , count(*) from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID  group by concert.stadium_id
select stadium.name , count(*) from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID  group by stadium.stadium_id
select stadium.name , stadium.capacity from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year >= 2014  group by concert.stadium_id  order by count(*) desc limit 1
select stadium.name , stadium.capacity from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year > 2013  group by concert.stadium_id  order by count(*) desc limit 1
select concert.year from concert  group by concert.year  order by count(*) desc limit 1
select concert.year from concert  group by concert.year  order by count(*) desc limit 1
select stadium.name from stadium where  stadium.stadium_id not in (select concert.Stadium_ID from concert  )
select stadium.name from stadium   except select concert.concert_name from concert
select singer.country from singer where  singer.age > 40   intersect select singer.country from singer where  singer.age < 30
select stadium.name from stadium   except select stadium.name from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2014
select stadium.name from stadium   except select stadium.name from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2014
select concert.concert_name , concert.theme , count(*) from singer_in_concert join concert on singer_in_concert.concert_ID = concert.concert_ID  group by concert.concert_name
select concert.concert_name , concert.theme , count(*) from singer_in_concert join concert on singer_in_concert.concert_ID = concert.concert_ID  group by concert.concert_name
select singer.name , count(*) from singer_in_concert join singer on singer_in_concert.Singer_ID = singer.Singer_ID join concert on singer_in_concert.concert_ID = concert.concert_ID  group by singer.singer_id
select singer.name , count(*) from singer_in_concert join singer on singer_in_concert.Singer_ID = singer.Singer_ID join concert on singer_in_concert.concert_ID = concert.concert_ID  group by singer.singer_id
select singer.name from singer_in_concert join singer on singer_in_concert.Singer_ID = singer.Singer_ID join concert on singer_in_concert.concert_ID = concert.concert_ID where  concert.year = 2014
select singer.name from singer_in_concert join singer on singer_in_concert.Singer_ID = singer.Singer_ID join concert on singer_in_concert.concert_ID = concert.concert_ID where  concert.year = 2014
select singer.name , singer.country from singer where  singer.song_name like "%Hey%"
select singer.name , singer.country from singer where  singer.song_name like "%Hey%"
select stadium.name , stadium.location from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2014   intersect select stadium.name , stadium.location from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2015
select stadium.name , stadium.location from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2014   intersect select stadium.name , stadium.location from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2015
select count(*) from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID   order by stadium.capacity desc limit 1
select count(*) from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID   order by stadium.capacity desc limit 1
select count(*) from Pets where  pets.weight > 10
select count(*) from Pets where  pets.weight > 10
select pets.weight from Pets   order by pets.pet_age asc limit 1
select pets.weight from Pets   order by pets.pet_age asc limit 1
select max(pets.weight) , pets.pettype from Pets  group by pets.pettype
select max(pets.weight) , max(pets.pettype) , pets.pettype from Pets  group by pets.pettype
select count(*) from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  student.age > 20
select count(*) from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  student.age > 20
select count(*) from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  student.sex = "F"
select count(*) from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  student.sex = "F"
select count( distinct pets.pettype) from Pets
select count( distinct pets.pettype) from Pets
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat" or pets.pettype = "dog"
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat" or pets.pettype = "dog"
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"   intersect select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "dog"
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"   intersect select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "dog"
select student.major , student.age from Student   except select student.major , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"
select student.major , student.age from Student   except select student.major , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"
select student.stuid from Student   except select student.stuid from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"
select student.stuid from Student   except select student.stuid from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"
select student.fname , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "dog" and pets.pet_age != "cat"
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "dog"   except select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"
select pets.pettype , pets.weight from Pets   order by pets.pet_age asc limit 1
select pets.pettype , pets.weight from Pets   order by pets.pet_age asc limit 1
select pets.petid , pets.weight from Pets where  pets.pet_age > 1
select pets.petid , pets.weight from Pets where  pets.pet_age > 1
select avg(pets.pet_age) , max(pets.pet_age) , pets.pettype from Pets  group by pets.pettype
select avg(pets.pet_age) , max(pets.pet_age) , pets.pettype from Pets  group by pets.pettype
select pets.pettype , avg(pets.weight) from Pets  group by pets.pettype
select pets.pettype , avg(pets.weight) from Pets  group by pets.pettype
select distinct student.fname , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID
select distinct student.fname , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID
select has_pet.petid from Has_Pet join Student on Has_Pet.StuID = Student.StuID where  student.lname = "Smith"
select has_pet.petid from Has_Pet join Student on Has_Pet.StuID = Student.StuID where  student.lname = "Smith"
select count(*) , has_pet.stuid from Has_Pet join Pets on Has_Pet.PetID = Pets.PetID  group by has_pet.stuid
select count(*) , has_pet.stuid from Has_Pet  group by has_pet.stuid
select student.fname , student.sex from Has_Pet join Student on Has_Pet.StuID = Student.StuID  group by has_pet.stuid having  count(*) > 1
select student.fname , student.sex from Has_Pet join Student on Has_Pet.StuID = Student.StuID  group by has_pet.stuid having  count(*) > 1
select student.lname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pet_age = 3 and pets.pettype = "cat"
select student.lname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pet_age = 3 and pets.pettype = "cat"
select avg(student.age) from Student where  student.stuid not in (select Has_Pet.StuID from Has_Pet  )
select avg(student.age) from Student where  student.stuid not in (select Has_Pet.StuID from Has_Pet  )
select count(*) from continents
select count(*) from continents
select continents.contid , continents.continent , count(*) from countries join continents on countries.Continent = continents.ContId  group by continents.contid
select continents.continent , continents.contid , countries.countryname , count(*) from countries join continents on countries.Continent = continents.ContId  group by continents.continent
select count( distinct countries.countryname) from countries
select count(*) from countries
select car_makers.fullname , car_makers.id , count(*) from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.maker
select car_makers.fullname , car_makers.id , count(*) from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.maker
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model   order by cars_data.horsepower asc limit 1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model   order by cars_data.horsepower asc limit 1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  cars_data.weight < (select avg(cars_data.Weight) from cars_data  )
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  cars_data.weight < (select avg(cars_data.Weight) from cars_data  )
select car_makers.maker from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  cars_data.year = 1970
select distinct car_makers.maker from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  cars_data.year = 1970
select car_names.make , cars_data.year from cars_data join car_names on cars_data.Id = car_names.MakeId   order by cars_data.year asc limit 1
select car_makers.maker , cars_data.year from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id   order by cars_data.year asc limit 1
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  cars_data.year > 1980
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  cars_data.year > 1980
select continents.continent , count(*) from car_makers join countries on car_makers.Country = countries.CountryId join continents on countries.Continent = continents.ContId  group by continents.continent
select continents.continent , count(*) from car_makers join countries on car_makers.Country = countries.CountryId join continents on countries.Continent = continents.ContId  group by continents.continent
select countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by countries.countryname  order by count(*) desc limit 1
select countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by car_makers.country  order by count(*) desc limit 1
select count(*) , car_makers.fullname from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.maker
select count(*) , car_makers.id , car_makers.fullname from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.maker
select cars_data.accelerate from cars_data join car_names on cars_data.Id = car_names.MakeId where  car_names.make = "amc hornet"   intersect select cars_data.accelerate from cars_data join car_names on cars_data.Id = car_names.MakeId where  car_names.make = "sw"
select cars_data.accelerate from cars_data join car_names on cars_data.Id = car_names.MakeId where  car_names.make = "amc hornet"   intersect select cars_data.accelerate from cars_data join car_names on cars_data.Id = car_names.MakeId where  car_names.make = "sw"
select count(*) from car_makers join countries on car_makers.Country = countries.CountryId where  countries.countryname = "france"
select count(*) from car_makers join countries on car_makers.Country = countries.CountryId where  countries.countryname = "france"
select count(*) from car_names join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id join countries on car_makers.Country = countries.CountryId where  countries.countryname = "usa"
select count(*) from model_list join car_makers on model_list.Maker = car_makers.Id where  car_makers.country = "USA"
select avg(cars_data.mpg) from cars_data where  cars_data.cylinders = 4
select avg(cars_data.mpg) from cars_data where  cars_data.cylinders = 4
select min(cars_data.weight) from cars_data where  cars_data.year = 1974 and cars_data.cylinders = 8
select min(cars_data.weight) from cars_data where  cars_data.year = 1974 and cars_data.cylinders = 8
select distinct car_makers.maker , model_list.model from model_list join car_makers on model_list.Maker = car_makers.Id
select car_makers.maker , model_list.model from model_list join car_makers on model_list.Maker = car_makers.Id
select countries.countryname , countries.countryid from car_makers join countries on car_makers.Country = countries.CountryId  group by car_makers.country having  count(*) >= 1
select countries.countryname , countries.countryid from car_makers join countries on car_makers.Country = countries.CountryId  group by car_makers.country having  count(*) >= 1
select count(*) from cars_data where  cars_data.horsepower > 150
select count(*) from cars_data where  cars_data.horsepower > 150
select avg(cars_data.weight) , cars_data.year from cars_data  group by cars_data.year
select avg(cars_data.weight) , avg(cars_data.year) , cars_data.year from cars_data  group by cars_data.year
select countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId join continents on countries.Continent = continents.ContId where  continents.continent = "europe"  group by countries.countryname having  count(*) >= 3
select countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by countries.countryname having  count(*) >= 3
select max(cars_data.horsepower) , max(car_names.make) from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders = 3
select max(cars_data.horsepower) , car_names.make from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders = 3  group by car_names.make
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model   order by cars_data.mpg desc limit 1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model   order by cars_data.mpg desc limit 1
select avg(cars_data.horsepower) from cars_data where  cars_data.year < 1980
select avg(cars_data.horsepower) from cars_data where  cars_data.year < 1980
select avg(cars_data.edispl) from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  model_list.model = "volvo"
select avg(cars_data.edispl) from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  model_list.model = "volvo"
select max(cars_data.accelerate) , cars_data.cylinders from cars_data  group by cars_data.cylinders
select max(cars_data.accelerate) , cars_data.cylinders from cars_data  group by cars_data.cylinders
select model_list.model from car_names join model_list on car_names.Model = model_list.Model  group by model_list.model  order by count(*) desc limit 1
select model_list.model from model_list  group by model_list.model  order by count( distinct model_list.model) desc limit 1
select count(*) from cars_data where  cars_data.cylinders > 4
select count(*) from cars_data where  cars_data.cylinders > 4
select count(*) from cars_data where  cars_data.year = 1980
select count(*) from cars_data where  cars_data.year = 1980
select count(*) from model_list join car_makers on model_list.Maker = car_makers.Id where  car_makers.fullname = "American Motor Company"
select count(*) from model_list join car_makers on model_list.Maker = car_makers.Id where  car_makers.fullname = "American Motor Company"
select car_makers.fullname , car_makers.id from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.maker having  count(*) > 3
select car_makers.maker , car_makers.id from car_makers  group by car_makers.maker having  count(*) > 3
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  car_makers.fullname = "General Motors" or cars_data.weight > 3500
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  car_makers.fullname = "General Motors" or cars_data.weight > 3500
select cars_data.year from cars_data where  cars_data.weight < 3000   intersect select cars_data.year from cars_data where  cars_data.weight > 4000
select distinct cars_data.year from cars_data where  cars_data.weight < 4000 and cars_data.weight > 3000
select cars_data.horsepower from cars_data   order by cars_data.accelerate desc limit 1
select cars_data.horsepower from cars_data   order by cars_data.accelerate desc limit 1
select cars_data.cylinders from cars_data   order by cars_data.accelerate asc limit 1
select cars_data.cylinders from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  model_list.model = "volvo"   order by cars_data.accelerate asc limit 1
select count(*) from cars_data where  cars_data.horsepower > (select max(cars_data.horsepower) from cars_data where  cars_data.accelerate = 1  )
select count(*) from cars_data where  cars_data.accelerate > (select max(cars_data.accelerate) from cars_data where  cars_data.horsepower = 1  )
select count(*) from car_makers  group by car_makers.country having  count(*) > 2
select count(*) from car_makers  group by car_makers.country having  count(*) > 2
select count(*) from cars_data where  cars_data.cylinders > 6
select count(*) from cars_data where  cars_data.cylinders > 6
select car_names.model from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders = 4   order by cars_data.horsepower desc limit 1
select car_names.model from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders = 4   order by cars_data.horsepower desc limit 1
select car_names.makeid , car_names.make from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.horsepower > (select min(cars_data.horsepower) from cars_data   order by cars_data.cylinders asc limit 3 )
select car_names.make , car_names.make from car_names   except select car_names.make , car_names.make from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.horsepower < 4
select max(cars_data.mpg) from cars_data where  cars_data.cylinders >= 8 or cars_data.year < 1980
select max(cars_data.mpg) from cars_data where  cars_data.cylinders >= 8 or cars_data.year < 1980
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  cars_data.weight < 3500 and car_makers.fullname != "Ford Motor Company"
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  cars_data.weight < 3500 and car_makers.maker != "Ford Motor Company"
select countries.countryname from countries where  countries.countryid not in (select car_makers.Country from car_makers  )
select countries.countryname from countries where  countries.countryid not in (select car_makers.Country from car_makers  )
select car_makers.id , car_makers.maker from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.id having  count(*) >= 2
select car_makers.id , car_makers.maker from car_names join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id  group by car_makers.id having  count(*) >= 2  intersect select car_makers.id , car_makers.maker from car_names join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id  group by car_makers.id having  count(*) >= 3
select countries.countryid , countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by countries.countryname having  count(*) > 3  union select countries.countryid , countries.countryname from car_names join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id join countries on car_makers.Country = countries.CountryId where  car_names.model = "fiat"
select countries.countryid , countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by countries.countryname having  count(*) > 3  union select countries.countryid , countries.countryname from model_list join car_makers on model_list.Maker = car_makers.Id join countries on car_makers.Country = countries.CountryId where  model_list.model = "fiat"
select airlines.country from airlines where  airlines.airline = "JetBlue Airways"
select airlines.country from airlines where  airlines.airline = "JetBlue Airways"
select airlines.abbreviation from airlines where  airlines.airline = "JetBlue Airways"
select airlines.abbreviation from airlines where  airlines.abbreviation = "JetBlue Airways"
select airlines.airline , airlines.abbreviation from airlines where  airlines.country = "USA"
select airlines.airline , airlines.abbreviation from airlines where  airlines.country = "USA"
select airports.airportcode , airports.airportname from airports where  airports.city = "Anthony"
select airports.airportcode , airports.airportname from airports where  airports.city = "Anthony"
select count(*) from airlines
select count(*) from airlines
select count(*) from airports
select count(*) from airports
select count(*) from flights
select count(*) from flights
select airlines.airline from airlines where  airlines.abbreviation = "UAL"
select airlines.airline from airlines where  airlines.abbreviation = "UAL"
select count(*) from airlines where  airlines.country = "USA"
select count(*) from airlines where  airlines.country = "USA"
select airports.city , airports.country from airports where  airports.airportname = "Alton"
select airports.city , airports.country from airports where  airports.airportname = "Alton"
select airports.airportname from airports where  airports.airportcode = "AKO"
select airports.airportname from airports where  airports.airportcode = "AKO"
select airports.airportname from airports where  airports.city = "Aberdeen"
select airports.airportname from airports where  airports.city = "Aberdeen"
select count(*) from flights where  flights.sourceairport = "APG"
select count(*) from flights where  flights.sourceairport = "APG"
select count(*) from flights where  flights.destairport = "ATO"
select count(*) from flights where  flights.sourceairport = "ATO"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen" and airports.airportname = "Ashley"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen" and airports.airportname = "Ashley"
select count(*) from airlines join flights on airlines.uid = flights.Airline where  airlines.airline = "JetBlue Airways"
select count(*) from airlines join flights on airlines.uid = flights.Airline where  airlines.airline = "JetBlue Airways"
select count(*) from airlines join flights on airlines.uid = flights.Airline where  flights.destairport = "ASY" and airlines.airline = "United Airlines"
select count(*) from airlines join flights on airlines.uid = flights.Airline where  flights.destairport = "ASY" and airlines.airline = "United Airlines"
select count(*) from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "AHD" and airlines.airline = "United Airlines"
select count(*) from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "AHD" and airlines.airline = "United Airlines"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode join airlines on airports.Country = airlines.Country where  airports.city = "Aberdeen" and airlines.airline = "United Airlines"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode join airlines on airports.Country = airlines.Country where  airports.city = "Aberdeen" and airlines.airline = "United Airlines"
select airports.city from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.city  order by count(*) desc limit 1
select airports.city from airports  group by airports.city  order by count(*) desc limit 1
select airports.city from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.city  order by count(*) desc limit 1
select airports.city from airports  group by airports.city  order by count(*) desc limit 1
select airports.airportcode from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.airportcode  order by count(*) desc limit 1
select airports.airportcode from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.airportcode  order by count(*) desc limit 1
select airports.airportcode from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.airportcode  order by count(*) asc limit 1
select airports.airportcode from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.airportcode  order by count(*) asc limit 1
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline  order by count(*) desc limit 1
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline  order by count(*) desc limit 1
select airlines.abbreviation , airlines.country from airlines join flights on airlines.uid = flights.Airline  group by airlines.abbreviation  order by count(*) asc limit 1
select airlines.abbreviation , airlines.country from airlines join flights on airlines.uid = flights.Airline  group by airlines.abbreviation  order by count(*) asc limit 1
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "AHD"
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "AHD"
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.destairport = "AHD"
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.destairport = "AHD"
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "APG"   intersect select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "CVO"
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "APG"   intersect select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "CVO"
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "CVO"   except select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "APG"
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.destairport = "CVO" and flights.sourceairport != "APG"
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline having  count(*) >= 10
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline having  count(*) >= 10
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline having  count(*) < 200
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline having  count(*) < 200
select flights.flightno from airlines join flights on airlines.uid = flights.Airline where  airlines.airline = "United Airlines"
select flights.flightno from airlines join flights on airlines.uid = flights.Airline where  airlines.airline = "United Airlines"
select flights.flightno from flights where  flights.sourceairport = "APG"
select flights.flightno from flights where  flights.sourceairport = "APG"
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.airportcode = "APG"
select flights.flightno from flights where  flights.destairport = "APG"
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen" or airports.city = "Abilene"
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen" or airports.city = "Abilene"
select airports.airportname from airports   except select airports.airportname from flights join airports on flights.DestAirport = airports.AirportCode
select airports.airportname from airports   except select airports.airportname from flights join airports on flights.DestAirport = airports.AirportCode
select count(*) from employee
select count(*) from employee
select employee.name from employee   order by employee.age asc
select employee.name from employee   order by employee.age asc
select employee.city , count(*) from employee  group by employee.city
select count(*) , employee.city from employee  group by employee.city
select employee.city from employee  group by employee.city having  count(*) > 1
select employee.city from employee where  employee.age < 30  group by employee.city having  count(*) > 1
select count(*) , shop.location from shop  group by shop.location
select shop.location , count(*) from shop  group by shop.location
select shop.manager_name , shop.district from shop   order by shop.number_products desc limit 1
select shop.manager_name , shop.district from shop   order by shop.number_products desc limit 1
select min(shop.number_products) , max(shop.number_products) from shop
select min(shop.number_products) , max(shop.number_products) from shop
select shop.name , shop.location , shop.district from shop   order by shop.number_products desc
select shop.name , shop.location , shop.district from shop   order by shop.number_products desc
select shop.name from shop where  shop.number_products > (select avg(shop.number_products) from shop  )
select shop.name from shop where  shop.number_products > (select avg(shop.number_products) from shop  )
select employee.name from evaluation join employee on evaluation.Employee_ID = employee.Employee_ID  group by evaluation.employee_id  order by count(*) desc limit 1
select employee.name from evaluation join employee on evaluation.Employee_ID = employee.Employee_ID  group by evaluation.employee_id  order by count(*) desc limit 1
select employee.name from evaluation join employee on evaluation.Employee_ID = employee.Employee_ID   order by evaluation.bonus desc limit 1
select employee.name from evaluation join employee on evaluation.Employee_ID = employee.Employee_ID   order by evaluation.bonus desc limit 1
select employee.name from employee where  employee.employee_id not in (select evaluation.Employee_ID from evaluation  )
select employee.name from employee where  employee.employee_id not in (select evaluation.Employee_ID from evaluation  )
select shop.name from hiring join shop on hiring.Shop_ID = shop.Shop_ID  group by hiring.shop_id  order by count(*) desc limit 1
select shop.name from hiring join shop on hiring.Shop_ID = shop.Shop_ID  group by shop.shop_id  order by count(*) desc limit 1
select shop.name from shop where  shop.shop_id not in (select hiring.Shop_ID from hiring  )
select shop.name from shop where  shop.shop_id not in (select hiring.Shop_ID from hiring  )
select count(*) , shop.name from hiring join shop on hiring.Shop_ID = shop.Shop_ID  group by shop.name
select count(*) , shop.name from hiring join shop on hiring.Shop_ID = shop.Shop_ID  group by shop.shop_id
select sum(evaluation.bonus) from evaluation
select sum(evaluation.bonus) from evaluation
select * from hiring
select distinct * from hiring
select shop.district from shop where  shop.number_products < 3000   intersect select shop.district from shop where  shop.number_products > 10000
select shop.district from shop where  shop.number_products < 3000   intersect select shop.district from shop where  shop.number_products > 10000
select count( distinct shop.location) from shop
select count( distinct shop.location) from shop
select count(*) from Documents
select count(*) from Documents
select documents.document_id , documents.document_name , documents.document_description from Documents
select documents.document_id , documents.document_name , documents.document_description from Documents
select documents.document_name , documents.template_id from Documents where  documents.document_description like "%w%"
select documents.document_name , documents.template_id from Documents where  documents.document_description like "%w%"
select documents.document_id , documents.template_id , documents.document_description from Documents where  documents.document_name = "Robbin CV"
select documents.document_id , documents.template_id , documents.document_description from Documents where  documents.document_name = "Robbin CV"
select count( distinct documents.template_id) from Documents
select count( distinct documents.template_id) from Documents
select count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  templates.template_type_code = "PPT"
select count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  templates.template_type_code = "PPT"
select templates.template_id , count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_id
select documents.template_id , count(*) from Documents  group by documents.template_id
select templates.template_id , templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_id  order by count(*) desc limit 1
select templates.template_id , templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_id  order by count(*) desc limit 1
select templates.template_id from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by documents.template_id having  count(*) > 1
select templates.template_id from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by documents.template_id having  count(*) > 1
select templates.template_id from Templates   except select documents.template_id from Documents
select templates.template_id from Templates   except select documents.template_id from Documents
select count(*) from Templates
select count(*) from Templates
select templates.template_id , templates.version_number , templates.template_type_code from Templates
select templates.template_id , templates.version_number , templates.template_type_code from Templates
select distinct templates.template_type_code from Templates
select distinct ref_template_types.template_type_code from Ref_Template_Types
select templates.template_id from Templates where  templates.template_type_code = "PP" or templates.template_type_code = "PPT"
select templates.template_id from Templates where  templates.template_type_code = "PP" or templates.template_type_code = "PPT"
select count(*) from Templates where  templates.template_type_code = "CV"
select count(*) from Templates where  templates.template_type_code = "CV"
select templates.version_number , templates.template_type_code from Templates where  templates.version_number > 5
select templates.version_number , templates.template_type_code from Templates where  templates.version_number > 5
select templates.template_type_code , count(*) from Templates  group by templates.template_type_code
select templates.template_type_code , count(*) from Templates  group by templates.template_type_code
select templates.template_type_code from Templates  group by templates.template_type_code  order by count(*) desc limit 1
select templates.template_type_code from Templates  group by templates.template_type_code  order by count(*) desc limit 1
select templates.template_type_code from Templates  group by templates.template_type_code having  count(*) < 3
select templates.template_type_code from Templates  group by templates.template_type_code having  count(*) < 3
select min(templates.version_number) , templates.template_type_code from Templates  group by templates.template_type_code
select templates.version_number , templates.template_type_code from Templates   order by templates.version_number asc limit 1
select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  documents.document_name = "Data base"
select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  documents.document_name = "Data base"
select documents.document_name from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  templates.template_type_code = "BK"
select documents.document_name from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  templates.template_type_code = "BK"
select templates.template_type_code , count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_type_code
select templates.template_type_code , count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_type_code
select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_type_code  order by count(*) desc limit 1
select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_type_code  order by count(*) desc limit 1
select templates.template_type_code from Templates   except select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID
select templates.template_type_code from Templates   except select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID
select ref_template_types.template_type_code , ref_template_types.template_type_description from Ref_Template_Types
select ref_template_types.template_type_code , ref_template_types.template_type_description from Ref_Template_Types
select ref_template_types.template_type_description from Ref_Template_Types where  ref_template_types.template_type_code = "AD"
select ref_template_types.template_type_description from Ref_Template_Types where  ref_template_types.template_type_code = "AD"
select ref_template_types.template_type_code from Ref_Template_Types where  ref_template_types.template_type_description = "Book"
select templates.template_type_code from Templates join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code where  ref_template_types.template_type_description = "Book"
select distinct ref_template_types.template_type_description from Documents join Templates on Documents.Template_ID = Templates.Template_ID join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code
select distinct ref_template_types.template_type_description from Documents join Templates on Documents.Template_ID = Templates.Template_ID join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code
select templates.template_id from Templates join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code where  ref_template_types.template_type_description = "Presentation"
select templates.template_id from Templates join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code where  ref_template_types.template_type_description = "Presentation"
select count(*) from Paragraphs
select count(*) from Paragraphs
select count(*) from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Summer Show"
select count(*) from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Summer Show"
select paragraphs.other_details from Paragraphs where  paragraphs.paragraph_text = "Korea"
select paragraphs.other_details from Paragraphs where  paragraphs.paragraph_text = "Korea"
select paragraphs.paragraph_id , paragraphs.paragraph_text from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Welcome to NY"
select paragraphs.paragraph_id , paragraphs.paragraph_text from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Welcome to NY"
select paragraphs.paragraph_text from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Customer reviews"
select paragraphs.paragraph_text from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Customer reviews"
select paragraphs.document_id , count(*) from Paragraphs  group by paragraphs.document_id  order by paragraphs.document_id asc
select paragraphs.document_id , count(*) from Paragraphs  group by paragraphs.document_id  order by count(*) asc
select documents.document_id , documents.document_name , count(*) from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by documents.document_id
select documents.document_id , documents.document_name , count(*) from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by documents.document_id
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id having  count(*) >= 2
select documents.document_id from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by documents.document_id having  count(*) >= 2
select documents.document_id , documents.document_name from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by documents.document_id  order by count(*) desc limit 1
select documents.document_id , documents.document_name from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by documents.document_id  order by count(*) desc limit 1
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id  order by count(*) asc limit 1
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id  order by count(*) asc limit 1
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id having  count(*) between 1 and 2
select documents.document_id from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by documents.document_id having  count(*) between 1 and 2
select paragraphs.document_id from Paragraphs where  paragraphs.paragraph_text = "Brazil"   intersect select paragraphs.document_id from Paragraphs where  paragraphs.paragraph_text = "Ireland"
select documents.document_id from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  paragraphs.paragraph_text = "Brazil"   intersect select paragraphs.document_id from Paragraphs where  paragraphs.paragraph_text = "Ireland"
select count(*) from teacher
select count(*) from teacher
select teacher.name from teacher   order by teacher.age asc
select teacher.name from teacher   order by teacher.age asc
select teacher.age , teacher.hometown from teacher
select teacher.age , teacher.hometown from teacher
select teacher.name from teacher where  teacher.hometown != "Little Lever Urban District"
select teacher.name from teacher where  teacher.hometown != "Little Lever Urban District"
select teacher.name from teacher where  teacher.age = 32 or teacher.age = 33
select teacher.name from teacher where  teacher.age = 32 or teacher.age = 33
select teacher.hometown from teacher   order by teacher.age asc limit 1
select teacher.hometown from teacher   order by teacher.age asc limit 1
select teacher.hometown , count(*) from teacher  group by teacher.hometown
select teacher.hometown , count(*) from teacher  group by teacher.hometown
select teacher.hometown from teacher  group by teacher.hometown  order by count(*) desc limit 1
select teacher.hometown from teacher  group by teacher.hometown  order by count(*) desc limit 1
select teacher.hometown from teacher  group by teacher.hometown having  count(*) >= 2
select teacher.hometown from teacher  group by teacher.hometown having  count(*) >= 2
select teacher.name , course_arrange.course_id from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID
select teacher.name , course.course from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID
select teacher.name , course_arrange.course_id from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID   order by teacher.name asc
select teacher.name , course.course from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID   order by teacher.name asc
select teacher.name from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID where  course.course = "Math"
select teacher.name from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID where  course.course = "Math"
select teacher.name , count(*) from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID  group by course.course_id
select teacher.name , count(*) from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID  group by course.course_id
select teacher.name from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID  group by course_arrange.teacher_id having  count(*) >= 2
select teacher.name from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID  group by course_arrange.teacher_id having  count(*) >= 2
select teacher.name from teacher where  teacher.teacher_id not in (select course_arrange.Teacher_ID from course_arrange  )
select teacher.name from teacher where  teacher.teacher_id not in (select course_arrange.Teacher_ID from course_arrange  )
select count(*) from visitor where  visitor.age < 30
select visitor.name from visitor where  visitor.level_of_membership > 4   order by visitor.level_of_membership asc
select avg(visitor.age) from visitor where  visitor.level_of_membership < 4
select visitor.name , visitor.level_of_membership from visitor where  visitor.level_of_membership > 4   order by visitor.age asc
select museum.museum_id , museum.name from museum   order by museum.num_of_staff desc limit 1
select avg(museum.num_of_staff) from museum where  museum.open_year < 2009
select museum.open_year , museum.num_of_staff from museum where  museum.name = "Plaza Museum"
select museum.name from museum where  museum.num_of_staff > (select min(museum.num_of_staff) from museum where  museum.open_year > 2010  )
select visitor.id , visitor.name , visitor.age from visit join visitor on visit.visitor_ID = visitor.ID  group by visit.museum_id having  count(*) > 1
select visit.visitor_id , visitor.name , visitor.level_of_membership from visit join visitor on visit.visitor_ID = visitor.ID  group by visit.visitor_id  order by sum(visit.total_spent) desc limit 1
select museum.museum_id , museum.name from visit join museum on visit.Museum_ID = museum.Museum_ID  group by visit.museum_id  order by count(*) desc limit 1
select museum.name from museum where  museum.museum_id not in (select visit.Museum_ID from visit  )
select visitor.name , visitor.age from visit join visitor on visit.visitor_ID = visitor.ID   order by visit.num_of_ticket desc limit 1
select avg(visit.num_of_ticket) , max(visit.num_of_ticket) from visit
select sum(visit.total_spent) from visit join visitor on visit.visitor_ID = visitor.ID where  visitor.level_of_membership = 1
select visitor.name from visit join visitor on visit.visitor_ID = visitor.ID join museum on visit.Museum_ID = museum.Museum_ID where  museum.open_year < 2009   intersect select visitor.name from visit join visitor on visit.visitor_ID = visitor.ID join museum on visit.Museum_ID = museum.Museum_ID where  museum.open_year > 2011
select count(*) from visit where  visit.museum_id not in (select museum.Museum_ID from museum where  museum.open_year > 2010  )
select count(*) from museum where  museum.open_year > 2013 or museum.open_year < 2008
select count(*) from players
select count(*) from players
select count(*) from matches
select count(*) from matches
select players.first_name , players.birth_date from players where  players.country_code = "USA"
select players.first_name , players.birth_date from players where  players.country_code = "USA"
select avg(matches.loser_age) , avg(matches.winner_age) from matches
select avg(matches.loser_age) , avg(matches.winner_age) from matches
select avg(matches.winner_rank) from matches
select avg(matches.winner_rank) from matches
select max(matches.loser_rank) from matches
select matches.loser_rank from matches   order by matches.loser_rank_points asc limit 1
select count( distinct players.country_code) from players
select count( distinct players.country_code) from players
select count( distinct matches.loser_name) from matches
select count( distinct matches.loser_name) from matches
select matches.tourney_name from matches  group by matches.tourney_id having  count(*) > 10
select matches.tourney_name from matches  group by matches.tourney_name having  count(*) > 10
select matches.winner_name from matches where  matches.year = 2013   intersect select matches.winner_name from matches where  matches.year = 2016
select players.first_name , players.last_name from matches join players on matches.winner_id = players.player_id where  matches.year = 2013   intersect select players.first_name , players.last_name from matches join players on matches.winner_id = players.player_id where  matches.year = 2016
select count(*) from matches where  matches.year = 2013 or matches.year = 2016
select count(*) from matches where  matches.year = 2013 or matches.year = 2016
select players.country_code , players.first_name from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "WTA Championships"   intersect select players.country_code , players.first_name from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "Australian Open"
select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "WTA Championships"   intersect select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "Australian Open"
select players.first_name , players.country_code from players   order by players.birth_date asc limit 1
select players.first_name , players.country_code from players   order by players.birth_date asc limit 1
select players.first_name , players.last_name from players   order by players.birth_date asc
select players.first_name , players.last_name from players   order by players.birth_date asc
select players.first_name , players.last_name from players where  players.hand = "left"   order by players.birth_date asc
select players.first_name , players.last_name from players where  players.hand = "left"   order by players.birth_date asc
select players.first_name , players.country_code from rankings join players on rankings.player_id = players.player_id  group by players.player_id  order by count(*) desc limit 1
select players.first_name , players.country_code from rankings join players on rankings.player_id = players.player_id  group by players.player_id  order by count(*) desc limit 1
select matches.year from matches  group by matches.year  order by count(*) desc limit 1
select matches.year from matches  group by matches.year  order by count(*) desc limit 1
select matches.winner_name , matches.winner_rank_points from matches  group by matches.winner_id  order by count(*) desc limit 1
select matches.winner_name , rankings.ranking_points from matches join players on matches.winner_id = players.player_id join rankings on players.player_id = rankings.player_id  group by matches.winner_id  order by count(*) desc limit 1
select matches.winner_name from matches where  matches.tourney_name = "Australian Open"   order by matches.winner_rank_points desc limit 1
select matches.winner_name from matches where  matches.tourney_name = "Australian Open"   order by matches.winner_rank_points desc limit 1
select matches.loser_name , matches.winner_name from matches   order by matches.minutes desc limit 1
select matches.winner_name , matches.loser_name from matches   order by matches.minutes desc limit 1
select avg(rankings.ranking) , players.first_name from rankings join players on rankings.player_id = players.player_id  group by players.player_id
select players.first_name , avg(rankings.ranking) from rankings join players on rankings.player_id = players.player_id  group by players.first_name
select sum(rankings.ranking_points) , players.first_name from rankings join players on rankings.player_id = players.player_id  group by players.first_name
select players.first_name , sum(rankings.ranking_points) from rankings join players on rankings.player_id = players.player_id  group by players.first_name
select count(*) , players.country_code from players  group by players.country_code
select players.country_code , count(*) from players  group by players.country_code
select players.country_code from players  group by players.country_code  order by count(*) desc limit 1
select players.country_code from players  group by players.country_code  order by count(*) desc limit 1
select players.country_code from players  group by players.country_code having  count(*) > 50
select players.country_code from players  group by players.country_code having  count(*) > 50
select rankings.ranking_date , count(*) from rankings  group by rankings.ranking_date
select rankings.ranking_date , count(*) from rankings  group by rankings.ranking_date
select count(*) , matches.year from matches  group by matches.year
select count(*) , matches.year from matches  group by matches.year
select matches.winner_name , matches.winner_rank from matches   order by matches.winner_age asc limit 3
select matches.winner_name , matches.winner_rank from matches   order by matches.winner_age asc limit 3
select count( distinct matches.winner_name) from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "WTA Championships" and players.hand = "left"
select count(*) from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "WTA Championships" and players.hand = "left"
select matches.winner_name , players.country_code , players.birth_date from matches join players on matches.winner_id = players.player_id join rankings on players.player_id = rankings.player_id   order by rankings.ranking_points desc limit 1
select players.first_name , players.country_code , players.birth_date from rankings join players on rankings.player_id = players.player_id  group by players.player_id  order by sum(rankings.ranking_points) desc limit 1
select players.hand , count(*) from players  group by players.hand
select players.hand , count(*) from players  group by players.hand
select count(*) from ship where  ship.disposition_of_ship = "Captured"
select ship.name , ship.tonnage from ship   order by ship.tonnage desc
select battle.name , battle.date , battle.result from battle
select max(death.killed) , min(death.killed) , death.caused_by_ship_id from death  group by death.caused_by_ship_id
select avg(death.injured) , death.id from death  group by death.id
select death.killed , death.injured from death join ship on death.caused_by_ship_id = ship.id where  ship.tonnage = "t"
select battle.name , battle.result from battle where  battle.bulgarian_commander != "Boril"
select distinct battle.id , battle.name from ship join battle on ship.lost_in_battle = battle.id where  ship.ship_type = "Brig"
select battle.id , battle.name from death join ship on death.caused_by_ship_id = ship.id join battle on ship.lost_in_battle = battle.id  group by death.id having  sum(death.killed) > 10
select ship.id , ship.name from death join ship on death.caused_by_ship_id = ship.id  group by ship.id  order by sum(death.injured) desc limit 1
select distinct battle.name from battle where  battle.bulgarian_commander = "Kaloyan" and battle.latin_commander = "Baldwin I"
select count( distinct battle.result) from battle
select count(*) from battle where  battle.id not in (select ship.lost_in_battle from ship where  ship.tonnage = "225"  )
select battle.name , battle.date from ship join battle on ship.lost_in_battle = battle.id where  ship.name = "Lettice"   intersect select battle.name , battle.date from ship join battle on ship.lost_in_battle = battle.id where  ship.name = "HMS Atalanta"
select battle.name , battle.result , battle.bulgarian_commander from battle where  battle.id not in (select ship.lost_in_battle from ship where  ship.location = "English Channel"  )
select death.note from death where  death.note like "%East%"
select addresses.line_1 from Addresses where  addresses.line_2 = 1   intersect select addresses.line_1 from Addresses where  addresses.line_2 = 2
select addresses.line_1 , addresses.line_2 from Addresses
select count(*) from Courses
select count(*) from Courses
select courses.course_description from Courses where  courses.course_name = "math"
select courses.course_description from Courses where  courses.course_name = "math"
select addresses.zip_postcode from Addresses where  addresses.city = "Port Chelsea"
select addresses.zip_postcode from Addresses where  addresses.city = "Port Chelsea"
select departments.department_name , departments.department_id from Degree_Programs join Departments on Degree_Programs.department_id = Departments.department_id  group by departments.department_name  order by count(*) desc limit 1
select departments.department_name , departments.department_id from Degree_Programs join Departments on Degree_Programs.department_id = Departments.department_id  group by degree_programs.department_id  order by count(*) desc limit 1
select count( distinct departments.department_name) from Departments where  departments.department_id not in (select Degree_Programs.department_id from Degree_Programs  )
select count( distinct degree_programs.department_id) from Degree_Programs
select count( distinct degree_programs.degree_summary_name) from Degree_Programs
select count( distinct degree_programs.degree_program_id) from Degree_Programs
select count(*) from Degree_Programs
select count(*) from Degree_Programs
select sections.section_name , sections.section_description from Sections
select sections.section_name , sections.section_description from Sections
select courses.course_name , courses.course_id from Sections join Courses on Sections.course_id = Courses.course_id  group by sections.course_id having  count(*) < 2
select courses.course_name , sections.course_id from Sections join Courses on Sections.course_id = Courses.course_id  group by sections.course_id having  count(*) < 2
select sections.section_name from Sections   order by sections.section_name desc
select sections.section_name from Sections   order by sections.section_name desc
select semesters.semester_name , student_enrolment.semester_id from Student_Enrolment join Semesters on Student_Enrolment.semester_id = Semesters.semester_id  group by student_enrolment.semester_id  order by count(*) desc limit 1
select semesters.semester_name , student_enrolment.student_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id join Semesters on Student_Enrolment.semester_id = Semesters.semester_id  group by student_enrolment.semester_id  order by count(*) desc limit 1
select departments.department_description from Departments where  departments.department_name like "%department_name%"
select departments.department_description from Departments where  departments.department_name like "%computer%"
select students.first_name , students.middle_name , students.last_name , student_enrolment.student_enrolment_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id  group by student_enrolment.student_enrolment_id having  count(*) = 2
select students.first_name , students.middle_name , students.last_name , student_enrolment.student_enrolment_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id  group by student_enrolment.student_enrolment_id having  count(*) = 2
select students.first_name , students.middle_name , students.last_name from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id where  degree_programs.degree_summary_name = "Bachelor"
select students.first_name , students.middle_name , students.last_name from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id where  student_enrolment.degree_program_id = "Bachelors"
select student_enrolment.degree_program_id from Student_Enrolment  group by student_enrolment.degree_program_id  order by count(*) desc limit 1
select degree_programs.degree_summary_name from Student_Enrolment join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id  group by degree_programs.degree_summary_name  order by count(*) desc limit 1
select degree_programs.degree_program_id , degree_programs.degree_summary_name from Student_Enrolment join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id  group by degree_programs.degree_program_id  order by count(*) desc limit 1
select degree_programs.degree_program_id , degree_programs.degree_summary_name from Student_Enrolment join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id  group by degree_programs.degree_program_id  order by count(*) desc limit 1
select student_enrolment.student_enrolment_id , students.first_name , students.middle_name , students.last_name , count(*) , student_enrolment.student_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id  group by student_enrolment.student_enrolment_id
select students.first_name , students.middle_name , students.last_name , count(*) from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id  group by student_enrolment.student_enrolment_id  order by count(*) desc limit 1
select semesters.semester_name from Semesters where  semesters.semester_id not in (select Student_Enrolment.semester_id from Student_Enrolment  )
select semesters.semester_name from Semesters where  semesters.semester_id not in (select Student_Enrolment.semester_id from Student_Enrolment  )
select courses.course_name from Student_Enrolment_Courses join Courses on Student_Enrolment_Courses.course_id = Courses.course_id
select courses.course_name from Student_Enrolment_Courses join Courses on Student_Enrolment_Courses.course_id = Courses.course_id
select courses.course_name from Student_Enrolment_Courses join Courses on Student_Enrolment_Courses.course_id = Courses.course_id  group by courses.course_name  order by count(*) desc limit 1
select courses.course_name from Student_Enrolment_Courses join Student_Enrolment on Student_Enrolment_Courses.student_enrolment_id = Student_Enrolment.student_enrolment_id join Courses on Student_Enrolment_Courses.course_id = Courses.course_id  group by courses.course_name  order by count(*) desc limit 1
select students.last_name from Students where  students.student_id not in (select Student_Enrolment.student_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id join Addresses on Students.permanent_address_id = Addresses.address_id where  addresses.state_province_county = "North Carolina"  )
select students.last_name from Students where  students.student_id not in (select Student_Enrolment.student_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id join Addresses on Students.permanent_address_id = Addresses.address_id where  addresses.state_province_county = "North Carolina"  )
select transcripts.transcript_date , transcripts.transcript_id from Transcript_Contents join Transcripts on Transcript_Contents.transcript_id = Transcripts.transcript_id  group by transcript_contents.transcript_id having  count(*) >= 2
select transcripts.transcript_date , transcripts.transcript_id from Transcript_Contents join Transcripts on Transcript_Contents.transcript_id = Transcripts.transcript_id join Student_Enrolment_Courses on Transcript_Contents.student_course_id = Student_Enrolment_Courses.student_course_id join Courses on Student_Enrolment_Courses.course_id = Courses.course_id  group by transcripts.transcript_id having  count(*) >= 2
select students.cell_mobile_number from Students where  students.first_name = "Timmothy" and students.last_name = "Ward"
select students.cell_mobile_number from Students where  students.first_name = "Timmothy" and students.last_name = "Ward"
select students.first_name , students.middle_name , students.last_name from Students   order by students.date_first_registered asc limit 1
select students.first_name , students.middle_name , students.last_name from Students   order by students.date_first_registered asc limit 1
select students.first_name , students.middle_name , students.last_name from Students   order by students.date_first_registered asc limit 1
select students.first_name , students.middle_name , students.last_name from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id   order by student_enrolment.degree_program_id asc limit 1
select distinct students.first_name from Students where  students.permanent_address_id > (select min(students.permanent_address_id) from Students  )
select students.first_name from Students where  students.permanent_address_id > (select min(students.permanent_address_id) from Students  )
select addresses.address_id , addresses.line_3 from Students join Addresses on Students.permanent_address_id = Addresses.address_id  group by addresses.address_id  order by count(*) desc limit 1
select addresses.address_id , addresses.line_1 , addresses.line_2 from Students join Addresses on Students.permanent_address_id = Addresses.address_id  group by addresses.address_id  order by count(*) desc limit 1
select avg(transcripts.transcript_date) from Transcripts
select avg(transcripts.transcript_date) from Transcripts
select transcripts.transcript_date , transcripts.other_details from Transcripts   order by transcripts.transcript_date asc limit 1
select transcripts.transcript_date , transcripts.other_details from Transcripts   order by transcripts.transcript_date asc limit 1
select count(*) from Transcripts
select count(*) from Transcripts
select transcripts.transcript_date from Transcripts   order by transcripts.transcript_date desc limit 1
select transcripts.transcript_date from Transcripts   order by transcripts.transcript_date desc limit 1
select count( distinct transcripts.transcript_id) , student_enrolment_courses.student_enrolment_id from Transcript_Contents join Transcripts on Transcript_Contents.transcript_id = Transcripts.transcript_id join Student_Enrolment_Courses on Transcript_Contents.student_course_id = Student_Enrolment_Courses.student_course_id  group by transcripts.transcript_id
select max(transcripts.transcript_id) , student_enrolment_courses.student_enrolment_id from Transcript_Contents join Transcripts on Transcript_Contents.transcript_id = Transcripts.transcript_id join Student_Enrolment_Courses on Transcript_Contents.student_course_id = Student_Enrolment_Courses.student_course_id  group by student_enrolment_courses.student_enrolment_id
select transcripts.transcript_date , transcripts.transcript_id from Transcripts  group by transcripts.transcript_id  order by count(*) asc limit 1
select transcripts.transcript_date , transcripts.transcript_id from Transcript_Contents join Transcripts on Transcript_Contents.transcript_id = Transcripts.transcript_id  group by transcripts.transcript_id  order by count(*) asc limit 1
select semesters.semester_name from Student_Enrolment join Semesters on Student_Enrolment.semester_id = Semesters.semester_id join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id where  degree_programs.degree_summary_name = "Master"   intersect select semesters.semester_name from Student_Enrolment join Semesters on Student_Enrolment.semester_id = Semesters.semester_id join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id where  degree_programs.degree_summary_name = "Bachelor"
select student_enrolment.semester_id from Student_Enrolment where  student_enrolment.student_id = "MA"   intersect select student_enrolment.semester_id from Student_Enrolment where  student_enrolment.student_id = "Bachelors"
select count( distinct students.current_address_id) from Students
select distinct addresses.address_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id join Addresses on Students.permanent_address_id = Addresses.address_id
select students.other_student_details from Students   order by students.other_student_details desc
select students.other_student_details from Students   order by students.other_student_details desc
select sections.section_description from Sections where  sections.section_name = "h"
select sections.section_description from Sections where  sections.section_name = "h"
select students.first_name from Students join Addresses on Students.permanent_address_id = Addresses.address_id where  addresses.country = "Haiti" or students.cell_mobile_number = "09700166582"
select students.first_name from Students join Addresses on Students.permanent_address_id = Addresses.address_id where  addresses.country = "Haiti" or students.cell_mobile_number = "09700166582"
select cartoon.title from Cartoon   order by cartoon.title asc
select cartoon.title from Cartoon   order by cartoon.title asc
select cartoon.title from Cartoon where  cartoon.directed_by = "Ben Jones"
select cartoon.title from Cartoon where  cartoon.directed_by = "Ben Jones"
select count(*) from Cartoon where  cartoon.written_by = "Joseph Kuhr"
select count(*) from Cartoon where  cartoon.written_by = "Joseph Kuhr"
select cartoon.title , cartoon.directed_by from Cartoon   order by cartoon.original_air_date asc
select cartoon.title , cartoon.directed_by from Cartoon   order by cartoon.original_air_date asc
select cartoon.title from Cartoon where  cartoon.directed_by = "Ben Jones" or cartoon.directed_by = "Brandon Vietti"
select cartoon.title from Cartoon where  cartoon.directed_by = "Ben Jones" or cartoon.directed_by = "Brandon Vietti"
select tv_channel.country , count(*) from TV_Channel  group by tv_channel.country  order by count(*) desc limit 1
select tv_channel.country , count(*) from TV_Channel  group by tv_channel.country  order by count(*) desc limit 1
select count( distinct tv_channel.series_name) , count( distinct tv_channel.content) from TV_Channel
select count( distinct tv_channel.series_name) , tv_channel.content from TV_Channel
select tv_channel.content from TV_Channel where  tv_channel.series_name = "Sky Radio"
select tv_channel.content from TV_Channel where  tv_channel.series_name = "Sky Radio"
select tv_channel.package_option from TV_Channel where  tv_channel.series_name = "Sky Radio"
select tv_channel.package_option from TV_Channel where  tv_channel.series_name = "Sky Radio"
select count(*) from TV_Channel where  tv_channel.language = "English"
select count(*) from TV_Channel where  tv_channel.language = "English"
select tv_channel.language , count(*) from TV_Channel  group by tv_channel.language  order by count(*) asc limit 1
select tv_channel.language , count(*) from TV_Channel  group by tv_channel.language  order by count(*) asc limit 1
select tv_channel.language , count(*) from TV_Channel  group by tv_channel.language
select tv_channel.language , count(*) from TV_Channel  group by tv_channel.language
select tv_channel.series_name from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.title = "The Rise of the Blue Beetle!"
select tv_channel.series_name from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.title = "The Rise of the Blue Beetle!"
select cartoon.title from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  tv_channel.series_name = "Sky Radio"
select cartoon.title from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  tv_channel.series_name = "Sky Radio"
select tv_series.episode from TV_series   order by tv_series.rating asc
select tv_series.episode from TV_series   order by tv_series.rating asc
select tv_series.episode , tv_series.rating from TV_series   order by tv_series.rating desc limit 3
select tv_series.episode , tv_series.rating from TV_series   order by tv_series.rating desc limit 3
select min(tv_series.share) , max(tv_series.share) from TV_series
select max(tv_series.share) , min(tv_series.share) from TV_series
select tv_series.air_date from TV_series where  tv_series.episode = "A Love of a Lifetime"
select tv_series.air_date from TV_series where  tv_series.episode = "A Love of a Lifetime"
select tv_series.weekly_rank from TV_series where  tv_series.episode = "A Love of a Lifetime"
select tv_series.weekly_rank from TV_series where  tv_series.episode = "A Love of a Lifetime"
select tv_channel.series_name from TV_series join TV_Channel on TV_series.Channel = TV_Channel.id where  tv_series.episode = "A Love of a Lifetime"
select tv_channel.series_name from TV_series join TV_Channel on TV_series.Channel = TV_Channel.id where  tv_series.episode = "A Love of a Lifetime"
select tv_series.episode from TV_series join TV_Channel on TV_series.Channel = TV_Channel.id where  tv_channel.series_name = "Sky Radio"
select tv_series.episode from TV_series join TV_Channel on TV_series.Channel = TV_Channel.id where  tv_channel.series_name = "Sky Radio"
select count(*) , cartoon.directed_by from Cartoon  group by cartoon.directed_by
select cartoon.directed_by , count(*) from Cartoon  group by cartoon.directed_by
select cartoon.production_code , cartoon.channel from Cartoon   order by cartoon.original_air_date desc limit 1
select cartoon.production_code , cartoon.channel from Cartoon   order by cartoon.original_air_date desc limit 1
select tv_channel.package_option , tv_channel.series_name from TV_Channel where  tv_channel.hight_definition_tv = "HDTV"
select tv_channel.package_option , tv_channel.series_name from TV_Channel where  tv_channel.hight_definition_tv = "High"
select tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.written_by = "Todd Casey"
select distinct tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.written_by = "Todd Casey"
select tv_channel.country from TV_Channel   except select tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.written_by = "Todd Casey"
select tv_channel.country from TV_Channel   except select tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.written_by = "Todd Casey"
select tv_channel.series_name , tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"   intersect select tv_channel.series_name , tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Michael Chang"
select tv_channel.series_name , tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"   intersect select tv_channel.series_name , tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Michael Chang"
select tv_channel.pixel_aspect_ratio_par , tv_channel.country from TV_Channel where  tv_channel.language != "English"
select tv_channel.pixel_aspect_ratio_par , tv_channel.country from TV_Channel where  tv_channel.language != "English"
select tv_channel.id from TV_Channel  group by tv_channel.country having  count(*) > 2
select tv_channel.id from TV_Channel  group by tv_channel.id having  count(*) > 2
select tv_channel.id from TV_Channel   except select cartoon.channel from Cartoon where  cartoon.directed_by = "Ben Jones"
select tv_channel.id from TV_Channel   except select tv_channel.id from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"
select tv_channel.package_option from TV_Channel   except select tv_channel.package_option from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"
select tv_channel.package_option from TV_Channel   except select tv_channel.package_option from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"
select count(*) from poker_player
select count(*) from poker_player
select poker_player.earnings from poker_player   order by poker_player.earnings desc
select poker_player.earnings from poker_player   order by poker_player.earnings desc
select poker_player.final_table_made , poker_player.best_finish from poker_player
select poker_player.final_table_made , poker_player.best_finish from poker_player
select avg(poker_player.earnings) from poker_player
select avg(poker_player.earnings) from poker_player
select poker_player.money_rank from poker_player   order by poker_player.earnings desc limit 1
select poker_player.money_rank from poker_player   order by poker_player.earnings desc limit 1
select max(poker_player.final_table_made) from poker_player where  poker_player.earnings < 200000
select max(poker_player.final_table_made) from poker_player where  poker_player.earnings < 200000
select people.name from poker_player join people on poker_player.People_ID = people.People_ID
select people.name from poker_player join people on poker_player.People_ID = people.People_ID
select people.name from poker_player join people on poker_player.People_ID = people.People_ID where  poker_player.earnings > 300000
select people.name from poker_player join people on poker_player.People_ID = people.People_ID where  poker_player.earnings > 300000
select people.name from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.final_table_made asc
select people.name from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.final_table_made asc
select people.birth_date from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.earnings asc limit 1
select people.birth_date from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.earnings asc limit 1
select poker_player.money_rank from poker_player join people on poker_player.People_ID = people.People_ID   order by people.height desc limit 1
select poker_player.money_rank from poker_player join people on poker_player.People_ID = people.People_ID   order by people.height desc limit 1
select avg(poker_player.earnings) from poker_player join people on poker_player.People_ID = people.People_ID where  people.height > 200
select avg(poker_player.earnings) from poker_player join people on poker_player.People_ID = people.People_ID where  people.height > 200
select people.name from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.earnings desc
select people.name from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.earnings desc
select people.nationality , count(*) from people  group by people.nationality
select people.nationality , count(*) from people  group by people.nationality
select people.nationality from people  group by people.nationality  order by count(*) desc limit 1
select people.nationality from people  group by people.nationality  order by count(*) desc limit 1
select people.nationality from people  group by people.nationality having  count(*) >= 2
select people.nationality from people  group by people.nationality having  count(*) >= 2
select people.name , people.birth_date from people   order by people.name asc
select people.name , people.birth_date from people   order by people.name asc
select people.name from people where  people.nationality != "Russia"
select people.name from people where  people.nationality != "Russia"
select people.name from people   except select people.name from poker_player join people on poker_player.People_ID = people.People_ID
select people.name from people   except select people.name from poker_player join people on poker_player.People_ID = people.People_ID
select count( distinct people.nationality) from people
select count( distinct people.nationality) from people
select count(*) from AREA_CODE_STATE
select contestants.contestant_number , contestants.contestant_name from CONTESTANTS   order by contestants.contestant_name desc
select votes.vote_id , votes.phone_number , votes.state from VOTES
select max(area_code_state.area_code) , min(area_code_state.area_code) from AREA_CODE_STATE
select votes.created from VOTES where  votes.state = "CA"
select contestants.contestant_name from CONTESTANTS where  contestants.contestant_name != "Jessie Alloway"
select distinct votes.state , votes.created from VOTES
select contestants.contestant_number , contestants.contestant_name from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number  group by votes.contestant_number having  count(*) >= 2
select contestants.contestant_number , contestants.contestant_name from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number  group by votes.contestant_number  order by count(*) asc limit 1
select count(*) from VOTES where  votes.state = "NY" or votes.state = "CA"
select count(*) from CONTESTANTS where  contestants.contestant_number not in (select VOTES.contestant_number from VOTES  )
select area_code_state.area_code from VOTES join AREA_CODE_STATE on VOTES.state = AREA_CODE_STATE.state  group by area_code_state.area_code  order by count(*) desc limit 1
select votes.created , votes.state , votes.phone_number from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number where  contestants.contestant_name = "Tabatha Gehling"
select area_code_state.area_code from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number join AREA_CODE_STATE on VOTES.state = AREA_CODE_STATE.state where  contestants.contestant_name = "Tabatha Gehling"   intersect select area_code_state.area_code from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number join AREA_CODE_STATE on VOTES.state = AREA_CODE_STATE.state where  contestants.contestant_name = "Kelly Clauss"
select contestants.contestant_name from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number join AREA_CODE_STATE on VOTES.state = AREA_CODE_STATE.state where  area_code_state.state like "%Al%"
select country.name from country where  country.indepyear > 1950
select country.name from country where  country.population > 1950
select count(*) from country where  country.governmentform = "Republic"
select count(*) from country where  country.governmentform = "Republic"
select sum(country.surfacearea) from country where  country.region = "Caracas"
select sum(country.surfacearea) from country where  country.continent = "Carribean"
select country.continent from country where  country.name = "Anguilla"
select country.continent from country where  country.name = "Anguilla"
select country.region from city join country on city.CountryCode = country.Code where  city.name = "Kabul"
select country.region from city join country on city.CountryCode = country.Code where  city.name = "Kabul"
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Aruba"  group by countrylanguage.language  order by count(*) desc limit 1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Aruba"
select country.population , country.lifeexpectancy from country where  country.name = "Brazil"
select country.population , country.lifeexpectancy from country where  country.name = "Brazil"
select country.region , country.population from country where  country.name = "Angola"
select country.region , country.population from country where  country.name = "Angola"
select avg(country.lifeexpectancy) from country where  country.region = "Central Africa"
select avg(country.lifeexpectancy) from country where  country.region = "Central Africa"
select country.name from country where  country.continent = "Asia"   order by country.lifeexpectancy asc limit 1
select country.name from country where  country.continent = "Asia"   order by country.lifeexpectancy asc limit 1
select sum(country.population) , max(country.gnp) from country where  country.continent = "Asia"
select country.gnp , country.population from country where  country.continent = "Asia"
select avg(country.lifeexpectancy) from country where  country.governmentform = "Republic"
select avg(country.lifeexpectancy) from country where  country.governmentform = "Republic" and country.continent = "Africa"
select sum(country.surfacearea) from country where  country.code in (select country.Code from country where  country.continent = "Asia"   intersect select country.Code from country where  country.continent = "Europe"   )
select sum(country.surfacearea) from country where  country.continent = "Asia" or country.continent = "Europe"
select count(*) from city where  city.district = "Gelderland"
select sum(city.population) from city where  city.district = "Gelderland"
select avg(country.gnp) , sum(country.population) from country where  country.governmentform = "US Territory"
select avg(country.gnp) , sum(country.population) from country where  country.governmentform = "US Territory"
select count( distinct countrylanguage.language) from countrylanguage
select count( distinct countrylanguage.language) from countrylanguage
select count( distinct country.governmentform) from country where  country.continent = "Africa"
select count( distinct country.governmentform) from country where  country.continent = "Africa"
select count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Aruba"
select count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Aruba"
select count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Afghanistan"
select count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Afghanistan" and countrylanguage.isofficial = 1
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by countrylanguage.countrycode  order by count(*) desc limit 1
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by countrylanguage.countrycode  order by count(*) desc limit 1
select country.continent from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by country.continent  order by count(*) desc limit 1
select country.continent from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by country.continent  order by count(*) desc limit 1
select count(*) from countrylanguage where  countrylanguage.countrycode in (select countrylanguage.CountryCode from countrylanguage where  countrylanguage.language = "English"   intersect select countrylanguage.CountryCode from countrylanguage where  countrylanguage.language = "Dutch"   )
select count(*) from countrylanguage where  countrylanguage.countrycode in (select countrylanguage.CountryCode from countrylanguage where  countrylanguage.language = "English"   intersect select countrylanguage.CountryCode from countrylanguage where  countrylanguage.language = "Dutch"   )
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English"   intersect select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "French"
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English"   intersect select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "French"
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English"   intersect select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "French"
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English"   intersect select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "French"
select count( distinct country.continent) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "Chinese"
select count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "Chinese"
select country.region from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English" or countrylanguage.language = "Dutch"
select country.region from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "Dutch" or countrylanguage.language = "English"
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "English" or countrylanguage.language = "Dutch"
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English" or countrylanguage.language = "Dutch"
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.continent = "Asia"   order by countrylanguage.percentage desc limit 1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.continent = "Asia"  group by countrylanguage.language  order by count(*) desc limit 1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.governmentform = "Republic"  group by countrylanguage.language having  count(*) = 1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.governmentform = "Republic"  group by countrylanguage.language having  count(*) = 1
select city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  countrylanguage.language = "English"   order by city.population desc limit 1
select city.population from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  countrylanguage.language = "English"  group by countrylanguage.language  order by count(*) desc limit 1
select country.name , country.population , country.lifeexpectancy from country where  country.continent = "Asia"   order by country.surfacearea desc limit 1
select country.name , country.population , country.lifeexpectancy from country where  country.continent = "Asia" and country.lifeexpectancy = (select max(country.lifeexpectancy) from country where  country.continent = "Asia"  )
select avg(country.lifeexpectancy) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"
select avg(country.lifeexpectancy) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"
select sum(country.population) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"
select count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"
select countrylanguage.isofficial from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.headofstate = "Beatrix"
select countrylanguage.isofficial from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.headofstate = "Beatrix"
select count( distinct countrylanguage.isofficial) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.indepyear < 1930
select count( distinct countrylanguage.language) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.indepyear < 1930
select country.name from country where  country.surfacearea > (select min(country.surfacearea) from country where  country.continent = "Europe"  )
select country.name from country where  country.surfacearea > (select min(country.surfacearea) from country where  country.continent = "Europe"  )
select country.name from country where  country.population < (select max(country.population) from country where  country.continent = "Africa"  )
select country.name from country where  country.population < (select min(country.population) from country where  country.continent = "Africa"  )
select country.name from country where  country.population > (select max(country.population) from country where  country.continent = "Asia"  )
select country.name from country where  country.population > (select min(country.population) from country where  country.continent = "Asia"  )
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language != "English"
select country.code from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language != "English"
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language != "English"
select country.code from country where  country.governmentform != "Republic"   except select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "English"
select country.code from country where  country.governmentform != "Republic"   except select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "English"
select city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  countrylanguage.language != "English"
select city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  countrylanguage.language != "English"
select distinct city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  countrylanguage.language = "Chinese"
select distinct city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  country.continent = "Asia" and countrylanguage.language = "Chinese"
select country.name , country.indepyear , country.surfacearea from country   order by country.population asc limit 1
select country.name , country.indepyear , country.surfacearea from country   order by country.population asc limit 1
select country.population , country.name , country.headofstate from country   order by country.surfacearea desc limit 1
select country.name , country.population , country.headofstate from country   order by country.surfacearea desc limit 1
select country.name , count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by countrylanguage.countrycode having  count(*) >= 3
select country.name , count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by countrylanguage.countrycode having  count(*) > 2
select count(*) , city.district from city where  city.population > (select avg(city.population) from city  )  group by city.district
select count(*) , city.district from city where  city.population > (select avg(city.population) from city  )  group by city.district
select country.governmentform , sum(country.population) from country  group by country.governmentform having  avg(country.lifeexpectancy) > 72
select country.governmentform , sum(country.population) from country  group by country.governmentform having  avg(country.lifeexpectancy) > 72
select country.continent , avg(country.lifeexpectancy) , sum(country.population) from country  group by country.continent having  avg(country.lifeexpectancy) < 72
select country.continent , sum(country.population) , avg(country.lifeexpectancy) from country  group by country.continent having  avg(country.lifeexpectancy) < 72
select country.name , country.surfacearea from country   order by country.surfacearea desc limit 5
select country.name , country.surfacearea from country   order by country.surfacearea desc limit 5
select country.name from country   order by country.population desc limit 3
select country.name from country   order by country.population desc limit 3
select country.name from country   order by country.population asc limit 3
select country.name from country   order by country.population asc limit 3
select count(*) from country where  country.continent = "Asia"
select count(*) from country where  country.continent = "Asia"
select country.name from country where  country.continent = "Europe" and country.population = 80000
select country.name from country where  country.continent = "Europe" and country.population = 80000
select sum(country.population) , avg(country.surfacearea) from country where  country.continent = "North America" and country.surfacearea > 3000
select sum(country.population) , avg(country.surfacearea) from country where  country.region = "North America" and country.surfacearea > 3000
select city.name from city where  city.population between 160000 and 900000
select city.name from city where  city.population between 160000 and 900000
select countrylanguage.language from countrylanguage  group by countrylanguage.language  order by count(*) desc limit 1
select countrylanguage.language from countrylanguage  group by countrylanguage.language  order by count(*) desc limit 1
select countrylanguage.language , max(countrylanguage.percentage) from countrylanguage  group by countrylanguage.countrycode
select countrylanguage.language , max(countrylanguage.percentage) from countrylanguage  group by countrylanguage.countrycode
select count(*) from countrylanguage where  countrylanguage.language = "Spanish"   order by countrylanguage.percentage desc limit 1
select count(*) from countrylanguage where  countrylanguage.language = "Spanish"
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "Spanish"   order by countrylanguage.percentage desc limit 1
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "Spanish"
select count(*) from conductor
select count(*) from conductor
select conductor.name from conductor   order by conductor.age asc
select conductor.name from conductor   order by conductor.age asc
select conductor.name from conductor where  conductor.nationality != "USA"
select conductor.name from conductor where  conductor.nationality != "USA"
select orchestra.record_company from orchestra   order by orchestra.year_of_founded desc
select orchestra.record_company from orchestra   order by orchestra.year_of_founded desc
select avg(show.attendance) from show
select avg(show.attendance) from show
select max(performance.share) , min(performance.share) from performance where  performance.type != "Live final"
select max(performance.share) , min(performance.share) from performance where  performance.type != "Live final"
select count( distinct conductor.nationality) from conductor
select count( distinct conductor.nationality) from conductor
select conductor.name from conductor   order by conductor.year_of_work desc
select conductor.name from conductor   order by conductor.year_of_work desc
select conductor.name from conductor   order by conductor.year_of_work desc limit 1
select conductor.name from conductor   order by conductor.year_of_work desc limit 1
select conductor.name , orchestra.orchestra from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID
select conductor.name , orchestra.orchestra from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID  group by orchestra.conductor_id having  count(*) > 1
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID  group by orchestra.conductor_id having  count(*) > 1
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID  group by orchestra.conductor_id  order by count(*) desc limit 1
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID  group by orchestra.conductor_id  order by count(*) desc limit 1
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID where  orchestra.year_of_founded > 2008
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID where  orchestra.year_of_founded > "2008"
select orchestra.record_company , count(*) from orchestra  group by orchestra.record_company
select orchestra.record_company , count(*) from orchestra  group by orchestra.record_company
select orchestra.major_record_format from orchestra  group by orchestra.major_record_format  order by count(*) asc
select orchestra.major_record_format from orchestra  group by orchestra.major_record_format  order by count(*) asc
select orchestra.record_company from orchestra  group by orchestra.record_company  order by count(*) desc limit 1
select orchestra.record_company from orchestra  group by orchestra.record_company  order by count(*) desc limit 1
select orchestra.orchestra from orchestra where  orchestra.orchestra_id not in (select performance.Orchestra_ID from performance  )
select orchestra.orchestra from orchestra where  orchestra.orchestra_id not in (select performance.Orchestra_ID from performance  )
select orchestra.record_company from orchestra where  orchestra.year_of_founded < 2003   intersect select orchestra.record_company from orchestra where  orchestra.year_of_founded > 2003
select orchestra.record_company from orchestra where  orchestra.year_of_founded < 2003   intersect select orchestra.record_company from orchestra where  orchestra.year_of_founded > 2003
select count(*) from orchestra where  orchestra.major_record_format = "CD" or orchestra.major_record_format = "DVD"
select count(*) from orchestra where  orchestra.major_record_format = "CD" or orchestra.major_record_format = "DVD"
select orchestra.year_of_founded from performance join orchestra on performance.Orchestra_ID = orchestra.Orchestra_ID  group by performance.orchestra_id having  count(*) > 1
select orchestra.year_of_founded from performance join orchestra on performance.Orchestra_ID = orchestra.Orchestra_ID  group by orchestra.year_of_founded having  count(*) > 1
select count(*) from Highschooler
select count(*) from Highschooler
select highschooler.name , highschooler.grade from Highschooler
select highschooler.name , highschooler.grade from Highschooler
select highschooler.grade from Highschooler
select highschooler.grade from Highschooler
select highschooler.grade from Highschooler where  highschooler.name = "Kyle"
select highschooler.grade from Highschooler where  highschooler.name = "Kyle"
select highschooler.name from Highschooler where  highschooler.grade = 10
select highschooler.name from Highschooler where  highschooler.grade = 10
select highschooler.id from Highschooler where  highschooler.name = "Kyle"
select highschooler.id from Highschooler where  highschooler.name = "Kyle"
select count(*) from Highschooler where  highschooler.grade = 9 or highschooler.grade = 10
select count(*) from Highschooler where  highschooler.grade = 9 or highschooler.grade = 10
select count(*) , highschooler.grade from Highschooler  group by highschooler.grade
select count(*) , highschooler.grade from Highschooler  group by highschooler.grade
select highschooler.grade from Highschooler  group by highschooler.grade  order by count(*) desc limit 1
select highschooler.grade from Highschooler  group by highschooler.grade  order by count(*) desc limit 1
select highschooler.grade from Highschooler  group by highschooler.grade having  count(*) >= 4
select highschooler.grade from Highschooler  group by highschooler.grade having  count(*) >= 4
select friend.student_id , count(*) from Friend  group by friend.student_id
select count( distinct friend.friend_id) from Friend
select highschooler.name , count(*) from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by highschooler.name
select highschooler.name , count(*) from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by highschooler.name
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by highschooler.name  order by count(*) desc limit 1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by highschooler.name  order by count(*) desc limit 1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by highschooler.name having  count(*) >= 3
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by highschooler.name having  count(*) >= 3
select highschooler.name from Highschooler where  highschooler.name = "Kyle"
select friend.friend_id from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.name = "Kyle"
select count( distinct friend.friend_id) from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.name = "Kyle"
select count(*) from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.name = "Kyle"
select highschooler.id from Highschooler   except select friend.student_id from Friend
select highschooler.id from Highschooler   except select friend.student_id from Friend
select highschooler.name from Highschooler   except select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID
select highschooler.name from Highschooler where  highschooler.id not in (select Friend.friend_id from Friend  )
select highschooler.id from Friend join Highschooler on Friend.friend_id = Highschooler.ID join Likes on Highschooler.ID = Likes.student_id where  likes.liked_id = 1
select friend.student_id from Friend join Highschooler on Friend.friend_id = Highschooler.ID join Likes on Highschooler.ID = Likes.student_id where  friend.friend_id != "friend.*" and likes.liked_id = 1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID join Likes on Highschooler.ID = Likes.student_id where  likes.liked_id = 1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID join Likes on Highschooler.ID = Likes.student_id where  likes.liked_id = 1
select count(*) , likes.student_id from Likes  group by likes.student_id
select likes.student_id , count(*) from Likes  group by likes.student_id
select highschooler.name , count(*) from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by highschooler.id
select highschooler.name , count(*) from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by highschooler.name
select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by highschooler.name  order by count(*) desc limit 1
select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by highschooler.id  order by count(*) desc limit 1
select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by likes.student_id having  count(*) >= 2
select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by likes.student_id having  count(*) >= 2
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.grade > 5  group by friend.student_id having  count(*) >= 2
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.grade > 5  group by highschooler.name having  count(*) >= 2
select count(*) from Likes join Highschooler on Likes.student_id = Highschooler.ID where  highschooler.name = "Kyle"
select count(*) from Likes join Highschooler on Likes.student_id = Highschooler.ID where  highschooler.name = "Kyle"
select avg(highschooler.grade) from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.id in (select Friend.friend_id from Friend  ) and friend.friend_id in (select friend.student_id from Friend where  friend.friend_id = 1  )
select avg(highschooler.grade) from Highschooler where  highschooler.id in (select Friend.friend_id from Friend  )
select min(highschooler.grade) from Highschooler where  highschooler.id not in (select Friend.friend_id from Friend  )
select min(highschooler.grade) from Highschooler where  highschooler.id not in (select Friend.friend_id from Friend  )
select owners.state from Owners   intersect select professionals.state from Professionals
select owners.state from Owners   intersect select professionals.state from Professionals
select avg(dogs.age) from Dogs where  dogs.dog_id not in (select Treatments.dog_id from Treatments  )
select avg(dogs.age) from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id
select professionals.professional_id , professionals.last_name , professionals.cell_number from Professionals where  professionals.state = "Indiana"   union select professionals.professional_id , professionals.last_name , professionals.cell_number from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) > 2
select professionals.professional_id , professionals.last_name , professionals.cell_number from Professionals where  professionals.state = "Indy"   union select professionals.professional_id , professionals.last_name , professionals.cell_number from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) > 2
select dogs.name from Dogs where  dogs.dog_id not in (select Treatments.dog_id from Treatments where  treatments.cost_of_treatment > 1000  )
select dogs.name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id where  dogs.owner_id = 1 and treatments.cost_of_treatment > 1000   except select dogs.name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id
select professionals.first_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id join Treatments on Dogs.dog_id = Treatments.dog_id join Professionals on Treatments.professional_id = Professionals.professional_id where  professionals.professional_id = 2 or owners.first_name not in (select dogs.name from Dogs  )
select professionals.first_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id join Treatments on Dogs.dog_id = Treatments.dog_id join Professionals on Treatments.professional_id = Professionals.professional_id where  professionals.professional_id = 1 or owners.owner_id != 1   except select professionals.first_name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id join Professionals on Treatments.professional_id = Professionals.professional_id
select professionals.professional_id , professionals.role_code , professionals.email_address from Professionals   except select professionals.professional_id , professionals.role_code , professionals.email_address from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id
select professionals.professional_id , professionals.role_code , professionals.email_address from Professionals   except select professionals.professional_id , professionals.role_code , professionals.email_address from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id
select owners.owner_id , owners.first_name , owners.last_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id  order by count(*) desc limit 1
select owners.owner_id , owners.first_name , owners.last_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id  order by count(*) desc limit 1
select professionals.professional_id , professionals.role_code , professionals.first_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) >= 2
select professionals.professional_id , professionals.role_code , professionals.first_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) >= 2
select breeds.breed_name from Dogs join Breeds on Dogs.breed_code = Breeds.breed_code  group by breeds.breed_name  order by count(*) desc limit 1
select breeds.breed_name from Dogs join Breeds on Dogs.breed_code = Breeds.breed_code  group by breeds.breed_name  order by count(*) desc limit 1
select owners.owner_id , owners.last_name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id join Owners on Dogs.owner_id = Owners.owner_id  group by owners.owner_id  order by sum(treatments.cost_of_treatment) desc limit 1
select owners.owner_id , owners.last_name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id  order by sum(treatments.cost_of_treatment) desc limit 1
select treatment_types.treatment_type_description from Treatments join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code  group by treatment_types.treatment_type_code  order by sum(treatments.cost_of_treatment) asc limit 1
select treatment_types.treatment_type_description from Treatments join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code  group by treatments.treatment_type_code  order by sum(treatments.cost_of_treatment) asc limit 1
select owners.owner_id , owners.zip_code from Charges join Owners on Charges.charge_id = Owners.owner_id  group by owners.owner_id  order by sum(charges.charge_amount) desc limit 1
select owners.owner_id , owners.zip_code from Charges join Owners on Charges.charge_id = Owners.owner_id  group by owners.owner_id  order by sum(charges.charge_amount) desc limit 1
select professionals.professional_id , professionals.home_phone from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) >= 2
select professionals.professional_id , professionals.cell_number from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) >= 2
select professionals.first_name , professionals.last_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id where  treatments.cost_of_treatment < (select avg(Treatments.cost_of_treatment) from Treatments  )
select professionals.first_name , professionals.last_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id where  treatments.cost_of_treatment < (select avg(Treatments.cost_of_treatment) from Treatments  )
select treatments.date_of_treatment , professionals.first_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id
select treatments.date_of_treatment , professionals.first_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id
select treatments.cost_of_treatment , treatment_types.treatment_type_description from Treatments join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code
select treatments.cost_of_treatment , treatment_types.treatment_type_description from Treatments join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code
select owners.first_name , owners.last_name , dogs.size_code from Dogs join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id
select owners.first_name , owners.last_name , dogs.size_code from Dogs join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id
select owners.first_name , dogs.name from Dogs join Owners on Dogs.owner_id = Owners.owner_id where  owners.owner_id = 1 and dogs.name = 1
select owners.first_name , dogs.name from Dogs join Owners on Dogs.owner_id = Owners.owner_id
select dogs.name , treatments.date_of_treatment from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id where  dogs.breed_code = (select max(dogs.breed_code) from Dogs  )
select dogs.name , treatments.date_of_treatment from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id join Breeds on Dogs.breed_code = Breeds.breed_code where  breeds.breed_name = (select max(Breeds.breed_name) from Breeds  )
select dogs.name , owners.first_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id where  owners.state = "Virginia"
select owners.first_name , dogs.name from Dogs join Owners on Dogs.owner_id = Owners.owner_id where  owners.state = "Virginia"
select dogs.date_arrived , dogs.date_departed from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id
select dogs.date_arrived , dogs.date_departed from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id
select owners.last_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id   order by dogs.age asc limit 1
select owners.last_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id   order by dogs.age asc limit 1
select professionals.email_address from Professionals where  professionals.state = "Hawaii" or professionals.state = "Wisconsin"
select professionals.email_address from Professionals where  professionals.state = "Hawaii" or professionals.state = "Wisconsin"
select dogs.date_arrived , dogs.date_departed from Dogs
select dogs.date_arrived , dogs.date_departed from Dogs
select count(*) from Dogs
select count(*) from Dogs
select count( distinct treatments.professional_id) from Treatments
select count( distinct treatments.professional_id) from Treatments
select professionals.role_code , professionals.street , professionals.city , professionals.state from Professionals where  professionals.city like "%West%"
select professionals.role_code , professionals.street , professionals.city , professionals.state from Professionals where  professionals.city like "%West%"
select owners.first_name , owners.last_name , owners.email_address from Owners where  owners.state like "%North%"
select owners.first_name , owners.last_name , owners.email_address from Owners where  owners.state like "%North%"
select count(*) from Dogs where  dogs.age < (select avg(dogs.age) from Dogs  )
select count(*) from Dogs where  dogs.age < (select avg(dogs.age) from Dogs  )
select max(treatments.cost_of_treatment) from Treatments
select treatments.cost_of_treatment from Treatments   order by treatments.date_of_treatment desc limit 1
select count(*) from Dogs where  dogs.dog_id not in (select Treatments.dog_id from Treatments  )
select count(*) from Dogs where  dogs.dog_id not in (select Treatments.dog_id from Treatments  )
select count(*) from Owners where  owners.owner_id not in (select Dogs.owner_id from Dogs  )
select count(*) from Owners where  owners.owner_id not in (select Dogs.owner_id from Dogs  )
select count(*) from Professionals where  professionals.professional_id not in (select Treatments.professional_id from Treatments  )
select count(*) from Professionals where  professionals.professional_id not in (select Treatments.professional_id from Treatments  )
select dogs.name , dogs.age , dogs.weight from Dogs where  dogs.abandoned_yn = 1   intersect select dogs.name , dogs.age , dogs.weight from Dogs where  dogs.abandoned_yn = 0
select dogs.name , dogs.age , dogs.weight from Dogs where  dogs.abandoned_yn = 1 and dogs.weight = 0
select avg(dogs.age) from Dogs
select avg(dogs.age) from Dogs
select dogs.age from Dogs   order by dogs.age desc limit 1
select dogs.age from Dogs   order by dogs.age desc limit 1
select charges.charge_type , sum(charges.charge_amount) from Charges  group by charges.charge_type
select charges.charge_type , sum(charges.charge_amount) from Charges  group by charges.charge_type
select charges.charge_type from Charges   order by charges.charge_amount desc limit 1
select charges.charge_amount from Charges   order by charges.charge_type desc limit 1
select professionals.email_address , professionals.cell_number , professionals.home_phone from Professionals
select professionals.email_address , professionals.cell_number , professionals.home_phone from Professionals
select distinct breeds.breed_code , sizes.size_code from Dogs join Sizes on Dogs.size_code = Sizes.size_code join Breeds on Dogs.breed_code = Breeds.breed_code
select distinct dogs.breed_code , dogs.size_code from Dogs
select professionals.first_name , treatment_types.treatment_type_description from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code
select professionals.first_name , treatment_types.treatment_type_description from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code
select count(*) from singer
select count(*) from singer
select singer.name from singer   order by singer.net_worth_millions asc
select singer.name from singer   order by singer.net_worth_millions asc
select singer.birth_year , singer.citizenship from singer
select singer.birth_year , singer.citizenship from singer
select singer.name from singer where  singer.citizenship != "France"
select singer.name from singer where  singer.citizenship != "France"
select singer.name from singer where  singer.birth_year = 1948 or singer.birth_year = 1949
select singer.name from singer where  singer.birth_year = 1948 or singer.birth_year = 1949
select singer.name from singer   order by singer.net_worth_millions desc limit 1
select singer.name from singer   order by singer.net_worth_millions desc limit 1
select singer.citizenship , count(*) from singer  group by singer.citizenship
select singer.citizenship , count(*) from singer  group by singer.citizenship
select singer.citizenship from singer  group by singer.citizenship  order by count(*) desc limit 1
select singer.citizenship from singer  group by singer.citizenship  order by count(*) desc limit 1
select singer.citizenship , max(singer.net_worth_millions) from singer  group by singer.citizenship
select singer.citizenship , max(singer.net_worth_millions) from singer  group by singer.citizenship
select song.title , singer.name from song join singer on song.Singer_ID = singer.Singer_ID
select song.title , singer.name from song join singer on song.Singer_ID = singer.Singer_ID
select distinct singer.name from song join singer on song.Singer_ID = singer.Singer_ID where  song.sales > 300000
select distinct singer.name from song join singer on song.Singer_ID = singer.Singer_ID where  song.sales > 300000
select singer.name from song join singer on song.Singer_ID = singer.Singer_ID  group by song.singer_id having  count(*) > 1
select singer.name from song join singer on song.Singer_ID = singer.Singer_ID  group by song.singer_id having  count(*) > 1
select singer.name , sum(song.sales) from song join singer on song.Singer_ID = singer.Singer_ID  group by singer.name
select sum(song.sales) , song.singer_id from song  group by song.singer_id
select singer.name from singer where  singer.singer_id not in (select song.Singer_ID from song  )
select singer.name from singer where  singer.singer_id not in (select song.Singer_ID from song  )
select singer.citizenship from singer where  singer.birth_year < 1945   intersect select singer.citizenship from singer where  singer.birth_year > 1955
select singer.citizenship from singer where  singer.birth_year < 1945   intersect select singer.citizenship from singer where  singer.birth_year > 1955
select count(*) from Other_Available_Features
select ref_feature_types.feature_type_name from Other_Available_Features join Ref_Feature_Types on Other_Available_Features.feature_type_code = Ref_Feature_Types.feature_type_code where  other_available_features.feature_name = "AirCon"
select ref_property_types.property_type_description from Properties join Ref_Property_Types on Properties.property_type_code = Ref_Property_Types.property_type_code where  properties.property_type_code = "Ref"
select properties.property_name from Properties where  properties.room_count > 1 and properties.property_type_code = "House"   union select properties.property_name from Properties where  properties.room_count > 1
