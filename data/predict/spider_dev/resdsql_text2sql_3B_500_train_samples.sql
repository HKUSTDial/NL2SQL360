select count ( * ) from singer
select count ( * ) from singer
select name , country , age from singer order by age desc
select name , country , age from singer order by age desc
select avg ( age ) , min ( age ) , max ( age ) from singer where country = 'France'
select avg ( age ) , min ( age ) , max ( age ) from singer where country = 'France'
select song_name , song_release_year from singer order by age desc limit 1
select song_name , song_release_year from singer order by age desc limit 1
select distinct country from singer where age > 20
select distinct country from singer where age > 20
select country , count ( * ) from singer group by country
select country , count ( * ) from singer group by country
select song_name from singer where age > ( select avg ( age ) from singer )
select song_name from singer where age > ( select avg ( age ) from singer )
select location , name from stadium where capacity between 5000 and 10000
select location , name from stadium where capacity between 5000 and 10000
select max ( capacity ) , avg ( average ) from stadium
select avg ( capacity ) , max ( capacity ) from stadium
select name , capacity from stadium order by average desc limit 1
select name , capacity from stadium order by average desc limit 1
select count ( * ) from concert where year = 2014 or year = 2015
select count ( * ) from concert where year = 2014 or year = 2015
select stadium.name , count ( * ) from concert join stadium on concert.stadium_id = stadium.stadium_id group by concert.stadium_id
select stadium.name , count ( * ) from concert join stadium on concert.stadium_id = stadium.stadium_id group by stadium.name
select stadium.name , stadium.capacity from concert join stadium on concert.stadium_id = stadium.stadium_id group by concert.year order by count ( * ) desc limit 1
select stadium.name , stadium.capacity from concert join stadium on concert.stadium_id = stadium.stadium_id group by concert.stadium_id order by count ( * ) desc limit 1
select year from concert group by year order by count ( * ) desc limit 1
select year from concert group by year order by count ( * ) desc limit 1
select name from stadium except select stadium.name from concert join stadium on concert.stadium_id = stadium.stadium_id
select name from stadium where stadium_id not in ( select stadium_id from concert )
select country from singer where age > 40 and age < 30
select stadium.name from concert join stadium on concert.stadium_id = stadium.stadium_id except select stadium.name from concert join stadium on concert.stadium_id = stadium.stadium_id where concert.year = 2014
select name from stadium where stadium_id not in ( select stadium_id from concert where year = 2014 )
select concert.concert_name , concert.theme , count ( * ) from singer_in_concert join concert on singer_in_concert.concert_id = concert.concert_id group by concert.concert_id
select concert_name , concert.theme , count ( * ) from concert join singer_in_concert on concert.concert_id = singer_in_concert.concert_id
sql placeholder
select singer.name , count ( * ) from singer_in_concert join singer on singer_in_concert.singer_id = singer.singer_id join concert on singer_in_concert.concert_id = concert.concert_id group by concert.concert_id
sql placeholder
sql placeholder
select name , country from singer where song_name like '%Hey%'
select name , country from singer where song_name like '%Hey%'
sql placeholder
select stadium.name , stadium.location from concert join stadium on concert.stadium_id = stadium.stadium_id where concert.year = 2014 intersect select stadium.name , stadium.location from concert join stadium on concert.stadium_id = stadium.stadium_id where concert.year = 2015
select count ( * ) from concert join stadium on concert.stadium_id = stadium.stadium_id where stadium.capacity = 'highest'
select count ( * ) from concert join stadium on concert.stadium_id = stadium.stadium_id where stadium.capacity = 'highest'
select count ( * ) from pets where weight > 10
select count ( * ) from pets where weight > 10
select weight from pets order by pet_age desc limit 1
select weight from pets order by pet_age desc limit 1
select max ( weight ) , pettype from pets group by pettype
select max ( weight ) , pettype from pets group by pettype
select count ( * ) from has_pet join student on has_pet.stuid = student.stuid where student.age > 20
select count ( * ) from has_pet join student on has_pet.stuid = student.stuid where student.age > 20
select count ( * ) from pets join has_pet on pets.petid = has_pet.petid join student on has_pet.stuid = student.stuid where student.sex = 'F'
select count ( * ) from pets join has_pet on pets.petid = has_pet.petid join student on has_pet.stuid = student.stuid where student.sex = 'F'
select count ( distinct pettype ) from pets
select count ( distinct pettype ) from pets
select student.fname from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid where pets.pettype = 'cat' or pets.pettype = 'dog'
select student.fname from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid where pets.pettype = 'cat' or pets.pettype = 'dog'
sql placeholder
sql placeholder
select student.major , student.age from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid where pets.pettype = 'cat'
select student.major , student.age from has_pet join student on has_pet.stuid = student.stuid except select student.major , student.age from pets join has_pet on pets.petid = has_pet.petid join student on has_pet.stuid = student.stuid where pets.pettype = 'cat'
select stuid from has_pet where petid not in ( select petid from pets where pettype = 'cat' )
sql placeholder
sql placeholder
sql placeholder
select pettype , weight from pets order by pet_age desc limit 1
select pettype , pet_age , weight from pets order by pet_age desc limit 1
select petid , weight from pets where pet_age > 1
select petid , weight from pets where pet_age > 1
select avg ( pet_age ) , max ( pet_age ) from pets group by pettype
select avg ( pet_age ) , max ( pet_age ) from pets group by pettype
select avg ( weight ) from pets group by pettype
select avg ( weight ) , pettype from pets group by pettype
sql placeholder
select distinct student.fname , student.age from has_pet join student on has_pet.stuid = student.stuid
select petid from has_pet join student on has_pet.stuid = student.stuid where student.lname = 'Smith'
select petid from has_pet join student on has_pet.stuid = student.stuid where student.lname = 'Smith'
select count ( * ) , has_pet.petid from has_pet join student on has_pet.stuid = student.stuid group by has_pet.stuid
select count ( * ) , has_pet.petid from has_pet join student on has_pet.stuid = student.stuid group by has_pet.petid
select student.fname , student.sex from has_pet join student on has_pet.stuid = student.stuid group by has_pet.stuid having count ( * ) >= 2
select student.fname , student.sex from has_pet join student on has_pet.stuid = student.stuid group by has_pet.stuid having count ( * ) >= 2
select student.lname from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid where pets.pet_age = 3
select student.lname from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid where pets.pet_age = 3 and pets.pettype = 'cat'
select avg ( age ) from student where stuid not in ( select stuid from has_pet )
select avg ( age ) from student where stuid not in ( select stuid from has_pet )
select count ( * ) from continents
select count ( * ) from continents
select continents.contid , count ( * ) from countries join continents on countries.continent = continents.contid group by continents.contid
select continents.contid , count ( * ) from countries join continents on countries.continent = continents.contid group by continents.contid
select count ( * ) from countries
select count ( * ) from countries
select count ( * ) , car_makers.fullname , car_makers.id from model_list join car_makers on model_list.maker = car_makers.id group by car_makers.id
select car_makers.fullname , count ( * ) from model_list join car_makers on model_list.maker = car_makers.id group by car_makers.id
sql placeholder
select model_list.model from model_list join cars_data on model_list.maker = cars_data.id order by cars_data.horsepower asc limit 1
select model_list.model from model_list join cars_data on model_list.maker = cars_data.id where cars_data.weight < ( select avg ( weight ) from cars_data )
select model_list.model from model_list join cars_data on model_list.maker = cars_data.id where cars_data.weight < ( select avg ( weight ) from cars_data )
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select distinct model from model_list where modelid = '80'
select distinct model from model_list where maker > 1980
select continents.continent , count ( * ) from countries join continents on countries.continent = continents.contid group by countries.continent
select continents.continent , count ( * ) from countries join continents on countries.continent = continents.contid group by countries.continent
select countries.countryname from countries join car_makers on countries.countryid = car_makers.country group by countries.countryname order by count ( * ) desc limit 1
select countries.countryname from car_makers join countries on car_makers.country = countries.countryid group by car_makers.country order by count ( * ) desc limit 1
select count ( * ) , car_makers.fullname from model_list join car_makers on model_list.maker = car_makers.id group by car_makers.maker
select count ( * ) , car_makers.id , car_makers.fullname from model_list join car_makers on model_list.maker = car_makers.id group by car_makers.id
select accelerate from cars_data join car_names on cars_data.id = car_names.makeid where car_names.make = 'amc hornet sportabout (sw)'
sql placeholder
select count ( * ) from car_makers join countries on car_makers.country = countries.countryid where countries.countryname = 'france'
select count ( * ) from car_makers join countries on car_makers.country = countries.countryid where countries.countryname = 'france'
sql placeholder
select count ( * ) from model_list where maker = 'USA'
select avg ( mpg ) from cars_data where cylinders = 4
select avg ( mpg ) from cars_data where cylinders = 4
select min ( weight ) from cars_data where year = 1974 and cylinders = 8
select min ( weight ) from cars_data where year = 1974 and cylinders = 8
select maker , model from model_list
select maker , model from model_list
select countries.countryname , car_makers.country from countries join car_makers on countries.countryid = car_makers.country group by countries.countryid having count ( * ) >= 1
select countries.countryname , countries.countryid from car_makers join countries on car_makers.country = countries.countryid group by countries.countryid having count ( * ) >= 1
select count ( * ) from cars_data where horsepower > 150
select count ( * ) from cars_data where horsepower > 150
select avg ( weight ) from cars_data
select avg ( weight ) , year from cars_data group by year
select countries.countryname from countries join car_makers on countries.countryid = car_makers.country join continents on continents.contid = countries.continent where continents.continent = 'europe' group by countries.continent having count ( * ) >= 3
select countries.countryname from countries join car_makers on countries.countryid = car_makers.country where car_makers.maker = 3 group by countries.countryname having count ( * ) >= 3
sql placeholder
sql placeholder
select model_list.model from model_list join cars_data on model_list.maker = cars_data.id order by cars_data.mpg desc limit 1
select model_list.model from model_list join cars_data on model_list.maker = cars_data.id order by cars_data.mpg desc limit 1
select avg ( horsepower ) from cars_data where year < 1980
select avg ( horsepower ) from cars_data where year < 1980
select avg ( cars_data.edispl ) from model_list join cars_data on model_list.maker = cars_data.id where model_list.model = 'volvo'
select avg ( edispl ) from cars_data except select avg ( edispl ) from cars_data
select max ( accelerate ) , cylinders from cars_data group by cylinders
select max ( accelerate ) from cars_data group by cylinders
select model from model_list group by model order by count ( * ) desc limit 1
select model from model_list group by model order by count ( * ) desc limit 1
select count ( * ) from cars_data where cylinders > 4
select count ( * ) from cars_data where cylinders > 4
select count ( * ) from cars_data where year = 1980
select count ( * ) from cars_data where year = 1980
select count ( * ) from model_list join car_makers on model_list.maker = car_makers.id where car_makers.fullname = 'American Motor Company'
select count ( * ) from model_list where maker = 'American Motor Company'
select car_makers.fullname , car_makers.id from car_makers join model_list on car_makers.id = model_list.maker group by car_makers.id having count ( * ) > 3
select maker , model from model_list group by maker having count ( * ) > 3
sql placeholder
sql placeholder
select year from cars_data where weight between 3000 and 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select count ( * ) from cars_data where accelerate = '0' group by accelerate order by count ( * ) asc limit 1
select count ( * ) from model_list where model = 'volvo' group by model_list.model order by count ( * ) asc limit 1
select count ( * ) from cars_data where horsepower > ( select max ( horsepower ) from cars_data )
select count ( * ) from cars_data where accelerate > ( select max ( accelerate ) from cars_data )
select count ( * ) from car_makers group by country having count ( * ) > 2
select count ( * ) from car_makers group by country having count ( * ) > 2
select count ( * ) from cars_data where cylinders > 6
select count ( * ) from cars_data where cylinders > 6
sql placeholder
sql placeholder
select car_names.make , car_names.make from cars_data join car_names on cars_data.id = car_names.makeid where cars_data.horsepower > 0 and cars_data.cylinders > 3
select makeid , make from car_names except select car_names.make , car_names.model from cars_data join car_names on cars_data.id = car_names.makeid where cars_data.horsepower >= 0 or cars_data.cylinders < 4
select max ( mpg ) from cars_data where cylinders = 8 or year < 1980
select max ( mpg ) from cars_data where cylinders = 8 or year < 1980
select model_list.model from model_list join car_makers on model_list.maker = car_makers.id where car_makers.fullname = 'Ford Motor Company'
select distinct model_list.model from model_list join car_makers on model_list.maker = car_makers.id where car_makers.fullname = 'Ford Motor Company'
select countryname from countries where countryid not in ( select countryid from car_makers )
select countryname from countries where countryid not in ( select countryid from car_makers )
sql placeholder
sql placeholder
select countries.countryid , countries.countryname from car_makers join countries on car_makers.country = countries.countryid group by countries.countryid having count ( * ) > 3 or count ( * ) > 3
select countries.countryid , countries.countryname from car_makers join countries on car_makers.country = countries.countryid group by countries.countryid having count ( * ) > 3 or count ( * ) > 3
select country from airlines where airline = 'JetBlue Airways'
select country from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
sql placeholder
select airline , airline abbreviation from airlines where country = 'USA'
select airportcode , airportname from airports where city = 'Anthony'
select airportcode , airportname from airports where city = 'Anthony'
select count ( * ) from airlines
select count ( * ) from airlines
select count ( * ) from airports
select count ( * ) from airports
select count ( * ) from flights
select count ( * ) from flights
select airline from airlines where abbreviation = 'UAL'
select airline from airlines where abbreviation = 'UAL'
select count ( * ) from airlines where country = 'USA'
select count ( * ) from airlines where country = 'USA'
sql placeholder
select city , country from airports where airportname = 'Alton'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where city = 'Aberdeen'
select airportname from airports where city = 'Aberdeen'
select count ( * ) from flights join airports on flights.sourceairport = airports.airportcode where airports.countryabbrev = 'APG'
select count ( * ) from flights where sourceairport = 'APG'
select count ( * ) from flights where destairport = 'ATO'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.country = 'USA' and airports.airportcode = 'ATO'
select count ( * ) from airports where city = 'Aberdeen'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.city = 'Aberdeen'
select count ( * ) from airports where city = 'Aberdeen'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.city = 'Aberdeen'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.city = 'Aberdeen' and airports.airportname = 'Ashley'
select count ( * ) from airports where city = 'Aberdeen' and airports.airportname = 'Ashley'
select count ( * ) from airlines join flights on airlines.airline = flights.airline where airlines.abbreviation = 'JetBlue Airways'
select count ( * ) from airlines join flights on airlines.airline = flights.airline where airlines.abbreviation = 'JetBlue Airways'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select count ( * ) from airlines join airports on airlines.airline = airports.airportcode where airports.city = 'Aberdeen'
sql placeholder
select city from airports group by city order by count ( * ) desc limit 1
select city from airports group by city order by count ( * ) desc limit 1
select city from airports group by city order by count ( * ) desc limit 1
select city from airports group by city order by count ( * ) desc limit 1
select airportcode from airports group by airportcode order by count ( * ) desc limit 1
select airportcode from airports group by airportcode order by count ( * ) desc limit 1
select airportcode from airports group by airportcode order by count ( * ) asc limit 1
select airportcode from airports group by airportcode order by count ( * ) asc limit 1
select airline from flights group by airline order by count ( * ) desc limit 1
select airline from flights group by airline order by count ( * ) desc limit 1
select abbreviation , country from airlines group by abbreviation order by count ( * ) asc limit 1
select airlines.abbreviation , airlines.country from airlines join flights on airlines.abbreviation = flights.airline group by airlines.airline order by count ( * ) asc limit 1
select airlines.airline from airlines join flights on airlines.airline = flights.airline join airports on airports.airportcode = flights.sourceairport where airports.airportcode = 'AHD'
select airline from flights where sourceairport = 'AHD'
sql placeholder
select airline from flights join airports on flights.destairport = airports.airportcode where airports.countryabbrev = 'AHD'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select airlines.airline from airlines join flights on airlines.airline = flights.airline group by airlines.airline having count ( * ) >= 10
select airlines.airline from flights join airlines on flights.airline = airlines.airline group by airlines.airline having count ( * ) >= 10
select airlines.airline from airlines join flights on airlines.airline = flights.airline where flights.flightno < 200 group by airlines.airline having count ( * ) < 200
select airlines.airline from airlines join flights on airlines.airline = flights.airline where flights.flightno < 200 group by airlines.airline having count ( * ) < 200
select flights.flightno from airlines join flights on airlines.airline = flights.flightno where airlines.airline = 'United Airlines'
select flightno from flights where airline = 'United Airlines'
select flights.flightno from airports join flights on airports.airportcode = flights.sourceairport where airports.airportname = 'APG'
select flightno from flights where sourceairport = 'APG'
select flights.flightno from airports join flights on airports.airportcode = flights.destairport where airports.airportname = 'APG'
select flightno from flights where destairport = 'APG'
select flights.flightno from airports join flights on airports.airportcode = flights.destairport where airports.city = 'Aberdeen'
select flights.flightno from airports join flights on airports.airportcode = flights.sourceairport where airports.city = 'Aberdeen'
select flights.flightno from airports join flights on airports.airportcode = flights.destairport where airports.city = 'Aberdeen'
select flights.flightno from airports join flights on airports.airportcode = flights.destairport where airports.city = 'Aberdeen'
select count ( * ) from airports where city = 'Aberdeen' or city = 'Abilene'
select count ( * ) from airports where city = 'Aberdeen' or city = 'Abilene'
select airportname from airports except select airports.airportname from airports join flights on airports.airportcode = flights.destairport
select airportname from airports where airportcode not in ( select airportcode from airports )
select count ( * ) from employee
select count ( * ) from employee
select name from employee order by age asc
select name from employee order by age asc
select count ( * ) , city from employee group by city
select count ( * ) , city from employee group by city
select city from employee where age < 30 group by city having count ( * ) > 1
select city from employee where age < 30 group by city having count ( * ) > 1
select location , count ( * ) from shop group by location
select location , count ( * ) from shop group by location
select manager_name , district from shop order by number_products desc limit 1
select manager_name , district from shop group by number_products order by count ( * ) desc limit 1
select min ( number_products ) , max ( number_products ) from shop
select min ( number_products ) , max ( number_products ) from shop
select name , location , district from shop order by number_products desc
select name , location , district from shop order by number_products desc
select name from shop where number_products > ( select avg ( number_products ) from shop )
select name from shop where number_products > ( select avg ( number_products ) from shop )
select employee.name from evaluation join employee on evaluation.employee_id = employee.employee_id group by evaluation.employee_id order by count ( * ) desc limit 1
select employee.name from evaluation join employee on evaluation.employee_id = employee.employee_id group by evaluation.employee_id order by count ( * ) desc limit 1
select employee.name from evaluation join employee on evaluation.employee_id = employee.employee_id group by evaluation.employee_id order by sum ( bonus ) desc limit 1
select employee.name from evaluation join employee on evaluation.employee_id = employee.employee_id order by evaluation.bonus desc limit 1
select name from employee where employee_id not in ( select employee_id from evaluation )
select name from employee where employee_id not in ( select employee_id from evaluation )
select shop.name from hiring join shop on hiring.shop_id = shop.shop_id group by hiring.shop_id order by count ( * ) desc limit 1
select shop.name from shop join hiring on shop.shop_id = hiring.shop_id group by shop.name order by count ( * ) desc limit 1
select name from shop except select shop.name from shop join hiring on shop.shop_id = hiring.shop_id
select name from shop where shop_id not in ( select shop_id from hiring )
select count ( * ) , shop.name from hiring join shop on hiring.shop_id = shop.shop_id group by shop.shop_id
select shop.name , count ( * ) from hiring join shop on hiring.shop_id = shop.shop_id group by shop.name
select sum ( bonus ) from evaluation
select sum ( bonus ) from evaluation
select * from hiring
select * from hiring
select district from shop where number_products < 3 intersect select district from shop where number_products > 10
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select count ( distinct location ) from shop
select count ( distinct location ) from shop
select count ( * ) from documents
select count ( * ) from documents
select document_id , document_name , document_description from documents
select document_id , document_name , document_description from documents
select document_name , template_id from documents where document_description like '%w%'
select document_name , template_id from documents where document_description like '%w%'
select document_id , template_id , document_description from documents where document_name = 'Robbin CV'
select document_id , template_id , document_description from documents where document_name = 'Robbin CV'
select count ( distinct template_id ) from documents
select count ( distinct template_id ) from documents
select count ( * ) from documents join templates on documents.template_id = templates.template_id where templates.template_type_code = 'PPT'
select count ( * ) from documents join templates on documents.template_id = templates.template_id where templates.template_type_code = 'PPT'
select template_id , count ( * ) from templates group by template_id
select distinct template_id , count ( * ) from documents group by template_id
select template_id , template_type_code from templates group by template_id order by count ( * ) desc limit 1
select templates.template_id , templates.template_type_code from documents join templates on documents.template_id = templates.template_id group by templates.template_id order by count ( * ) desc limit 1
select template_id from documents group by template_id having count ( * ) >= 2
select template_id from documents group by template_id having count ( * ) >= 2
select template_id from templates except select templates.template_id from templates join documents on templates.template_id = documents.template_id
select template_id from templates except select template_id from documents
select count ( * ) from templates
select count ( * ) from templates
select template_id , version_number , template_type_code from templates
select template_id , version_number , template_type_code from templates
select distinct template_type_code from templates
select distinct template_type_code from templates
select template_id from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select template_id from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select count ( * ) from templates where template_type_code = 'CV'
select count ( * ) from templates where template_type_code = 'CV'
select version_number , template_type_code from templates where version_number > 5
select version_number , template_type_code from templates where version_number > 5
select template_type_code , count ( * ) from templates group by template_type_code
select template_type_code , count ( * ) from templates group by template_type_code
select template_type_code from templates group by template_type_code order by count ( * ) desc limit 1
select template_type_code from templates group by template_type_code order by count ( * ) desc limit 1
select template_type_code from templates group by template_type_code having count ( * ) < 3
select template_type_code from templates group by template_type_code having count ( * ) < 3
select version_number , template_type_code from templates order by version_number asc limit 1
select version_number , template_type_code from templates order by version_number asc limit 1
select template_type_code from templates join documents on templates.template_id = documents.template_id where documents.document_name = 'Data base'
select template_type_code from templates join documents on templates.template_id = documents.template_id where documents.document_name = 'Data base'
select document_name from documents where template_id = 'BK'
select document_name from documents where template_id = 'BK'
select template_type_code , count ( * ) from templates group by template_type_code
select distinct template_type_code , count ( * ) from templates group by template_type_code
select template_type_code from templates group by template_type_code order by count ( * ) desc limit 1
select template_type_code from templates group by template_type_code order by count ( * ) desc limit 1
select template_type_code from templates except select template_type_code from templates
select template_type_code from templates except select template_type_code from templates
select template_type_description from ref_template_types
select template_type_description , template_type_code from ref_template_types
select template_type_description from ref_template_types where template_type_code = 'AD'
select template_type_description from ref_template_types where template_type_code = 'AD'
select templates.template_type_code from ref_template_types join templates on ref_template_types.template_type_code = templates.template_type_code where ref_template_types.template_type_description = 'Book'
select template_type_code from ref_template_types where template_type_description = 'Book'
sql placeholder
select distinct document_description from documents
select templates.template_id from ref_template_types join templates on ref_template_types.template_type_code = templates.template_id where ref_template_types.template_type_description = 'Presentation'
sql placeholder
select count ( * ) from paragraphs
select count ( * ) from paragraphs
select count ( * ) from paragraphs join documents on paragraphs.document_id = documents.document_id where documents.document_name = 'Summer Show'
select count ( * ) from documents join paragraphs on documents.document_id = paragraphs.document_id where documents.document_name = 'Summer Show'
select other_details from paragraphs where paragraph_text = 'Korea'
select other_details from paragraphs where paragraph_text = 'Korea'
select paragraph_id , paragraph_text from paragraphs join documents on paragraphs.document_id = documents.document_id where documents.document_name = 'Welcome to NY'
select paragraphs.paragraph_text , paragraphs.document_id from documents join paragraphs on documents.document_id = paragraphs.document_id where documents.document_name = 'Welcome to NY'
select paragraph_text from paragraphs where document_id = 'Customer reviews'
select paragraph_text from paragraphs join documents on paragraphs.document_id = documents.document_id where documents.document_name = 'Customer reviews'
select document_id , count ( * ) from paragraphs group by document_id order by document_id asc
select distinct document_id , count ( * ) from paragraphs group by document_id order by document_id asc
select documents.document_name , count ( * ) from paragraphs join documents on paragraphs.document_id = documents.document_id group by paragraphs.document_id
select documents.document_id , documents.document_name , count ( * ) from paragraphs join documents on paragraphs.document_id = documents.document_id group by paragraphs.document_id
select document_id from documents group by document_id having count ( * ) >= 2
select document_id from paragraphs group by document_id having count ( * ) >= 2
select documents.document_name , documents.document_id from paragraphs join documents on paragraphs.document_id = documents.document_id group by paragraphs.document_id order by count ( * ) desc limit 1
select documents.document_name , documents.document_id from paragraphs join documents on paragraphs.document_id = documents.document_id group by paragraphs.document_id order by count ( * ) desc limit 1
select document_id from paragraphs group by document_id order by count ( * ) asc limit 1
select document_id from documents group by document_id order by count ( * ) asc limit 1
select document_id from documents where document_name between 1 and 2
select document_id from documents where document_name between 1 and 2
select documents.document_id from documents join paragraphs on documents.document_id = paragraphs.document_id where paragraphs.paragraph_text = 'Brazil' and paragraphs.paragraph_text = 'Ireland'
select document_id from paragraphs where paragraph_text like 'Brazil' and paragraph_text like 'Ireland'
select count ( * ) from teacher
select count ( * ) from teacher
select name from teacher order by age asc
select name from teacher order by age asc
select age , hometown from teacher
select age , hometown from teacher
select name from teacher where hometown != ''
select name from teacher where hometown != ''
select name from teacher where age between 32 and 33
select name from teacher where age = '32' intersect select name from teacher where age = '33'
select hometown from teacher order by age desc limit 1
select hometown from teacher order by age desc limit 1
select hometown , count ( * ) from teacher group by hometown
select hometown , count ( * ) from teacher group by hometown
select hometown from teacher group by hometown order by count ( * ) desc limit 1
select hometown from teacher group by hometown order by count ( * ) desc limit 1
select hometown from teacher group by hometown having count ( * ) >= 2
select hometown from teacher group by hometown having count ( * ) >= 2
select teacher.name , course.course from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id join course on course_arrange.course_id = course.course_id
select teacher.name , course.course from teacher join course_arrange on teacher.teacher_id = course_arrange.teacher_id join course on course_arrange.course_id = course.course_id
select teacher.name , course_arrange.course_id from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id order by teacher.name asc
select teacher.name , course_arrange.course_id from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id order by teacher.name asc
select teacher.name from teacher join course_arrange on teacher.teacher_id = course_arrange.teacher_id join course on course_arrange.course_id = course.course_id where course.course = 'Math'
select teacher.name from teacher join course_arrange on teacher.teacher_id = course_arrange.teacher_id join course on course_arrange.course_id = course.course_id where course.course = 'Math'
select teacher.name , count ( * ) from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id group by course_arrange.teacher_id
select teacher.name , count ( * ) from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id group by course_arrange.teacher_id
select teacher.name from teacher join course_arrange on teacher.teacher_id = course_arrange.teacher_id group by course_arrange.teacher_id having count ( * ) >= 2
select teacher.name from teacher join course_arrange on teacher.teacher_id = course_arrange.teacher_id group by course_arrange.teacher_id having count ( * ) >= 2
select name from teacher where teacher_id not in ( select teacher_id from course_arrange )
select name from teacher where teacher_id not in ( select teacher_id from course_arrange )
select count ( * ) from visitor where age < 30
select name from visitor where level_of_membership > ( select max ( level_of_membership ) from visitor ) order by level_of_membership asc
select avg ( age ) from visitor where level_of_membership < 4
select name , level_of_membership from visitor where level_of_membership > 4 order by age desc
select museum.museum_id , museum.name from museum join visit on museum.museum_id = visit.museum_id group by museum.museum_id order by count ( * ) desc limit 1
select avg ( num_of_staff ) from museum where open_year < 2009
select open_year , num_of_staff from museum where name = 'Plaza Museum'
select name from museum where num_of_staff > ( select min ( num_of_staff ) from museum where open_year > 2010 )
sql placeholder
select visitor.id , visitor.name , visitor.level_of_membership from visit join visitor on visit.visitor_id = visitor.id group by visitor.id order by sum ( visit.total_spent ) desc limit 1
select museum.name , museum.museum_id from museum join visit on museum.museum_id = visit.museum_id group by museum.museum_id order by count ( * ) desc limit 1
select name from museum where museum_id not in ( select museum_id from visit )
select visitor.name , visitor.age from visit join visitor on visit.visitor_id = visitor.id group by visit.visitor_id order by count ( * ) desc limit 1
select avg ( num_of_ticket ) , max ( num_of_ticket ) from visit
select sum ( visit.total_spent ) from visitor join visit on visitor.id = visit.visitor_id where visitor.level_of_membership = 1
sql placeholder
select count ( * ) from visitor join visit on visitor.id = visit.visitor_id join museum on visit.museum_id = museum.museum_id where museum.open_year > 2010
select count ( * ) from museum where open_year > 2013 or open_year < 2008
select count ( * ) from players
select count ( * ) from players
select count ( * ) from matches
select count ( * ) from matches
select distinct first_name , birth_date from players where country_code = 'USA'
select first_name , birth_date from players where country_code = 'USA'
select avg ( loser_age ) , winner_age from matches
select avg ( loser_age ) from matches
select avg ( winner_rank ) from matches
select avg ( winner_rank ) from matches
select loser_rank from matches order by loser_rank desc limit 1
select loser_rank from matches group by loser_rank order by count ( * ) desc limit 1
select count ( distinct country_code ) from players
select count ( distinct country_code ) from players
select count ( distinct loser_name ) from matches
select count ( distinct loser_name ) from matches
select tourney_name from matches group by tourney_name having count ( * ) > 10
select tourney_name from matches group by tourney_name having count ( * ) > 10
select distinct winner_name from matches where year = 2013 intersect select distinct winner_name from matches where year = 2016
select players.first_name , players.last_name from matches join players on matches.winner_id = players.player_id where matches.year = 2013 intersect select players.first_name , players.last_name from players join rankings on players.player_id = rankings.player_id where rankings.ranking_date = 2016
select count ( * ) from matches where year = 2013 or year = 2016
select count ( * ) from matches where year = 2013 or year = 2016
select players.country_code , players.first_name from matches join players on matches.winner_id = players.player_id where matches.tourney_name = 'Australian Open' intersect select players.country_code , players.first_name from matches join players on matches.winner_id = players.player_id where matches.tourney_name = 'WTA Championships'
select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id where matches.tourney_name = 'Australian Open' intersect select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id where matches.tourney_name = 'WTA Championships'
select first_name , country_code from players order by birth_date desc limit 1
select first_name , country_code from players order by birth_date desc limit 1
select first_name , last_name from players order by birth_date asc
select first_name , last_name from players order by birth_date asc
select distinct first_name , last_name from players where birth_date = 'Date' and birth_date = 'Last' order by birth_date
select first_name , last_name from players where birth_date = 'Date' and hand = 'Left' order by birth_date
select players.first_name , players.country_code from rankings join players on rankings.player_id = players.player_id group by rankings.player_id order by count ( * ) desc limit 1
select players.first_name , players.country_code from rankings join players on rankings.player_id = players.player_id group by rankings.player_id order by count ( * ) desc limit 1
select year from matches group by year order by count ( * ) desc limit 1
select year from matches group by year order by count ( * ) desc limit 1
select winner_name , winner_rank_points from matches group by winner_name order by count ( * ) desc limit 1
sql placeholder
select winner_name from matches where tourney_name = 'Australian Open'
sql placeholder
select loser_name , winner_name from matches order by minutes desc limit 1
sql placeholder
select avg ( rankings.ranking ) from rankings join players on rankings.player_id = players.player_id
select first_name , rankings.ranking from rankings join players on rankings.player_id = players.player_id
select players.first_name , sum ( rankings.ranking_points ) from rankings join players on rankings.player_id = players.player_id group by rankings.player_id
select first_name , rankings.ranking_points from rankings join players on rankings.player_id = players.player_id
select count ( * ) , country_code from players group by country_code
select country_code , count ( * ) from players group by country_code
select country_code from players group by country_code order by count ( * ) desc limit 1
select country_code from players group by country_code order by count ( * ) desc limit 1
select country_code from players group by country_code having count ( * ) > 50
select country_code from players group by country_code having count ( * ) > 50
select sum ( tours ) , ranking_date from rankings group by ranking_date
select sum ( tours ) , ranking_date from rankings group by ranking_date
select count ( * ) , year from matches group by year
select count ( * ) , year from matches group by year
select winner_name , winner_rank from matches order by winner_age desc limit 3
select winner_name , winner_rank from matches order by winner_age desc limit 3
sql placeholder
select count ( * ) from players join matches on players.player_id = matches.winner_id where players.hand = 'left'
select players.first_name , players.country_code , players.birth_date from matches join players on matches.winner_id = players.player_id order by matches.winner_rank_points desc limit 1
select players.first_name , players.country_code , players.birth_date from players join matches on players.player_id = matches.winner_id group by matches.winner_rank_points order by count ( * ) desc limit 1
select count ( * ) , hand from players group by hand
select count ( * ) , hand from players group by hand
select count ( * ) from ship where disposition_of_ship = 'Captured'
select name , tonnage from ship order by name desc
select name , date , result from battle
select max ( killed ) , min ( injured ) from death group by death.id
select avg ( injured ) from death group by injured
select death.injured , death.killed from death join ship on death.caused_by_ship_id = ship.id where ship.tonnage = 't'
select name , result from battle where bulgarian_commander != 'Boril'
select distinct battle.id , battle.name from ship join battle on ship.id = battle.id where ship.ship_type = 'Brig'
select battle.id , battle.name from battle join death on battle.id = death.id group by battle.id having sum ( death.killed ) > 10
select ship.id , ship.name from ship join death on ship.id = death.caused_by_ship_id group by ship.id order by count ( * ) desc limit 1
select distinct name from battle where bulgarian_commander = 'Kaloyan' and latin_commander = 'Baldwin I'
select count ( distinct result ) from battle
select count ( * ) from ship join battle on ship.id = battle.id where ship.tonnage = '225'
select battle.name , battle.date from ship join battle on ship.id = battle.id where ship.name = 'Lettice' and ship.name = 'HMS Atalanta'
select battle.name , battle.result , bulgarian_commander from battle join ship on battle.id = ship.id where ship.location = 'English Channel'
select note from death where note like '%East%'
sql placeholder
select line_1 , line_2 from addresses
select count ( * ) from courses
select count ( * ) from courses
select course_description from courses where course_name = 'math'
select course_description from courses where course_name = 'math'
select zip_postcode from addresses where city = 'Port Chelsea'
select zip_postcode from addresses where city = 'Port Chelsea'
select departments.department_name , departments.department_id from degree_programs join departments on degree_programs.department_id = departments.department_id group by departments.department_id order by count ( * ) desc limit 1
select departments.department_name , degree_programs.department_id from degree_programs join departments on degree_programs.department_id = departments.department_id group by departments.department_name order by count ( * ) desc limit 1
select count ( * ) from departments group by departments.department_name
select count ( distinct departments.department_name ) from degree_programs join departments on degree_programs.department_id = departments.department_id
select count ( distinct degree_summary_name ) from degree_programs
select count ( distinct degree_summary_name ) from degree_programs
sql placeholder
select count ( * ) from degree_programs where department_id = 'engineering'
select section_name , section_description from sections
select section_name , section_description from sections
select courses.course_name , sections.course_id from courses join sections on courses.course_id = sections.course_id group by sections.course_id having count ( * ) >= 2
select course_name , course_id from courses where course_id < 2 group by course_id having count ( * ) < 2
select section_name from sections order by section_name asc
select section_name from sections order by section_name asc
select semester_name , semester_id from semesters group by semester_id order by count ( * ) desc limit 1
select semester_name , semester_id from semesters group by semester_id order by count ( * ) desc limit 1
select department_description from departments where department_name like '%computer%'
select department_description from departments where department_name like '%computer%'
select students.first_name , students.middle_name , students.last_name , student_enrolment.student_id from student_enrolment join students on student_enrolment.student_id = students.student_id group by student_enrolment.student_id having count ( * ) >= 2
select students.first_name , students.middle_name , students.last_name , student_enrolment.student_id from student_enrolment join students on student_enrolment.student_id = students.student_id group by student_enrolment.student_id having count ( * ) >= 2
select students.first_name , students.last_name from student_enrolment join students on student_enrolment.student_id = students.student_id join degree_programs on student_enrolment.degree_program_id = degree_programs.degree_program_id where degree_programs.degree_summary_name = 'Bachelor'
select first_name , middle_name , last_name from students join student_enrolment on students.student_id = student_enrolment.student_id join degree_programs on student_enrolment.degree_program_id = degree_programs.degree_program_id
select degree_programs.degree_summary_name from degree_programs join student_enrolment on degree_programs.degree_program_id = student_enrolment.degree_program_id group by degree_programs.degree_summary_name order by count ( * ) desc limit 1
select degree_summary_name from degree_programs group by degree_summary_name order by count ( * ) desc limit 1
select degree_programs.degree_summary_name , student_enrolment.student_enrolment_id from student_enrolment join degree_programs on student_enrolment.degree_program_id = degree_programs.degree_program_id group by degree_programs.degree_summary_name order by count ( * ) desc limit 1
select degree_programs.degree_program_id , degree_summary_name from degree_programs join student_enrolment on degree_programs.degree_program_id = student_enrolment.degree_program_id group by degree_programs.degree_program_id order by count ( * ) desc limit 1
select student_enrolment.student_id , count ( * ) from student_enrolment join students on student_enrolment.student_id = students.student_id group by student_enrolment.student_id order by count ( * ) desc limit 1
sql placeholder
select semester_name from semesters where semester_id not in ( select semester_id from student_enrolment )
select semester_name from semesters where semester_id not in ( select semester_id from student_enrolment )
select course_name from courses where course_id = 'student_enrolment_courses'
sql placeholder
select course_name from courses group by course_name order by count ( * ) desc limit 1
select course_name from courses group by course_name order by count ( * ) desc limit 1
sql placeholder
sql placeholder
select transcript_date , transcript_id from transcripts group by transcript_id having count ( * ) >= 2
select transcript_date , transcript_id from transcripts group by transcript_id having count ( * ) >= 2
sql placeholder
select cell_mobile_number from students where first_name = 'Timmothy' and last_name = 'Ward'
select first_name , middle_name , last_name from students order by date_first_registered desc limit 1
select first_name , middle_name , last_name from students order by date_first_registered desc limit 1
select first_name , middle_name , last_name from students order by date_first_registered desc limit 1
select first_name , middle_name , last_name from students order by date_first_registered desc limit 1
select first_name from students where permanent_address_id > current_address_id
select first_name from students where permanent_address_id != current_address_id
select addresses.address_id , addresses.line_2 from students join addresses on students.current_address_id = addresses.address_id group by addresses.address_id order by count ( * ) desc limit 1
select address_id , line_1 , line_2 from addresses group by address_id order by count ( * ) desc limit 1
select avg ( transcript_date ) from transcripts
select avg ( transcript_date ) from transcripts
select transcript_date , other_details from transcripts
select transcript_date , other_details from transcripts
select count ( * ) from transcripts
select count ( * ) from transcripts
select transcript_date from transcripts
select transcript_date from transcripts
select count ( * ) from transcripts
select max ( student_enrolment_courses.student_enrolment_id ) , courses.course_name from student_enrolment_courses join courses on student_enrolment_courses.course_id = courses.course_id group by courses.course_id
select transcript_date , transcript_id from transcripts order by transcript_date asc limit 1
select transcript_date , transcript_id from transcripts order by transcript_date desc limit 1
sql placeholder
select semester_id from semesters where semester_name = 'Masters' intersect select semester_id from semesters where semester_name = 'Bachelors'
select count ( distinct current_address_id ) from students
select distinct addresses.city , addresses.country from addresses join students on addresses.address_id = students.permanent_address_id
select other_student_details from students order by other_student_details asc
select other_student_details from students order by other_student_details asc
select section_description from sections where section_name = 'h'
select section_description from sections where section_name = 'h'
select first_name from students where permanent_address_id = 'Haiti' or cell_mobile_number = '09700166582'
select first_name from students where permanent_address_id = 'Haiti' or cell_mobile_number = '09700166582'
select title from cartoon order by title asc
select title from cartoon order by title asc
select distinct title from cartoon where directed_by = 'Ben Jones'
select title from cartoon where directed_by = 'Ben Jones'
select count ( * ) from cartoon where written_by = 'Joseph Kuhr'
select count ( * ) from cartoon where written_by = 'Joseph Kuhr'
select title , directed_by from cartoon order by original_air_date asc
select title , directed_by from cartoon order by original_air_date asc
select title from cartoon where directed_by = 'Ben Jones' or directed_by = 'Brandon Vietti'
select title from cartoon where directed_by = 'Ben Jones' or directed_by = 'Brandon Vietti'
select country , count ( * ) from tv_channel group by country order by count ( * ) desc limit 1
select country , count ( * ) from tv_channel group by country order by count ( * ) desc limit 1
select count ( distinct series_name ) from tv_channel
select count ( distinct content ) from tv_channel
select content from tv_channel where series_name = 'Sky Radio'
select content from tv_channel where series_name = 'Sky Radio'
select package_option from tv_channel where series_name = 'Sky Radio'
select package_option from tv_channel where series_name = 'Sky Radio'
select count ( * ) from tv_channel where language = 'English'
select count ( * ) from tv_channel where language = 'English'
select language , count ( * ) from tv_channel group by language order by count ( * ) asc limit 1
select language , count ( * ) from tv_channel group by language order by count ( * ) asc limit 1
select language , count ( * ) from tv_channel group by language
select language , count ( * ) from tv_channel group by language
select tv_channel.series_name from cartoon join tv_channel on cartoon.channel = tv_channel.id where cartoon.title = 'The Rise of the Blue Beetle!'
sql placeholder
select title from cartoon join tv_channel on cartoon.channel = tv_channel.id where tv_channel.series_name = 'Sky Radio'
select cartoon.title from cartoon join tv_series on cartoon.channel = tv_channel.id join tv_channel on tv_series.id = tv_channel.id where tv_channel.series_name = 'Sky Radio'
select episode from tv_series order by rating asc
select episode from tv_series order by rating asc
select episode , rating from tv_series order by rating desc limit 3
select episode , rating from tv_series order by rating desc limit 3
select min ( share ) , max ( share ) from tv_series
select max ( share ) , min ( share ) from tv_series
select air_date from tv_series where episode = 'A Love of a Lifetime'
select air_date from tv_series where episode = 'A Love of a Lifetime'
select weekly_rank from tv_series where episode = 'A Love of a Lifetime'
select weekly_rank from tv_series where episode = 'A Love of a Lifetime'
select tv_channel.series_name from tv_series join tv_channel on tv_series.channel = tv_channel.id where tv_series.episode = 'A Love of a Lifetime'
sql placeholder
select episode from tv_series join tv_channel on tv_series.id = tv_channel.id where tv_channel.series_name = 'Sky Radio'
select episode from tv_series join tv_channel on tv_series.channel = tv_channel.id where tv_channel.series_name = 'Sky Radio'
select count ( * ) , directed_by from cartoon group by directed_by
select directed_by , count ( * ) from cartoon group by directed_by
sql placeholder
select production_code , channel from cartoon order by production_code desc limit 1
select package_option , series_name from tv_channel where hight_definition_tv
select package_option , series_name from tv_channel where hight_definition_tv = 'true'
select tv_channel.country from cartoon join tv_channel on cartoon.id = tv_channel.id where cartoon.written_by = 'Todd Casey'
select tv_channel.country from cartoon join tv_channel on cartoon.id = tv_channel.id where cartoon.written_by = 'Todd Casey'
select tv_channel.country from cartoon join tv_channel on cartoon.id = tv_channel.id where cartoon.written_by = 'Todd Casey'
select tv_channel.country from cartoon join tv_channel on cartoon.channel = tv_channel.id where cartoon.written_by = 'Todd Casey'
select tv_channel.series_name , tv_channel.country from cartoon join tv_series on cartoon.id = tv_series.channel join tv_channel on cartoon.id = tv_channel.id where cartoon.directed_by = 'Ben Jones' and cartoon.written_by = 'Michael Chang'
select tv_channel.series_name , tv_channel.country from cartoon join tv_series on cartoon.id = tv_series.channel join tv_channel on cartoon.id = tv_channel.id where cartoon.directed_by = 'Ben Jones' and cartoon.directed_by = 'Michael Chang'
select pixel_aspect_ratio_par , country from tv_channel where language != 'English'
select pixel_aspect_ratio_par , country from tv_channel where language != 'English'
select tv_channel.id from tv_channel join cartoon on tv_channel.id = cartoon.channel group by cartoon.channel having count ( * ) >= 2
select id from tv_channel group by id having count ( * ) > 2
select id from tv_channel where country not in ( select country from tv_channel where country = 'USA' )
select id from tv_channel where id not in ( select id from cartoon where directed_by = 'Ben Jones' )
select package_option from tv_channel except select tv_channel.package_option from cartoon join tv_channel on cartoon.channel = tv_channel.id where cartoon.directed_by = 'Ben Jones'
select package_option from tv_channel where content not in ( select content from cartoon where directed_by = 'Ben Jones' )
select count ( * ) from poker_player
select count ( * ) from poker_player
select earnings from poker_player order by earnings desc
select earnings from poker_player order by earnings desc
select final_table_made , best_finish from poker_player
select final_table_made , best_finish from poker_player
select avg ( earnings ) from poker_player
select avg ( earnings ) from poker_player
select money_rank from poker_player order by earnings desc limit 1
select money_rank from poker_player order by earnings desc limit 1
select max ( final_table_made ) from poker_player where earnings < 200000
select max ( final_table_made ) from poker_player where earnings < 200000
select people.name from poker_player join people on poker_player.people_id = people.people_id
select people.name from poker_player join people on poker_player.people_id = people.people_id
select people.name from poker_player join people on poker_player.people_id = people.people_id where poker_player.earnings > 300000
select people.name from poker_player join people on poker_player.people_id = people.people_id where poker_player.earnings > 300000
select people.name from poker_player join people on poker_player.people_id = people.people_id order by poker_player.final_table_made asc
select people.name from poker_player join people on poker_player.people_id = people.people_id order by poker_player.final_table_made asc
select people.birth_date from poker_player join people on poker_player.people_id = people.people_id order by poker_player.earnings asc limit 1
select people.birth_date from poker_player join people on poker_player.people_id = people.people_id order by poker_player.earnings asc limit 1
sql placeholder
select poker_player.money_rank from poker_player join people on poker_player.people_id = people.people_id order by people.height desc limit 1
select avg ( poker_player.earnings ) from poker_player join people on poker_player.people_id = people.people_id where people.height > 200
select avg ( poker_player.earnings ) from poker_player join people on poker_player.people_id = people.people_id where people.height > 200
select people.name from poker_player join people on poker_player.people_id = people.people_id order by poker_player.earnings desc
select people.name from poker_player join people on poker_player.people_id = people.people_id order by poker_player.earnings desc
select nationality , count ( * ) from people group by nationality
select nationality , count ( * ) from people group by nationality
select nationality from people group by nationality order by count ( * ) desc limit 1
select nationality from people group by nationality order by count ( * ) desc limit 1
select nationality from people group by nationality having count ( * ) >= 2
select nationality from people group by nationality having count ( * ) >= 2
select name , birth_date from people order by name asc
select name , birth_date from people order by name asc
select name from people where nationality != 'Russia'
select name from people where nationality != 'Russia'
select name from people where people_id not in ( select people_id from poker_player )
select name from people where people_id not in ( select people_id from poker_player )
select count ( distinct nationality ) from people
select count ( distinct nationality ) from people
select count ( * ) from area_code_state
select contestant_number , contestant_name from contestants order by contestant_name desc
select vote_id , phone_number , state from votes
select max ( area_code ) , min ( area_code ) from area_code_state
select created from votes where state = 'CA'
select contestant_name from contestants where contestant_name != 'Jessie Alloway'
select distinct state , created from votes
select contestant_number , contestant_name from contestants group by contestant_number having count ( * ) >= 2
select contestant_number , contestant_name from contestants group by contestant_number order by count ( * ) asc limit 1
select count ( * ) from votes where state = 'CA' or state = 'NY'
select count ( * ) from contestants where contestant_name not in ( select contestant_name from contestants )
select area_code_state.area_code from area_code_state join votes on area_code_state.state = votes.state group by area_code_state.state order by count ( * ) desc limit 1
select votes.created , votes.state , votes.phone_number from votes join contestants on votes.contestant_number = contestants.contestant_number where contestants.contestant_name = 'Tabatha Gehling'
sql placeholder
select contestant_name from contestants where contestant_name like '%Al%'
select name from country where indepyear > 1950
select name from country where code = '50'
select count ( * ) from country where governmentform = 'Republic'
select count ( * ) from country where governmentform = 'Republic'
select sum ( surfacearea ) from country where region = 'Carribean'
select sum ( surfacearea ) from country where region = 'carribean' group by surfacearea
select continent from country where name = 'Anguilla'
select continent from country where name = 'Anguilla'
select country.region from country join city on country.code = city.countrycode where city.name = 'Kabul'
select region from country where name = 'Kabul'
select countrylanguage.language from country join countrylanguage on country.code = countrylanguage.countrycode where country.name = 'Aruba' group by countrylanguage.language order by count ( * ) desc limit 1
select countrylanguage.language from country join countrylanguage on country.code = countrylanguage.countrycode where country.name = 'Aruba' group by countrylanguage.language order by count ( * ) desc limit 1
select population , lifeexpectancy from country where name = 'Brazil'
select population , lifeexpectancy from country where name = 'Brazil'
select region , population from country where name = 'Angola'
select region , population from country where name = 'Angola'
select avg ( lifeexpectancy ) from country where region = 'Central Africa'
select avg ( lifeexpectancy ) from country where region = 'Central Africa'
select name from country where lifeexpectancy = '0' order by lifeexpectancy asc limit 1
select country.name from country join city on country.code = city.countrycode where country.continent = 'Asia' order by lifeexpectancy asc limit 1
select sum ( population ) , max ( gnp ) from country where continent = 'Asia'
select population , count ( * ) from country where continent = 'Asia' group by continent order by count ( * ) desc limit 1
select avg ( lifeexpectancy ) from country where governmentform = 'Republic'
select avg ( lifeexpectancy ) from country where governmentform = 'Republic' and continent = 'Africa'
select sum ( surfacearea ) from country where continent = 'Asia' and continent = 'Europe'
select sum ( surfacearea ) from country where continent = 'Asia' or continent = 'Europe'
select count ( * ) from city where district = 'Gelderland'
select sum ( population ) from city where district = 'Gelderland'
select avg ( gnp ) , population from country where governmentform = 'US Territory'
select avg ( gnp ) , population from country where governmentform = 'US Territory'
select count ( distinct language ) from countrylanguage
select count ( distinct language ) from countrylanguage
select count ( * ) from country where continent = 'Africa'
select count ( distinct governmentform ) from country where continent = 'Africa'
select sum ( language ) from countrylanguage join country on countrylanguage.countrycode = country.code where country.name = 'Aruba'
select count ( * ) from countrylanguage join country on countrylanguage.countrycode = country.code where country.name = 'Aruba'
select count ( * ) from country join countrylanguage on country.code = countrylanguage.countrycode where country.name = 'Afghanistan'
select count ( * ) from countrylanguage join country on countrylanguage.countrycode = country.code where country.name = 'Afghanistan'
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode group by countrylanguage.countrycode order by count ( * ) desc limit 1
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode group by countrylanguage.countrycode order by count ( * ) desc limit 1
select continent from country group by continent order by count ( * ) desc limit 1
select continent from country group by continent order by count ( * ) desc limit 1
select count ( * ) from countrylanguage where language = 'Dutch' intersect select count ( * ) from countrylanguage where language = 'English'
select count ( * ) from countrylanguage where language = 'English' intersect select count ( * ) from countrylanguage where language = 'Dutch'
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'English' intersect select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'French'
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'English' intersect select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'French'
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'English' intersect select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.isofficial = 'French'
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'English' intersect select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.isofficial = 'French'
select count ( distinct country.continent ) from countrylanguage join country on countrylanguage.countrycode = country.code where countrylanguage.language = 'Chinese'
select count ( * ) from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'Chinese'
select distinct country.region from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'English' or countrylanguage.language = 'Dutch'
select distinct country.region from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'Dutch' or countrylanguage.language = 'English'
select country.name from countrylanguage join country on countrylanguage.countrycode = country.code where countrylanguage.language = 'English' or countrylanguage.language = 'Dutch'
select country.name from countrylanguage join country on countrylanguage.countrycode = country.code where countrylanguage.language = 'English' or countrylanguage.language = 'Dutch'
select countrylanguage.language from country join countrylanguage on country.code = countrylanguage.countrycode where country.continent = 'Asia' group by countrylanguage.countrycode order by count ( * ) desc limit 1
select countrylanguage.language from country join countrylanguage on country.code = countrylanguage.countrycode where country.continent = 'Asia' group by countrylanguage.countrycode order by count ( * ) desc limit 1
select countrylanguage.language from country join countrylanguage on country.code = countrylanguage.countrycode where country.governmentform = 'Republic' group by countrylanguage.language
select distinct countrylanguage.language from country join countrylanguage on country.code = countrylanguage.countrycode where country.governmentform = 'Republic'
sql placeholder
sql placeholder
select name , population , lifeexpectancy from country where continent = 'Asia' order by surfacearea desc limit 1
select name , population , lifeexpectancy from country where continent = 'Asia' group by country.continent order by count ( * ) desc limit 1
sql placeholder
sql placeholder
sql placeholder
select count ( * ) from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language != 'English'
select countrylanguage.language from country join countrylanguage on country.code = countrylanguage.countrycode where country.headofstate = 'Beatrix'
select countrylanguage.language from country join countrylanguage on country.code = countrylanguage.countrycode where country.headofstate = 'Beatrix'
select sum ( isofficial ) from countrylanguage join country on countrylanguage.countrycode = country.code where country.name = 'United States of America' and country.code = '1930'
select sum ( distinct language ) from countrylanguage where countrycode = 30
select surfacearea from country where continent = 'Europe'
select surfacearea from country where continent = 'Europe'
select country.name from country join city on country.code = city.countrycode where country.continent = 'Africa' intersect select country.name from country join city on country.code = city.countrycode where country.continent = 'Asia'
select country.name from country join city on country.code = city.countrycode where country.continent = 'Africa' and country.population < ( select min ( population ) from country where continent = 'Asia' )
select population from country where continent = 'Asia' and population > ( select max ( population ) from country where continent = 'Africa' )
select country.name from country join city on country.code = city.countrycode where country.continent = 'Asia' and country.population > ( select max ( population ) from country where continent = 'Africa' )
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language != 'English'
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language != 'English'
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language != 'English'
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language != 'English'
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where country.governmentform != 'Republic' and countrylanguage.language = 'English'
select code from country where governmentform != 'Republic'
sql placeholder
select name from city where countrycode not in ( select countrycode from country where continent = 'Europe' )
sql placeholder
select distinct city.name from country join city on country.code = city.countrycode join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'Chinese'
select name , indepyear , surfacearea from country order by population asc limit 1
select name , indepyear , surfacearea from country order by population asc limit 1
select population , name , headofstate from country order by surfacearea desc limit 1
select name , population , headofstate from country order by surfacearea desc limit 1
select country.name , count ( * ) from countrylanguage join country on countrylanguage.countrycode = country.code group by countrylanguage.countrycode having count ( * ) >= 3
select country.name , count ( * ) from country join countrylanguage on country.code = countrylanguage.countrycode group by countrylanguage.countrycode having count ( * ) > 2
select count ( * ) , district from city where population > ( select avg ( population ) from city )
select count ( * ) , district from city where population > ( select avg ( population ) from city ) group by district
select governmentform , population from country where lifeexpectancy > 72
select distinct governmentform , sum ( population ) from country where lifeexpectancy > 72
select avg ( lifeexpectancy ) , population from country where lifeexpectancy < 72
select distinct continent , population , lifeexpectancy from country where lifeexpectancy < 72
select name , surfacearea from country order by surfacearea desc limit 5
select name , surfacearea from country group by surfacearea order by count ( * ) desc limit 5
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population asc limit 3
select name from country order by population asc limit 3
select count ( * ) from country where continent = 'Asia'
select count ( * ) from country where continent = 'Asia'
select name from country where continent = 'Europe' and population > '80000'
select name from country where continent = 'Europe' and population > 80000
select sum ( population ) , avg ( surfacearea ) from country where continent = 'North America' and region > 3000
select sum ( population ) , surfacearea from country where continent = 'North America' and region = 'North America'
select distinct population from city where population between 160000 and 900000
select name from city where population between 160000 and 900000
select language from countrylanguage group by language order by count ( * ) desc limit 1
select language from countrylanguage group by language order by count ( * ) desc limit 1
select language , max ( percentage ) from countrylanguage group by language order by count ( * ) desc limit 1
select country.code , countrylanguage.language , countrylanguage.percentage from country join countrylanguage on country.code = countrylanguage.countrycode group by countrylanguage.countrycode order by count ( * ) desc limit 1
select count ( * ) from countrylanguage where language = 'Spanish' group by language order by count ( * ) desc limit 1
select count ( * ) from countrylanguage where language = 'Spanish'
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'Spanish' group by countrylanguage.countrycode order by count ( * ) desc limit 1
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language like 'Spanish%' group by country.code order by count ( * ) desc limit 1
select count ( * ) from conductor
select count ( * ) from conductor
select name from conductor order by age asc
select name from conductor order by age asc
select name from conductor where nationality != 'USA'
select name from conductor where nationality != 'USA'
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select avg ( attendance ) from show
select avg ( attendance ) from show
select max ( share ) , min ( share ) from performance where type != 'Live final'
select max ( share ) , min ( share ) from performance where type not like 'Live final'
select count ( distinct nationality ) from conductor
select count ( distinct nationality ) from conductor
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc limit 1
select name from conductor group by year_of_work order by count ( * ) desc limit 1
select conductor.name , orchestra.orchestra_id from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id
select conductor.name , orchestra.orchestra_id from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id group by orchestra.orchestra_id having count ( * ) > 1
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id group by orchestra.orchestra_id having count ( * ) > 1
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id group by orchestra.conductor_id order by count ( * ) desc limit 1
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id group by orchestra.conductor_id order by count ( * ) desc limit 1
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id where orchestra.year_of_founded > 2008
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id where orchestra.year_of_founded > 2008
select distinct record_company , count ( * ) from orchestra group by record_company
select record_company , count ( * ) from orchestra group by record_company
select count ( * ) from orchestra order by count ( * ) asc
select major_record_format from orchestra order by major_record_format asc
select record_company from orchestra group by record_company order by count ( * ) desc limit 1
select record_company from orchestra group by record_company order by count ( * ) desc limit 1
select orchestra.orchestra from orchestra join performance on orchestra.orchestra_id = performance.orchestra_id where performance.performance_id not in ( select performance.performance_id from performance join orchestra on performance.orchestra_id = orchestra.orchestra_id )
select orchestra from orchestra except select orchestra.orchestra from performance join orchestra on performance.orchestra_id = orchestra.orchestra_id
select record_company from orchestra where year_of_founded < 2003 group by record_company
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select count ( * ) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select count ( * ) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select year_of_founded from orchestra group by year_of_founded having count ( * ) >= 1
select year_of_founded from orchestra group by year_of_founded having count ( * ) >= 1
select count ( * ) from highschooler
select count ( * ) from highschooler
select name , grade from highschooler
select name , grade from highschooler
select grade from highschooler
select grade from highschooler
select grade from highschooler where name = 'Kyle'
select grade from highschooler where name = 'Kyle'
select name from highschooler where grade = 10
select name from highschooler where grade = 10
select id from highschooler where name = 'Kyle'
select id from highschooler where name = 'Kyle'
select count ( * ) from highschooler where grade = '9' or grade = '10'
select count ( * ) from highschooler where grade = 9 or grade = 10
select grade , count ( * ) from highschooler group by grade
select grade , count ( * ) from highschooler group by grade
select grade from highschooler group by grade order by count ( * ) desc limit 1
select grade from highschooler group by grade order by count ( * ) desc limit 1
select grade from highschooler group by grade having count ( * ) >= 4
select grade from highschooler group by grade having count ( * ) >= 4
select student_id , count ( * ) from friend group by student_id
select count ( * ) , student_id from friend group by student_id
select highschooler.name , count ( * ) from friend join highschooler on friend.friend_id = highschooler.id group by friend.friend_id
select highschooler.name , count ( * ) from highschooler join friend on highschooler.id = friend.friend_id group by highschooler.id
select highschooler.name from highschooler join friend on highschooler.id = friend.friend_id group by friend.friend_id order by count ( * ) desc limit 1
select highschooler.name from friend join highschooler on friend.friend_id = highschooler.id group by friend.friend_id order by count ( * ) desc limit 1
select highschooler.name from highschooler join friend on highschooler.id = friend.friend_id group by friend.friend_id having count ( * ) >= 3
select highschooler.name from highschooler join friend on highschooler.id = friend.friend_id group by friend.friend_id having count ( * ) >= 3
sql placeholder
sql placeholder
select count ( * ) from friend join highschooler on friend.friend_id = highschooler.id where highschooler.name = 'Kyle'
select count ( * ) from friend where friend_id = 'Kyle'
sql placeholder
select id from highschooler except select id from highschooler
select name from highschooler except select name from highschooler
select name from highschooler except select highschooler.name from highschooler join friend on highschooler.id = friend.friend_id
sql placeholder
select student_id from friend group by student_id having count ( * ) >= 1 intersect select student_id from likes group by student_id having count ( * ) >= 1
select highschooler.name from friend join highschooler on friend.student_id = highschooler.id intersect select highschooler.name from likes join highschooler on likes.student_id = highschooler.id where likes.liked_id = highschooler.id
select highschooler.name from highschooler join friend on highschooler.id = friend.friend_id intersect select highschooler.name from likes join highschooler on likes.student_id = highschooler.id where likes.liked_id = highschooler.id
select count ( * ) , student_id from likes group by student_id
select count ( * ) , student_id from likes group by student_id
select highschooler.name , count ( * ) from likes join highschooler on likes.student_id = highschooler.id group by highschooler.id
select highschooler.name , count ( * ) from likes join highschooler on likes.student_id = highschooler.id group by highschooler.id
select highschooler.name from likes join highschooler on likes.student_id = highschooler.id group by likes.liked_id order by count ( * ) desc limit 1
select highschooler.name from likes join highschooler on likes.student_id = highschooler.id group by likes.liked_id order by count ( * ) desc limit 1
select highschooler.name from likes join highschooler on likes.student_id = highschooler.id group by likes.liked_id having count ( * ) >= 2
select highschooler.name from likes join highschooler on likes.student_id = highschooler.id group by likes.liked_id having count ( * ) >= 2
select highschooler.name from highschooler join friend on highschooler.id = friend.friend_id where highschooler.grade > 5 and friend.friend_id > 2
select name from highschooler where grade >= 5 group by grade having count ( * ) >= 2
select count ( * ) from likes where student_id = 'Kyle'
select count ( * ) from likes join highschooler on likes.liked_id = highschooler.id where highschooler.name = 'Kyle'
select avg ( grade ) from highschooler group by highschooler.grade having count ( * ) >= 1
select avg ( grade ) from highschooler join friend on highschooler.id = friend.friend_id where highschooler.grade = 'Avg' group by friend.friend_id
select min ( grade ) from highschooler except select min ( grade ) from highschooler
select grade from highschooler except select grade from highschooler
select state from owners intersect select state from professionals where professional_id = 'owner_id'
select state from owners intersect select state from professionals
select avg ( age ) from dogs
select avg ( age ) from dogs join treatments on dogs.dog_id = treatments.dog_id
sql placeholder
select professionals.professional_id , professionals.last_name , professionals.cell_number from treatments join professionals on treatments.professional_id = professionals.professional_id where professionals.state = 'Indiana' or treatments.treatment_id > 2
select dogs.name from treatments join dogs on treatments.dog_id = dogs.dog_id where treatments.cost_of_treatment not in ( select cost_of_treatment from treatments )
sql placeholder
select first_name from professionals except select first_name from owners
select first_name from professionals except select first_name from owners
sql placeholder
select professional_id , role_code , email_address from professionals except select professionals.professional_id , professionals.role_code , email_address from treatments join professionals on treatments.professional_id = professionals.professional_id
select owners.first_name , owners.last_name from dogs join owners on dogs.owner_id = owners.owner_id group by dogs.owner_id order by count ( * ) desc limit 1
select owners.owner_id , owners.first_name , owners.last_name from dogs join owners on dogs.owner_id = owners.owner_id group by dogs.owner_id order by count ( * ) desc limit 1
select professionals.professional_id , professionals.role_code , professionals.first_name from treatments join professionals on treatments.professional_id = professionals.professional_id group by treatments.professional_id having count ( * ) >= 2
select professionals.professional_id , professionals.role_code , professionals.first_name from treatments join professionals on treatments.professional_id = professionals.professional_id group by treatments.professional_id having count ( * ) >= 2
select breeds.breed_name from breeds join dogs on breeds.breed_code = dogs.breed_code group by dogs.breed_code order by count ( * ) desc limit 1
select breeds.breed_name from breeds join dogs on breeds.breed_code = dogs.breed_code group by breeds.breed_name order by count ( * ) desc limit 1
select owners.owner_id , owners.last_name from dogs join owners on dogs.owner_id = owners.owner_id group by dogs.owner_id order by count ( * ) desc limit 1
sql placeholder
select treatment_types.treatment_type_description from treatment_types join treatments on treatment_types.treatment_type_code = treatments.treatment_type_code group by treatments.treatment_type_code order by sum ( cost_of_treatment ) asc limit 1
select treatment_types.treatment_type_description from treatment_types join treatments on treatment_types.treatment_type_code = treatments.treatment_type_code group by treatments.treatment_type_code order by sum ( cost_of_treatment ) asc limit 1
sql placeholder
sql placeholder
select professionals.professional_id , professionals.cell_number from treatments join professionals on treatments.professional_id = professionals.professional_id group by treatments.professional_id having count ( * ) >= 2
select professionals.professional_id , professionals.cell_number from treatments join professionals on treatments.professional_id = professionals.professional_id group by treatments.treatment_type_code having count ( * ) >= 2
select professionals.first_name , professionals.last_name from treatments join professionals on treatments.professional_id = professionals.professional_id where treatments.cost_of_treatment < ( select avg ( cost_of_treatment ) from treatments )
select professionals.first_name , professionals.last_name from treatments join professionals on treatments.professional_id = professionals.professional_id where treatments.cost_of_treatment < ( select avg ( cost_of_treatment ) from treatments )
select date_of_treatment , professionals.first_name from treatments join professionals on treatments.professional_id = professionals.professional_id
select date_of_treatment , professionals.first_name from treatments join professionals on treatments.professional_id = professionals.professional_id
select cost_of_treatment , sum ( treatment_types.treatment_type_description ) from treatments join treatment_types on treatments.treatment_type_code = treatment_types.treatment_type_code
select treatments.cost_of_treatment , treatment_types.treatment_type_description from treatments join treatment_types on treatments.treatment_type_code = treatment_types.treatment_type_code
select owners.first_name , owners.last_name , dogs.size_code from dogs join owners on dogs.owner_id = owners.owner_id
select owners.first_name , owners.last_name , dogs.size_code from dogs join owners on dogs.owner_id = owners.owner_id
select first_name , dogs.name from owners join dogs on owners.owner_id = dogs.owner_id
select owners.first_name , dogs.name from dogs join owners on dogs.owner_id = owners.owner_id
sql placeholder
select dogs.name , treatments.date_of_treatment from dogs join breeds on dogs.breed_code = breeds.breed_code join treatments on dogs.dog_id = treatments.dog_id group by dogs.breed_code order by count ( * ) desc limit 1
select owners.first_name , dogs.name from owners join dogs on owners.owner_id = dogs.owner_id where owners.state = 'Virginia'
select owners.first_name , dogs.name from owners join dogs on owners.owner_id = dogs.owner_id where owners.state = 'Virginia'
select date_arrived , date_departed from dogs join treatments on dogs.dog_id = treatments.dog_id
select date_arrived , date_departed from dogs join treatments on dogs.dog_id = treatments.dog_id
select owners.last_name from dogs join owners on dogs.owner_id = owners.owner_id order by dogs.age desc limit 1
select owners.last_name from dogs join owners on dogs.owner_id = owners.owner_id order by dogs.age desc limit 1
select email_address from professionals where state = 'Hawaii' or state = 'Wisconsin'
select email_address from professionals where state = 'Hawaii' or state = 'Wisconsin'
select date_arrived , date_departed from dogs
select date_arrived , date_departed from dogs
select count ( * ) from treatments
select count ( * ) from treatments
select count ( * ) from treatments where dog_id = 1
select count ( * ) from treatments where dog_id = 1
select role_code , street , city , state from professionals where city like 'West%'
select role_code , street , city , state from professionals where city like '%West%'
select first_name , last_name , email_address from owners where state like 'North%'
select first_name , last_name , email_address from owners where state like 'North%'
select count ( * ) from dogs where age < ( select avg ( age ) from dogs )
select count ( * ) from dogs where age < ( select avg ( age ) from dogs )
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count ( * ) from treatments where dog_id not in ( select dog_id from treatments )
select count ( * ) from treatments where dog_id not in ( select dog_id from treatments )
select count ( * ) from owners where owner_id not in ( select owner_id from dogs )
select count ( * ) from owners where owner_id not in ( select owner_id from dogs )
select count ( * ) from treatments where dog_id not in ( select dog_id from treatments )
select count ( * ) from professionals where professional_id not in ( select professional_id from treatments )
select name , age , weight from dogs where abandoned_yn = 1 and weight = 0
select name , age , weight from dogs where abandoned_yn = 1 and weight = 0
select avg ( age ) from dogs
select avg ( age ) from dogs
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type , sum ( charge_amount ) from charges group by charge_type
select charge_type , charge_amount from charges
select charge_type from charges order by charge_amount desc limit 1
select charge_amount from charges order by charge_type desc limit 1
select email_address , cell_number , home_phone from professionals
select email_address , cell_number , home_phone from professionals
select breeds.breed_name , sizes.size_code from breeds join dogs on breeds.breed_code = dogs.breed_code join sizes on dogs.size_code = sizes.size_code
select distinct breed_code , size_code from dogs
sql placeholder
sql placeholder
select count ( * ) from singer
select count ( * ) from singer
select name from singer order by net_worth_millions asc
select name from singer order by net_worth_millions asc
select birth_year , citizenship from singer
select birth_year , citizenship from singer
select name from singer where citizenship != 'France'
select name from singer where citizenship != 'France'
select name from singer where birth_year like '48' or birth_year like '49'
select name from singer where birth_year like '48' or birth_year like '49'
select name from singer order by net_worth_millions desc limit 1
select name from singer order by net_worth_millions desc limit 1
select citizenship , count ( * ) from singer group by citizenship
select citizenship , count ( * ) from singer group by citizenship
select citizenship from singer group by citizenship order by count ( * ) desc limit 1
select citizenship from singer group by citizenship order by count ( * ) desc limit 1
select citizenship , max ( net_worth_millions ) from singer group by citizenship
select max ( net_worth_millions ) , citizenship from singer group by citizenship
select song.title , singer.name from song join singer on song.singer_id = singer.singer_id
select song.title , singer.name from song join singer on song.singer_id = singer.singer_id
select distinct singer.name from song join singer on song.singer_id = singer.singer_id where song.sales > 300000
select distinct singer.name from singer join song on singer.singer_id = song.singer_id where song.sales > 300000
select singer.name from song join singer on song.singer_id = singer.singer_id group by song.singer_id having count ( * ) > 1
select singer.name from singer join song on singer.singer_id = song.singer_id group by song.singer_id having count ( * ) > 1
select singer.name , sum ( song.sales ) from song join singer on song.singer_id = singer.singer_id group by song.sales
select singer.name , sum ( song.sales ) from song join singer on song.singer_id = singer.singer_id group by song.sales
select name from singer where singer_id not in ( select singer_id from song )
select name from singer where singer_id not in ( select singer_id from song )
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year >= 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count ( * ) from other_available_features
select ref_feature_types.feature_type_name from other_available_features join ref_feature_types on other_available_features.feature_type_code = ref_feature_types.feature_type_code where other_available_features.feature_name = 'AirCon'
select property_type_description from properties join ref_property_types on properties.property_type_code = ref_property_types.property_type_code
select property_name from properties where property_type_code = 'House' or property_type_code = 'Apartment'
