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
select max ( capacity ) , avg ( capacity ) from stadium
select avg ( capacity ) , max ( capacity ) from stadium
select name , capacity from stadium order by average desc limit 1
select name , capacity from stadium group by average order by avg ( average ) desc limit 1
select count ( * ) from concert where year = 2014 or 2015
select count ( * ) from concert where year = 2014 or 2015
select stadium.name , count ( * ) from stadium join concert on stadium.stadium_id = concert.stadium_id group by concert.stadium_id
select stadium.name , count ( * ) from stadium join concert on stadium.stadium_id = concert.stadium_id group by concert.stadium_id
select stadium.name , stadium.capacity from stadium join concert on stadium.stadium_id = concert.stadium_id where concert.year = 2014 group by concert.year order by count ( * ) desc limit 1
select stadium.name , stadium.capacity from stadium join concert on stadium.stadium_id = concert.stadium_id where concert.year > 2013 group by concert.year order by count ( * ) desc limit 1
select year from concert group by year order by count ( * ) desc limit 1
select year from concert group by year order by count ( * ) desc limit 1
select stadium.name from stadium join concert on stadium.stadium_id = concert.stadium_id
select name from stadium where stadium_id not in ( select stadium_id from concert )
select country from singer where age > 40 intersect select country from singer where age < 30
select name from stadium except select stadium.name from stadium join concert on stadium.stadium_id = concert.stadium_id where concert.year = 2014
select name from stadium where stadium_id not in ( select stadium_id from concert where concert_id = 2014 )
select concert.concert_name , concert.theme , count ( * ) from concert join singer_in_concert on concert.concert_id = singer_in_concert.concert_id join singer on singer.singer_id = singer.singer_id group by singer.singer_id
select concert.concert_name , concert.theme , singer.singer_id from concert join singer_in_concert on concert.concert_id = singer_in_concert.concert_id join singer on singer.singer_id = singer.singer_id
select singer.name , count ( * ) from singer join singer_in_concert on singer.singer_id = singer_in_concert.singer_id group by singer.singer_id
select singer.name , count ( * ) from singer join singer_in_concert on singer.singer_id = singer_in_concert.singer_id join concert on singer_in_concert.concert_id = concert.concert_id group by singer.singer_id
select singer.name from concert join singer_in_concert on concert.concert_id = singer_in_concert.singer_id join singer on singer.singer_id = singer.singer_id where concert.year = 2014
select song_name from singer join concert on singer.singer_id = concert.concert_id where concert.year = 2014
select song_name , country from singer where song_name like '%Hey%'
select song_name , country from singer where song_name like '%Hey%'
select stadium.name , stadium.location from concert join stadium on concert.stadium_id = stadium.stadium_id where concert.year = 2014 intersect select stadium.name , stadium.location from concert join stadium on concert.concert_id = stadium.stadium_id where concert.year = 2015
select stadium.name , stadium.location from stadium join concert on stadium.stadium_id = concert.stadium_id where concert.year = 2014 intersect select stadium.name , stadium.location from concert join stadium on concert.concert_id = stadium.stadium_id where concert.year = 2015
select count ( * ) from concert join stadium on concert.stadium_id = stadium.stadium_id where stadium.capacity = 1 group by concert.concert_name order by count ( * ) desc limit 1
select count ( * ) from concert join stadium on concert.stadium_id = stadium.stadium_id where stadium.capacity = 1 order by count ( * ) desc limit 1
select count ( * ) from pets where weight > 10
select count ( * ) from pets where weight > 10
select weight from pets order by weight desc limit 1
select weight from pets order by weight desc limit 1
select max ( weight ) , pettype from pets group by pettype
select max ( weight ) , pettype from pets group by pettype
select count ( * ) from pets join has_pet on pets.petid = has_pet.petid join student on has_pet.stuid = student.stuid where student.age > 20
select count ( * ) from pets join has_pet on pets.petid = has_pet.petid join student on has_pet.stuid = student.stuid where student.age > 20
select count ( * ) from pets join has_pet on pets.petid = has_pet.petid join student on has_pet.stuid = student.stuid where student.sex = 'F'
select count ( * ) from pets join has_pet on pets.petid = has_pet.petid join student on has_pet.stuid = student.stuid where student.sex = 'female'
select count ( distinct pettype ) from pets
select count ( distinct pettype ) from pets
sql placeholder
select student.fname from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid where pets.pettype = 'cat' or pets.pet_age = 1
sql placeholder
sql placeholder
select major , age from student where stuid not in ( select stuid from has_pet )
sql placeholder
select stuid from has_pet where stuid not in ( select stuid from pets where pettype = 'cat' )
sql placeholder
select fname , age from student where stuid not in ( select stuid from has_pet )
select fname from student where stuid not in ( select stuid from has_pet )
select pets.pettype , pets.weight from pets join has_pet on pets.petid = has_pet.petid order by pet_age desc limit 1
select pettype , weight from pets order by pet_age desc limit 1
select petid , weight from pets where pet_age > 1
select pets.petid , pets.weight from pets join has_pet on pets.petid = has_pet.petid where pets.pet_age > ( select min ( pet_age ) from pets where pet_age > 1 )
select avg ( pet_age ) , max ( pet_age ) from pets
select avg ( pet_age ) , max ( pet_age ) from pets
select pettype , avg ( weight ) from pets group by pettype
select avg ( weight ) , pettype from pets group by pettype
select distinct student.fname , student.age from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid
select distinct student.fname , student.age from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid
select has_pet.petid from has_pet join student on has_pet.stuid = student.stuid where student.lname = 'Smith'
select has_pet.petid from has_pet join student on has_pet.petid = student.stuid where student.lname = 'Smith'
select count ( * ) , stuid from has_pet group by stuid
select count ( * ) from student where stuid = 'petid'
select student.fname , student.sex from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid group by pets.petid having count ( * ) >= 2
select student.fname , student.sex from has_pet join student on has_pet.stuid = student.stuid join pets on has_pet.petid = pets.petid group by pets.petid having count ( * ) >= 2
select student.lname from has_pet join student on has_pet.stuid = student.stuid where student.age = 3
select student.lname from has_pet join student on has_pet.stuid = student.stuid where student.age = 3
select avg ( age ) from student where stuid not in ( select stuid from has_pet )
select avg ( age ) from student where stuid not in ( select stuid from has_pet )
select count ( * ) from continents
select count ( * ) from continents
select count ( * ) , continent from continents group by continents.contid
select continent , count ( * ) from continents group by continents.continent
select count ( * ) from countries
select count ( * ) from countries
select count ( * ) , maker from car_makers group by maker
select car_makers.fullname , count ( * ) from car_makers join model_list on car_makers.id = model_list.maker group by car_makers.id
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select car_names.make , cars_data.year from car_names join cars_data on car_names.makeid = cars_data.id order by year desc limit 1
sql placeholder
select distinct model_list.model from model_list join car_names on model_list.model = car_names.model where car_names.model = 1980
sql placeholder
select continent , count ( * ) from continents group by continents.continent
select continent , count ( * ) from continents group by continents.continent
select countries.countryname from countries join car_makers on countries.countryid = car_makers.country group by car_makers.country order by count ( * ) desc limit 1
select countries.countryname from countries join car_makers on countries.countryid = car_makers.country group by countries.countryname order by count ( * ) desc limit 1
select count ( * ) , car_makers.fullname from model_list join car_makers on model_list.maker = car_makers.id group by car_makers.maker
sql placeholder
select accelerate from car_names join cars_data on car_names.makeid = cars_data.id where car_names.make = 'amc hornet' and car_names.model = 'sw'
sql placeholder
select count ( * ) from car_makers join countries on car_makers.country = countries.countryid where countries.countryname = 'france'
select count ( * ) from car_makers join countries on car_makers.country = countries.countryid where countries.countryname = 'France'
select count ( * ) from car_names join countries on car_names.makeid = countries.countryid where countries.countryname = 'usa'
select count ( * ) from car_names join model_list on car_names.model = model_list.model where model_list.maker = 'USA'
sql placeholder
select avg ( mpg ) from cars_data where cylinders = 4
select weight from cars_data where cylinders = 8 group by weight order by count ( * ) desc limit 1
select min ( weight ) from cars_data where cylinders = 8
sql placeholder
select car_makers.maker , model_list.model from model_list join car_makers on model_list.maker = car_makers.id
select countryname , countryid from countries group by countryid having count ( * ) >= 1
select countryname , countryid from countries group by countryid having count ( * ) >= 1
select count ( * ) from cars_data where horsepower > 150
select count ( * ) from cars_data where horsepower > 150
select avg ( weight ) from cars_data
select avg ( weight ) , year from cars_data group by year
select countries.countryname from car_makers join countries on car_makers.country = countries.countryid join continents on continents.continent = continents.continent where continents.continent = 'europe' group by car_makers.country having count ( * ) >= 3
select countryname from countries group by countryname having count ( * ) >= 3
sql placeholder
select model_list.model , model_list.maker from cars_data join model_list on cars_data.id = model_list.model where cars_data.horsepower >= 3 group by model_list.model order by count ( * ) desc limit 1
sql placeholder
sql placeholder
select avg ( horsepower ) from cars_data where year < 1980
select avg ( horsepower ) from cars_data where year < 1980
select avg ( edispl ) from cars_data join model_list on cars_data.id = model_list.maker where model_list.model = 'Volvo'
select avg ( edispl ) from cars_data join car_names on cars_data.id = car_names.makeid where car_names.model = 'volvo'
select max ( accelerate ) , cylinders from cars_data group by cylinders
select max ( accelerate ) , cylinders from cars_data group by cylinders
select model_list.model from car_names join model_list on car_names.model = model_list.model join cars_data on car_names.makeid = cars_data.id group by model_list.model order by count ( * ) desc limit 1
select model_list.model from model_list join car_makers on model_list.maker = car_makers.id group by model_list.model order by count ( * ) desc limit 1
select count ( * ) from cars_data where cylinders > 4
select count ( * ) from cars_data where cylinders > 4
select count ( * ) from cars_data where year = 1980
select count ( * ) from car_names where make = 1980
select count ( * ) from car_makers where fullname = 'American Motor Company'
select count ( * ) from car_makers join model_list on car_makers.id = model_list.model where car_makers.fullname = 'American Motor Company'
sql placeholder
sql placeholder
select distinct model_list.model from model_list join car_names on model_list.model = car_names.model join car_makers on model_list.maker = car_makers.id where car_makers.fullname = 'General Motors' or car_names.makeid > 3500
select distinct model_list.model from model_list join car_makers on model_list.maker = car_makers.id join cars_data on cars_data.id = cars_data.id where car_makers.fullname = 'General Motors' or cars_data.weight > 3500
select year from cars_data where weight > 3000 and horsepower > 4000
select distinct year from cars_data where weight < 4000 and weight < 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
sql placeholder
sql placeholder
select count ( * ) from cars_data where accelerate > ( select max ( accelerate ) from cars_data where horsepower = 'M' )
select count ( * ) from cars_data where accelerate > ( select max ( accelerate ) from cars_data where horsepower = 'M' )
select count ( * ) from countries join car_makers on countries.countryid = car_makers.country where car_makers.maker > 2
select count ( * ) from countries join car_makers on countries.countryid = car_makers.country where car_makers.maker > 2
select count ( * ) from cars_data where cars_data.cylinders > 6
select count ( * ) from cars_data where cars_data.cylinders > 6
sql placeholder
select model_list.model from cars_data join model_list on cars_data.id = model_list.model group by model_list.model order by count ( * ) desc limit 1
sql placeholder
select makeid , model from car_names where makeid not in ( select makeid from cars_data where horsepower > 4 )
select max ( mpg ) from cars_data where cylinders >= 8 or year < 1980
select max ( mpg ) from cars_data where cars_data.cylinders = 8 or cars_data.year > 1980
sql placeholder
sql placeholder
select countryname from countries where countryid not in ( select countryid from car_makers )
select countryname from countries where countryid not in ( select countryid from car_makers )
select car_makers.id , car_makers.maker from car_makers join model_list on car_makers.id = model_list.maker group by car_makers.id having count ( * ) >= 2
select car_makers.id , car_makers.maker from car_makers join model_list on car_makers.id = model_list.maker group by car_makers.id having count ( * ) >= 2 and count ( * ) >= 3
sql placeholder
sql placeholder
select country from airlines where airline = 'JetBlue Airways'
select country from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where abbreviation = 'JetBlue'
select airline , abbreviation from airlines where country = 'USA'
select airline , abbreviation from airlines where country = 'USA'
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
select city , country from airports where airportname = 'Alton'
select city , country from airports where airportname = 'Alton'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where city = 'Aberdeen'
select airportname from airports where city = 'Aberdeen'
select count ( * ) from flights where sourceairport = 'APG'
select count ( * ) from flights where sourceairport = 'APG'
select count ( * ) from flights where destairport = 'ATO'
select count ( * ) from flights where destairport = 'ATO'
select count ( * ) from airports where city = 'Aberdeen'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.city = 'Aberdeen'
select count ( * ) from airports where city = 'Aberdeen'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.city = 'Aberdeen'
select count ( * ) from airports where city = 'Aberdeen' and airports.airportname = 'Ashley'
select count ( * ) from airports where city = 'Aberdeen' and airports.airportname = 'Ashley'
select count ( * ) from airlines join flights on airlines.airline = flights.airline where airlines.abbreviation = 'JetBlue Airways'
select count ( * ) from flights join airlines on flights.airline = airlines.airline where airlines.abbreviation = 'JetBlue Airways'
select count ( * ) from airlines where airline = 'United Airlines'
select count ( * ) from flights join airports on flights.airline = airports.airportcode where airports.country = 'ASY'
select count ( * ) from airlines where airline = 'United Airlines'
select count ( * ) from airlines where airline = 'United Airlines'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.city = 'Aberdeen'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.city = 'Aberdeen'
select city from airports group by city order by count ( * ) desc limit 1
select city from airports group by city order by count ( * ) desc limit 1
select city from airports group by city order by count ( * ) desc limit 1
select city from airports group by city order by count ( * ) desc limit 1
select airportcode from airports group by airports.airportcode order by count ( * ) desc limit 1
select airportcode from airports group by airports.airportcode order by count ( * ) desc limit 1
select airportcode from airports group by airports.airportcode order by count ( * ) desc limit 1
select airportcode from airports group by airports.airportcode order by count ( * ) asc limit 1
select airline from flights group by airline order by count ( * ) desc limit 1
select airlines.airline from flights join airlines on flights.airline = airlines.airline group by airlines.airline order by count ( * ) desc limit 1
select abbreviation , country from airlines group by abbreviation order by count ( * ) desc limit 1
select abbreviation from airlines group by abbreviation order by count ( * ) desc limit 1
select airlines.airline from airlines join airports on airlines.airline = airports.airportcode where airports.airportcode = 'AHD'
sql placeholder
sql placeholder
select airline from flights where destairport = 'AHD'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select airline from airlines group by airline having count ( * ) >= 10
select airline from airlines group by airline having count ( * ) >= 10
select airline from airlines group by airline having count ( * ) > 200
select airline from airlines where airline > 200 group by airline having count ( * ) > 200
sql placeholder
select flightno from flights where airline = 'United Airlines'
select flightno from flights join airports on flights.flightno = airports.airportcode where airports.airportname = 'APG'
select flightno from flights where sourceairport = 'APG'
select flightno from flights join airports on flights.flightno = airports.airportcode where airports.airportname = 'APG'
select flightno from flights where destairport = 'APG'
select flightno from flights join airports on flights.flightno = airports.airportcode where airports.city = 'Aberdeen'
select flightno from flights join airports on flights.flightno = airports.airportcode where airports.city = 'Aberdeen'
select flightno from flights join airports on flights.sourceairport = airports.airportcode where airports.city = 'Aberdeen'
select flightno from flights join airports on flights.flightno = airports.airportcode where airports.city = 'Aberdeen'
select count ( * ) from flights join airports on flights.destairport = airports.airportcode where airports.city = 'Aberdeen' or airports.airportcode = 'Abilene'
select count ( * ) from airports where city = 'Aberdeen' or city = 'Abilene'
select airportname from airports where airportcode not in ( select airportname from airports )
select airportname from airports where airportcode not in ( select airportcode from flights )
select count ( * ) from employee
select count ( * ) from employee
select name from employee order by age asc
select name from employee order by age asc
select count ( * ) , city from employee group by city
select count ( * ) , city from employee group by city
select city from employee group by city having count ( * ) > 1
select city from employee group by city having count ( * ) > 1
select count ( * ) , location from shop group by location
select location , count ( * ) from shop group by location
select manager_name , district from shop order by number_products desc limit 1
select manager_name , district from shop group by shop.manager_name order by count ( * ) desc limit 1
select min ( number_products ) , max ( number_products ) from shop
select min ( number_products ) , max ( number_products ) from shop
select name , location , district from shop order by number_products desc
sql placeholder
select name from shop where number_products > ( select avg ( number_products ) from shop )
select name from shop where number_products > ( select avg ( number_products ) from shop )
select employee.name from employee join evaluation on employee.employee_id = evaluation.employee_id group by evaluation.employee_id order by count ( * ) desc limit 1
select employee.name from employee join evaluation on employee.employee_id = evaluation.employee_id group by evaluation.employee_id order by count ( * ) desc limit 1
select employee.name from employee join evaluation on employee.employee_id = evaluation.employee_id group by evaluation.employee_id order by count ( * ) desc limit 1
select employee.name from employee join evaluation on employee.employee_id = evaluation.employee_id group by evaluation.employee_id order by count ( * ) desc limit 1
select name from employee where employee_id not in ( select employee_id from evaluation )
select name from employee where employee_id not in ( select employee_id from evaluation )
select shop.name from hiring join shop on hiring.shop_id = shop.shop_id join employee on employee.employee_id = employee.employee_id group by shop.shop_id order by count ( * ) desc limit 1
select shop.name from shop join hiring on shop.shop_id = hiring.shop_id join employee on hiring.employee_id = employee.employee_id group by shop.shop_id order by count ( * ) desc limit 1
select shop.name from shop join hiring on shop.shop_id = hiring.shop_id where hiring.employee_id not in ( select shop_id from hiring )
select shop.name from shop join hiring on shop.shop_id = hiring.shop_id join employee on hiring.employee_id = employee.employee_id where employee.name not in ( select shop_id from hiring )
select count ( * ) , shop.name from hiring join shop on hiring.shop_id = shop.shop_id group by hiring.shop_id
select shop.name , count ( * ) from shop join hiring on shop.shop_id = hiring.shop_id group by hiring.shop_id
select sum ( bonus ) from evaluation
select sum ( bonus ) from evaluation
select * from hiring
select * from hiring
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select count ( distinct location ) from shop
select count ( distinct location ) from shop
select count ( * ) from documents
select count ( * ) from documents
select document_id , document_name , document_description from documents
select document_id , document_name , document_description from documents
select document_name , template_id from documents where document_description like '%w%'
select document_name , template_id from documents where document_name like '%w%'
select document_id , template_id , document_description from documents where document_name = 'Robbin CV'
select document_id , template_id , document_description from documents where document_name = 'Robbin CV'
select count ( distinct template_id ) from documents
select count ( distinct template_id ) from documents
select count ( * ) from templates join documents on templates.template_id = documents.template_id where templates.template_type_code = 'PPT'
select count ( * ) from documents join templates on documents.template_id = templates.template_id where templates.template_type_code = 'PPT'
select template_id , count ( * ) from templates group by template_id
select template_id , count ( * ) from documents group by template_id
select template_id , template_type_code from templates group by template_id order by count ( * ) desc limit 1
select template_id , template_type_code from templates group by template_id order by count ( * ) desc limit 1
select template_id from templates group by template_id having count ( * ) > 1
select template_id from templates group by template_id having count ( * ) > 1
select template_id from templates except select template_id from documents
select template_id from templates where template_id not in ( select template_id from documents )
select count ( * ) from templates
select count ( * ) from templates
select template_id , version_number , template_type_code from templates
select template_id , version_number , template_type_code from templates
select distinct template_type_code from templates
select distinct template_type_code from templates
select template_id from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select template_id from templates where template_type_code like '%PP%' or template_type_code like '%PPT%'
select count ( * ) from templates where template_type_code = 'CV'
select count ( * ) from templates where template_type_code = 'CV'
select version_number , template_type_code from templates where version_number < 5
select version_number , template_type_code from templates where version_number > 5
select template_type_code , count ( * ) from templates group by template_type_code
select template_type_code , count ( * ) from templates group by template_type_code
select template_type_code from templates group by template_type_code order by count ( * ) desc limit 1
select template_type_code from templates group by template_type_code order by count ( * ) desc limit 1
select template_type_code from templates group by template_type_code having count ( * ) > 3
select template_type_code from templates group by template_type_code having count ( * ) > 3
select version_number , template_type_code from templates order by version_number desc limit 1
select version_number , template_type_code from templates order by version_number desc limit 1
select template_type_code from documents join ref_template_types on documents.template_id = ref_template_types.template_type_code where documents.document_name = 'Data base'
select templates.template_type_code from templates join documents on templates.template_id = documents.template_id where documents.document_name = 'Data base'
select document_name from documents join templates on documents.template_id = templates.template_id where templates.template_type_code = 'BK'
select documents.document_name from documents join templates on documents.template_id = templates.template_id where templates.template_type_code = 'BK'
select template_type_code , count ( * ) from templates group by template_type_code
select template_type_code , count ( * ) from templates group by template_type_code
select template_type_code from templates group by template_type_code order by count ( * ) desc limit 1
select template_type_code from templates group by template_type_code order by count ( * ) desc limit 1
select template_type_code from templates except select template_type_code from templates
select template_type_code from templates except select template_type_code from templates
select template_type_code , template_type_description from ref_template_types
select template_type_code , template_type_description from ref_template_types
select template_type_description from ref_template_types where template_type_code = 'AD'
select template_type_description from ref_template_types where template_type_code = 'AD'
select template_type_code from ref_template_types where template_type_description = 'Book'
select template_type_code from ref_template_types where template_type_description = 'Book'
select distinct template_type_description from documents join ref_template_types on documents.template_id = ref_template_types.template_type_code
select distinct document_description from documents join templates on documents.template_id = templates.template_id
select templates.template_id from templates join ref_template_types on templates.template_id = ref_template_types.template_type_code where template_type_description = 'Presentation'
select template_id from templates where template_id = 'Presentation'
select count ( * ) from paragraphs
select count ( * ) from paragraphs
select count ( * ) from documents where document_name = 'Summer Show'
select count ( * ) from documents where document_name = 'Summer Show'
select other_details from paragraphs where paragraph_text = 'Korea'
select other_details from paragraphs where paragraph_text = 'Korea'
select paragraph_id , paragraph_text from documents join paragraphs on documents.document_id = paragraphs.paragraph_id where documents.document_name = 'Welcome to NY'
select paragraphs.document_id , paragraphs.paragraph_text from documents join paragraphs on documents.document_id = paragraphs.document_id where documents.document_name = 'Welcome to NY'
select paragraphs.paragraph_text from documents join paragraphs on documents.document_id = paragraphs.document_id where documents.document_name = 'Customer reviews'
select paragraphs.paragraph_text from documents join paragraphs on documents.document_id = paragraphs.document_id where documents.document_name = 'Customer reviews'
select document_id , count ( * ) from documents group by document_id order by count ( * ) desc
select document_id , count ( * ) from documents group by document_id order by count ( * ) desc
select document_id , document_name , count ( * ) from documents group by document_id
select document_id , document_name , count ( * ) from documents group by document_id
select document_id from documents group by document_id having count ( * ) >= 2
select document_id from documents group by document_id having count ( * ) >= 2
select document_id , document_name from documents group by document_id order by count ( * ) desc limit 1
select document_id , document_name from documents group by document_id order by count ( * ) desc limit 1
select document_id from documents group by document_id order by count ( * ) desc limit 1
select document_id from documents group by document_id order by count ( * ) desc limit 1
select document_id from documents where document_id between 1 and 2
select document_id from documents where document_id between 1 and 2
select document_id from paragraphs where paragraph_text = 'Brazil' and paragraph_text = 'Ireland'
select documents.document_id from documents join paragraphs on documents.document_id = paragraphs.document_id where paragraphs.paragraph_text = 'Brazil' and paragraphs.paragraph_text = 'Ireland'
select count ( * ) from teacher
select count ( * ) from teacher
select name from teacher order by age asc
select name from teacher order by age asc
select age , hometown from teacher
select age , hometown from teacher
select name from teacher where hometown != 'Little Lever Urban District'
select name from teacher where hometown != 'Little Lever Urban District'
select name from teacher where age = 32 intersect select name from teacher where age = 33
select name from teacher where age = 32 intersect select name from teacher where age = 33
select hometown from teacher order by age desc limit 1
select age from teacher order by hometown desc limit 1
select hometown , count ( * ) from teacher group by hometown
select hometown , count ( * ) from teacher group by hometown
select hometown from teacher group by hometown order by count ( * ) desc limit 1
select hometown from teacher group by hometown order by count ( * ) desc limit 1
select hometown from teacher group by hometown having count ( * ) >= 2
select hometown from teacher group by hometown having count ( * ) >= 2
select teacher.name , course_arrange.course_id from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id join course on course_arrange.course_id = course.course_id
select teacher.name , course.course_id from teacher join course_arrange on teacher.teacher_id = course_arrange.teacher_id join course on course_arrange.course_id = course.course_id
select teacher.name , course_arrange.course_id from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id order by course_arrange.course_id asc
select teacher.name , course_arrange.course_id from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id order by teacher.name asc
select teacher.name from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id join course on course_arrange.course_id = course.course_id where course.course = 'Math'
select teacher.name from teacher join course_arrange on teacher.teacher_id = course_arrange.teacher_id join course on course_arrange.course_id = course.course_id where course.course = 'Math'
select teacher.name , count ( * ) from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id group by course_arrange.teacher_id
select teacher.name , count ( * ) from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id group by course_arrange.teacher_id
select teacher.name from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id group by course_arrange.teacher_id having count ( * ) >= 2
select teacher.name from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id group by course_arrange.teacher_id having count ( * ) >= 2
select name from teacher where teacher_id not in ( select teacher_id from course_arrange )
select teacher.name from course_arrange join teacher on course_arrange.teacher_id = teacher.teacher_id join course on course_arrange.course_id = course.course_id where course_arrange.grade not in ( select teacher.teacher_id from course_arrange )
sql placeholder
select visitor.name from visitor join visit on visitor.id = visit.visitor_id join museum on visit.museum_id = museum.museum_id where visitor.level_of_membership > 4 order by level_of_membership desc
select avg ( age ) from visitor where level_of_membership not in ( select visitor_id from visit where level_of_membership > 4 )
select name , level_of_membership from visitor where level_of_membership > 4 order by age desc
select museum.museum_id , museum.name from museum join visit on museum.museum_id = visit.museum_id group by museum.museum_id order by count ( * ) desc limit 1
select avg ( num_of_staff ) from museum where open_year < 2009
select open_year , num_of_staff from museum where name = 'Plaza Museum'
sql placeholder
sql placeholder
sql placeholder
select museum.museum_id , museum.name from visit join museum on visit.museum_id = museum.museum_id group by visit.museum_id order by count ( * ) desc limit 1
select name from museum where museum_id not in ( select museum_id from visit )
select visitor.name , visitor.age from visit join visitor on visit.visitor_id = visitor.id group by visit.visitor_id order by sum ( visit.num_of_ticket ) desc limit 1
select max ( num_of_ticket ) , avg ( num_of_ticket ) from visit group by visitor_id
select sum ( visit.total_spent ) from visit join visitor on visit.visitor_id = visitor.id where visitor.level_of_membership = 1
sql placeholder
select count ( * ) from visit join museum on visit.museum_id = museum.museum_id where museum.open_year not in ( select open_year from museum where open_year > 2010 )
select count ( * ) from museum where open_year > 2013 or open_year < 2008
select count ( * ) from players
select count ( * ) from players
select count ( * ) from matches
select count ( * ) from matches
select first_name , birth_date from players where country_code = 'USA'
select first_name , birth_date from players where country_code = 'USA'
select avg ( loser_age ) , winner_age from matches
select avg ( loser_age ) , winner_age from matches
select avg ( winner_rank ) from matches
select avg ( winner_rank ) from matches
select loser_rank from matches order by loser_rank_points desc limit 1
select loser_rank from matches group by loser_rank order by count ( * ) desc limit 1
select count ( distinct country_code ) from players
select count ( distinct country_code ) from players
select count ( distinct loser_name ) from matches
select count ( distinct loser_name ) from matches
select tourney_name from matches group by tourney_name having count ( * ) > 10
select tourney_name from matches group by tourney_name having count ( * ) > 10
select winner_name from matches where year = 2013 intersect select winner_name from matches where year = 2016
sql placeholder
select count ( * ) from matches where year = 2013 or 2016
select count ( * ) from matches where year = 2013 or year = 2016
select players.country_code , players.first_name from players join matches on players.player_id = matches.winner_id where matches.tourney_name = 'WTA Championships' intersect select players.country_code , players.first_name from players join rankings on rankings.player_id = rankings.player_id join matches on rankings.player_id = matches.winner_id where matches.tourney_name = 'Australian Open'
select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id where matches.tourney_name = 'WTA Championships' intersect select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id where matches.tourney_name = 'Australian Open'
select first_name , country_code from players order by birth_date desc limit 1
select first_name , country_code from players order by birth_date desc limit 1
select first_name , last_name from players order by birth_date asc
select first_name from players order by birth_date asc
select first_name , last_name from players where hand = 'L' order by birth_date asc
select first_name , last_name from players where hand = 'left' order by birth_date asc
select players.first_name , players.country_code from rankings join players on rankings.player_id = players.player_id group by rankings.player_id order by count ( * ) desc limit 1
select players.first_name , players.country_code from rankings join players on rankings.player_id = players.player_id group by rankings.player_id order by count ( * ) desc limit 1
select year from matches group by year order by count ( * ) desc limit 1
select year from matches group by year order by count ( * ) desc limit 1
select winner_name , winner_rank_points from matches group by winner_name order by count ( * ) desc limit 1
select matches.winner_name , count ( * ) from matches join rankings on matches.winner_id = rankings.player_id join players on rankings.player_id = players.player_id group by matches.winner_name order by count ( * ) desc limit 1
select winner_name from matches where tourney_name = 'Australian Open' group by winner_name order by count ( * ) desc limit 1
select winner_name from matches where tourney_name = 'Australian Open' group by winner_name order by count ( * ) desc limit 1
select loser_name , winner_name from matches group by loser_name order by count ( * ) desc limit 1
select matches.winner_name , matches.loser_name from matches join players on matches.winner_id = players.player_id group by matches.winner_name order by count ( * ) desc limit 1
select avg ( ranking ) , players.first_name from rankings join players on rankings.player_id = players.player_id group by rankings.player_id
select first_name from players group by first_name order by count ( * ) desc limit 1
select sum ( rankings.ranking_points ) , players.first_name from rankings join players on rankings.player_id = players.player_id group by rankings.player_id
select players.first_name , rankings.ranking_points from rankings join players on rankings.player_id = players.player_id group by rankings.player_id order by count ( * ) desc limit 1
select count ( * ) , country_code from players group by country_code
select country_code , count ( * ) from players group by country_code
select country_code from players group by country_code order by count ( * ) desc limit 1
select country_code from players group by country_code order by count ( * ) desc limit 1
select country_code from players where country_code > 50 group by country_code having count ( * ) > 50
select country_code from players group by country_code having count ( * ) > 50
select count ( * ) , rankings.tours from rankings join players on rankings.player_id = players.player_id group by rankings.ranking_date
select count ( * ) , ranking_date from rankings group by ranking_date
select count ( * ) , year from matches group by year
select count ( * ) , year from matches group by year
select winner_name , winner_rank from matches group by winner_name order by count ( * ) desc limit 3
select winner_name , winner_rank from matches group by winner_name order by count ( * ) desc limit 3
select count ( distinct winner_hand ) from matches join players on matches.winner_id = players.player_id where matches.tourney_name = 'WTA Championships'
select count ( * ) from matches join players on matches.winner_id = players.player_id where matches.tourney_name = 'WTA Championships'
select players.first_name , players.country_code , players.birth_date from matches join players on matches.winner_id = players.player_id join rankings on rankings.player_id = rankings.player_id group by matches.winner_name order by count ( * ) desc limit 1
select players.first_name , players.country_code , players.birth_date from rankings join matches on rankings.player_id = matches.winner_id join players on rankings.player_id = players.player_id group by rankings.player_id order by count ( * ) desc limit 1
select count ( * ) , hand from players group by hand
select count ( * ) , hand from players group by hand
select count ( * ) from ship where disposition_of_ship = 'Captured'
select name , tonnage from ship order by name desc
select name , date , result from battle
select max ( killed ) , min ( injured ) from death group by death.id
select avg ( injured ) , killed from death group by killed
select death.caused_by_ship_id from ship join death on ship.id = death.caused_by_ship_id where ship.tonnage = 't'
select name , result from battle where bulgarian_commander != 'Boril'
select distinct battle.id , battle.name from battle join ship on battle.id = ship.id where ship.ship_type = 'Brig'
select battle.id , battle.name from battle join death on battle.id = death.id group by battle.id having count ( * ) > 10
select ship.id , ship.name from ship join death on ship.id = death.caused_by_ship_id group by ship.id order by sum ( death.injured ) desc limit 1
select distinct name from battle where bulgarian_commander = 'Kaloyan' and latin_commander = 'Baldwin I'
select count ( distinct result ) from battle
select count ( * ) from battle join ship on battle.id = ship.id where ship.tonnage >= 225
select battle.name , battle.date from battle join ship on battle.id = ship.id where ship.name = 'Lettice' and ship.name = 'HMS Atalanta'
select battle.name , battle.result , bulgarian_commander from battle join ship on battle.id = ship.id where ship.location != 'English Channel'
select note from death where note like '%East%'
select address_id from addresses except select address_id from addresses where line_1 = 2
select line_1 , line_2 from addresses
select count ( * ) from courses
select count ( * ) from courses
select course_description from courses where course_name = 'math'
select course_description from courses where course_name = 'math'
select zip_postcode from addresses where city = 'Port Chelsea'
select zip_postcode from addresses where city = 'Port Chelsea'
select departments.department_name , departments.department_id from degree_programs join departments on degree_programs.department_id = departments.department_id group by departments.department_id order by count ( * ) desc limit 1
select departments.department_name , departments.department_id from degree_programs join departments on degree_programs.department_id = departments.department_id group by departments.department_id order by count ( * ) desc limit 1
select count ( * ) from degree_programs
select count ( distinct department_id ) from degree_programs
sql placeholder
select count ( distinct degree_program_id ) from degree_programs
select count ( * ) from degree_programs
select count ( * ) from degree_programs
select section_name , section_description from sections
select section_name , section_description from sections
select course_name , sections.section_id from courses join sections on courses.course_id = sections.course_id group by sections.course_id having count ( * ) >= 2
select course_name , course_id from courses group by course_name having count ( * ) > 2
select section_name from sections order by section_name asc
select section_name from sections order by section_name asc
select semesters.semester_name , semesters.semester_id from student_enrolment join semesters on student_enrolment.semester_id = semesters.semester_id group by semesters.semester_name order by count ( * ) desc limit 1
select semesters.semester_name , student_enrolment.student_enrolment_id from semesters join student_enrolment on semesters.semester_id = student_enrolment.semester_id group by semesters.semester_name order by count ( * ) desc limit 1
select department_description from departments where department_name like '%%'
select department_description from departments where department_name like '%computer%'
sql placeholder
sql placeholder
select students.first_name , students.last_name from student_enrolment join degree_programs on student_enrolment.student_id = degree_programs.degree_program_id join students on student_enrolment.student_id = students.student_id where degree_programs.degree_summary_name = 'Bachelor'
select first_name , middle_name , last_name from student_enrolment join students on student_enrolment.student_id = students.student_id where student_enrolment.student_id = 'Bachelors'
select degree_program_id from student_enrolment group by degree_program_id order by count ( * ) desc limit 1
select degree_summary_name from degree_programs group by degree_programs.degree_summary_name order by count ( * ) desc limit 1
select degree_program_id , semester_id from student_enrolment group by semester_id order by count ( * ) desc limit 1
select degree_program_id , degree_summary_name from degree_programs group by degree_programs.degree_program_id order by count ( * ) desc limit 1
select student_enrolment.student_id , students.first_name , students.middle_name , student_enrolment.student_enrolment_id from student_enrolment join students on student_enrolment.student_id = students.student_id group by student_enrolment.student_enrolment_id order by count ( * ) desc limit 1
select students.first_name , students.middle_name , students.last_name , student_enrolment.student_id , student_enrolment.student_id from student_enrolment join students on student_enrolment.student_id = students.student_id group by student_enrolment.student_id order by count ( * ) desc limit 1
select semester_name from semesters where semester_id not in ( select semester_id from student_enrolment )
select semester_name from semesters where semester_id not in ( select semester_id from student_enrolment )
select courses.course_name from courses join student_enrolment_courses on courses.course_id = student_enrolment_courses.student_enrolment_id join student_enrolment on student_enrolment_courses.student_enrolment_id = student_enrolment.student_enrolment_id where student_enrolment.student_enrolment_id = 1
sql placeholder
select courses.course_name from courses join student_enrolment_courses on courses.course_id = student_enrolment_courses.student_enrolment_id group by student_enrolment_courses.student_enrolment_id order by count ( * ) desc limit 1
select courses.course_name from courses join student_enrolment_courses on courses.course_id = student_enrolment_courses.student_enrolment_id group by student_enrolment_courses.student_enrolment_id order by count ( * ) desc limit 1
sql placeholder
sql placeholder
select transcript_date , transcript_id from transcripts group by transcript_id having count ( * ) >= 2
select transcript_date , transcript_id from transcripts group by transcript_id having count ( * ) >= 2
select students.student_id from students join student_enrolment_courses on students.student_id = student_enrolment_courses.student_course_id where students.first_name = 'Timmothy' and students.last_name = 'Ward'
select cell_mobile_number from students where first_name = 'Timmothy' and last_name = 'Ward'
select students.first_name , students.middle_name , students.last_name from student_enrolment join students on student_enrolment.student_id = students.student_id order by date_first_registered desc limit 1
select students.first_name , students.middle_name , students.last_name from student_enrolment join students on student_enrolment.student_id = students.student_id order by date_first_registered desc limit 1
select students.first_name , students.middle_name , students.last_name from student_enrolment join students on student_enrolment.student_id = students.student_id order by date_first_registered desc limit 1
select students.first_name , students.middle_name , students.last_name from student_enrolment join students on student_enrolment.student_id = students.student_id order by date_first_registered desc limit 1
sql placeholder
select first_name from students where permanent_address_id in ( select current_address_id from addresses )
select addresses.address_id , addresses.line_2 from addresses join students on addresses.address_id = students.current_address_id group by addresses.address_id order by count ( * ) desc limit 1
select addresses.line_1 , addresses.line_2 from addresses join students on addresses.address_id = students.student_id group by addresses.address_id order by count ( * ) desc limit 1
select avg ( transcript_date ) from transcripts
select avg ( transcript_date ) from transcripts
select transcript_date , transcript_id from transcripts
select transcript_date , other_details from transcripts
select count ( * ) from transcripts
select count ( * ) from transcripts
select transcript_date from transcripts order by transcript_date desc limit 1
select transcript_date from transcripts order by transcript_date desc limit 1
sql placeholder
sql placeholder
select transcript_date from transcripts order by transcript_date asc limit 1
select transcript_date , transcript_id from transcripts order by transcript_date asc limit 1
select semesters.semester_name from student_enrolment join semesters on student_enrolment.semester_id = semesters.semester_id where student_enrolment.student_enrolment_id = 'Bachelor' intersect select semesters.semester_name from student_enrolment join semesters on student_enrolment.student_enrolment_id = semesters.semester_id where student_enrolment.student_enrolment_id = 'Bachelor'
sql placeholder
select count ( distinct students.current_address_id ) from addresses join students on addresses.address_id = students.current_address_id
select distinct address_id from addresses
select other_student_details from students order by other_student_details asc
select other_student_details from students order by other_student_details asc
select section_name from sections
select section_description from sections where section_name = 'h'
select first_name from students where permanent_address_id = 'Haiti' or cell_mobile_number = '09700166582'
select first_name from students where permanent_address_id = 'Haiti' or cell_mobile_number = '09700166582'
select title from cartoon order by title asc
select title from cartoon order by title asc
select title from cartoon where directed_by = 'Ben Jones'
select title from cartoon where directed_by = 'Ben Jones'
select count ( * ) from cartoon where written_by = 'Joseph Kuhr'
select count ( * ) from cartoon where written_by = 'Joseph Kuhr'
select title , directed_by from cartoon order by original_air_date asc
sql placeholder
select title from cartoon where directed_by = 'Ben Jones' or directed_by = 'Brandon Vietti'
select title from cartoon where directed_by = 'Ben Jones' or directed_by = 'Brandon Vietti'
select country , count ( * ) from tv_channel group by country order by count ( * ) desc limit 1
select country , count ( * ) from tv_channel group by country order by count ( * ) desc limit 1
sql placeholder
select count ( distinct tv_series.channel ) from tv_series join tv_channel on tv_channel.id = tv_channel.id
select content from tv_channel where series_name = 'Sky Radio'
select content from tv_channel where series_name = 'Sky Radio'
select package_option from tv_channel where series_name = 'Sky Radio'
select package_option from tv_channel where series_name = 'Sky Radio'
select count ( * ) from tv_channel where language = 'England'
select count ( * ) from tv_channel where language = 'England'
select language , count ( * ) from tv_channel group by language order by count ( * ) desc limit 1
select language from tv_channel order by country asc limit 1
select language , count ( * ) from tv_channel group by language
select language , count ( * ) from tv_channel group by language
select tv_channel.series_name from tv_channel join cartoon on tv_channel.id = cartoon.channel where cartoon.title = 'The Rise of the Blue Beetle!'
sql placeholder
select cartoon.title from tv_channel join cartoon on tv_channel.id = cartoon.channel where tv_channel.series_name = 'Sky Radio'
select title from cartoon join tv_channel on cartoon.channel = tv_channel.id join tv_series on tv_channel.id = tv_series.channel where series_name = 'Sky Radio'
select episode from tv_series order by rating asc
select episode from tv_series order by rating asc
select episode , rating from tv_series order by rating desc limit 3
select episode from tv_series order by rating desc limit 3
select min ( share ) , max ( share ) from tv_series
select max ( share ) , min ( share ) from tv_series
select air_date from tv_series where episode = 'A Love of a Lifetime'
select air_date from tv_series where episode = 'A Love of a Lifetime'
select weekly_rank from tv_series where episode = 'A Love of a Lifetime'
select weekly_rank from tv_series where episode = 'A Love of a Lifetime'
select tv_channel.series_name from tv_channel join tv_series on tv_channel.id = tv_series.id where tv_series.episode = 'A Love of a Lifetime'
sql placeholder
select tv_series.episode from tv_channel join tv_series on tv_channel.id = tv_series.id where tv_channel.series_name = 'Sky Radio'
select tv_series.episode from tv_channel join tv_series on tv_channel.id = tv_series.id where tv_channel.series_name = 'Sky Radio'
select count ( * ) , directed_by from cartoon group by directed_by
select directed_by , count ( * ) from cartoon group by directed_by
select production_code , channel from cartoon order by title desc limit 1
select production_code , channel from cartoon order by title desc limit 1
select package_option , series_name from tv_channel where hight_definition_tv = 1
select package_option , series_name from tv_channel where hight_definition_tv = 1
select tv_channel.country from cartoon join tv_channel on cartoon.channel = tv_channel.id where cartoon.written_by = 'Todd Casey'
select tv_channel.country from cartoon join tv_channel on cartoon.channel = tv_channel.id where cartoon.written_by = 'Todd Casey'
select channel from cartoon where written_by not in ( select channel from cartoon where written_by = 'Todd Casey' )
select country from tv_channel where country not in ( select country from cartoon where written_by = 'Todd Casey' )
select tv_channel.series_name , tv_channel.country from tv_channel join cartoon on tv_channel.id = cartoon.channel where cartoon.directed_by = 'Ben Jones' and cartoon.directed_by = 'Michael Chang'
select tv_channel.series_name , tv_channel.country from tv_channel join cartoon on tv_channel.id = cartoon.channel where cartoon.directed_by = 'Ben Jones' and cartoon.directed_by = 'Michael Chang'
select pixel_aspect_ratio_par , tv_channel.country from tv_channel where tv_channel.language not in ( select tv_channel.language from tv_channel where language = 'English' )
select pixel_aspect_ratio_par , country from tv_channel where language not in ( select language from tv_channel where language )
select id from tv_channel group by country having count ( * ) > 2
select tv_channel.id from tv_channel join cartoon on tv_channel.id = cartoon.channel group by tv_channel.id having count ( * ) > 2
select id from tv_channel except select tv_channel.id from tv_channel join cartoon on tv_channel.id = cartoon.id where cartoon.directed_by = 'Ben Jones'
select id from tv_channel where id not in ( select channel from cartoon where directed_by = 'Ben Jones' )
select package_option from tv_channel where tv_channel.id not in ( select package_option from cartoon where directed_by = 'Ben Jones' )
select package_option from tv_channel except select tv_channel.package_option from tv_channel join cartoon on tv_channel.id = cartoon.id where cartoon.directed_by = 'Ben Jones'
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
select people.birth_date from poker_player join people on poker_player.people_id = people.people_id order by poker_player.earnings desc limit 1
select people.birth_date from poker_player join people on poker_player.people_id = people.people_id order by poker_player.earnings desc limit 1
select people.height from poker_player join people on poker_player.people_id = people.people_id order by poker_player.money_rank desc limit 1
select people.height from poker_player join people on poker_player.people_id = people.people_id order by poker_player.money_rank desc limit 1
select avg ( poker_player.earnings ) from people join poker_player on people.people_id = poker_player.people_id where people.height > 200
select avg ( poker_player.earnings ) from people join poker_player on people.people_id = poker_player.people_id where people.height > 200
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
select name from people where nationality != 'Russland'
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
select distinct state , created time from votes
select contestants.contestant_number , contestants.contestant_name from votes join contestants on votes.contestant_number = contestants.contestant_number group by votes.contestant_number having count ( * ) >= 2
select contestants.contestant_number , contestants.contestant_name from votes join contestants on votes.contestant_number = contestants.contestant_number group by votes.contestant_number order by count ( * ) asc limit 1
select count ( * ) from votes where state = 'NY' or state = 'CA'
sql placeholder
select area_code_state.area_code from votes join area_code_state on votes.state = area_code_state.state group by votes.vote_id order by count ( * ) desc limit 1
sql placeholder
sql placeholder
select contestant_name from contestants where contestant_name like '%Al%'
select name from country where indepyear < 1950
select name from country where code > 1950
select count ( * ) from country where governmentform = 'Republic'
select count ( * ) from country where governmentform = 'Republic'
select sum ( surfacearea ) from country where region = 'Caracas'
select sum ( surfacearea ) from country where region = 'Carribean' group by region
select continent from country where localname = 'Anguilla'
select localname from country where localname = 'Anguilla'
select country.region from city join country on city.countrycode = country.code where city.name = 'Kabul'
select region from country where name = 'Kabul'
select countrylanguage.language from countrylanguage join country on country.code = country.code where country.name = 'Aruba' group by countrylanguage.language order by count ( * ) desc limit 1
sql placeholder
select population , lifeexpectancy from country where name = 'Brazil'
select population , lifeexpectancy from country where name = 'Brazil'
select region , population from country where localname = 'Angola'
select region , population from country where localname = 'Angola'
select avg ( lifeexpectancy ) from country where region = 'Central Africa'
select avg ( lifeexpectancy ) from country where region = 'Central Africa'
select name from country where lifeexpectancy = 'Asc limit 1' order by lifeexpectancy asc limit 1
select name from country where lifeexpectancy < 'Asia' group by name order by count ( * ) desc limit 1
select sum ( population ) , max ( gnp ) from country where continent = 'Asia'
select gnp from country where continent = 'Asia' group by gnp order by count ( * ) desc limit 1
select avg ( lifeexpectancy ) from country where country.governmentform = 'Republic'
select avg ( lifeexpectancy ) from country where continent = 'Africa'
select sum ( surfacearea ) from country where continent = 'Asia' and continent = 'Europe'
select sum ( surfacearea ) from country where continent = 'Asia' or continent = 'Europe'
select count ( * ) from city where district = 'Gelderland'
select sum ( population ) from city where district = 'Gelderland'
select avg ( gnp ) , sum ( population ) from country where governmentform = 'US Territory'
select avg ( gnp ) , sum ( population ) from country where governmentform = 'US Territory'
select count ( distinct language ) from countrylanguage
select count ( distinct language ) from countrylanguage
select count ( * ) from country where continent = 'Africa'
select count ( distinct governmentform ) from country where continent = 'Africa'
select sum ( countrylanguage.language ) from country join countrylanguage on country.code = country.code where country.name = 'Aruba'
select count ( * ) from countrylanguage join country on country.code = country.code where country.name = 'Aruba'
select count ( * ) from country where name = 'Afghanistan'
sql placeholder
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode group by countrylanguage.countrycode order by count ( * ) desc limit 1
select name from country group by name order by count ( * ) desc limit 1
select continent from country group by continent order by count ( * ) desc limit 1
select continent from country group by continent order by count ( * ) desc limit 1
select count ( * ) from countrylanguage where language = 'English' intersect select count ( * ) from countrylanguage where language = 'Dutch'
select count ( * ) from countrylanguage where language = 'English' and countrycode = 'Dutch'
sql placeholder
sql placeholder
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'English' intersect select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'French'
sql placeholder
sql placeholder
select count ( * ) from countrylanguage where language = 'Chinese'
sql placeholder
sql placeholder
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'English' intersect select countrylanguage.language from countrylanguage join country on country.code = country.code where countrylanguage.isofficial = 'Dutch'
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select countrylanguage.language from country join countrylanguage on country.code = country.code where country.governmentform = 'Republic' group by countrylanguage.language
select city.population from countrylanguage join city on countrylanguage.countrycode = city.countrycode where countrylanguage.language = 'English' group by city.population order by count ( * ) desc limit 1
select city.population from countrylanguage join city on countrylanguage.countrycode = city.countrycode where countrylanguage.language = 'English' group by city.population order by count ( * ) desc limit 1
select name , population , lifeexpectancy from country where continent = 'Asia' order by surfacearea desc limit 1
select name , population , lifeexpectancy from country where continent = 'Asia' group by name order by count ( * ) desc limit 1
sql placeholder
sql placeholder
sql placeholder
sql placeholder
select countrylanguage.isofficial from country join countrylanguage on country.code = countrylanguage.countrycode where country.headofstate = 'Beatrix'
select countrylanguage.isofficial from country join countrylanguage on country.code = countrylanguage.countrycode where country.headofstate = 'Beatrix'
select sum ( isofficial ) from countrylanguage join country on country.code = country.code where country.name = '30'
select count ( distinct language ) from countrylanguage where countrycode = '30%'
select name from country where surfacearea > ( select max ( surfacearea ) from country where continent = 'Europe' )
select name from country where surfacearea > ( select max ( surfacearea ) from country where continent = 'Europe' )
sql placeholder
select name from country where population > ( select min ( population ) from country where continent = 'Africa' )
select name from country where population > ( select continent from country where continent = 'Asia' )
select name from country where population > ( select continent from country where continent = 'Asia' )
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language != 'England'
select country.name from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language != 'English'
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language = 'England'
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language != 'English'
select country.code from country join countrylanguage on country.code = country.code where countrylanguage.language not in ( select countrylanguage.language from country where governmentform = 'Republic' )
sql placeholder
sql placeholder
select name from city where countrycode != 'Europe'
sql placeholder
sql placeholder
select name , indepyear , surfacearea from country order by population desc limit 1
select name , indepyear , surfacearea from country order by population asc limit 1
select population , name , headofstate from country order by surfacearea desc limit 1
select name , population , headofstate from country order by surfacearea desc limit 1
select country.name , count ( * ) from country join countrylanguage on country.code = countrylanguage.countrycode group by countrylanguage.language having count ( * ) >= 3
select country.name , count ( * ) from country join countrylanguage on country.code = countrylanguage.countrycode group by countrylanguage.countrycode having count ( * ) > 2
select district , count ( * ) from city where population > ( select avg ( population ) from city ) group by district
select district , count ( * ) from city where population > ( select avg ( population ) from city ) group by district
select governmentform , population from country where lifeexpectancy > 72 group by governmentform
select distinct governmentform , population from country where lifeexpectancy > 72
select avg ( lifeexpectancy ) , population from country where lifeexpectancy < 72 group by continent
select distinct continent , population , lifeexpectancy , avg ( lifeexpectancy ) from country where lifeexpectancy < 72
select name , surfacearea from country order by surfacearea desc limit 5
select name , surfacearea from country group by surfacearea order by count ( * ) desc limit 5
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population asc limit 3
select name from country group by name order by count ( * ) desc limit 3
select count ( * ) from country where continent = 'Asia'
select count ( * ) from country where continent = 'Asia'
select name from country where continent = 'Europe' and population >= 80000
select name from country where continent = 'Europe' and population > 80000
select sum ( population ) , avg ( surfacearea ) from country where continent = 'North America' and region > 3000
select sum ( population ) , avg ( surfacearea ) from country where continent = 'North America' and region = 'North America'
select city.name from city join country on city.population = country.code where city.population between 160000 and 900000
select name from city where population between 160000 and 900000
select language from countrylanguage group by language order by count ( * ) desc limit 1
select language from countrylanguage group by language order by count ( * ) desc limit 1
select countrylanguage.language from country join countrylanguage on country.code = country.code group by countrylanguage.language order by count ( * ) desc limit 1
select country.code , countrylanguage.language from country join countrylanguage on country.code = country.code group by country.code order by count ( * ) desc limit 1
select sum ( countrylanguage.percentage ) from countrylanguage join country on country.code = country.code where countrylanguage.language = 'Spanish' group by countrylanguage.percentage order by count ( * ) desc limit 1
select count ( * ) from countrylanguage where language = 'Spanish'
select country.code from country join countrylanguage on country.code = country.code where countrylanguage.language = 'Spanish' group by countrylanguage.countrycode order by count ( * ) desc limit 1
select country.code from country join countrylanguage on country.code = countrylanguage.countrycode where countrylanguage.language like 'Spain'
select count ( * ) from conductor
select count ( * ) from conductor
select name from conductor order by age asc
select name from conductor order by age asc
select name from conductor where nationality != 'USA'
select name from conductor where nationality not in ( select nationality from conductor where nationality = 'USA' )
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select avg ( attendance ) from show
select avg ( attendance ) from show
select max ( share ) , min ( share ) from performance where type != 'Live final'
select max ( share ) , min ( share ) from performance where type != 'Live final'
select count ( distinct nationality ) from conductor
select count ( distinct nationality ) from conductor
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc
select conductor.name from conductor join orchestra on conductor.conductor_id = orchestra.conductor_id group by conductor.conductor_id order by count ( * ) desc limit 1
select conductor.name from conductor join orchestra on conductor.conductor_id = orchestra.conductor_id order by year_of_work desc limit 1
select conductor.name , orchestra.orchestra from conductor join orchestra on conductor.conductor_id = orchestra.conductor_id
select conductor.name , orchestra.orchestra from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id
select conductor.name , count ( * ) from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id group by orchestra.conductor_id having count ( * ) > 1
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id group by orchestra.conductor_id having count ( * ) > 1
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id group by orchestra.conductor_id order by count ( * ) desc limit 1
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id group by orchestra.conductor_id order by count ( * ) desc limit 1
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id where orchestra.year_of_founded > 2008
select conductor.name from orchestra join conductor on orchestra.conductor_id = conductor.conductor_id where orchestra.year_of_founded >= 2008
select record_company , count ( * ) from orchestra group by record_company
select count ( * ) , record_company from orchestra group by record_company
sql placeholder
select major_record_format from orchestra group by major_record_format order by count ( * ) asc
select record_company from orchestra group by record_company order by count ( * ) desc limit 1
select record_company from orchestra group by record_company order by count ( * ) desc limit 1
sql placeholder
select orchestra.orchestra from performance join orchestra on performance.orchestra_id = orchestra.orchestra_id where performance.date not in ( select performance_id from performance )
select record_company from orchestra where year_of_founded > 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded > 2003 intersect select record_company from orchestra where year_of_founded > 2003
select count ( * ) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select count ( * ) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select year_of_founded from orchestra group by year_of_founded having count ( * ) > 1
select year_of_founded from orchestra group by year_of_founded having count ( * ) > 1
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
select highschooler.id from highschooler join friend on highschooler.id = friend.student_id where highschooler.name = 'Kyle'
select highschooler.name from highschooler join friend on highschooler.id = friend.student_id join likes on likes.liked_id = highschooler.id where highschooler.name = 'Kyle'
select count ( * ) from highschooler where grade = 9 or 10
select count ( * ) from highschooler where grade = 9 or 10
select count ( * ) , grade from highschooler group by grade
select grade , count ( * ) from highschooler group by grade
select grade from highschooler group by grade order by count ( * ) desc limit 1
select grade from highschooler group by grade order by count ( * ) desc limit 1
select grade from highschooler group by grade having count ( * ) >= 4
select grade from highschooler group by grade having count ( * ) >= 4
select student_id , count ( * ) from friend group by friend_id
select count ( * ) , student_id from friend group by student_id
select highschooler.name , count ( * ) from friend join highschooler on friend.student_id = highschooler.id group by friend.friend_id
select highschooler.name , count ( * ) from friend join highschooler on friend.friend_id = highschooler.id group by friend.friend_id
select highschooler.name from friend join highschooler on friend.friend_id = highschooler.id group by highschooler.name order by count ( * ) desc limit 1
select highschooler.name from friend join highschooler on friend.student_id = highschooler.id join likes on likes.liked_id = highschooler.id group by highschooler.id order by count ( * ) desc limit 1
select highschooler.name from friend join highschooler on friend.friend_id = highschooler.id group by highschooler.name having count ( * ) >= 3
select highschooler.name from friend join highschooler on friend.friend_id = highschooler.id group by friend.friend_id having count ( * ) >= 3
select friend.friend_id from friend join highschooler on friend.student_id = highschooler.id join likes on likes.liked_id = highschooler.id where highschooler.name = 'Kyle'
select friend.friend_id from friend join highschooler on friend.student_id = highschooler.id where highschooler.name = 'Kyle'
select count ( * ) from friend join highschooler on friend.friend_id = highschooler.id where highschooler.name = 'Kyle'
select count ( * ) from friend join highschooler on friend.friend_id = highschooler.id where highschooler.name = 'Kyle'
select student_id from friend except select student_id from friend
select student_id from friend where student_id not in ( select student_id from friend )
sql placeholder
select highschooler.name from friend join highschooler on friend.student_id = highschooler.id join likes on likes.liked_id = highschooler.id where friend.friend_id not in ( select likes.student_id from friend join highschooler on likes.liked_id = highschooler.id )
sql placeholder
select student_id from friend where friend_id = 'friend' intersect select student_id from likes where liked_id = 'liked'
sql placeholder
select highschooler.name from friend join highschooler on friend.student_id = highschooler.id join likes on likes.liked_id = likes.liked_id where friend.friend_id = 'friend' intersect select highschooler.name from friend join highschooler on likes.student_id = highschooler.id join likes on likes.liked_id = likes.liked_id where highschooler.grade = 'id'
select count ( * ) , student_id from likes group by student_id
select count ( * ) , student_id from likes group by student_id
select highschooler.name , count ( * ) from highschooler join likes on highschooler.id = likes.liked_id group by likes.liked_id
select highschooler.name , count ( * ) from likes join highschooler on likes.liked_id = highschooler.id group by likes.liked_id
select highschooler.name from likes join highschooler on likes.liked_id = highschooler.id group by highschooler.name order by count ( * ) desc limit 1
select highschooler.name from likes join highschooler on likes.student_id = highschooler.id group by highschooler.name order by count ( * ) desc limit 1
select highschooler.name from likes join highschooler on likes.liked_id = highschooler.id group by highschooler.name having count ( * ) >= 2
select highschooler.name from likes join highschooler on likes.student_id = highschooler.id group by likes.liked_id having count ( * ) >= 2
sql placeholder
select highschooler.name from highschooler join friend on highschooler.id = friend.friend_id where highschooler.grade > 5 and friend.student_id > 2
select count ( * ) from likes join highschooler on likes.liked_id = highschooler.id where highschooler.name = 'Kyle'
select count ( * ) from likes join highschooler on likes.liked_id = highschooler.id where highschooler.name = 'Kyle'
select avg ( grade ) from friend join highschooler on friend.student_id = highschooler.id join likes on likes.liked_id = highschooler.id where friend.friend_id = 'friend'
select avg ( grade ) from friend join highschooler on friend.student_id = highschooler.id where highschooler.grade = 1
sql placeholder
sql placeholder
select state from owners intersect select state from professionals
select state from owners intersect select state from professionals
select avg ( age ) from dogs
select avg ( age ) from dogs
select professionals.professional_id , professionals.last_name , professionals.cell_number from treatments join professionals on treatments.professional_id = professionals.professional_id where professionals.state = 'Indy' group by professionals.professional_id having count ( * ) > 2
select professionals.professional_id , professionals.last_name , professionals.cell_number from treatments join professionals on treatments.professional_id = professionals.professional_id where professionals.state = 'Indy' or treatments.date_of_treatment > 2
select dogs.name from treatments join dogs on treatments.dog_id = dogs.dog_id where treatments.cost_of_treatment not in ( select dog_id from treatments )
sql placeholder
select first_name from professionals except select first_name from owners
select first_name from professionals where first_name not in ( select first_name from owners )
select professional_id , role_code , email_address from professionals where professional_id not in ( select professional_id from treatments )
select professional_id , role_code , email_address from professionals where professional_id not in ( select professional_id from treatments )
select owners.owner_id , owners.first_name , owners.last_name from owners join dogs on owners.owner_id = dogs.owner_id group by owners.owner_id order by count ( * ) desc limit 1
select owners.owner_id , owners.first_name , owners.last_name from owners join dogs on owners.owner_id = dogs.owner_id group by owners.owner_id order by count ( * ) desc limit 1
select professionals.professional_id , professionals.role_code , professionals.first_name from treatments join professionals on treatments.professional_id = professionals.professional_id group by treatments.professional_id having count ( * ) >= 2
select professionals.professional_id , professionals.role_code , professionals.first_name from treatments join professionals on treatments.professional_id = professionals.professional_id group by treatments.professional_id having count ( * ) >= 2
select breeds.breed_name from breeds join dogs on breeds.breed_code = dogs.breed_code group by breeds.breed_name order by count ( * ) desc limit 1
select breeds.breed_name from dogs join breeds on dogs.breed_code = breeds.breed_code group by breeds.breed_name order by count ( * ) desc limit 1
select owners.owner_id , owners.last_name from owners join treatments on owners.owner_id = treatments.dog_id group by owners.owner_id order by sum ( treatments.cost_of_treatment ) desc limit 1
select owners.owner_id , owners.last_name from owners join treatments on owners.owner_id = treatments.dog_id join dogs on treatments.dog_id = dogs.dog_id group by owners.owner_id order by sum ( treatments.cost_of_treatment ) desc limit 1
select treatment_types.treatment_type_description from treatment_types join treatments on treatment_types.treatment_type_code = treatments.treatment_type_code group by treatments.treatment_type_code order by sum ( cost_of_treatment ) desc limit 1
select treatment_types.treatment_type_description from treatment_types join treatments on treatment_types.treatment_type_code = treatments.treatment_type_code order by treatments.cost_of_treatment desc limit 1
sql placeholder
sql placeholder
select professionals.professional_id , professionals.cell_number from treatments join professionals on treatments.professional_id = professionals.professional_id group by treatments.professional_id having count ( * ) >= 2
select professionals.professional_id , professionals.cell_number from treatments join professionals on treatments.professional_id = professionals.professional_id group by treatments.professional_id having count ( * ) >= 2
select professionals.first_name , professionals.last_name from treatments join professionals on treatments.professional_id = professionals.professional_id where treatments.cost_of_treatment < ( select avg ( cost_of_treatment ) from treatments )
select professionals.first_name , professionals.last_name from treatments join professionals on treatments.professional_id = professionals.professional_id where treatments.cost_of_treatment < ( select avg ( cost_of_treatment ) from treatments )
select date_of_treatment , first_name from treatments join professionals on treatments.professional_id = professionals.professional_id
select date_of_treatment , professionals.first_name from treatments join professionals on treatments.professional_id = professionals.professional_id
select cost_of_treatment , treatment_type_description from treatment_types join treatments on treatment_types.treatment_type_code = treatments.treatment_type_code
select treatments.cost_of_treatment , treatment_type_description from treatments join treatment_types on treatments.treatment_type_code = treatment_types.treatment_type_code
select owners.first_name , owners.last_name , sizes.size_code from owners join dogs on owners.owner_id = dogs.owner_id join sizes on dogs.size_code = sizes.size_code
select owners.first_name , owners.last_name , dogs.size_code from owners join dogs on owners.owner_id = dogs.owner_id
select dogs.name , owners.first_name from owners join dogs on owners.owner_id = dogs.owner_id group by dogs.name order by count ( * ) desc limit 1
select owners.first_name , dogs.name from owners join dogs on owners.owner_id = dogs.owner_id
select dogs.name , treatments.date_of_treatment from dogs join breeds on dogs.breed_code = breeds.breed_code join treatments on dogs.dog_id = treatments.dog_id where breeds.breed_name = 'rarest breed' order by treatments.date_of_treatment desc limit 1
select dogs.name , treatments.date_of_treatment from dogs join breeds on dogs.breed_code = breeds.breed_code join treatments on dogs.dog_id = treatments.dog_id where breeds.breed_name = 'rarest breed' order by treatments.date_of_treatment desc limit 1
select dogs.name , owners.first_name from owners join dogs on owners.owner_id = dogs.owner_id where owners.state = 'Virginia'
select owners.first_name , dogs.name from owners join dogs on owners.owner_id = dogs.owner_id where owners.state = 'Virginia'
select date_arrived , date_departed from treatments join dogs on treatments.dog_id = dogs.dog_id
select dogs.date_arrived , dogs.date_departed from treatments join dogs on treatments.dog_id = dogs.dog_id
select owners.last_name from owners join dogs on owners.owner_id = dogs.owner_id order by dogs.age desc limit 1
select owners.last_name from owners join dogs on owners.owner_id = dogs.owner_id order by dogs.age desc limit 1
select email_address from professionals where state = 'Hawaii' or state = 'Wisconsin'
select email_address from professionals where state = 'Hawaii' union select email_address from professionals where state = 'Wisconsin'
select date_arrived , date_departed from dogs
select date_arrived , date_departed from dogs
select count ( * ) from treatments
select count ( * ) from treatments
select count ( * ) from treatments join dogs on treatments.professional_id = dogs.dog_id where dogs.name = 'professional_id'
select count ( * ) from treatments join dogs on treatments.professional_id = dogs.dog_id where dogs.name = 'professional'
select professional_id , street , city , state from professionals where city like 'West'
select role_code , street , city , state from professionals where city like 'West'
select first_name , last_name , email_address from owners where state like '%North%'
select first_name , last_name , email_address from owners where state like 'North'
select count ( * ) from dogs where age < ( select avg ( age ) from dogs )
select count ( * ) from dogs where age < ( select avg ( age ) from dogs )
select date_of_treatment , cost_of_treatment from treatments order by date_of_treatment desc limit 1
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count ( * ) from treatments where dog_id not in ( select dog_id from treatments )
select count ( * ) from treatments where dog_id not in ( select dog_id from treatments )
select count ( * ) from owners where owner_id not in ( select owner_id from dogs )
select count ( * ) from owners where owner_id not in ( select owner_id from owners )
select count ( * ) from treatments where professional_id not in ( select professional_id from treatments )
select count ( * ) from treatments join professionals on treatments.professional_id = professionals.professional_id where treatments.dog_id not in ( select treatments.dog_id from treatments join dogs on treatments.dog_id = dogs.dog_id )
select name , age , weight from dogs where abandoned_yn = 1
select name , age , weight from dogs where abandoned_yn = 1
select avg ( age ) from dogs
select avg ( age ) from dogs
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type , count ( * ) from charges group by charge_type
select charge_type , count ( * ) from charges group by charge_type
select charge_type from charges group by charge_type order by sum ( charge_amount ) desc limit 1
select charge_amount from charges order by charge_type desc limit 1
select email_address , home_phone , cell_number from professionals group by email_address order by count ( * ) desc limit 1
select email_address , home_phone from professionals
sql placeholder
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
sql placeholder
select name from singer where birth_year = '48' or birth_year = '49'
select name from singer where birth_year = '48' intersect select name from singer where birth_year = '49'
select name from singer order by net_worth_millions desc limit 1
select name from singer order by net_worth_millions desc limit 1
select citizenship , count ( * ) from singer group by citizenship
select citizenship , count ( * ) from singer group by citizenship
select citizenship from singer group by citizenship order by count ( * ) desc limit 1
select citizenship from singer group by citizenship order by count ( * ) desc limit 1
select citizenship , max ( net_worth_millions ) from singer group by citizenship
select citizenship , max ( net_worth_millions ) from singer group by citizenship
select song.title , singer.name from song join singer on song.singer_id = singer.singer_id
select song.title , singer.name from song join singer on song.singer_id = singer.singer_id
select distinct name from song join singer on song.singer_id = singer.singer_id where song.sales > 300000
select distinct title from song where sales > 300000
select name , count ( * ) from song join singer on song.singer_id = singer.singer_id group by song.singer_id having count ( * ) > 1
select name from song join singer on song.singer_id = singer.singer_id group by song.singer_id having count ( * ) > 1
select name , sum ( sales ) from song join singer on song.singer_id = singer.singer_id group by song.singer_id
sql placeholder
select name from singer where singer_id not in ( select singer_id from song )
select title from song where song_id not in ( select song_id from song )
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year < 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year < 1955
select count ( * ) from other_available_features
select ref_feature_types.feature_type_name from other_available_features join ref_feature_types on other_available_features.feature_id = ref_feature_types.feature_type_code where other_available_features.feature_name = 'AirCon'
select property_type_description from properties join ref_property_types on properties.property_type_code = ref_property_types.property_type_code
select property_name from properties where property_type_code = 'Apartment' intersect select property_name from properties where property_type_code = 'House'
