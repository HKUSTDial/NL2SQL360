SELECT frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.county = 'Alameda' ORDER BY frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)` DESC LIMIT 1
SELECT frpm.`free meal count (ages 5-17)` / frpm.`enrollment (ages 5-17)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.edopsname = 'Continuation School' ORDER BY frpm.`free meal count (ages 5-17)` / frpm.`enrollment (ages 5-17)` LIMIT 3
SELECT DISTINCT schools.zip FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school (y/n)` = 1 AND frpm.`county name` = 'Fresno'
SELECT schools.mailstreet FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode ORDER BY frpm.`frpm count (k-12)` DESC LIMIT 1
SELECT DISTINCT schools.phone FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school (y/n)` = 1 AND strftime('%Y', schools.opendate) > '2000'
SELECT count(*) FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.avgscrmath < 400 AND schools.virtual = 'F'
SELECT DISTINCT schools.school FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.numge1500 > 500 AND schools.magnet = 1
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numge1500 = ( SELECT max(numge1500) FROM satscores )
SELECT satscores.numtsttakr FROM frpm INNER JOIN satscores ON frpm.cdscode = satscores.cds ORDER BY frpm.`frpm count (k-12)` DESC LIMIT 1
SELECT count(DISTINCT schools.school) FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.avgscrmath > 560 AND schools.charter = 1
SELECT frpm.`frpm count (ages 5-17)` FROM satscores INNER JOIN frpm ON satscores.cds = frpm.cdscode WHERE satscores.avgscrread = ( SELECT max(avgscrread) FROM satscores )
SELECT DISTINCT frpm.`school code` FROM frpm INNER JOIN schools ON frpm.`school code` = schools.cdscode WHERE frpm.`enrollment (k-12)` + frpm.`enrollment (ages 5-17)` > 500
SELECT frpm.`free meal count (ages 5-17)` / frpm.`enrollment (ages 5-17)` FROM satscores INNER JOIN frpm ON satscores.cds = frpm.cdscode WHERE frpm.`percent (%) eligible free (ages 5-17)` > 0.3 ORDER BY satscores.numge1500 DESC LIMIT 1
SELECT DISTINCT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY cast(satscores.numge1500 AS REAL) / satscores.numtsttakr DESC LIMIT 3
SELECT DISTINCT schools.ncesschool FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode ORDER BY frpm.`enrollment (ages 5-17)` DESC LIMIT 5
SELECT DISTINCT frpm.`district name` FROM satscores INNER JOIN frpm ON satscores.cds = frpm.cdscode ORDER BY satscores.avgscrread DESC LIMIT 1
SELECT count(*) FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr < 100
SELECT schools.charternum FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.avgscrwrite = 499
SELECT count(schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.numtsttakr <= 250 AND schools.county = 'Contra Costa' AND schools.fundingtype = 'Directly funded'
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrmath DESC LIMIT 1
SELECT count(*) FROM frpm WHERE `low grade` = 9 AND `high grade` = 12 AND `county name` = 'Amador'
SELECT count(DISTINCT frpm.`school name`) FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.city = 'Los Angeles' AND frpm.`free meal count (k-12)` > 500 AND frpm.`free meal count (k-12)` < 700
SELECT satscores.sname FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.county = 'Contra Costa' ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT DISTINCT schools.school FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`enrollment (ages 5-17)` - frpm.`enrollment (k-12)` > 30
SELECT frpm.`school name` FROM frpm INNER JOIN satscores ON frpm.cdscode = satscores.cds WHERE frpm.`percent (%) eligible free (k-12)` > 0.1 AND satscores.numge1500 > 0
SELECT DISTINCT schools.fundingtype FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.avgscrmath > 400 AND schools.city = 'Riverside'
SELECT DISTINCT schools.school, schools.street, schools.city, schools.state FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.city = 'Monterey' AND frpm.`free meal count (ages 5-17)` > 800
SELECT avgscrwrite, satscores.sname, schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE strftime('%Y', schools.opendate) > '1991' AND strftime('%Y', schools.closeddate) < '2000'
SELECT avg(frpm.`enrollment (k-12)`) - avg(frpm.`enrollment (ages 5-17)`) FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.fundingtype = 'Locally funded'
SELECT schools.opendate FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode ORDER BY frpm.`enrollment (k-12)` DESC LIMIT 1
SELECT DISTINCT schools.city FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`enrollment (k-12)` = ( SELECT min(`enrollment (k-12)`) FROM frpm ) LIMIT 5
SELECT frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.school IN ('10th', '11th') ORDER BY frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)` DESC LIMIT 1
SELECT frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.soc = 66 ORDER BY frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)` DESC LIMIT 5
SELECT DISTINCT schools.website, schools.school FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`free meal count (ages 5-17)` BETWEEN 1900 AND 2000
SELECT frpm.`free meal count (ages 5-17)` / frpm.`enrollment (ages 5-17)` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.admfname1 = 'Kacey' AND schools.admlname1 = 'Gibson'
SELECT schools.admemail1 FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school (y/n)` = 1 ORDER BY frpm.`enrollment (k-12)` LIMIT 1
SELECT schools.admfname1, schools.admfname2, schools.admfname3 FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numge1500 = ( SELECT max(numge1500) FROM satscores )
SELECT schools.street, schools.city, schools.state, schools.zip FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY cast(satscores.numge1500 AS REAL) / satscores.numtsttakr LIMIT 1
SELECT DISTINCT schools.website FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.county = 'Los Angeles' AND satscores.numtsttakr BETWEEN 2000 AND 3000
SELECT avg(satscores.numtsttakr) FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.opendate BETWEEN '1980-01-01' AND '1980-12-31' AND schools.district = 'Fresno'
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.sname = schools.school WHERE satscores.dname = 'Fresno Unified' ORDER BY satscores.avgscrread LIMIT 1
SELECT DISTINCT schools.school FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.virtual = 'F' ORDER BY satscores.avgscrread DESC LIMIT 5
SELECT DISTINCT schools.eilname FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.avgscrmath = ( SELECT max(avgscrmath) FROM satscores )
SELECT avgscrmath, cname FROM satscores ORDER BY avgscrmath ASC LIMIT 1
SELECT avg(satscores.avgscrwrite), schools.city FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numge1500 = ( SELECT max(numge1500) FROM satscores )
SELECT avg(satscores.avgscrwrite), satscores.sname FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.admfname1 = 'Ricci' AND schools.admlname1 = 'Ulrich'
SELECT DISTINCT schools.state FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.doc = 31 ORDER BY frpm.`enrollment (k-12)` DESC LIMIT 1
SELECT cast(count(CASE WHEN schools.doc = 52 THEN 1 ELSE NULL END) AS REAL) / 12 FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Alameda' AND strftime('%Y', schools.opendate) = '1980'
SELECT cast(sum(CASE WHEN schools.doctype = 'Unified School District' THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN schools.doctype = 'Elementary School District' THEN 1 ELSE 0 END) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Orange' AND schools.doc = 52
SELECT DISTINCT schools.county, schools.school, schools.closeddate FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.statustype = 'Closed' GROUP BY schools.county, schools.school, schools.closeddate ORDER BY count(schools.school) DESC LIMIT 1
SELECT schools.street, schools.school FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.avgscrmath = ( SELECT avgscrmath FROM satscores ORDER BY avgscrmath DESC LIMIT 5, 1 )
SELECT schools.mailstreet, satscores.sname FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds ORDER BY satscores.avgscrread LIMIT 1
SELECT count(schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.mailcity = 'Lakeport' AND satscores.numtsttakr >= 1500
SELECT sum(satscores.numtsttakr) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.mailcity = 'Fresno'
SELECT DISTINCT schools.school, schools.mailzip FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.admfname1 = 'Avetik' AND schools.admfname2 = 'Atoian'
SELECT cast(sum(CASE WHEN schools.county = 'Colusa' THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN schools.county = 'Humboldt' THEN 1 ELSE 0 END) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.mailstate = 'CA'
SELECT count(schools.school) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.mailstate = 'CA' AND schools.county = 'San Joaquin' AND schools.statustype = 'Active'
SELECT schools.phone, schools.ext FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.avgscrwrite = ( SELECT avgscrwrite FROM satscores ORDER BY avgscrwrite DESC LIMIT 3, 1 )
SELECT phone, ext, school FROM schools WHERE zip = '95203-3704'
SELECT DISTINCT schools.website FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.admfname1 = 'Mike' AND schools.admlname1 = 'Larson' AND schools.admfname2 = 'Dante' AND schools.admlname2 = 'Alvarez'
SELECT website FROM schools WHERE charter = 1 AND virtual = 'P' AND county = 'San Joaquin'
SELECT count(*) FROM schools WHERE city = 'Hickman' AND doc = 52 AND charter = 1
SELECT sum(CASE WHEN frpm.`free meal count (k-12)` * 100 / frpm.`enrollment (k-12)` < 0.18 THEN 1 ELSE 0 END) FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.charter = 0 AND schools.county = 'Los Angeles'
SELECT DISTINCT schools.admfname1, schools.admfname2, schools.admfname3, schools.city FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school number` = '00D2' AND schools.charter = 1
SELECT count(schools.school) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.charternum = '00D4' AND schools.mailcity = 'Hickman'
SELECT cast(sum(CASE WHEN schools.fundingtype = 'Locally funded' THEN 1 ELSE 0 END) AS REAL) * 100 / count(schools.fundingtype) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Santa Clara'
SELECT count(schools.school) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.fundingtype = 'Directly funded' AND strftime('%Y', schools.opendate) BETWEEN '2000' AND '2005' AND frpm.`county name` = 'Stanislaus'
SELECT sum(schools.closeddate - schools.opendate) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'San Francisco' AND strftime('%Y', schools.opendate) = '1989'
SELECT frpm.`county name` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.soc = 11 AND strftime('%Y', schools.closeddate) BETWEEN '1980' AND '1989' GROUP BY frpm.`county name` ORDER BY count(schools.soc) DESC LIMIT 1
SELECT ncesdist FROM schools WHERE soc = 31
SELECT count(schools.school) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Alpine' AND schools.school IN ('Active', 'Closed')
SELECT frpm.`district code` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.city = 'Fresno' AND schools.magnet = 0
SELECT sum(frpm.`enrollment (ages 5-17)`) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.edopscode = 'SSS' AND frpm.`academic year` = '2014-2015'
SELECT frpm.`free meal count (ages 5-17)` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.mailstreet = 'PO Box 1040'
SELECT frpm.`low grade` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.edopscode = 'SPECON' AND schools.ncesdist = 613360
SELECT DISTINCT schools.eilname, frpm.`school name` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`county code` = 37 AND frpm.`nslp provision status` = 'Breakfast Provision 2'
SELECT DISTINCT schools.city FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.eilcode = 'HS' AND frpm.`low grade` = 9 AND frpm.`high grade` = 12 AND frpm.`nslp provision status` = 'Lunch Provision 2' AND schools.city = 'Merced'
SELECT schools.school, frpm.`percent (%) eligible frpm (ages 5-17)` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.county = 'Los Angeles' AND frpm.`free meal count (ages 5-17)` / frpm.`enrollment (ages 5-17)` * 100 > 90
SELECT gsserved FROM schools WHERE city = 'Adelanto' GROUP BY gsserved ORDER BY count(gsserved) DESC LIMIT 1
SELECT DISTINCT schools.county, count(schools.county) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.county IN ('San Diego', 'Santa Barbara') AND schools.virtual = 'F' GROUP BY schools.county ORDER BY count(schools.county) DESC LIMIT 1
SELECT frpm.`school type`, schools.school, schools.latitude FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode ORDER BY schools.latitude DESC LIMIT 1
SELECT DISTINCT schools.city, frpm.`low grade`, frpm.`school name` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.state = 'CA' ORDER BY schools.latitude ASC LIMIT 1
SELECT gsoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(schools.city), count(DISTINCT schools.school) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`nslp provision status` = 'Multiple Provision Types' AND schools.magnet = 1
SELECT admfname1, district FROM schools GROUP BY admfname1, district ORDER BY count(admfname1) DESC LIMIT 2
SELECT frpm.`percent (%) eligible free (k-12)`, frpm.`district code` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.admfname1 = 'Alusine'
SELECT schools.admlname3, frpm.`district name`, frpm.`county name` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school number` = 40
SELECT schools.admemail1 FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.soc = 62 AND schools.doc = 54 AND frpm.`school type` IN ('Public Intermediate/Middle Schools', 'Public Unified Schools') AND strftime('%Y', schools.opendate) BETWEEN '2009' AND '2010'
SELECT schools.admemail1, schools.school FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr = ( SELECT max(numtsttakr) FROM satscores )
SELECT count(DISTINCT account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a3 = 'East Bohemia' AND account.frequency = 'POPLATEK PO OBRATU'
SELECT count(DISTINCT account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a3 = 'Prague'
SELECT CASE WHEN a12 > a13 THEN 'a12' ELSE 'a13' END FROM district
SELECT count(DISTINCT client.district_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' AND district.a11 > 6000 AND district.a11 < 10000
SELECT count(*) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'North Bohemia' AND client.gender = 'M' AND district.a11 > 8000
SELECT account.account_id FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id WHERE client.gender = 'F' ORDER BY district.a11 DESC LIMIT 1
SELECT client.client_id FROM client INNER JOIN district ON client.district_id = district.district_id ORDER BY client.birth_date ASC LIMIT 1
SELECT count(DISTINCT client.client_id) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND disp.type = 'OWNER'
SELECT client.client_id FROM client INNER JOIN card ON client.client_id = card.disp_id INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN account ON disp.account_id = account.account_id WHERE account.frequency = 'POPLATEK PO OBRATU' AND disp.type = 'DISPONENT'
SELECT account.account_id FROM account INNER JOIN loan ON account.account_id = loan.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND strftime('%Y', loan.date) = '1997' ORDER BY loan.amount ASC LIMIT 1
SELECT account.account_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE strftime('%Y', loan.date) = '1993' AND loan.duration > 12 ORDER BY loan.amount DESC LIMIT 1
SELECT count(DISTINCT client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id WHERE client.gender = 'F' AND client.birth_date < 1950
SELECT account_id FROM account WHERE strftime('%Y', `date`) = '1995' ORDER BY `date` ASC LIMIT 1
SELECT DISTINCT account.account_id FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE strftime('%Y', trans.date) < '1997' AND trans.amount > 3000
SELECT client.client_id FROM card INNER JOIN client ON card.disp_id = client.client_id WHERE card.issued LIKE '1994-03-03%'
SELECT date FROM account WHERE account_id = 840
SELECT account.district_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE strftime('%Y-%m-%d', loan.date) = '1994-08-25'
SELECT max(trans.amount) FROM client INNER JOIN card ON client.client_id = card.disp_id INNER JOIN trans ON card.card_id = trans.account_id WHERE strftime('%Y-%m-%d', card.issued) = '1996-10-21'
SELECT client.gender FROM client INNER JOIN account ON client.client_id = account.client_id INNER JOIN district ON account.district_id = district.district_id ORDER BY district.a11 DESC LIMIT 1
SELECT trans.amount FROM client INNER JOIN loan ON client.client_id = loan.account_id INNER JOIN trans ON loan.account_id = trans.account_id ORDER BY loan.amount DESC LIMIT 1
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a2 = 'Jesenik' AND client.gender = 'F'
SELECT card.disp_id FROM client INNER JOIN card ON client.client_id = card.disp_id INNER JOIN trans ON card.card_id = trans.account_id WHERE strftime('%Y-%m-%d', trans.date) = '1998-09-05' AND trans.amount = 5100
SELECT count(account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a2 = 'Litomerice' AND strftime('%Y', account.date) = '1996'
SELECT district.a2 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' AND client.birth_date = '1976-01-29'
SELECT client.birth_date FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE strftime('%Y-%m-%d', loan.date) = '1996-01-03' AND loan.amount = 98832
SELECT account.account_id FROM client INNER JOIN account ON client.district_id = account.district_id INNER JOIN district ON account.district_id = district.district_id WHERE district.a3 = 'Prague'
SELECT cast(sum(CASE WHEN client.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.gender) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'south Bohemia' ORDER BY district.a4 DESC LIMIT 1
SELECT cast((sum(CASE WHEN strftime('%Y-%m-%d', trans.date) = '1993-03-22' THEN trans.balance ELSE 0 END) - sum(CASE WHEN strftime('%Y-%m-%d', trans.date) = '1998-12-27' THEN trans.balance ELSE 0 END)) AS REAL) * 100 / sum(CASE WHEN strftime('%Y-%m-%d', trans.date) = '1998-12-27' THEN trans.balance ELSE 0 END) FROM client INNER JOIN loan ON client.client_id = loan.account_id INNER JOIN trans ON loan.account_id = trans.account_id WHERE client.birth_date = '1993-03-22'
SELECT cast(sum(CASE WHEN status = 'A' THEN amount ELSE 0 END) AS REAL) * 100 / sum(amount) FROM loan
SELECT cast(sum(CASE WHEN amount < 100000 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM loan
SELECT account.account_id, district.a2, district.a3 FROM account INNER JOIN district ON account.district_id = district.district_id WHERE substr(account.date, 1, 4) = '1993' AND account.frequency = 'POPLATEK PO OBRATU'
SELECT account.account_id, account.frequency FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a3 = 'east Bohemia' AND account.date BETWEEN '1995-01-01' AND '2000-12-31'
SELECT account.account_id, account.date FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a2 = 'Prachatice'
SELECT district.a2, district.a3 FROM district INNER JOIN loan ON district.district_id = loan.account_id WHERE loan.loan_id = 4990
SELECT account.account_id, district.a2, district.a3 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.amount > 300000
SELECT loan.loan_id, district.a3, district.a11 FROM loan INNER JOIN district ON loan.account_id = district.district_id WHERE loan.duration = 60
SELECT district.a12, district.a13 FROM district INNER JOIN loan ON district.district_id = loan.account_id WHERE loan.status = 'D'
SELECT cast(sum(CASE WHEN district.a2 = 'Decin' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE strftime('%Y', account.date) = '1993'
SELECT account_id FROM account WHERE frequency = 'POPLATEK MESICNE'
SELECT district.a2 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' GROUP BY district.a2 ORDER BY count(district.a2) DESC LIMIT 10
SELECT district.a2 FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE substr(trans.date, 1, 7) = '1996-01' GROUP BY district.a2 ORDER BY count(district.a2) DESC LIMIT 10
SELECT count(DISTINCT account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a3 = 'south Bohemia'
SELECT district.a3 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.status = 'C' ORDER BY loan.amount DESC LIMIT 1
SELECT avg(loan.amount) FROM client INNER JOIN loan ON client.client_id = loan.client_id WHERE client.gender = 'M'
SELECT a2, district_id FROM district ORDER BY a13 DESC LIMIT 1
SELECT count(*) FROM district WHERE a16 = ( SELECT max(a16) FROM district )
SELECT count(DISTINCT account.account_id) FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.frequency = 'POPLATEK MESICNE' AND trans.operation = 'VYBER KARTOU' AND trans.balance < 0
SELECT count(*) FROM account INNER JOIN loan ON account.account_id = loan.account_id WHERE account.frequency = 'POPLATEK MESICNE' AND loan.amount >= 250000
SELECT count(account_id) FROM account WHERE district_id = 1 AND status = 'C'
SELECT count(client.gender) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a15 = ( SELECT max(a15) FROM district ) AND client.gender = 'M'
SELECT count(*) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE card.type = 'gold' AND disp.type = 'DISPONENT'
SELECT sum(CASE WHEN a2 = 'Pisek' THEN 1 ELSE 0 END) FROM district
SELECT district.a2 FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE strftime('%Y', trans.date) = '1997' AND trans.amount > 10000
SELECT account.account_id FROM order INNER JOIN account ON order.account_id = account.account_id WHERE order.k_symbol = 'SIPO' AND district.a2 = 'Pisek'
SELECT DISTINCT account.account_id FROM card INNER JOIN account ON card.disp_id = account.account_id WHERE card.type = 'junior' AND card.type = 'gold'
SELECT avg(trans.amount) FROM card INNER JOIN trans ON card.card_id = trans.account WHERE strftime('%Y', trans.date) = '2021' AND trans.operation = 'VYBER KARTOU'
SELECT account.account_id FROM card INNER JOIN account ON card.disp_id = account.account_id WHERE card.type = 'gold' AND card.issued BETWEEN '1998-01-01' AND '1998-12-31' GROUP BY account.account_id HAVING sum(trans.amount) < ( SELECT avg(trans.amount) FROM card INNER JOIN account ON card.disp_id = account.account_id WHERE card.type = 'gold' AND card.issued BETWEEN '1998-01-01' AND '1998-12-31' )
SELECT client.gender FROM client INNER JOIN card ON client.client_id = card.disp_id INNER JOIN loan ON card.disp_id = loan.account_id WHERE client.gender = 'F'
SELECT sum(CASE WHEN client.gender = 'F' THEN 1 ELSE 0 END) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'south Bohemia'
SELECT account.account_id FROM account INNER JOIN client ON account.account_id = client.district_id INNER JOIN card ON client.client_id = card.disp_id INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN district ON client.district_id = district.district_id WHERE district.a2 = 'Tabor' AND disp.type = 'OWNER'
SELECT DISTINCT CASE WHEN account.type = 'OWNER' THEN account.account_id ELSE NULL END FROM account INNER JOIN client ON account.account_id = client.district_id INNER JOIN district ON client.district_id = district.district_id WHERE district.a11 > 8000 AND district.a11 < 9000
SELECT count(DISTINCT account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE district.a3 = 'North Bohemia' AND trans.bank = 'AB'
SELECT district.a2 FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE trans.type = 'VYDAJ'
SELECT avg(district.a15) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a15 > 4000 AND strftime('%Y', account.date) > '1997'
SELECT count(*) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE card.type = 'classic' AND disp.type = 'OWNER'
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a2 = 'Hl.m. Praha' AND client.gender = 'M'
SELECT cast(sum(CASE WHEN card.issued < '1998-01-01' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE card.type = 'gold'
SELECT client.gender FROM client INNER JOIN account ON client.client_id = account.account_id INNER JOIN loan ON account.account_id = loan.account_id ORDER BY loan.amount DESC LIMIT 1
SELECT district.a15 FROM district INNER JOIN account ON district.district_id = account.district_id WHERE account.account_id = 532
SELECT account.district_id FROM order INNER JOIN account ON order.account_id = account.account_id WHERE order.order_id = 33333
SELECT trans.amount FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id INNER JOIN trans ON card.card_id = trans.account_id WHERE client.client_id = 3356 AND trans.operation = 'VYBER'
SELECT count(*) FROM account INNER JOIN loan ON account.account_id = loan.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND loan.amount < 200000
SELECT card.type FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE disp.client_id = 13539
SELECT district.a3 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.client_id = 3541
SELECT district.a2 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.status = 'A' GROUP BY district.a2 ORDER BY count(district.a2) DESC LIMIT 1
SELECT client.first_name, client.last_name FROM client INNER JOIN order ON client.client_id = order.account_id WHERE order.order_id = 32423
SELECT DISTINCT trans.type FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.district_id = 5
SELECT count(DISTINCT account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a2 = 'Jesenik'
SELECT client.client_id FROM client INNER JOIN card ON client.client_id = card.disp_id WHERE card.issued > '1996-01-01' AND card.type = 'junior'
SELECT cast(sum(CASE WHEN district.a11 > 10000 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F'
SELECT cast(sum(CASE WHEN client.gender = 'M' THEN loan.amount ELSE 0 END) AS REAL) * 100 / sum(loan.amount) FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE strftime('%Y', loan.date) BETWEEN '1996' AND '1997'
SELECT count(card_id) FROM card WHERE issued > '1995-01-01'
SELECT sum(CASE WHEN a3 = 'East Bohemia' THEN a16 ELSE 0 END) - sum(CASE WHEN a3 = 'North Bohemia' THEN a16 ELSE 0 END) FROM district
SELECT count(*) FROM account INNER JOIN disp ON account.account_id = disp.account_id WHERE account.account_id BETWEEN 1 AND 10
SELECT account.frequency FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE trans.account_id = 3539
SELECT substr(birth_date, 1, 4) FROM client WHERE client_id = 130
SELECT count(DISTINCT account.account_id) FROM account INNER JOIN disp ON account.account_id = disp.account_id WHERE account.frequency = 'POPLATEK PO OBRATU' AND disp.type = 'OWNER'
SELECT sum(loan.amount), loan.payments FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.client_id = 992
SELECT sum(trans.amount), client.gender FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE client.client_id = 4 AND trans.trans_id = 851
SELECT card.type FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE disp.client_id = 9
SELECT sum(trans.amount) FROM client INNER JOIN trans ON client.client_id = trans.account_id WHERE client.client_id = 617 AND strftime('%Y', trans.date) = '1998'
SELECT client.client_id FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'East Bohemia' AND client.birth_date BETWEEN '1983-01-01' AND '1987-12-31'
SELECT client.client_id FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'F' ORDER BY loan.amount DESC LIMIT 3
SELECT count(*) FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'M' AND client.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND loan.amount > 4000 AND loan.status = 'A'
SELECT count(DISTINCT account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a2 = 'Beroun' AND strftime('%Y', account.date) > '1996'
SELECT count(*) FROM client INNER JOIN card ON client.client_id = card.disp_id WHERE client.gender = 'F' AND card.type = 'junior'
SELECT cast(sum(CASE WHEN client.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.gender) FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id WHERE district.a3 = 'Prague'
SELECT cast(sum(CASE WHEN client.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.gender) FROM client INNER JOIN account ON client.client_id = account.account_id WHERE account.frequency = 'POPLATEK TYDNE'
SELECT count(DISTINCT client.client_id) FROM client INNER JOIN account ON client.district_id = account.district_id WHERE account.frequency = 'POPLATEK TYDNE'
SELECT account.account_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE strftime('%Y', loan.date) - strftime('%Y', account.date) > 24 ORDER BY loan.amount ASC LIMIT 1
SELECT account.account_id FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id WHERE client.gender = 'F' ORDER BY district.a11 LIMIT 1
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'East Bohemia' AND strftime('%Y', client.birth_date) = '1920'
SELECT count(loan.loan_id) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND loan.duration = 24
SELECT avg(amount) FROM loan WHERE status = 'C'
SELECT client.client_id, client.district_id FROM client INNER JOIN disp ON client.client_id = disp.client_id WHERE disp.type = 'OWNER'
SELECT client.client_id, client.birth_date FROM client INNER JOIN card ON client.client_id = card.disp_id WHERE card.type = 'gold'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(bond_type) DESC LIMIT 1
SELECT count(atom.atom_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' AND atom.element = 'cl'
SELECT avg(CASE WHEN atom.element = 'o' THEN 1 ELSE 0 END) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '-'
SELECT cast(sum(CASE WHEN bond.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) / count(atom.atom_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' AND atom.element = 'na'
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#' AND molecule.label = '+'
SELECT cast(sum(CASE WHEN atom.element = 'c' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.atom_id) FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = '
SELECT count(bond_id) FROM bond WHERE bond_type = '#'
SELECT count(atom_id) FROM atom WHERE element != 'br'
SELECT count(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR099' AND label = '+'
SELECT molecule_id FROM atom WHERE element = 'si'
SELECT DISTINCT atom.element FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_id = 'TR004_8_9'
SELECT DISTINCT atom.element FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = ' = ' AND atom.element = 'cl'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'h' GROUP BY molecule.label ORDER BY count(molecule.label) DESC LIMIT 1
SELECT DISTINCT bond.bond_type FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'te'
SELECT DISTINCT atom.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON atom.atom_id = connected.atom_id WHERE bond.bond_type = '-'
SELECT DISTINCT atom.atom_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE molecule.label = '-'
SELECT min(atom.element) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-'
SELECT bond.bond_type FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE atom.atom_id = 'TR004_8' AND atom.atom_id = 'TR004_20'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element != 'sn'
SELECT count(atom.atom_id) FROM atom INNER JOIN bond ON atom.atom_id = bond.atom_id WHERE atom.element = 'i' OR atom.element = 's' AND bond.bond_type = '-'
SELECT DISTINCT atom.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON atom.atom_id = connected.atom_id WHERE bond.bond_type = '#'
SELECT DISTINCT atom.atom_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE molecule.molecule_id = 'TR181'
SELECT cast(sum(CASE WHEN atom.element = 'f' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT cast(sum(CASE WHEN bond.bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+'
SELECT DISTINCT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR000' ORDER BY atom.element ASC LIMIT 3
SELECT atom.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON atom.atom_id = connected.atom_id WHERE bond.molecule_id = 'TR001' AND bond.bond_id = 'TR001_2_6'
SELECT sum(CASE WHEN label = '+' THEN 1 ELSE 0 END) - sum(CASE WHEN label = '-' THEN 1 ELSE 0 END) FROM molecule
SELECT atom_id FROM connected WHERE bond_id = 'TR000_2_5'
SELECT bond_id FROM connected WHERE atom_id2 = 'TR000_2'
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = ' ORDER BY molecule.label LIMIT 5
SELECT cast(sum(CASE WHEN bond.bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR008'
SELECT cast(sum(CASE WHEN label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule_id) FROM molecule
SELECT cast(sum(CASE WHEN atom.element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.atom_id) FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR206'
SELECT bond_type FROM bond WHERE molecule_id = 'TR000'
SELECT atom.element, molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR060'
SELECT bond.bond_type, molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.molecule_id = 'TR018' GROUP BY bond.bond_type, molecule.label ORDER BY count(bond.bond_type) DESC LIMIT 1
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '-' ORDER BY molecule.label LIMIT 3
SELECT bond_id FROM bond WHERE molecule_id = 'TR006' ORDER BY bond_id ASC LIMIT 2
SELECT count(*) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.molecule_id = 'TR009' AND (connected.atom_id = 'TR009_12' OR connected.atom_id2 = 'TR009_12')
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'br' AND molecule.label = '+'
SELECT bond.bond_type, connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_id = 'TR001_6_9'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.atom_id = 'TR001_10'
SELECT count(bond_id) FROM bond WHERE bond_type = '#'
SELECT count(bond_id) FROM connected WHERE atom_id = 'TR000_19'
SELECT DISTINCT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR004'
SELECT count(molecule_id) FROM molecule WHERE label = '-'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE substr(atom.atom_id, 7, 2) BETWEEN '21' AND '25' AND molecule.label = '+'
SELECT bond.bond_id FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id INNER JOIN bond ON bond.bond_id = connected.bond_id WHERE atom.element IN ('p', 'n')
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = ' GROUP BY molecule.label ORDER BY count(bond.bond_id) DESC LIMIT 1
SELECT cast(count(bond.bond_id) AS REAL) / count(DISTINCT atom.atom_id) FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id INNER JOIN bond ON bond.bond_id = connected.bond_id WHERE atom.element = 'i'
SELECT DISTINCT bond.bond_type, bond.bond_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE substr(connected.atom_id, 7, 2) = '45'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.element IS NOT NULL
SELECT atom.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.molecule_id = 'TR447' AND bond.bond_type = '#'
SELECT DISTINCT atom.element FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON atom.atom_id = connected.atom_id WHERE bond.bond_id = 'TR144_8_19'
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+' AND bond.bond_type = '=' GROUP BY molecule.label ORDER BY count(bond.bond_id) DESC LIMIT 1
SELECT DISTINCT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT atom.atom_id FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.element = 'pb'
SELECT DISTINCT atom.element FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '#';
SELECT cast(count(CASE WHEN count(DISTINCT atom.element) = 1 THEN bond.bond_id ELSE NULL END) AS REAL) * 100 / count(bond.bond_id) FROM atom INNER JOIN bond ON atom.atom_id = bond.bond_id
SELECT cast(sum(CASE WHEN molecule.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = '-'
SELECT count(atom_id) FROM atom WHERE element IN ('c', 'h')
SELECT atom_id2 FROM atom WHERE element = 's'
SELECT DISTINCT bond.bond_type FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE atom.element = 'sn'
SELECT count(DISTINCT atom.element) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '-'
SELECT count(atom.atom_id) FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#' AND (atom.element = 'p' OR atom.element = 'br')
SELECT bond.bond_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+'
SELECT DISTINCT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '-' AND molecule.label = '-'
SELECT cast(sum(CASE WHEN atom.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.atom_id) FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '-'
SELECT label FROM molecule WHERE molecule_id IN ('TR000', 'TR001', 'TR002')
SELECT molecule_id FROM molecule WHERE label = '-'
SELECT count(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR030' AND label = '+'
SELECT DISTINCT bond_type FROM bond WHERE molecule_id BETWEEN 'TR000' AND 'TR050'
SELECT DISTINCT atom.element FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_id = 'TR001_10_11'
SELECT count(bond_id) FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.element = 'i'
SELECT label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'ca' GROUP BY label ORDER BY count(label) DESC LIMIT 1
SELECT count(*) FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_id = 'TR001_1_8' AND atom.element = 'cl' OR atom.element = 'c'
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON bond.bond_id = atom.molecule_id WHERE atom.element = 'c' AND bond.bond_type = '#' AND molecule.label = '-'
SELECT cast(sum(CASE WHEN atom.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT DISTINCT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = ' = '
SELECT connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '#'
SELECT DISTINCT atom.element FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON atom.atom_id = connected.atom_id WHERE bond.bond_id = 'TR005_16_26'
SELECT count(*) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '-' AND bond.bond_type = '-'
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_id = 'TR001_10_11'
SELECT bond.bond_id, molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#'
SELECT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND substr(atom.atom_id, 7, 1) = 4
SELECT cast(sum(CASE WHEN atom.element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.element), molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR006'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'ca'
SELECT DISTINCT bond.bond_type FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'te'
SELECT DISTINCT atom.element FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_id = 'TR001_10_11'
SELECT cast(sum(CASE WHEN bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM bond
SELECT cast(sum(CASE WHEN bond.bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.molecule_id = 'TR047'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.atom_id = 'TR001_1'
SELECT label FROM molecule WHERE molecule_id = 'TR151'
SELECT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR151'
SELECT count(molecule_id) FROM molecule WHERE label = '+'
SELECT atom.atom_id FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE substr(molecule.molecule_id, 3, 3) BETWEEN '10' AND '50' AND atom.element = 'c'
SELECT count(atom.atom_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT bond_id FROM bond WHERE bond_type = ' = ' AND molecule_id IN ( SELECT molecule_id FROM molecule WHERE label = '+' )
SELECT count(atom.atom_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND atom.element = 'h'
SELECT molecule_id FROM bond WHERE bond_id = ( SELECT bond_id FROM connected WHERE atom_id = 'TR000_1' )
SELECT atom.atom_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' AND atom.element = 'c'
SELECT cast(sum(CASE WHEN molecule.label = '+' AND atom.element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id
SELECT label FROM molecule WHERE molecule_id = 'TR124'
SELECT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR186'
SELECT bond_type FROM bond WHERE bond_id = 'TR007_4_19'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id INNER JOIN bond ON bond.bond_id = connected.bond_id WHERE bond.bond_id = 'TR001_2_4'
SELECT count(bond_id) FROM bond WHERE molecule_id = 'TR006' AND bond_type = ' = '
SELECT molecule.label, atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND atom.element = 'cl'
SELECT DISTINCT bond.bond_id, connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '-'
SELECT molecule.label, atom.element FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '#' AND atom.element = 'cl'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id INNER JOIN bond ON bond.bond_id = connected.bond_id WHERE bond.bond_id = 'TR000_2_3'
SELECT count(*) FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.element = 'cl'
SELECT atom.atom_id, count(bond.bond_type) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.molecule_id = 'TR346' GROUP BY atom.atom_id
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = ' AND molecule.label = '+'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 's' AND bond.bond_type != '='
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_id = 'TR001_2_4'
SELECT count(atom_id) FROM atom WHERE molecule_id = 'TR005'
SELECT count(bond_id) FROM bond WHERE bond_type = '-'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'cl'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'c' AND molecule.label != '-'
SELECT cast(sum(CASE WHEN molecule.label = '+' AND atom.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT count(DISTINCT atom.element) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_id = 'TR001_3_4'
SELECT bond.bond_type FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE atom.atom_id = 'TR000_1' AND atom.atom_id = 'TR000_2'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.atom_id = 'TR000_2' AND connected.atom_id2 = 'TR000_4'
SELECT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.atom_id = 'TR000_1'
SELECT label FROM molecule WHERE molecule_id = 'TR000'
SELECT cast(sum(CASE WHEN bond_type = '-' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond_id) FROM bond
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'n' AND molecule.label = '+'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE atom.element = 's' AND bond.bond_type = '='
SELECT count(molecule_id) FROM molecule WHERE label = '-' GROUP BY molecule_id HAVING count(molecule_id) > 5
SELECT DISTINCT atom.element FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '=' AND molecule.molecule_id = 'TR024'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id GROUP BY molecule.label ORDER BY count(atom.molecule_id) DESC LIMIT 1
SELECT cast(sum(CASE WHEN molecule.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE atom.element = 'h' AND bond.bond_type = '#'
SELECT count(molecule_id) FROM molecule WHERE label = '+'
SELECT count(bond_id) FROM bond WHERE molecule_id BETWEEN 'TR004' AND 'TR010' AND bond_type = '-'
SELECT count(atom.atom_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR008' AND atom.element = 'c'
SELECT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' AND atom.atom_id = 'TR004_7'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'o' AND bond.bond_type = '='
SELECT count(*) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#' AND molecule.label = '-'
SELECT DISTINCT atom.element, bond.bond_type FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.molecule_id = 'TR016'
SELECT atom.atom_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.molecule_id = 'TR012' AND atom.element = 'c' AND bond.bond_type = '='
SELECT atom.atom_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND atom.element = 'o'
SELECT name FROM cards WHERE cardkingdomfoilid = cardkingdomid AND cardkingdomid IS NOT NULL
SELECT name FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL AND bordercolor = 'borderless'
SELECT name FROM cards WHERE faceconvertedmanacost = ( SELECT max(faceconvertedmanacost) FROM cards )
SELECT name FROM cards WHERE frameversion = 2015 AND edhrecrank < 100
SELECT cards.name FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.rarity = 'mythic' AND legalities.status = 'Banned' AND legalities.format = 'gladiator'
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.types = 'Artifact' AND cards.side IS NULL AND legalities.format = 'Vintage'
SELECT cards.id, cards.artist FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Legal' AND (cards.power = '*' OR cards.power IS NULL) AND legalities.format = 'commander'
SELECT cards.text, rulings.text, cards.hascontentwarning FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.artist = 'Stephen Daniele'
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Sublime Epiphany' AND cards.number = '74s'
SELECT cards.name, cards.artist, cards.ispromo FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE rulings.id = ( SELECT max(id) FROM rulings )
SELECT DISTINCT foreign_data.language FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.name = 'Annul' AND cards.number = '29'
SELECT cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Japanese' AND cards.isalternative = 1
SELECT cast(sum(CASE WHEN foreign_data.language = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN foreign_data ON foreign_data.uuid = cards.uuid
SELECT DISTINCT sets.name, sets.totalsetsize FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Italian'
SELECT count(types) FROM cards WHERE artist = 'Aaron Boyd'
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(id) FROM cards WHERE power = '*'
SELECT promotypes FROM cards WHERE name = 'Duress'
SELECT colorindicator FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT originaltype FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT set_translations.language FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.id WHERE cards.name = 'Angel of Mercy'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Restricted' AND cards.istextless = 0
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Condemn'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Restricted' AND cards.isstarter = 1
SELECT availability FROM cards WHERE name = 'Cloudchaser Eagle'
SELECT TYPE FROM cards WHERE name = 'Benalish Knight'
SELECT legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.name = 'Benalish Knight'
SELECT DISTINCT cards.artist FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Phyrexian'
SELECT cast(sum(CASE WHEN bordercolor = 'borderless' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards
SELECT count(*) FROM foreign_data INNER JOIN cards ON foreign_data.id = cards.uuid WHERE foreign_data.language = 'German' AND cards.isreprint = 1
SELECT count(*) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Russian' AND cards.bordercolor = 'borderless'
SELECT cast(sum(CASE WHEN foreign_data.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.isstoryspotlight = 1
SELECT count(id) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = 'Aaron Boyd'
SELECT count(id) FROM cards WHERE bordercolor = 'black' AND availability = 'mtgo'
SELECT id FROM cards WHERE convertedmanacost = 0
SELECT DISTINCT layout FROM cards WHERE keywords = 'Flying'
SELECT count(id) FROM cards WHERE originaltype = 'Summon - Angel' AND subtypes != 'Angel'
SELECT cardkingdomfoilid, cardkingdomid FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL
SELECT id FROM cards WHERE dueldeck = 'a'
SELECT edhrecrank FROM cards WHERE frameversion = 2015
SELECT cards.artist FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Chinese Simplified'
SELECT cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Japanese' AND cards.availability = 'paper'
SELECT count(*) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' AND cards.bordercolor = 'white'
SELECT foreign_data.uuid, foreign_data.language FROM foreign_data INNER JOIN legalities ON foreign_data.uuid = legalities.uuid WHERE legalities.format = 'legacy'
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Beacon of Immortality'
SELECT count(uuid) FROM cards WHERE frameversion = 'future' AND status = 'Legal'
SELECT cards.name, cards.colors FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.code = 'OGW'
SELECT set_translations.translation, foreign_data.language FROM cards INNER JOIN set_translations ON cards.setcode = set_translations.setcode INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.setcode = '10E' AND cards.convertedmanacost = 5
SELECT cards.name, rulings.date FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.originaltype = 'Creature - Elf'
SELECT colors, format FROM cards WHERE id BETWEEN 1 AND 20
SELECT foreign_data.language FROM foreign_data INNER JOIN cards ON foreign_data.uuid = cards.uuid WHERE cards.originaltype = 'Artifact' AND cards.colors = 'B'
SELECT name, rulings.date FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.rarity = 'uncommon' LIMIT 3
SELECT count(id) FROM cards WHERE artist = 'John Avon' AND cardkingdomid IS NOT NULL AND cardkingdomfoilid IS NULL
SELECT count(id) FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL AND bordercolor = 'white'
SELECT count(id) FROM cards WHERE artist = 'UDON' AND availability = 'mtgo' AND hand = -1
SELECT count(id) FROM cards WHERE frameversion = 1993 AND hascontentwarning = 1 AND availability = 'paper'
SELECT manacost FROM cards WHERE availability IN ('paper', 'mtgo') AND layout = 'normal' AND frameversion = 2003 AND bordercolor = 'black'
SELECT sum(convertedmanacost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT types FROM cards WHERE availability = 'arena'
SELECT DISTINCT set_translations.setcode FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.id WHERE set_translations.language = 'Spanish'
SELECT cast(sum(CASE WHEN hand = 3 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards WHERE frameeffects = 'legendary'
SELECT cast(sum(CASE WHEN isStoryspotlight = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards WHERE isStoryspotlight = 1 AND istextless = 1
SELECT cast(sum(CASE WHEN foreign_data.language = 'Spanish' THEN 1 ELSE 0 END) AS REAL) * 100 / count(foreign_data.id) FROM foreign_data INNER JOIN cards ON foreign_data.id = cards.uuid
SELECT foreign_data.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode INNER JOIN foreign_data ON set_translations.language = foreign_data.language WHERE sets.basesetsize = 309
SELECT count(set_translations.language) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.block = 'Commander' AND set_translations.language = 'Portuguese (Brasil)'
SELECT cards.id FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.types = 'Creature' AND legalities.status = 'Legal'
SELECT types FROM cards WHERE LANGUAGE = 'German' AND (subtypes IS NOT NULL OR supertypes IS NOT NULL)
SELECT count(*) FROM cards WHERE power IS NULL OR power = ''
SELECT count(cards.id) FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE rulings.text = 'This is a triggered mana ability' AND cards.side IS NULL
SELECT cards.id FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.artist = 'Erica Yang' AND legalities.format = 'pauper' AND cards.availability = 'paper'
SELECT artist FROM cards WHERE text = 'Das perfekte Gegenmittel zu einer dichten Formation'
SELECT foreign_data.name FROM foreign_data INNER JOIN cards ON foreign_data.id = cards.uuid WHERE foreign_data.language = 'French' AND cards.type = 'Creature' AND cards.layout = 'normal' AND cards.bordercolor = 'black' AND cards.artist = 'Matthew D. Wilson'
SELECT count(cards.id) FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE rulings.date = '2009-01-10' AND cards.rarity = 'rare'
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.basesetsize = 180 AND sets.block = 'Ravnica'
SELECT cast(sum(CASE WHEN hascontentwarning = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM legalities WHERE format = 'commander' AND status = 'legal'
SELECT cast(sum(CASE WHEN power IS NULL OR power = '*' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM cards
SELECT cast(sum(CASE WHEN set_translations.language = 'Japanese' THEN 1 ELSE 0 END) AS REAL) * 100 / count(sets.id) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.type = 'expansion'
SELECT availability FROM cards WHERE artist = 'Daren Bader'
SELECT count(id) FROM cards WHERE bordercolor = 'borderless' AND edhrecrank > 12000
SELECT count(id) FROM cards WHERE isoversized = 1 AND isreprint = 1 AND ispromo = 1
SELECT name FROM cards WHERE power IS NULL OR power = '*' ORDER BY name LIMIT 3
SELECT foreign_data.language FROM foreign_data INNER JOIN cards ON foreign_data.uuid = cards.uuid WHERE cards.multiverseid = 149934
SELECT cardkingdomfoilid, cardkingdomid FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL ORDER BY cardkingdomfoilid ASC LIMIT 3
SELECT cast(sum(iif(istextless = 1 AND layout = 'normal', 1, 0)) AS REAL) * 100 / count(id) FROM cards
SELECT number FROM cards WHERE side IS NULL AND (subtypes = 'Angel' OR subtypes = 'Wizard')
SELECT name FROM sets WHERE mtgocode IS NULL OR mtgocode = '' ORDER BY name ASC LIMIT 3
SELECT foreign_data.language FROM sets INNER JOIN foreign_data ON sets.code = foreign_data.name WHERE sets.mcmname = 'Archenemy' AND sets.code = 'ARC'
SELECT sets.name, set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.id = 5
SELECT set_translations.language, sets.type FROM set_translations INNER JOIN sets ON set_translations.setcode = sets.code WHERE set_translations.id = 206
SELECT name, id FROM sets WHERE block = 'Shadowmoor' ORDER BY name ASC LIMIT 2
SELECT DISTINCT sets.id FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Japanese' AND sets.isforeignonly = 1 AND sets.isfoilonly = 1
SELECT sets.name FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Russian' ORDER BY sets.basesetsize DESC LIMIT 1
SELECT cast(sum(CASE WHEN foreign_data.language = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / count(foreign_data.language) FROM foreign_data INNER JOIN cards ON foreign_data.id = cards.uuid WHERE cards.isonlineonly = 1
SELECT count(*) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Japanese' AND sets.mtgocode IS NULL OR sets.mtgocode = ''
SELECT count(id) FROM cards WHERE bordercolor = 'black'
SELECT count(id) FROM cards WHERE frameeffects = 'extendedart'
SELECT name FROM cards WHERE bordercolor = 'white' AND isfullart = 1
SELECT set_translations.language FROM set_translations INNER JOIN sets ON set_translations.setcode = sets.code WHERE sets.id = 174
SELECT name FROM sets WHERE code = 'ALL'
SELECT foreign_data.language FROM foreign_data INNER JOIN cards ON foreign_data.uuid = cards.uuid WHERE foreign_data.name = 'A Pedra Fellwar'
SELECT code FROM sets WHERE releasedate = '2007-07-13'
SELECT basesetsize, code FROM sets WHERE block IN ('Masques', 'Mirage')
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT foreign_data.name, cards.type FROM cards INNER JOIN foreign_data ON foreign_data.uuid = cards.uuid WHERE cards.watermark = 'boros'
SELECT foreign_data.language, foreign_data.flavortext, cards.type FROM foreign_data INNER JOIN cards ON foreign_data.uuid = cards.uuid WHERE cards.watermark = 'colorpie'
SELECT cast(sum(CASE WHEN cards.convertedmanacost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN sets ON cards.cardkingdomid = sets.tcgplayergroupid WHERE cards.name = 'Abyssal Horror'
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT foreign_data.name, cards.type FROM cards INNER JOIN foreign_data ON foreign_data.uuid = cards.uuid WHERE cards.watermark = 'abzan'
SELECT foreign_data.language, cards.type FROM cards INNER JOIN foreign_data ON foreign_data.uuid = cards.uuid WHERE cards.watermark = 'azorius'
SELECT count(id) FROM cards WHERE artist = 'Aaron Miller' AND cardkingdomfoilid IS NOT NULL
SELECT count(id) FROM cards WHERE availability LIKE '%paper%' AND hand = '1+'
SELECT name FROM cards WHERE istextless = 0
SELECT convertedmanacost FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT count(id) FROM cards WHERE power = '*' OR power IS NULL AND bordercolor = 'white'
SELECT name FROM cards WHERE ispromo = 1 AND side IS NOT NULL GROUP BY name
SELECT subtypes, supertypes FROM cards WHERE name = 'Molimo, Maro-Sorcerer'
SELECT purchaseurls FROM cards WHERE promotypes = 'bundle'
SELECT count(id) FROM cards WHERE bordercolor = 'black' AND availability IN ('arena', 'mtgo')
SELECT name FROM cards WHERE name IN ('Serra Angel', 'Shrine Keeper') ORDER BY convertedmanacost DESC LIMIT 1
SELECT artist FROM cards WHERE flavorname = 'Battra, Dark Destroyer'
SELECT name FROM cards WHERE frameversion = '2003' ORDER BY convertedmanacost DESC LIMIT 3
SELECT set_translations.translation FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.id WHERE cards.name = 'Ancestor''s Chosen' AND set_translations.language = 'Italian'
SELECT count(set_translations.id) FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.setcode WHERE cards.name = 'Angel of Mercy'
SELECT cards.name FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.setcode WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT CASE WHEN count(set_translations.id) > 0 THEN 'Yes' ELSE 'No' END FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.setcode WHERE cards.name = 'Ancestor''s Chosen' AND set_translations.language = 'Korean'
SELECT count(cards.id) FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.id WHERE set_translations.translation = 'Hauptset Zehnte Edition' AND cards.artist = 'Adam Rex'
SELECT sets.basesetsize FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Eighth Edition' AND set_translations.language = 'Chinese Simplified'
SELECT CASE WHEN sum(CASE WHEN sets.mtgocode IS NOT NULL THEN 1 ELSE 0 END) THEN 'YES' ELSE 'NO' END FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Angel of Mercy'
SELECT DISTINCT sets.releasedate FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Ancestor''s Chosen'
SELECT sets.type FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT count(*) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.block = 'Ice Age' AND set_translations.language = 'Italian'
SELECT sets.isforeignonly FROM cards INNER JOIN sets ON cards.cardkingdomid = sets.id WHERE cards.name = 'Adarkar Valkyrie'
SELECT count(*) FROM set_translations INNER JOIN sets ON set_translations.setcode = sets.code WHERE set_translations.language = 'Italian' AND sets.basesetsize < 10
SELECT count(id) FROM cards WHERE name = 'Coldsnap' AND bordercolor = 'black'
SELECT cards.name FROM cards INNER JOIN sets ON cards.cardkingdomid = sets.mcmid WHERE sets.name = 'Coldsnap' ORDER BY cards.convertedmanacost DESC LIMIT 1
SELECT artist FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Coldsnap' AND artist IN ('Jeremy Jarvis', 'Aaron Miller', 'Chippy')
SELECT name, number FROM cards WHERE name = 'Coldsnap' AND number = 4
SELECT count(cards.id) FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Coldsnap' AND cards.convertedmanacost > 5 AND (cards.power = '*' OR cards.power IS NULL)
SELECT foreign_data.flavortext FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.name = 'Ancestor''s Chosen' AND foreign_data.language = 'Italian'
SELECT foreign_data.language FROM foreign_data INNER JOIN cards ON foreign_data.uuid = cards.uuid WHERE cards.name = 'Ancestor''s Chosen' AND foreign_data.flavortext IS NOT NULL
SELECT foreign_data.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'German' AND cards.name = 'Ancestor''s Chosen'
SELECT rulings.text FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode INNER JOIN rulings ON set_translations.id = rulings.id WHERE sets.name = 'Coldsnap' AND set_translations.language = 'Italian'
SELECT cards.name FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.setcode INNER JOIN sets ON set_translations.setcode = sets.code WHERE sets.name = 'Coldsnap' AND set_translations.language = 'Italian' ORDER BY cards.convertedmanacost DESC LIMIT 1
SELECT rulings.date FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Reminisce'
SELECT cast(sum(CASE WHEN cards.convertedmanacost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / sum(cards.convertedmanacost) FROM cards INNER JOIN sets ON cards.cardkingdomid = sets.mcmid WHERE sets.name = 'Coldsnap'
SELECT cast(sum(CASE WHEN cardkingdomfoilid IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN name = 'Coldsnap' THEN 1 ELSE 0 END) FROM cards
SELECT code FROM sets WHERE releasedate = '2017-07-14'
SELECT keyrunecode FROM sets WHERE code = 'PKHC'
SELECT mcmid FROM sets WHERE code = 'SS2'
SELECT mcmname FROM sets WHERE releasedate = '2017-06-09'
SELECT TYPE FROM sets WHERE name LIKE 'From the Vault: Lore'
SELECT parentcode FROM sets WHERE name = 'Commander 2014 Oversized'
SELECT text, hascontentwarning FROM cards WHERE artist = 'Jim Pavelec'
SELECT DISTINCT sets.releasedate FROM cards INNER JOIN sets ON cards.id = sets.id WHERE cards.name = 'Evacuation'
SELECT sets.basesetsize FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Rinascita di Alara'
SELECT DISTINCT sets.type FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Huitième édition'
SELECT set_translations.translation FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.id WHERE cards.name = 'Tendo Ice Bridge' AND set_translations.language = 'French'
SELECT count(set_translations.id) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Salvat 2011'
SELECT set_translations.language FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.setcode WHERE cards.name = 'Fellwar Stone' AND set_translations.language = 'Japanese'
SELECT cards.name FROM cards INNER JOIN sets ON cards.cardkingdomid = sets.id WHERE sets.name = 'Journey into Nyx Hero''s Path' ORDER BY cards.manacost DESC LIMIT 1
SELECT DISTINCT sets.releasedate FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Ola de frío'
SELECT sets.type FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Samite Pilgrim'
SELECT count(*) FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'World Championship Decks 2004' AND cards.convertedmanacost = '3'
SELECT set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Mirrodin' AND set_translations.language = 'Chinese Simplified'
SELECT cast(sum(CASE WHEN isnonfoilonly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN LANGUAGE = 'Japanese' THEN 1 ELSE 0 END) FROM SET_TRANSLATIONS
SELECT cast(sum(CASE WHEN isonlineonly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM set_translations INNER JOIN sets ON set_translations.setcode = sets.code WHERE set_translations.language = 'Portuguese (Brazil)'
SELECT DISTINCT availability FROM cards WHERE artist = 'Aleksi Briclot' AND istextless = 1
SELECT id FROM sets WHERE basesetsize = ( SELECT max(basesetsize) FROM sets )
SELECT artist FROM cards WHERE side IS NULL ORDER BY manacost DESC LIMIT 1
SELECT max(frameeffects) FROM cards WHERE cardkingdomfoilid IS NOT NULL OR cardkingdomid IS NOT NULL
SELECT count(id) FROM cards WHERE power IS NULL OR power = '*' AND hasfoil = 0 AND dueldeck = 'a'
SELECT name, id FROM sets WHERE TYPE = 'commander' ORDER BY totalsetsize DESC LIMIT 1
SELECT name FROM cards ORDER BY manacost DESC LIMIT 10
SELECT min(cards.originalreleasedate), legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.rarity = 'mythic' AND legalities.status = 'Legal'
SELECT count(*) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'French' AND cards.artist = 'Volkan Baga'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.name = 'Abundance' AND cards.types = 'Enchantment' AND cards.rarity = 'rare' AND legalities.status = 'Legal'
SELECT format, name FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' GROUP BY format, name ORDER BY count(status) DESC LIMIT 1
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Battlebond'
SELECT cards.artist, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid ORDER BY cards.artist LIMIT 1
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.frameversion = 1997 AND cards.artist = 'D. Alexander Gregory' AND legalities.format = 'legacy' AND (cards.hascontentwarning = 1 OR cards.name = 'Wizards of the Coast')
SELECT cards.name, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' AND cards.edhrecrank = 1
SELECT cast(sum(CASE WHEN strftime('%Y', releasedate) BETWEEN '2012' AND '2015' THEN 1 ELSE 0 END) AS REAL) / count(id), foreign_data.language FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid GROUP BY foreign_data.language
SELECT artist FROM cards WHERE bordercolor = 'black' AND availability = 'arena'
SELECT cards.uuid FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status IN ('Restricted', 'Banned') AND legalities.format = 'oldschool'
SELECT count(id) FROM cards WHERE artist = 'Matthew D. Wilson' AND availability = 'paper'
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.artist = 'Kev Walker' ORDER BY rulings.date DESC LIMIT 1
SELECT cards.name, legalities.format FROM sets INNER JOIN cards ON sets.code = cards.setcode INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE sets.name = 'Hour of Devastation' AND legalities.status = 'Legal'
SELECT DISTINCT sets.name FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language != 'Japanese' AND set_translations.language = 'Korean'
SELECT cards.frameversion, cards.id FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.artist = 'Allen Williams' AND legalities.status = 'Banned'
SELECT displayname FROM users WHERE displayname = 'Harlan' OR displayname = 'Jarrod Dixon' ORDER BY reputation DESC LIMIT 1
SELECT DISTINCT users.displayname FROM users INNER JOIN posthistory ON users.id = posthistory.userid WHERE strftime('%Y', posthistory.creationdate) = '2014'
SELECT count(id) FROM users WHERE lastaccessdate > '2014-09-01 00:00:00'
SELECT displayname FROM users ORDER BY views DESC LIMIT 1
SELECT count(id) FROM users WHERE upvotes > 100 AND downvotes > 1
SELECT count(id) FROM users WHERE strftime('%Y', creationdate) > '2013' AND views > 10
SELECT count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT posts.title FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT ownerdisplayname FROM posts WHERE title = 'Eliciting priors from experts'
SELECT title FROM posts WHERE ownerdisplayname = 'csgillespie' ORDER BY viewcount DESC LIMIT 1
SELECT users.displayname FROM users INNER JOIN posts ON users.id = posts.owneruserid ORDER BY posts.favoritecount DESC LIMIT 1
SELECT sum(posts.commentcount) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT answercount FROM posts WHERE ownerdisplayname = 'csgillespie' ORDER BY answercount DESC LIMIT 1
SELECT lasteditoruserid FROM posts WHERE title = 'Examples for teaching: Correlation does not mean causation'
SELECT count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie' AND posts.parentid IS NULL
SELECT ownerdisplayname FROM posts WHERE closeddate IS NOT NULL
SELECT count(*) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.age > 65 AND posts.score > 19
SELECT users.location FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.title = 'Eliciting priors from experts'
SELECT posts.body FROM posts INNER JOIN tags ON posts.id = tags.excerptpostid WHERE tags.tagname = 'bayesian'
SELECT posts.body FROM tags INNER JOIN posts ON tags.id = posts.id ORDER BY tags.count DESC LIMIT 1
SELECT count(badges.name) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'csgillespie'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'csgillespie'
SELECT count(id) FROM badges WHERE userid = ( SELECT id FROM users WHERE displayname = 'csgillespie' AND strftime('%Y', date) = '2011' )
SELECT users.displayname FROM users INNER JOIN badges ON users.id = badges.userid GROUP BY users.id ORDER BY count(badges.id) DESC LIMIT 1
SELECT avg(posts.score) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT cast(count(badges.id) AS REAL) / count(DISTINCT users.displayname) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.views > 200
SELECT cast(sum(CASE WHEN users.age > 65 THEN 1 ELSE 0 END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.score > 20
SELECT sum(bountyamount) FROM votes WHERE userid = 58 AND creationdate = '2010-07-19'
SELECT creationdate FROM votes GROUP BY creationdate ORDER BY count(id) DESC LIMIT 1
SELECT count(id) FROM badges WHERE name = 'Revival'
SELECT posts.title FROM comments INNER JOIN posts ON comments.postid = posts.id ORDER BY comments.score DESC LIMIT 1
SELECT commentcount FROM posts WHERE viewcount = 1910
SELECT favoritecount FROM posts WHERE id IN ( SELECT postid FROM posthistory WHERE userid = 3025 AND creationdate = '2014-04-23 20:29:39' )
SELECT body FROM posts WHERE id = 107829 AND commentcount = 1
SELECT closeddate IS NULL FROM posts WHERE id = 23853 AND creaiondate = '2013-07-12 09:08:18.0'
SELECT users.reputation FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.id = 65041
SELECT count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'Tiago Pasqualini'
SELECT users.displayname FROM users INNER JOIN votes ON users.id = votes.userid WHERE votes.id = 6347
SELECT votes.votetypeid FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE posts.title LIKE '%data visualization%'
SELECT badges.name FROM badges INNER JOIN users ON badges.userid = users.id WHERE users.displayname = 'DatEpicCoderGuyWhoPrograms'
SELECT cast(count(DISTINCT votes.postid) AS REAL) / count(DISTINCT votes.id) FROM users INNER JOIN votes ON users.id = votes.userid WHERE users.id = 24
SELECT viewcount FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT text FROM comments WHERE score = 17
SELECT displayname FROM users WHERE websiteurl = 'http://stackoverflow.com'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'SilentGhost'
SELECT users.displayname FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.text = 'thank you user93!'
SELECT comments.text FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.displayname = 'A Lion'
SELECT users.displayname, users.reputation FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN posts ON posthistory.postid = posts.id WHERE posts.title = 'Understanding what Dassault iSight is doing?'
SELECT posthistory.text FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'How does gentle boosting differ from AdaBoost?'
SELECT users.displayname FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name = 'Necromancer' LIMIT 10
SELECT posthistory.userdisplayname FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'Open source tools for visualizing multi-dimensional data'
SELECT posts.title FROM users INNER JOIN posts ON users.id = posts.lasteditoruserid WHERE users.displayname = 'Vebjorn Ljosa'
SELECT sum(posts.score), users.websiteurl FROM users INNER JOIN posts ON users.id = posts.lasteditoruserid WHERE users.displayname = 'Yevgeny'
SELECT posthistory.text FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posthistory.comment = 'Why square the difference instead of taking the absolute value in standard deviation?'
SELECT sum(votes.bountyamount) FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE posts.title LIKE '%data%'
SELECT users.displayname FROM users INNER JOIN votes ON users.id = votes.userid INNER JOIN posts ON votes.postid = posts.id WHERE votes.bountyamount = 50
SELECT avg(posts.viewcount), tags.tagname, comments.text FROM tags INNER JOIN posts ON tags.wikipostid = posts.id INNER JOIN comments ON posts.id = comments.postid WHERE tags.tagname = 'humor'
SELECT count(id) FROM comments WHERE userid = 13
SELECT id FROM users ORDER BY reputation DESC LIMIT 1
SELECT id FROM users ORDER BY views LIMIT 1
SELECT count(users.id) FROM badges INNER JOIN users ON badges.userid = users.id WHERE strftime('%Y', badges.date) = '2011' AND badges.name = 'Supporter'
SELECT count(id) FROM badges WHERE name IN ( SELECT name FROM badges GROUP BY name HAVING count(name) > 5 )
SELECT count(DISTINCT badges.userid) FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name IN ('Teacher', 'Supporter') AND users.location = 'New York'
SELECT users.displayname, users.reputation FROM users INNER JOIN posthistory ON users.id = posthistory.userid WHERE posthistory.postid = 1
SELECT DISTINCT users.id FROM users INNER JOIN posthistory ON users.id = posthistory.userid WHERE users.views >= 1000
SELECT badges.name FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid INNER JOIN badges ON posthistory.userid = badges.userid GROUP BY badges.name ORDER BY count(posthistory.postid) DESC LIMIT 1
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Teacher' AND users.location = 'India'
SELECT cast(sum(CASE WHEN strftime('%Y', badges.date) = '2010' THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN strftime('%Y', badges.date) = '2011' THEN 1 ELSE 0 END) FROM badges INNER JOIN users ON badges.userid = users.id
SELECT posthistorytypeid, count(DISTINCT userid) FROM posthistory WHERE postid = 3720 GROUP BY posthistorytypeid
SELECT postlinks.relatedpostid, posts.viewcount FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid WHERE postlinks.postid = 61217
SELECT score, linktypeid FROM postlinks WHERE postid = 395
SELECT id, userid FROM posts WHERE score > 60
SELECT sum(favoritecount) FROM posts WHERE creaiondate LIKE '2011%' AND owneruserid = 686
SELECT cast(sum(upvotes) AS REAL) / count(id), cast(sum(age) AS REAL) / count(id) FROM users
SELECT count(userid) FROM badges WHERE name = 'Announcer'
SELECT name FROM badges WHERE `date` = '2010-07-19 19:39:08'
SELECT count(id) FROM comments WHERE score > 60
SELECT text FROM comments WHERE creationdate = '2010-07-19 19:16:14.0'
SELECT count(id) FROM posts WHERE score = 10
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.reputation = ( SELECT max(reputation) FROM users )
SELECT users.reputation FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.date = '2010-07-19 19:39:08.0'
SELECT badges.name FROM badges INNER JOIN users ON badges.userid = users.id WHERE users.displayname = 'Pierre'
SELECT badges.date FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.location = 'Rochester, NY'
SELECT cast(sum(CASE WHEN badges.name = 'Teacher' THEN 1 ELSE 0 END) AS REAL) * 100 / count(badges.userid) FROM badges INNER JOIN users ON badges.userid = users.id
SELECT cast(sum(CASE WHEN users.age >= 13 AND users.age <= 18 THEN 1 ELSE 0 END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Organizer'
SELECT score FROM posts WHERE creaiondate = '2010-07-19 19:19:56.0'
SELECT text FROM comments WHERE creationdate = '2010-07-19 19:37:33.0'
SELECT users.age FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.location = 'Vienna, Austria'
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Supporter' AND users.age >= 19 AND users.age <= 65
SELECT users.views FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.date = '2010-07-19 19:39:08.0'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.reputation = ( SELECT min(reputation) FROM users )
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'Sharpie'
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Supporter' AND users.age > 65
SELECT displayname FROM users WHERE id = 30
SELECT count(id) FROM users WHERE LOCATION = 'New York'
SELECT count(id) FROM votes WHERE strftime('%Y', creationdate) = '2010'
SELECT count(id) FROM users WHERE age >= 19 AND age <= 65
SELECT displayname FROM users ORDER BY views DESC LIMIT 1
SELECT cast(sum(CASE WHEN strftime('%Y', creationdate) = '2010' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN strftime('%Y', creationdate) = '2011' THEN 1 ELSE 0 END) FROM votes
SELECT tags.tagname FROM users INNER JOIN posts ON users.id = posts.owneruserid INNER JOIN tags ON posts.id = tags.excerptpostid WHERE users.displayname = 'John Stauffer'
SELECT count(id) FROM posts WHERE ownerdisplayname = 'Daniel Vassallo'
SELECT sum(votes.votetypeid) FROM users INNER JOIN votes ON users.id = votes.userid WHERE users.displayname = 'Harlan'
SELECT posts.title FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'slashnick' ORDER BY posts.answercount DESC LIMIT 1
SELECT title FROM posts WHERE ownerdisplayname = 'Harvey Motulsky' OR ownerdisplayname = 'Noah Snyder' ORDER BY viewcount DESC LIMIT 1
SELECT count(DISTINCT posts.id) FROM users INNER JOIN votes ON users.id = votes.userid INNER JOIN posts ON votes.postid = posts.id WHERE users.displayname = 'Matt Parker' AND votes.postid > 4
SELECT count(comments.id) FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.displayname = 'Neil McGuigan' AND comments.score < 60
SELECT tags.tagname FROM users INNER JOIN posts ON users.id = posts.owneruserid INNER JOIN tags ON posts.id = tags.excerptpostid WHERE users.displayname = 'Mark Meckes'
SELECT users.displayname FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name = 'Organizer'
SELECT cast(sum(CASE WHEN tags.tagname = 'r' THEN 1 ELSE 0 END) AS REAL) * 100 / count(tags.tagname) FROM posts INNER JOIN tags ON posts.id = tags.excerptpostid INNER JOIN users ON posts.owneruserid = users.id WHERE users.displayname = 'Community'
SELECT sum(CASE WHEN users.displayname = 'Mornington' THEN posts.viewcount ELSE 0 END) - sum(CASE WHEN users.displayname = 'Amos' THEN posts.viewcount ELSE 0 END) FROM users INNER JOIN posts ON users.id = posts.owneruserid
SELECT count(users.id) FROM badges INNER JOIN users ON badges.userid = users.id WHERE strftime('%Y', badges.date) = '2014' AND badges.name = 'Commentator'
SELECT count(id) FROM posts WHERE creationdate LIKE '2010-07-21%'
SELECT displayname, age FROM users WHERE views = ( SELECT max(views) FROM users )
SELECT lasteditdate, lasteditoruserid FROM posts WHERE title = 'Detecting a given face in a database of facial images'
SELECT count(id) FROM comments WHERE score < 60 AND userid = 13
SELECT DISTINCT posts.title, users.displayname FROM users INNER JOIN comments ON users.id = comments.userid INNER JOIN posts ON comments.postid = posts.id WHERE comments.score > 60
SELECT DISTINCT badges.name FROM badges INNER JOIN users ON badges.userid = users.id WHERE strftime('%Y', badges.date) = '2011' AND users.location = 'North Pole'
SELECT users.displayname, users.websiteurl FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.favoritecount > 150
SELECT count(posthistory.postid), posts.lasteditdate FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'What is the best introductory Bayesian statistics textbook?'
SELECT users.lastaccessdate, users.location FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Outlier'
SELECT title FROM posts WHERE title = 'How to tell if something happened in a data set which monitors a value over time'
SELECT DISTINCT posthistory.postid, badges.name FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN badges ON posthistory.userid = badges.userid WHERE users.displayname = 'Samuel' AND strftime('%Y', posthistory.creationdate) = '2013'
SELECT ownerdisplayname FROM posts ORDER BY viewcount DESC LIMIT 1
SELECT users.displayname, users.location FROM tags INNER JOIN posts ON tags.id = posts.id INNER JOIN users ON posts.owneruserid = users.id WHERE tags.tagname = 'hypothesis-testing'
SELECT postlinks.relatedpostid, postlinks.linktypeid FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid WHERE posts.title = 'What are principal component scores?'
SELECT parentid FROM posts WHERE parentid IS NOT NULL ORDER BY score DESC LIMIT 1
SELECT users.displayname, users.websiteurl FROM votes INNER JOIN users ON votes.userid = users.id WHERE votes.votetypeid = 8 ORDER BY votes.bountyamount DESC LIMIT 1
SELECT title FROM posts ORDER BY viewcount DESC LIMIT 5
SELECT count(tags.tagname) FROM posts INNER JOIN tags ON posts.id = tags.excerptpostid WHERE posts.posttypeid = 1 AND tags.count BETWEEN 5000 AND 7000
SELECT owneruserid FROM posts ORDER BY favoritecount DESC LIMIT 1
SELECT age FROM users ORDER BY reputation DESC LIMIT 1
SELECT count(id) FROM votes WHERE strftime('%Y', creationdate) = '2011' AND bountyamount = 50
SELECT id FROM users WHERE age = ( SELECT min(age) FROM users )
SELECT posts.score FROM tags INNER JOIN posts ON tags.id = posts.id ORDER BY tags.count DESC LIMIT 1
SELECT cast(count(postlinks.id) AS REAL) / 12 FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid WHERE strftime('%Y', posts.creaiondate) = '2010' AND posts.answercount <= 2
SELECT votes.postid FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE votes.userid = 1465 ORDER BY posts.favoritecount DESC LIMIT 1
SELECT posts.title FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid ORDER BY postlinks.creationdate ASC LIMIT 1
SELECT users.displayname FROM badges INNER JOIN users ON badges.userid = users.id GROUP BY users.displayname ORDER BY count(badges.name) DESC LIMIT 1
SELECT votes.creationdate FROM users INNER JOIN votes ON users.id = votes.userid WHERE users.displayname = 'chl' ORDER BY votes.creationdate LIMIT 1
SELECT min(users.creationdate) FROM users INNER JOIN posts ON users.id = posts.owneruserid
SELECT users.displayname FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name = 'Autobiographer' ORDER BY badges.date ASC LIMIT 1
SELECT count(users.id) FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN posts ON posthistory.postid = posts.id WHERE users.location = 'United Kingdom' AND posts.favoritecount >= 4
SELECT cast(count(DISTINCT votes.postid) AS REAL) / count(DISTINCT users.id) FROM users INNER JOIN votes ON users.id = votes.userid ORDER BY users.age DESC LIMIT 1
SELECT displayname FROM users ORDER BY reputation DESC LIMIT 1
SELECT count(id) FROM users WHERE reputation > 2000 AND views > 1000
SELECT displayname FROM users WHERE age >= 19 AND age <= 65
SELECT count(posts.id) FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN posts ON posthistory.postid = posts.id WHERE users.displayname = 'Jay Stevens' AND strftime('%Y', posthistory.creationdate) = '2010'
SELECT id, title FROM posts WHERE ownerdisplayname = 'Harvey Motulsky' ORDER BY viewcount DESC LIMIT 1
SELECT title, ownerdisplayname FROM posts ORDER BY score DESC LIMIT 1
SELECT avg(score) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'Stephen Turner'
SELECT DISTINCT users.displayname FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN posts ON posthistory.postid = posts.id WHERE strftime('%Y', posts.creaiondate) = '2011' AND posts.viewcount > 20000
SELECT id, ownerdisplayname FROM posts WHERE strftime('%Y', creaiondate) = '2010' ORDER BY favoritecount DESC LIMIT 1
SELECT cast(sum(CASE WHEN users.reputation > 1000 THEN 1 ELSE 0 END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN posthistory ON users.id = posthistory.userid WHERE strftime('%Y', posthistory.creationdate) = '2011'
SELECT cast(sum(CASE WHEN age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM users
SELECT users.displayname, posthistory.text FROM users INNER JOIN posthistory ON users.id = posthistory.userid WHERE posthistory.text = 'Computer Game Datasets'
SELECT count(id) FROM posts WHERE viewcount > ( SELECT avg(viewcount) FROM posts )
SELECT commentcount FROM posts WHERE id = ( SELECT id FROM posts ORDER BY score DESC LIMIT 1 )
SELECT count(id) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT users.displayname, users.location FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.id = 183 ORDER BY posts.lasteditdate DESC LIMIT 1
SELECT badges.name FROM badges INNER JOIN users ON badges.userid = users.id WHERE users.displayname = 'Emmett' ORDER BY badges.date DESC LIMIT 1
SELECT count(id) FROM users WHERE age >= 19 AND age <= 65 AND upvotes > 5000
SELECT strftime('%J', badges.date) - strftime('%J', users.creationdate) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'Zolomon'
SELECT count(posts.id), count(comments.id) FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN posts ON posthistory.postid = posts.id ORDER BY posthistory.creationdate DESC LIMIT 1
SELECT posthistory.text, posthistory.userdisplayname FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'Analysing wind data with R' ORDER BY posthistory.creationdate DESC LIMIT 1
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Citizen Patrol'
SELECT count(id) FROM tags WHERE tagname = 'careers'
SELECT reputation, views FROM users WHERE displayname = 'Jarrod Dixon'
SELECT answercount, commentcount FROM posts WHERE title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE displayname = 'IrishStat'
SELECT count(id) FROM votes WHERE bountyamount > 30
SELECT cast(sum(CASE WHEN posts.score > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN posts ON posthistory.postid = posts.id WHERE users.reputation = ( SELECT max(reputation) FROM users )
SELECT count(id) FROM posts WHERE score < 20
SELECT count(id) FROM tags WHERE id < 15 AND count <= 20
SELECT excerptpostid, wikipostid FROM tags WHERE tagname = 'sample'
SELECT users.reputation, users.upvotes FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.text = 'fine, you win :)'
SELECT posthistory.text FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'How can I adapt ANOVA for binary data?'
SELECT text FROM comments WHERE postid IN ( SELECT id FROM posts WHERE viewcount BETWEEN 100 AND 150 ) ORDER BY score DESC LIMIT 1
SELECT creationdate, age FROM users WHERE websiteurl LIKE '%http://%'
SELECT count(id) FROM posts WHERE viewcount < 5 AND score = 0
SELECT count(score) FROM posts WHERE commentcount = 1 AND score = 0
SELECT count(DISTINCT users.age) FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.age > 40 AND comments.score = 0
SELECT posts.id, comments.text FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid INNER JOIN comments ON posthistory.id = comments.postid WHERE posts.title = 'Group differences on a five point Likert item'
SELECT users.upvotes FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.text = 'R is also lazy evaluated.'
SELECT text FROM comments WHERE userid = ( SELECT id FROM users WHERE displayname = 'Harvey Motulsky' )
SELECT users.displayname FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.score BETWEEN 1 AND 5 AND users.downvotes = 0
SELECT cast(sum(CASE WHEN users.upvotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.score BETWEEN 5 AND 10
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = '3-D Man'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Super Strength'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Super Strength' AND superhero.height_cm > 200
SELECT superhero.full_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id GROUP BY superhero.full_name HAVING count(superhero.full_name) > 15
SELECT count(superhero.id) FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id WHERE superhero.superhero_name = 'Apocalypse'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superpower.power_name = 'Agility' AND colour.colour = 'Blue'
SELECT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id INNER JOIN superhero_power ON superhero.id = superhero_power.hero_id INNER JOIN power ON superhero_power.power_id = power.id WHERE power.power_name = 'Agility' AND colour.colour = 'Blue' AND superhero.hair_colour_id = colour.id
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT superhero.full_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE publisher.publisher_name = 'Marvel Comics' ORDER BY superhero.height_cm DESC LIMIT 1
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.superhero_name = 'Sauron'
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE publisher.publisher_name = 'Marvel Comics' AND colour.colour = 'Blue'
SELECT avg(superhero.height_cm) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT cast(count(CASE WHEN superpower.power_name = 'Super Strength' THEN superhero.id ELSE NULL END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'DC Comics'
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' ORDER BY hero_attribute.attribute_value ASC LIMIT 1
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE publisher.publisher_name = 'Marvel Comics' AND colour.colour = 'Gold'
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.superhero_name = 'Blue Beetle II'
SELECT count(*) FROM superhero INNER JOIN colour ON superhero.hair_colour_id = colour.id WHERE colour.colour = 'Blond'
SELECT superhero.full_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Intelligence' ORDER BY hero_attribute.attribute_value LIMIT 1
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.superhero_name = 'Copycat'
SELECT count(*) FROM hero_attribute INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Durability' AND hero_attribute.attribute_value < 50
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Death Touch'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE attribute.attribute_name = 'Strength' AND hero_attribute.attribute_value = 100 AND gender.gender = 'Female'
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id GROUP BY superhero.superhero_name ORDER BY count(superhero.superhero_name) DESC LIMIT 1
SELECT count(superhero.id) FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Vampire'
SELECT cast(sum(CASE WHEN alignment.alignment = 'Bad' THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id), count(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN 1 ELSE NULL END) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN alignment ON superhero.alignment_id = alignment.id
SELECT sum(CASE WHEN publisher.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) - sum(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id
SELECT id FROM publisher WHERE publisher_name = 'Star Trek'
SELECT avg(hero_attribute.attribute_value) FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id
SELECT count(*) FROM superhero WHERE full_name IS NULL
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.id = 75
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Deathlok'
SELECT avg(superhero.weight_kg) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Female'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Male' LIMIT 5
SELECT superhero.superhero_name FROM race INNER JOIN superhero ON race.id = superhero.race_id WHERE race.race = 'Alien'
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 AND eye_colour_id = 1
SELECT superpower.power_name FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE hero_power.hero_id = 56
SELECT full_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Demi-God' LIMIT 5
SELECT count(*) FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Bad'
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.weight_kg = 169
SELECT colour.colour FROM superhero INNER JOIN race ON superhero.race_id = race.id INNER JOIN colour ON superhero.hair_colour_id = colour.id WHERE race.race = 'Human' AND superhero.height_cm = 185
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id ORDER BY superhero.weight_kg DESC LIMIT 1
SELECT cast(sum(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE superhero.height_cm BETWEEN 150 AND 180
SELECT full_name FROM superhero WHERE weight_kg > ( SELECT avg(weight_kg) * 0.79 FROM superhero )
SELECT power_name FROM superpower GROUP BY power_name ORDER BY count(power_name) DESC LIMIT 1
SELECT hero_attribute.attribute_value FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id WHERE superhero.superhero_name = 'Abomination'
SELECT superpower.power_name FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE hero_power.hero_id = 1
SELECT count(hero_power.hero_id) FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Stealth'
SELECT superhero.full_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Strength' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT avg(superhero.id) FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id WHERE colour.id = 1
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Dark Horse Comics'
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE attribute.attribute_name = 'Durability' AND publisher.publisher_name = 'Dark Horse Comics' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.full_name = 'Abraham Sapien'
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Flight'
SELECT superhero.eye_colour_id, superhero.hair_colour_id, superhero.skin_colour_id FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE publisher.publisher_name = 'Dark Horse Comics' AND gender.gender = 'Female'
SELECT superhero.superhero_name, publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.hair_colour_id = superhero.skin_colour_id AND superhero.eye_colour_id = superhero.hair_colour_id
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.superhero_name = 'A-Bomb'
SELECT cast(sum(CASE WHEN gender.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN colour ON superhero.hair_colour_id = colour.id WHERE colour.colour = 'Blue'
SELECT superhero.superhero_name, race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.full_name = 'Charles Chandler'
SELECT gender.gender FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id WHERE superhero.superhero_name = 'Agent 13'
SELECT superhero.full_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Adaptation'
SELECT count(hero_power.power_id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id WHERE superhero.superhero_name = 'Amazo'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.full_name = 'Hunter Zolomon'
SELECT superhero.height_cm FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Amber'
SELECT superhero.superhero_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id AND superhero.hair_colour_id = colour.id WHERE colour.colour = 'Black'
SELECT superhero.eye_colour_id FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id WHERE colour.colour = 'Gold'
SELECT superhero.full_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Vampire'
SELECT superhero.superhero_name FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT count(hero_attribute.hero_id) FROM attribute INNER JOIN hero_attribute ON attribute.id = hero_attribute.attribute_id WHERE attribute.attribute_name = 'Strength' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT race.race, alignment.alignment FROM superhero INNER JOIN race ON superhero.race_id = race.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE superhero.superhero_name = 'Cameron Hicks'
SELECT cast(sum(CASE WHEN gender.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT avg(superhero.weight_kg) FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Alien'
SELECT sum(CASE WHEN superhero.full_name = 'Emil Blonsky' THEN superhero.weight_kg ELSE 0 END) - sum(CASE WHEN superhero.full_name = 'Charles Chandler' THEN superhero.weight_kg ELSE 0 END) FROM superhero
SELECT avg(height_cm) FROM superhero
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Abomination'
SELECT count(superhero.id) FROM superhero INNER JOIN race ON superhero.race_id = race.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE race.race = 'God/Eternal' AND gender.gender = 'Male'
SELECT superhero.superhero_name FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT count(id) FROM superhero WHERE alignment_id = 3
SELECT attribute.attribute_name, hero_attribute.attribute_value FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE superhero.superhero_name = '3-D Man'
SELECT superhero.superhero_name FROM superhero INNER JOIN colour ON superhero.hair_colour_id = colour.id WHERE superhero.eye_colour_id = 7 AND colour.colour = 'Brown'
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.superhero_name IN ('Hawkman', 'Karate Kid', 'Speedy')
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.id = 1
SELECT cast(sum(CASE WHEN superhero.eye_colour_id = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.eye_colour_id) FROM superhero INNER JOIN race ON superhero.race_id = race.id
SELECT cast(sum(iif(gender.gender = 'Male', 1, 0)) AS REAL) / sum(iif(gender.gender = 'Female', 1, 0)) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT id FROM superpower WHERE power_name = 'Cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = 0 OR weight_kg IS NULL
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.full_name = 'Karen Beecher-Duncan'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.full_name = 'Helen Parr'
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.weight_kg = 108 AND superhero.height_cm = 188
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.id = 38
SELECT race.race FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id INNER JOIN race ON superhero.race_id = race.id ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT superhero.alignment_id, superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Atom IV'
SELECT DISTINCT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue' LIMIT 5
SELECT avg(hero_attribute.attribute_value) FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id WHERE alignment.alignment = 'Neutral'
SELECT DISTINCT superhero.skin_colour_id FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id WHERE hero_attribute.attribute_value = 100
SELECT count(superhero.id) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE gender.gender = 'Female' AND alignment.id = 1
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id WHERE hero_attribute.attribute_value BETWEEN 75 AND 80
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id INNER JOIN colour ON superhero.hair_colour_id = colour.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Male' AND colour.colour = 'Blue'
SELECT cast(sum(CASE WHEN gender.id = 2 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.id = 2
SELECT sum(CASE WHEN superhero.eye_colour_id = 7 THEN 1 ELSE 0 END) - sum(CASE WHEN superhero.eye_colour_id = 1 THEN 1 ELSE 0 END) FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.weight_kg = 0
SELECT hero_attribute.attribute_value FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Strength' AND superhero.superhero_name = 'Hulk'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Ajax'
SELECT count(superhero.id) FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE colour.colour = 'Green' AND alignment.alignment = 'Bad'
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Female' AND publisher.publisher_name = 'Marvel Comics'
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Wind Control' ORDER BY superhero.superhero_name ASC
SELECT superhero.gender_id FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Phoenix Force'
SELECT superhero.superhero_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'DC Comics' ORDER BY superhero.weight_kg DESC LIMIT 1
SELECT avg(superhero.height_cm) FROM race INNER JOIN superhero ON race.id = superhero.race_id INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE race.race <> 'Human' AND publisher.publisher_name = 'Dark Horse Comics'
SELECT superhero.superhero_name FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' AND hero_attribute.attribute_value = 100 ORDER BY superhero.weight_kg ASC LIMIT 1
SELECT sum(CASE WHEN publisher.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) - sum(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id
SELECT attribute.attribute_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE superhero.superhero_name = 'Black Panther' ORDER BY hero_attribute.attribute_value LIMIT 1
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.superhero_name = 'Abomination'
SELECT full_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT cast(sum(CASE WHEN gender.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE publisher.publisher_name = 'George Lucas'
SELECT cast(sum(CASE WHEN superhero.alignment_id = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT count(*) FROM superhero WHERE full_name LIKE 'John%'
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.weight_kg < 100 AND colour.colour = 'Brown'
SELECT hero_attribute.attribute_value FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id WHERE superhero.superhero_name = 'Aquababy'
SELECT superhero.weight_kg, race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.id = 40
SELECT avg(superhero.height_cm) FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT hero_power.hero_id FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Intelligence'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.superhero_name = 'Blackwulf'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id GROUP BY superpower.power_name HAVING cast(sum(superhero.height_cm) AS REAL) * 100 / count(superhero.id) > 80
SELECT DISTINCT drivers.driverref FROM qualifying INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE qualifying.raceid = 18 ORDER BY qualifying.q1 DESC LIMIT 5
SELECT drivers.surname FROM qualifying INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE qualifying.raceid = 19 ORDER BY qualifying.q2 LIMIT 1
SELECT DISTINCT races.year FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.location = 'Shanghai'
SELECT circuits.url FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.name = 'Circuit de Barcelona-Catalunya'
SELECT DISTINCT races.name FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.country = 'Germany'
SELECT DISTINCT RESULTS.position FROM constructors INNER JOIN RESULTS ON constructors.constructorid = RESULTS.constructorid WHERE constructors.name = 'Renault'
SELECT count(*) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2010 AND circuits.country IN ('Asia', 'Europe') AND races.name = 'Grand Prix'
SELECT DISTINCT races.name FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.country = 'Spain'
SELECT circuits.lat, circuits.lng FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'Australian Grand Prix'
SELECT url FROM circuits WHERE circuitref = 'sepang'
SELECT DISTINCT races.time FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.circuitref = 'sepang'
SELECT circuits.lat, circuits.lng FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'Abu Dhabi Grand Prix'
SELECT DISTINCT circuits.country FROM circuits INNER JOIN constructorresults ON circuits.circuitid = constructorresults.raceid WHERE constructorresults.raceid = 24 AND constructorresults.points = 1
SELECT qualifying.q1 FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE drivers.forename = 'Bruno' AND drivers.surname = 'Senna' AND qualifying.raceid = 354
SELECT drivers.nationality FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.raceid = 355 AND qualifying.q2 = '0:01:40'
SELECT RESULTS.number FROM RESULTS INNER JOIN qualifying ON RESULTS.driverid = qualifying.driverid WHERE qualifying.raceid = 903 AND RESULTS.time = '0:01:54'
SELECT count(drivers.driverid) FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.name = 'Bahrain Grand Prix' AND RESULTS.time IS NOT NULL
SELECT DISTINCT seasons.year FROM races INNER JOIN seasons ON races.year = seasons.year WHERE races.raceid = 901
SELECT count(results.driverid) FROM results INNER JOIN races ON results.raceid = races.raceid WHERE races.date = '2015-11-29'
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid WHERE RESULTS.time IS NOT NULL ORDER BY drivers.dob ASC LIMIT 1
SELECT drivers.url FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid WHERE laptimes.raceid = 161 AND laptimes.time = '0:01:27'
SELECT drivers.driverref FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE RESULTS.raceid = 933 ORDER BY RESULTS.fastestlapspeed DESC LIMIT 1
SELECT circuits.lat, circuits.lng FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'Malaysian Grand Prix'
SELECT DISTINCT constructors.url FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructorresults.raceid = 9 ORDER BY constructorresults.points DESC LIMIT 1
SELECT qualifying.q1 FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE drivers.forename = 'Lucas' AND drivers.surname = 'Di Grassi' AND qualifying.raceid = 345
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.raceid = 347 AND qualifying.q2 = '0:01:15'
SELECT drivers.code FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.q3 = '0:01:33' AND qualifying.raceid = 45
SELECT RESULTS.time FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE drivers.forename = 'Bruce' AND drivers.surname = 'McLaren' AND RESULTS.raceid = 743
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.name = 'San Marino Grand Prix' AND results.position = 2 AND races.year = 2006
SELECT DISTINCT seasons.year FROM races INNER JOIN seasons ON races.year = seasons.year WHERE races.raceid = 901
SELECT count(results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2015 AND races.date = '2015-11-29'
SELECT drivers.driverref FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid WHERE RESULTS.raceid = 872 ORDER BY drivers.dob DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE laptimes.raceid = 348 ORDER BY laptimes.time ASC LIMIT 1
SELECT DISTINCT drivers.nationality FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 348 ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT cast((results.fastestlapspeed - ( SELECT fastestlapspeed FROM RESULTS WHERE raceid = 854 )) AS REAL) * 100 / ( SELECT fastestlapspeed FROM RESULTS WHERE raceid = 853 ) FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE drivers.forename = 'Paul' AND drivers.surname = 'Di Resta' AND RESULTS.raceid = 853
SELECT cast(sum(CASE WHEN races.date = '1983-07-16' THEN 1 ELSE 0 END) AS REAL) * 100 / count(results.driverid) FROM results INNER JOIN races ON results.raceid = races.raceid
SELECT min(YEAR) FROM races WHERE name = 'Singapore Grand Prix'
SELECT count(raceid) FROM races WHERE YEAR = 2005 ORDER BY raceid DESC
SELECT DISTINCT races.name FROM races INNER JOIN seasons ON races.year = seasons.year WHERE strftime('%Y-%m', races.date) = strftime('%Y-%m', ( SELECT min(date) FROM races ))
SELECT name, date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(raceid) DESC LIMIT 1
SELECT name FROM races WHERE YEAR != 2000 AND YEAR != 2017
SELECT circuits.country, circuits.location FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'European Grand Prix' ORDER BY races.year LIMIT 1
SELECT seasons.year FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid INNER JOIN seasons ON races.year = seasons.year WHERE circuits.name = 'Brands Hatch' AND races.name = 'British Grand Prix' ORDER BY seasons.year DESC LIMIT 1
SELECT count(seasons.year) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid INNER JOIN seasons ON races.year = seasons.year WHERE circuits.name = 'Silverstone Circuit' AND races.name = 'British Grand Prix' AND circuits.country = 'United Kingdom'
SELECT DISTINCT RESULTS.driverid FROM RESULTS INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.name = 'Singapore Grand Prix' AND RESULTS.position = 1
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY results.points DESC LIMIT 1
SELECT drivers.forename, drivers.surname, driverstandings.points FROM races INNER JOIN driverstandings ON races.raceid = driverstandings.raceid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid WHERE races.name = 'Chinese Grand Prix' AND races.year = 2017 ORDER BY driverstandings.points DESC LIMIT 3
SELECT laptimes.time, drivers.forename, drivers.surname FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid ORDER BY laptimes.time ASC LIMIT 1
SELECT avg(laptimes.time) FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid INNER JOIN races ON laptimes.raceid = races.raceid WHERE drivers.forename = 'Sebastian' AND drivers.surname = 'Vettel' AND races.name = 'Chinese Grand Prix'
SELECT cast(sum(CASE WHEN driverstandings.position = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(driverstandings.driverid) FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid INNER JOIN races ON driverstandings.raceid = races.raceid WHERE drivers.surname = 'Hamilton' AND races.year >= 2010
SELECT drivers.driverref, constructors.nationality, cast(sum(driverstandings.points) AS REAL) / count(driverstandings.points) FROM constructors INNER JOIN driverstandings ON constructors.constructorid = driverstandings.constructorid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid GROUP BY drivers.driverref, constructors.nationality ORDER BY count(driverstandings.wins) DESC LIMIT 1
SELECT dob, forename, surname FROM drivers WHERE nationality = 'Japanese' ORDER BY dob DESC LIMIT 1
SELECT circuits.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year BETWEEN 1990 AND 2000 GROUP BY circuits.name HAVING count(races.year) = 4
SELECT circuits.name, circuits.location, races.name FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.year = 2006 AND circuits.country = 'USA'
SELECT races.name, circuits.name, circuits.location FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE strftime('%Y-%m', races.date) = '2005-09'
SELECT DISTINCT races.name FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid INNER JOIN races ON RESULTS.raceid = races.raceid WHERE drivers.forename = 'Alex' AND drivers.surname = 'Yoong' AND RESULTS.position < 10
SELECT count(results.driverid) FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid INNER JOIN races ON RESULTS.raceid = races.raceid WHERE drivers.forename = 'Michael' AND drivers.surname = 'Schumacher' AND races.circuitid = ( SELECT circuitid FROM circuits WHERE name = 'Sepang International Circuit' )
SELECT races.name, races.year FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid INNER JOIN races ON laptimes.raceid = races.raceid WHERE drivers.forename = 'Michael' AND drivers.surname = 'Schumacher' ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT avg(results.points) FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE drivers.forename = 'Eddie' AND drivers.surname = 'Irvine' AND strftime('%Y', RESULTS.time) = '2000'
SELECT races.year, driverstandings.points FROM races INNER JOIN driverstandings ON races.raceid = driverstandings.raceid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY races.year ASC LIMIT 1
SELECT DISTINCT races.name, circuits.country FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2017 ORDER BY races.date
SELECT races.name, races.year, circuits.location FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid INNER JOIN laptimes ON races.raceid = laptimes.raceid ORDER BY laptimes.lap DESC LIMIT 1
SELECT cast(sum(CASE WHEN circuits.country = 'Germany' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'European Grand Prix'
SELECT lat, lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT name FROM circuits WHERE LOCATION IN ('Silverstone', 'Hockenheimring', 'Hungaroring') ORDER BY lat DESC LIMIT 1
SELECT circuitref FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(driverid) FROM drivers WHERE code IS NULL
SELECT circuits.country FROM drivers INNER JOIN circuits ON drivers.driverref = circuits.circuitref ORDER BY drivers.dob LIMIT 1
SELECT surname FROM drivers WHERE nationality = 'Italian'
SELECT DISTINCT url FROM drivers WHERE forename = 'Anthony' AND surname = 'Davidson'
SELECT driverref FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton'
SELECT circuits.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009
SELECT DISTINCT races.year FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.name = 'Silverstone Circuit'
SELECT DISTINCT races.url FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.name = 'Silverstone Circuit'
SELECT races.time FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.year = 2010 AND circuits.location = 'Abu Dhabi'
SELECT count(*) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.country = 'Italy'
SELECT DISTINCT races.date FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.name = 'Barcelona-Catalunya'
SELECT circuits.url FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.year = 2009 AND races.name = 'Spanish Grand Prix'
SELECT RESULTS.fastestlaptime FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY RESULTS.fastestlaptime ASC LIMIT 1
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT drivers.driverref FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' ORDER BY RESULTS.rank ASC LIMIT 1
SELECT DISTINCT races.name FROM races INNER JOIN driverstandings ON races.raceid = driverstandings.raceid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT races.name FROM results INNER JOIN drivers ON results.driverid = drivers.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY results.rank DESC LIMIT 1
SELECT max(results.fastestlapspeed) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009
SELECT DISTINCT seasons.year FROM races INNER JOIN seasons ON races.year = seasons.year INNER JOIN drivers ON races.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT RESULTS.positionorder FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' AND RESULTS.raceid = ( SELECT raceid FROM races WHERE name = 'Australian Grand Prix' AND YEAR = 2008 )
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2008 AND results.grid = 4
SELECT count(DISTINCT RESULTS.driverid) FROM RESULTS INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.year = 2008 AND RESULTS.time IS NOT NULL
SELECT RESULTS.fastestlap FROM races INNER JOIN RESULTS ON races.raceid = RESULTS.raceid INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' AND races.name = 'Australian Grand Prix' ORDER BY RESULTS.fastestlaptime LIMIT 1
SELECT results.time FROM results INNER JOIN races ON results.raceid = races.raceid WHERE races.name = 'Australian Grand Prix' AND results.rank = 2 AND races.year = 2008
SELECT drivers.forename, drivers.surname, races.url FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' ORDER BY RESULTS.fastestlaptime DESC LIMIT 1
SELECT count(drivers.driverid) FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.year = 2008 AND drivers.nationality = 'American'
SELECT count(results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Australian Grand Prix' AND results.time IS NOT NULL
SELECT sum(driverstandings.points) FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT avg(cast(replace(fastestlaptime, ':', '') AS REAL)) FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT cast(count(CASE WHEN laptimes.time IS NOT NULL THEN 1 ELSE NULL END) AS REAL) * 100 / count(laptimes.raceid) FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid WHERE races.year = 2008
SELECT cast(sum(CASE WHEN RESULTS.time IS NOT NULL THEN RESULTS.fastestlaptime ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN RESULTS.time IS NOT NULL THEN RESULTS.fastestlap ELSE 0 END) FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.name = 'Australian Grand Prix'
SELECT count(circuitid) FROM circuits WHERE country = 'Australia' AND LOCATION = 'Melbourne'
SELECT lat, lng FROM circuits WHERE country = 'USA'
SELECT count(driverid) FROM drivers WHERE dob > '1980-01-01' AND nationality = 'British'
SELECT avg(constructorstandings.points) FROM constructors INNER JOIN constructorstandings ON constructors.constructorid = constructorstandings.constructorid WHERE constructors.nationality = 'British'
SELECT constructors.name FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid ORDER BY constructorresults.points DESC LIMIT 1
SELECT DISTINCT constructors.name FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructorresults.raceid = 291 AND constructorresults.points = 0
SELECT count(DISTINCT constructors.name) FROM constructors INNER JOIN RESULTS ON constructors.constructorid = RESULTS.constructorid WHERE constructors.nationality = 'Japanese' AND RESULTS.points = 0 AND RESULTS.number = 2
SELECT DISTINCT constructors.name FROM results INNER JOIN constructors ON results.constructorid = constructors.constructorid WHERE results.rank = 1
SELECT count(constructors.name) FROM constructors INNER JOIN RESULTS ON constructors.constructorid = RESULTS.constructorid WHERE constructors.nationality = 'French' AND RESULTS.laps > 50
SELECT cast(sum(CASE WHEN drivers.nationality = 'Japanese' AND races.year BETWEEN 2007 AND 2009 THEN 1 ELSE 0 END) AS REAL) * 100 / count(drivers.driverid) FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid INNER JOIN races ON laptimes.raceid = races.raceid
SELECT avg(cast(substr(time, 1, instr(time, ':') - 1) AS REAL)) FROM RESULTS WHERE RESULTS.fastestlaptime IS NOT NULL
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid WHERE strftime('%Y', drivers.dob) > '1975' AND driverstandings.position = 2
SELECT count(drivers.driverid) FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid WHERE RESULTS.time IS NULL AND drivers.nationality = 'Italian'
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY results.fastestlaptime DESC LIMIT 1
SELECT RESULTS.fastestlap FROM RESULTS INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.year = 2009 ORDER BY RESULTS.fastestlaptime DESC LIMIT 1
SELECT avg(results.fastestlapspeed) FROM races INNER JOIN RESULTS ON races.raceid = RESULTS.raceid WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009
SELECT races.name, races.year FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid WHERE laptimes.milliseconds IS NOT NULL ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT cast(sum(CASE WHEN strftime('%Y', drivers.dob) < '1985' THEN 1 ELSE 0 END) AS REAL) * 100 / count(drivers.driverid) FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE strftime('%Y', laptimes.time) BETWEEN '2000' AND '2005' AND laptimes.lap > 50
SELECT count(drivers.driverid) FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE laptimes.time < '02:00:00' AND drivers.nationality = 'French'
SELECT code FROM drivers WHERE nationality = 'America'
SELECT count(raceid) FROM races WHERE YEAR = 2009
SELECT count(driverid) FROM results WHERE raceid = 18
SELECT count(drivers.driverid) FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid INNER JOIN races ON driverstandings.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE drivers.nationality = 'Netherland' ORDER BY strftime('%Y', drivers.dob) DESC LIMIT 1
SELECT driverref FROM drivers WHERE forename = 'Robert' AND surname = 'Kubica'
SELECT count(driverid) FROM drivers WHERE strftime('%Y', dob) = '1980' AND nationality = 'Australian'
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE drivers.nationality = 'German' AND strftime('%Y', drivers.dob) BETWEEN '1980' AND '1990' ORDER BY laptimes.time LIMIT 3
SELECT driverref FROM drivers WHERE nationality = 'German' ORDER BY strftime('%Y', dob) ASC LIMIT 1
SELECT DISTINCT drivers.driverid, drivers.code FROM drivers INNER JOIN RESULTS ON drivers.driverid = RESULTS.driverid WHERE strftime('%Y', drivers.dob) = '1971' AND RESULTS.fastestlaptime IS NOT NULL
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE strftime('%Y', drivers.dob) < '1982' ORDER BY laptimes.time DESC LIMIT 10
SELECT races.year FROM races INNER JOIN RESULTS ON races.raceid = RESULTS.raceid ORDER BY RESULTS.fastestlaptime LIMIT 1
SELECT races.year FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid ORDER BY laptimes.milliseconds DESC LIMIT 1
SELECT driverid FROM laptimes ORDER BY time ASC LIMIT 5
SELECT count(results.raceid) FROM results INNER JOIN status ON results.statusid = status.statusid WHERE status.statusid = 2 AND results.time IS NOT NULL AND results.raceid BETWEEN 50 AND 100
SELECT circuits.location, circuits.lat, circuits.lng FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.country = 'Austria'
SELECT RESULTS.number FROM races INNER JOIN RESULTS ON races.raceid = RESULTS.raceid WHERE races.time IS NOT NULL GROUP BY RESULTS.number ORDER BY count(RESULTS.number) DESC LIMIT 1
SELECT DISTINCT drivers.driverref, drivers.nationality, drivers.dob FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.q2 IS NOT NULL AND qualifying.raceid = 23
SELECT races.year, races.date, races.time FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid INNER JOIN races ON qualifying.raceid = races.raceid ORDER BY drivers.dob DESC LIMIT 1
SELECT count(results.driverid) FROM results INNER JOIN status ON results.statusid = status.statusid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE status.status = 'Disqualified' AND drivers.nationality = 'American'
SELECT DISTINCT constructors.name, constructors.url FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructors.nationality = 'Italian' ORDER BY constructorresults.points DESC LIMIT 1
SELECT DISTINCT constructors.url FROM constructors INNER JOIN constructorstandings ON constructors.constructorid = constructorstandings.constructorid ORDER BY constructorstandings.wins DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid INNER JOIN drivers ON laptimes.driverid = drivers.driverid WHERE races.name = 'French Grand Prix' ORDER BY laptimes.milliseconds DESC LIMIT 2, 1
SELECT RESULTS.time FROM RESULTS INNER JOIN laptimes ON RESULTS.raceid = laptimes.raceid ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT avg(results.fastestlaptime) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'United States Grand Prix' AND results.rank < 11
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.nationality = 'German' AND strftime('%Y', drivers.dob) BETWEEN '1980' AND '1985' ORDER BY pitstops.duration ASC LIMIT 5
SELECT results.time FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Canadian Grand Prix' AND races.year = 2008 ORDER BY results.fastestlaptime DESC LIMIT 1
SELECT DISTINCT constructors.constructorref, constructors.url FROM constructors INNER JOIN RESULTS ON constructors.constructorid = RESULTS.constructorid INNER JOIN races ON RESULTS.raceid = races.raceid WHERE races.year = 2009 AND races.name = 'Singapore Grand Prix' ORDER BY RESULTS.time DESC LIMIT 1
SELECT forename, surname, dob FROM drivers WHERE dob BETWEEN '1981-01-01' AND '1991-12-31' AND nationality = 'Austrian'
SELECT forename, surname, dob FROM drivers WHERE nationality = 'German' AND dob BETWEEN '1971-01-01' AND '1985-12-31' ORDER BY dob DESC
SELECT LOCATION, country, lat, lng FROM circuits WHERE name = 'Hungaroring'
SELECT DISTINCT constructors.name, constructors.nationality, constructorresults.points FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid INNER JOIN races ON constructorresults.raceid = races.raceid WHERE races.name = 'Monaco Grand Prix' AND races.year BETWEEN 1980 AND 2010 ORDER BY constructorresults.points DESC LIMIT 1
SELECT avg(driverstandings.points) FROM races INNER JOIN driverstandings ON races.raceid = driverstandings.raceid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' AND races.name = 'Turkish Grand Prix'
SELECT avg(races.year) FROM races INNER JOIN seasons ON races.year = seasons.year WHERE strftime('%Y', races.date) BETWEEN '2000' AND '2010'
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(nationality) DESC LIMIT 1
SELECT driverstandings.wins FROM driverstandings INNER JOIN RESULTS ON driverstandings.raceid = RESULTS.raceid WHERE RESULTS.rank = 91
SELECT races.name FROM races INNER JOIN RESULTS ON races.raceid = RESULTS.raceid ORDER BY RESULTS.fastestlapspeed LIMIT 1
SELECT circuits.location, circuits.country FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid ORDER BY races.date DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid INNER JOIN qualifying ON races.raceid = qualifying.raceid INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE circuits.name = 'Marina Bay Street Circuit' AND races.year = 2008 AND qualifying.q3 = ( SELECT min(qualifying.q3) FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid INNER JOIN qualifying ON races.raceid = qualifying.raceid INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE circuits.name = 'Marina Bay Street Circuit' AND races.year = 2008 )
SELECT drivers.forename, drivers.surname, drivers.nationality, races.name FROM drivers INNER JOIN races ON drivers.driverid = races.raceid ORDER BY drivers.dob DESC LIMIT 1
SELECT count(results.statusid) FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.name = 'Canadian Grand Prix' AND results.statusid = 3
SELECT driverstandings.wins, drivers.forename, drivers.surname FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid ORDER BY drivers.dob LIMIT 1
SELECT max(pitstops.duration) FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid
SELECT laptimes.time FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid ORDER BY laptimes.milliseconds DESC LIMIT 1
SELECT max(pitstops.duration) FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT pitstops.lap FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid INNER JOIN races ON pitstops.raceid = races.raceid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' AND races.name = 'Australian Grand Prix'
SELECT pitstops.duration FROM races INNER JOIN pitstops ON races.raceid = pitstops.raceid WHERE races.year = 2011 AND races.name = 'Australian Grand Prix'
SELECT laptimes.time FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY laptimes.milliseconds DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY results.time ASC LIMIT 1
SELECT RESULTS.position FROM RESULTS INNER JOIN drivers ON RESULTS.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY RESULTS.time LIMIT 1
SELECT RESULTS.time FROM races INNER JOIN RESULTS ON races.raceid = RESULTS.raceid WHERE races.name = 'Austrian Grand Prix' ORDER BY RESULTS.fastestlaptime LIMIT 1
SELECT DISTINCT laptimes.time FROM circuits INNER JOIN laptimes ON circuits.circuitid = laptimes.raceid WHERE circuits.country = 'Italy' ORDER BY laptimes.milliseconds DESC LIMIT 1
SELECT races.name FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid WHERE races.name = 'Austrian Grand Prix' ORDER BY laptimes.milliseconds DESC LIMIT 1
SELECT pitstops.duration FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid INNER JOIN pitstops ON races.raceid = pitstops.raceid WHERE races.name = 'Austrian Grand Prix'
SELECT circuits.location FROM circuits INNER JOIN laptimes ON circuits.circuitid = laptimes.raceid WHERE laptimes.time = '1:29.488'
SELECT avg(pitstops.milliseconds) FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT avg(laptimes.milliseconds) FROM circuits INNER JOIN laptimes ON circuits.circuitid = laptimes.raceid WHERE circuits.country = 'Italy'
SELECT player_api_id FROM player_attributes ORDER BY overall_rating DESC LIMIT 1
SELECT height, player_name FROM player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM player_attributes WHERE potential = ( SELECT min(potential) FROM player_attributes )
SELECT count(*) FROM player_attributes WHERE overall_rating BETWEEN 60 AND 65 AND defensive_work_rate = 'low'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.crossing DESC LIMIT 5
SELECT league.name FROM MATCH INNER JOIN league ON MATCH.league_id = league.id WHERE MATCH.season = '2016' GROUP BY league.name ORDER BY sum(MATCH.home_team_goal) + sum(MATCH.away_team_goal) DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.home_team_api_id WHERE MATCH.season = '2016' ORDER BY MATCH.home_team_goal - MATCH.away_team_goal LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.penalties DESC LIMIT 10
SELECT team.team_long_name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id INNER JOIN team ON team.team_api_id = MATCH.away_team_api_id WHERE league.name = 'Scotland Premier League' AND MATCH.season = '2009/2010' ORDER BY MATCH.away_team_goal - MATCH.home_team_goal DESC LIMIT 1
SELECT team_attributes.buildupplayspeed FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id ORDER BY team_attributes.buildupplayspeed DESC LIMIT 4
SELECT league.name FROM MATCH INNER JOIN league ON MATCH.league_id = league.id WHERE MATCH.season = '2016' GROUP BY league.name ORDER BY count(league.name) DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.sprint_speed >= 97 AND player_attributes.date BETWEEN '2013-01-01 00:00:00' AND '2015-12-31 00:00:00'
SELECT league.name, count(match.league_id) FROM league INNER JOIN MATCH ON league.id = match.league_id GROUP BY league.name ORDER BY count(match.league_id) DESC LIMIT 1
SELECT avg(height) FROM player WHERE birthday >= '1990-01-01 00:00:00' AND birthday < '1996-01-01 00:00:00'
SELECT player_api_id FROM player_attributes WHERE substr(date, 1, 4) = '2010' ORDER BY overall_rating DESC LIMIT 1
SELECT team_fifa_api_id FROM team_attributes WHERE buildupplayspeed BETWEEN 51 AND 59
SELECT team.team_long_name FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.buildupplaypassing IS NOT NULL AND strftime('%Y', team_attributes.date) = '2012'
SELECT cast(sum(CASE WHEN player_attributes.preferred_foot = 'left' THEN 1 ELSE 0 END) AS REAL) * 100 / count(player_attributes.player_fifa_api_id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.birthday BETWEEN '1987-01-01 00:00:00' AND '1992-12-31 00:00:00'
SELECT league.name FROM MATCH INNER JOIN league ON MATCH.league_id = league.id GROUP BY league.name ORDER BY sum(MATCH.home_team_goal) + sum(MATCH.away_team_goal) DESC LIMIT 5
SELECT avg(player_attributes.long_shots) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Ahmed Samir Farag'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 180 GROUP BY player.player_name ORDER BY avg(player_attributes.heading_accuracy) DESC LIMIT 10
SELECT team.team_long_name FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.buildupplaydribblingclass = 'Normal' AND team_attributes.chancecreationpassingclass = 'Normal' AND team_attributes.date LIKE '2014%' GROUP BY team.team_long_name ORDER BY cast(sum(team_attributes.chancecreationpassing) AS REAL) / count(team_attributes.chancecreationpassing) DESC LIMIT 1
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2009/2010' GROUP BY league.name ORDER BY avg(MATCH.home_team_goal) - avg(MATCH.away_team_goal) DESC LIMIT 1
SELECT team_short_name FROM team WHERE team_long_name = 'Queens Park Rangers'
SELECT player_name FROM player WHERE substr(birthday, 1, 4) = '1970' AND substr(birthday, 6, 2) = '10'
SELECT player_attributes.attacking_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Franco Zennaro'
SELECT team_attributes.buildupplaypositioningclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'ADO Den Haag'
SELECT player_attributes.heading_accuracy FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.date = '2014-09-18 00:00:00' AND player.player_name = 'Francois Affolter'
SELECT player_attributes.overall_rating FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Gabriel Tamas' AND strftime('%Y', player_attributes.date) = '2011'
SELECT sum(CASE WHEN league.name = 'Scotland Premier League' THEN 1 ELSE 0 END) FROM MATCH INNER JOIN league ON MATCH.league_id = league.id WHERE MATCH.season = '2015/2016'
SELECT player_attributes.preferred_foot FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.birthday DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.potential DESC LIMIT 1
SELECT count(player_attributes.player_api_id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.weight < 130 AND player_attributes.preferred_foot = 'left'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.chancecreationpassingclass = 'Risky'
SELECT player_attributes.defensive_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'David Wilson'
SELECT birthday FROM player_attributes ORDER BY overall_rating DESC LIMIT 1
SELECT league.name FROM country INNER JOIN league ON country.id = league.country_id WHERE country.name = 'Netherlands'
SELECT avg(MATCH.home_team_goal) FROM country INNER JOIN league ON country.id = league.country_id INNER JOIN MATCH ON league.id = MATCH.league_id WHERE country.name = 'Poland' AND MATCH.season = '2010/2011'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.finishing DESC LIMIT 1
SELECT player_name FROM player WHERE height > 180
SELECT count(*) FROM player WHERE strftime('%Y', birthday) > '1990'
SELECT count(*) FROM player INNER JOIN team_attributes ON player.player_fifa_api_id = team_attributes.team_fifa_api_id WHERE player.player_name = 'Adam' AND player.weight > 170 AND team_attributes.buildupplayspeedclass = 'Fast'
SELECT player.player_name FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE strftime('%Y', player_attributes.date) BETWEEN '2008' AND '2010' AND player_attributes.overall_rating > 80
SELECT player_attributes.potential FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Doran'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.preferred_foot = 'left'
SELECT team.team_long_name FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.buildupplayspeedclass = 'Fast'
SELECT team_attributes.buildupplaypassingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_short_name = 'CLB'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplaypassing > 70
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player_attributes.date) BETWEEN '2010' AND '2015' AND player.height > 170
SELECT player_name FROM player ORDER BY height ASC LIMIT 1
SELECT country.name FROM country INNER JOIN league ON country.id = league.country_id WHERE league.name = 'Italy Serie A'
SELECT team.team_short_name FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.buildupplayspeed = 31 AND team_attributes.buildupplaydribbling = 53 AND team_attributes.buildupplaypassing = 32
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Doran'
SELECT count(*) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE league.name = 'Germany 1. Bundesliga' AND strftime('%Y-%m', MATCH.date) BETWEEN '2008-08' AND '2008-10'
SELECT team.team_short_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.home_team_api_id WHERE MATCH.home_team_goal = 10
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.potential = 61 ORDER BY player_attributes.balance DESC LIMIT 1
SELECT avg(player_attributes.ball_control) - avg(player_attributes.ball_control) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Abdou Diallo' OR player.player_name = 'Aaron Appindangoye'
SELECT team_long_name FROM team WHERE team_short_name = 'GEN'
SELECT player_name FROM player WHERE player_name = 'Abdelaziz Barrada' OR player_name = 'Aaron Lennon' ORDER BY birthday ASC LIMIT 1
SELECT player_name FROM player ORDER BY height DESC LIMIT 1
SELECT count(player_attributes.player_api_id) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player_attributes.preferred_foot = 'left' AND player_attributes.attacking_work_rate = 'low'
SELECT country.name FROM country INNER JOIN league ON country.id = league.country_id WHERE league.name = 'Belgium Jupiler League'
SELECT league.name FROM country INNER JOIN league ON country.id = league.country_id WHERE country.name = 'Germany'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT count(player_attributes.player_api_id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player.birthday) < '1986' AND player_attributes.defensive_work_rate = 'high'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name IN ('Alexis', 'Ariel Borysiuk', 'Arouna Kone') ORDER BY player_attributes.crossing DESC LIMIT 1
SELECT player_attributes.heading_accuracy FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Ariel Borysiuk'
SELECT count(player.player_name) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 180 AND player_attributes.volleys > 70
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.volleys > 70 AND player_attributes.dribbling > 70
SELECT sum(CASE WHEN country.name = 'Belgium' THEN 1 ELSE 0 END) FROM MATCH INNER JOIN league ON MATCH.league_id = league.id INNER JOIN country ON league.country_id = country.id WHERE MATCH.season = '2008/2009'
SELECT player_attributes.long_passing FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.birthday ASC LIMIT 1
SELECT count(*) FROM MATCH INNER JOIN league ON MATCH.league_id = league.id WHERE league.name = 'Belgium Jupiler League' AND strftime('%Y', MATCH.date) = '2009' AND strftime('%m', MATCH.date) = '04'
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2008/2009' GROUP BY league.name ORDER BY count(league.name) DESC LIMIT 1
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player.birthday) < '1986'
SELECT cast(sum(CASE WHEN player.player_name = 'Ariel Borysiuk' THEN player_attributes.overall_rating ELSE 0 END) - sum(CASE WHEN player.player_name = 'Paulin Puel' THEN player_attributes.overall_rating ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN player.player_name = 'Paulin Puel' THEN player_attributes.overall_rating ELSE 0 END) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id
SELECT avg(team_attributes.buildupplayspeed) FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'Heart of Midlothian'
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Pietro Marino'
SELECT sum(player_attributes.crossing) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Lennox'
SELECT team_attributes.chancecreationpassingclass, team_attributes.chancecreationpassing FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'Ajax' ORDER BY team_attributes.chancecreationpassing DESC LIMIT 1
SELECT player_attributes.preferred_foot FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Abdou Diallo'
SELECT player_attributes.overall_rating FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Dorlan Pabon' ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT avg(match.away_team_goal) FROM country INNER JOIN league ON country.id = league.country_id INNER JOIN team ON league.id = team.id INNER JOIN MATCH ON team.team_api_id = MATCH.away_team_api_id WHERE team.team_long_name = 'Parma' AND country.name = 'Italy'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.overall_rating = 77 AND player_attributes.date = '2016-06-23' ORDER BY player.birthday ASC LIMIT 1
SELECT player_attributes.overall_rating FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Mooy' AND player_attributes.date = '2016-02-04 00:00:00'
SELECT player_attributes.potential FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Francesco Parravicini' AND player_attributes.date = '2010-08-30 00:00:00'
SELECT player_attributes.attacking_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Francesco Migliore' AND player_attributes.date = '2015-05-01 00:00:00'
SELECT player_attributes.defensive_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Kevin Berigaud' AND player_attributes.date = '2013-02-22 00:00:00'
SELECT player_attributes.date FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Kevin Constant' ORDER BY player_attributes.crossing DESC LIMIT 1
SELECT team_attributes.buildupplayspeedclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team.team_long_name = 'Willem II' AND team_attributes.date = '2012-02-22 00:00:00'
SELECT team_attributes.buildupplaydribblingclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team.team_short_name = 'LEI' AND team_attributes.date = '2015-09-10 00:00:00'
SELECT team_attributes.buildupplaypassingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'FC Lorient' AND team_attributes.date = '2010-02-22'
SELECT team_attributes.chancecreationpassingclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team.team_long_name = 'PEC Zwolle' AND team_attributes.date = '2013-09-20 00:00:00'
SELECT team_attributes.chancecreationcrossingclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team.team_long_name = 'Hull City' AND team_attributes.date = '2010-02-22 00:00:00'
SELECT team_attributes.defenceaggressionclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team.team_long_name = 'Hannover 96' AND team_attributes.date = '2015-09-10 00:00:00'
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Marko Arnautovic' AND player_attributes.date BETWEEN '2007-02-22 00:00:00' AND '2016-04-21 00:00:00'
SELECT cast(sum(CASE WHEN player.player_name = 'Landon Donovan' THEN player_attributes.overall_rating ELSE 0 END) - sum(CASE WHEN player.player_name = 'Jordan Bowery' THEN player_attributes.overall_rating ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN player.player_name = 'Landon Donovan' THEN player_attributes.overall_rating ELSE 0 END) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.date = '2013-07-12'
SELECT player_name FROM player ORDER BY height DESC LIMIT 5
SELECT player_api_id FROM player ORDER BY weight DESC LIMIT 10
SELECT player_name FROM player WHERE strftime('%Y', 'now') - strftime('%Y', birthday) > 35
SELECT sum(MATCH.home_team_goal) FROM MATCH INNER JOIN player ON MATCH.home_player_1 = player.player_api_id WHERE player.player_name = 'Aaron Lennon'
SELECT sum(MATCH.away_team_goal) FROM MATCH INNER JOIN player ON player.player_api_id = MATCH.away_player_11 WHERE player.player_name = 'Daan Smith' OR player.player_name = 'Filipe Ferreira'
SELECT sum(MATCH.home_team_goal) FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.home_player_11 WHERE player.birthday < 31
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 10
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.potential DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.attacking_work_rate = 'high'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.finishing = 1 ORDER BY player.birthday DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN league ON player.player_fifa_api_id = league.id INNER JOIN country ON league.country_id = country.id WHERE country.name = 'Belgium'
SELECT player.player_name, country.name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id INNER JOIN country ON player_attributes.player_fifa_api_id = country.id WHERE player_attributes.vision > 89
SELECT country.name FROM country INNER JOIN league ON country.id = league.country_id INNER JOIN MATCH ON league.id = MATCH.country_id INNER JOIN player ON MATCH.home_player_1 = player.player_api_id OR MATCH.home_player_2 = player.player_api_id OR MATCH.home_player_3 = player.player_api_id OR MATCH.home_player_4 = player.player_api_id OR MATCH.home_player_5 = player.player_api_id OR MATCH.home_player_6 = player.player_api_id OR MATCH.home_player_7 = player.player_api_id OR MATCH.home_player_8 = player.player_api_id OR MATCH.home_player_9 = player.player_api_id OR MATCH.home_player_10 = player.player_api_id OR MATCH.home_player_11 = player.player_api_id ORDER BY player.weight DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplayspeedclass = 'Slow'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.chancecreationpassingclass = 'Safe'
SELECT avg(player.height) FROM country INNER JOIN league ON country.id = league.country_id INNER JOIN MATCH ON league.id = MATCH.country_id INNER JOIN player ON MATCH.home_player_1 = player.player_api_id WHERE country.name = 'Italy'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 180 ORDER BY player.height DESC LIMIT 3
SELECT count(player_name) FROM player WHERE player_name LIKE 'Aaron%' AND birthday > '1990'
SELECT sum(CASE WHEN player_attributes.id = 6 THEN player_attributes.jumping ELSE 0 END) - sum(CASE WHEN player_attributes.id = 23 THEN player_attributes.jumping ELSE 0 END) FROM player_attributes
SELECT player_attributes.player_api_id FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player_attributes.preferred_foot = 'right' ORDER BY player_attributes.potential ASC LIMIT 3
SELECT count(*) FROM player_attributes WHERE preferred_foot = 'left' AND potential = ( SELECT max(potential) FROM player_attributes )
SELECT cast(sum(CASE WHEN player_attributes.stamina > 80 AND player_attributes.strength > 80 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id
SELECT country.name FROM country INNER JOIN league ON country.id = league.country_id WHERE league.name = 'Poland Ekstraklasa'
SELECT home_team_goal, away_team_goal FROM `match` WHERE strftime('%Y-%m-%d', `date`) = '2008-09-24' AND league_id = ( SELECT id FROM league WHERE name = 'Belgian Jupiler League' )
SELECT player_attributes.sprint_speed, player_attributes.agility, player_attributes.acceleration FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Alexis Blin'
SELECT team_attributes.buildupplayspeedclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'KSV Cercle Brugge'
SELECT count(*) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2015/2016' AND league.name = 'Italian Serie A'
SELECT max(MATCH.home_team_goal) FROM MATCH INNER JOIN league ON MATCH.league_id = league.id WHERE league.name = 'Netherlands Eredivisie'
SELECT player_attributes.finishing, player_attributes.curve FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.weight DESC LIMIT 1
SELECT team.team_long_name FROM MATCH INNER JOIN team ON MATCH.home_team_api_id = team.team_api_id OR MATCH.away_team_api_id = team.team_api_id WHERE MATCH.season = '2015/2016' GROUP BY team.team_long_name ORDER BY count(team.team_long_name) DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.away_team_api_id ORDER BY MATCH.away_team_goal DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT cast(sum(CASE WHEN player.height < 180 AND player_attributes.overall_rating > 70 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id
SELECT sum(CASE WHEN sex = 'M' AND admission = '+' THEN 1 ELSE 0 END) - sum(CASE WHEN sex = 'M' AND admission = '-' THEN 1 ELSE 0 END) FROM patient
SELECT cast(sum(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM patient WHERE strftime('%Y', birthday) > '1930'
SELECT cast(sum(iif(admission = '+', 1, 0)) AS REAL) * 100 / count(*) FROM patient WHERE strftime('%Y', birthday) BETWEEN '1930' AND '1940'
SELECT cast(sum(CASE WHEN patient.admission = '+' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN patient.admission = '-' THEN 1 ELSE 0 END) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.diagnosis = 'SLE'
SELECT DISTINCT examination.`examination date`, laboratory.date FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.id = 30609
SELECT examination.`examination date`, patient.sex, patient.birthday, examination.symptoms FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.id = 163109
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ldh > 500
SELECT patient.id, strftime('%J', 'now') - strftime('%J', birthday) AS age FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.rvvt = '+'
SELECT patient.id, patient.sex, examination.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.thrombosis = 2
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.birthday) = '1937' AND laboratory.`t-cho` > 250
SELECT patient.id, patient.sex, patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.alb < 3.5
SELECT cast(sum(CASE WHEN patient.sex = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE (laboratory.tp < '6.0' OR laboratory.tp > '8.5')
SELECT avg(examination.`acl igg`) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.admission = '+' AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) >= '50'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.sex = 'F' AND strftime('%Y', patient.description) = '1997' AND patient.admission = '-'
SELECT strftime('%Y', 'now') - strftime('%Y', birthday) AS age FROM patient ORDER BY birthday ASC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', examination.`examination date`) = '1997' AND patient.sex = 'F' AND examination.thrombosis = '1'
SELECT max(strftime('%Y', birthday)) - min(strftime('%Y', birthday)) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg >= 200
SELECT examination.symptoms, patient.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id ORDER BY patient.birthday LIMIT 1
SELECT cast(count(patient.id) AS REAL) / 12 FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.date BETWEEN '1998-01-01' AND '1998-12-31' AND patient.sex = 'M'
SELECT strftime('%Y', `first date`), strftime('%Y', birthday) - strftime('%Y', `first date`) FROM patient WHERE diagnosis = 'SJS' ORDER BY `first date` DESC LIMIT 1
SELECT cast(sum(CASE WHEN sex = 'M' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) FROM laboratory WHERE ua <= 6.5
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', examination.`examination date`) - strftime('%Y', patient.`first date`) >= 1
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', examination.`examination date`) BETWEEN '1990' AND '1993' AND strftime('%Y', patient.birthday) < '18'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.`t-bil` > '2.0'
SELECT examination.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', examination.`examination date`) BETWEEN '1985' AND '1995' GROUP BY examination.diagnosis ORDER BY count(examination.diagnosis) DESC LIMIT 1
SELECT avg(strftime('%Y', patient.birthday) - strftime('%Y', `examination.`examination date`)) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', `examination.`examination date`) = '1991'
SELECT strftime('%Y', `examination date`) - strftime('%Y', birthday), patient.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id ORDER BY laboratory.hgb DESC LIMIT 1
SELECT examination.`ana` FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.id = 3605340 AND examination.`examination date` = '1996-12-02'
SELECT CASE WHEN laboratory.`t-cho` < 250 THEN 'YES' ELSE 'NO' END FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.id = 2927464 AND strftime('%Y-%m-%d', laboratory.date) = '1995-09-04'
SELECT patient.sex FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.diagnosis = 'AORTITIS' ORDER BY patient.`first date` ASC LIMIT 1
SELECT examination.`acl igm` FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.description = '1994-02-19' AND examination.diagnosis = 'SLE'
SELECT patient.sex FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.date = '1992-06-12' AND laboratory.gpt = 9 AND patient.sex = 'M'
SELECT strftime('%Y', patient.birthday) - strftime('%Y', laboratory.date) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ua = 8.4 AND laboratory.date = '1991-10-21'
SELECT count(laboratory.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.`first date` = '1991-06-13' AND patient.diagnosis = 'SJS' AND laboratory.date = '1995'
SELECT patient.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.`examination date` = '1997-01-27' AND patient.diagnosis = 'SLE'
SELECT examination.symptoms FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.birthday = '1959-03-01' AND examination.`examination date` = '1993-09-27'
SELECT cast(sum(CASE WHEN patient.birthday = '1959-02-18' AND strftime('%Y', laboratory.date) = '1981' THEN laboratory.`t-cho` ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN patient.birthday = '1959-02-18' AND strftime('%Y', laboratory.date) = '1981' THEN 1 ELSE 0 END) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id
SELECT DISTINCT patient.id FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', patient.description) >= '1997' AND strftime('%Y', patient.description) < '1998' AND examination.diagnosis = 'BEHCET'
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.date BETWEEN '1987-07-06' AND '1996-01-31' AND laboratory.gpt > 30 AND laboratory.alp < 4
SELECT count(id) FROM patient WHERE strftime('%Y', birthday) = '1964' AND sex = 'F' AND admission = '+'
SELECT cast(sum(CASE WHEN examination.thrombosis = 2 THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.`ana pattern` = 'S' AND examination.`acl igm` * 100 > ( SELECT avg(`acl igm`) * 100 FROM examination ) * 20
SELECT cast(sum(CASE WHEN laboratory.ua <= 6.5 AND laboratory.`u-pro` > 0 AND laboratory.`u-pro` < 30 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id
SELECT cast(sum(CASE WHEN patient.diagnosis = 'BEHCET' THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', patient.`first date`) = '1981' AND patient.sex = 'M'
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '-' AND strftime('%Y-%m', laboratory.date) = '1991-10' AND laboratory.`t-bil` < 2
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.sex = 'F' AND patient.birthday BETWEEN '1980-01-01' AND '1989-12-31' AND examination.`ana pattern` != 'P'
SELECT DISTINCT patient.sex FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.diagnosis = 'PSS' AND laboratory.crp > 2 AND laboratory.cre = 1 AND laboratory.ldh = 123
SELECT avg(laboratory.alb) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F' AND laboratory.plt > 400 AND patient.diagnosis = 'SLE'
SELECT examination.symptoms FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.diagnosis = 'SLE' GROUP BY examination.symptoms ORDER BY count(examination.symptoms) DESC LIMIT 1
SELECT description, diagnosis FROM patient WHERE id = 48473
SELECT count(id) FROM patient WHERE sex = 'F' AND diagnosis = 'APS'
SELECT count(id) FROM laboratory WHERE strftime('%Y', `date`) = '1997' AND (tp > 6 AND tp < 8.5)
SELECT cast(sum(CASE WHEN patient.diagnosis LIKE '%SLE%' THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.symptoms = 'thrombocytopenia'
SELECT cast(sum(CASE WHEN patient.sex = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.diagnosis = 'RA' AND strftime('%Y', patient.birthday) = '1980'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.sex = 'M' AND strftime('%Y', examination.`examination date`) BETWEEN '1995' AND '1997' AND patient.admission = '-' AND patient.diagnosis = 'BEHCET'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F' AND laboratory.wbc < 3.5
SELECT strftime('%J', examination.`examination date`) - strftime('%J', patient.`first date`) AS days FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.id = 821298
SELECT sum(CASE WHEN laboratory.ua > 8.0 AND patient.sex = 'M' THEN 1 ELSE 0 END) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.id = 57266
SELECT examination.`examination date` FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.got > 60 AND laboratory.id = 48473
SELECT DISTINCT patient.sex, patient.birthday, laboratory.got FROM laboratory INNER JOIN examination ON laboratory.id = examination.id INNER JOIN patient ON examination.id = patient.id WHERE strftime('%Y', laboratory.date) = '1994' AND laboratory.got < 60
SELECT DISTINCT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.gpt > 60
SELECT DISTINCT patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.gpt > 60 ORDER BY patient.birthday DESC LIMIT 1
SELECT avg(ldh) FROM laboratory WHERE ldh < 500
SELECT patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ldh BETWEEN 100 AND 300
SELECT CASE WHEN alp < 300 THEN 'inpatient' ELSE 'outpatient' END FROM laboratory
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y-%m-%d', patient.birthday) = '1982-04-01' AND laboratory.alp < 300
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tp < 6.0
SELECT max(tp) - min(tp) FROM laboratory WHERE sex = 'F' AND tp > 8.5
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND (laboratory.alb <= 3.5 OR laboratory.alb >= 5.5) ORDER BY patient.birthday DESC
SELECT CASE WHEN alb BETWEEN 3.5 AND 5.5 THEN 'YES' ELSE 'NO' END FROM laboratory WHERE id IN ( SELECT id FROM patient WHERE birthday LIKE '1982%' )
SELECT cast(sum(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM laboratory WHERE ua > 8.0
SELECT avg(laboratory.ua) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.diagnosis = 'Normal' AND patient.sex = 'M' OR patient.sex = 'F'
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.un = 29
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.un < 30 AND patient.diagnosis = 'RA'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.cre >= 1.5
SELECT sum(CASE WHEN sex = 'M' THEN 1 ELSE 0 END) > sum(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) FROM ( SELECT count(id) FROM patient WHERE cre >= 1.5 )
SELECT `t-bil`, sex, birthday FROM laboratory ORDER BY `t-bil` DESC LIMIT 1
SELECT patient.sex, count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`t-bil` > 2 GROUP BY patient.sex
SELECT patient.id, laboratory.`t-cho` FROM patient INNER JOIN laboratory ON patient.id = laboratory.id ORDER BY laboratory.`t-cho` DESC LIMIT 1
SELECT avg(strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', birthday)) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.`t-cho` > 250
SELECT DISTINCT patient.id, patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg > 300
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 50 AND laboratory.tg > 200
SELECT DISTINCT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '-' AND laboratory.cpk < 250
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.cpk > 250 AND strftime('%Y', patient.birthday) BETWEEN '1936' AND '1956'
SELECT patient.id, patient.sex, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE cast(laboratory.glu AS REAL) > 180 AND cast(laboratory.`t-cho` AS REAL) < 250
SELECT patient.id, laboratory.glu FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.description) >= '1991' AND laboratory.glu < 180
SELECT DISTINCT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE cast(laboratory.wbc AS REAL) BETWEEN 3.5 AND 9
SELECT DISTINCT patient.diagnosis, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rbc < 3.5
SELECT patient.sex, patient.admission FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F' AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) >= 50 AND (laboratory.rbc <= 3.5 OR laboratory.rbc >= 6.0)
SELECT patient.id, patient.sex FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '-' AND laboratory.hgb < 10
SELECT id, sex FROM patient WHERE diagnosis = 'SLE' ORDER BY birthday LIMIT 1
SELECT patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.hct >= 52 GROUP BY patient.id HAVING count(patient.id) > 2
SELECT avg(hct) FROM laboratory WHERE strftime('%Y', `date`) = '1991' AND hct < 29
SELECT sum(CASE WHEN laboratory.plt < 100 THEN 1 ELSE 0 END), sum(CASE WHEN laboratory.plt > 400 THEN 1 ELSE 0 END) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.birthday) < '1984' AND laboratory.plt BETWEEN 100 AND 400
SELECT cast(sum(CASE WHEN patient.sex = 'F' AND laboratory.pt >= 14 THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 55
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.`first date`) > '1992' AND laboratory.pt < 14
SELECT count(laboratory.aptt) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE strftime('%Y-%m-%d', examination.`examination date`) > '1997-01-01' AND laboratory.aptt < 45
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.aptt > 45 AND examination.thrombosis = 3
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.wbc BETWEEN 3.5 AND 9 AND (laboratory.fg <= 150 OR laboratory.fg >= 450)
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.birthday > '1980-01-01' AND laboratory.fg BETWEEN 150 AND 450
SELECT DISTINCT patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`u-pro` > 30
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`u-pro` < 30 AND patient.diagnosis = 'SLE'
SELECT count(id) FROM examination WHERE symptoms = 'abortion' AND igg < 900
SELECT count(DISTINCT examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.igg BETWEEN 900 AND 2000 AND examination.symptoms IS NOT NULL
SELECT examination.diagnosis FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.iga BETWEEN 80 AND 500 ORDER BY laboratory.iga DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.`first date`) >= '1990' AND laboratory.iga BETWEEN 80 AND 500
SELECT examination.diagnosis FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.igm NOT BETWEEN 40 AND 400 GROUP BY examination.diagnosis ORDER BY count(examination.diagnosis) DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.description IS NULL AND (laboratory.crp LIKE '+' OR laboratory.crp LIKE '-') OR cast(laboratory.crp AS REAL) < 1
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.crp NOT IN ('+-', '-') AND cast(strftime('%Y', 'now') AS INT) - cast(strftime('%Y', patient.birthday) AS INT) < 18
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ra IN ('+', '-') AND examination.kct = '+'
SELECT DISTINCT patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.birthday) >= '1995' AND (laboratory.ra = '-' OR laboratory.ra = '+-')
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', laboratory.date) - strftime('%Y', patient.birthday) > 60 AND laboratory.rf < 20
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.diagnosis = 'Normal' AND laboratory.rf < 20 AND examination.thrombosis = 0
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.`ana pattern` = 'P' AND laboratory.c3 > 35
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.hct BETWEEN 29 AND 52 ORDER BY laboratory.iga DESC LIMIT 1
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.c4 > 10
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rnp IN ('+', '-') AND patient.admission = '+'
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rnp IN ('-', '+-') ORDER BY patient.birthday DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.thrombosis = 1 AND laboratory.sm IN ('0', '1', '-')
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.sm IN ('-', '+') ORDER BY patient.birthday DESC LIMIT 3
SELECT DISTINCT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', examination.`examination date`) >= '1997' AND laboratory.sc170 IN ('-', '+-')
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.sc170 IN ('-', '+-') AND patient.sex = 'M' AND examination.symptoms = 'vertigo'
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ssa IN ('-', '+') AND strftime('%Y', patient.`first date`) < '1990'
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ssa IN ('+', '-') ORDER BY patient.`first date` ASC LIMIT 1
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ssb IN ('-', '+-') AND examination.diagnosis = 'SLE'
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.diagnosis = 'Normal' AND laboratory.ssb IN ('+', '-')
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.centromea IN ('-', '+-') AND laboratory.ssb IN ('-', '+-') AND patient.sex = 'M'
SELECT DISTINCT examination.diagnosis FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.dna >= 8
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.dna < 8 AND patient.description IS NULL
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`dna-ii` < 8 AND patient.admission = '+'
SELECT cast(sum(CASE WHEN laboratory.got >= 60 THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE examination.diagnosis = 'SLE'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.got < 60
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.got >= 60 ORDER BY patient.birthday DESC LIMIT 1
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.gpt < 60 ORDER BY laboratory.gpt DESC LIMIT 3
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.got < 60 AND patient.sex = 'M'
SELECT patient.`first date` FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ldh < 500 ORDER BY patient.`first date` ASC LIMIT 1
SELECT patient.`first date` FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ldh >= 500 ORDER BY patient.`first date` DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.alp >= 300 AND patient.admission = '+'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '-' AND laboratory.alp < 300
SELECT DISTINCT patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tp < 6.0
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SJS' AND laboratory.tp BETWEEN 6 AND 8
SELECT examination.`examination date` FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.alb > 3.5 AND laboratory.alb < 5.5 ORDER BY laboratory.alb DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.alb > 3.5 AND laboratory.alb < 5.5 AND laboratory.tp BETWEEN 6 AND 8.5
SELECT examination.`acl igg`, examination.`acl igm`, examination.`acl iga` FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.sex = 'F' AND examination.diagnosis = 'Normal' ORDER BY cast(laboratory.ua AS REAL) DESC LIMIT 1
SELECT max(examination.`ana`) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.cre < 1.5
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.cre < 1.5 ORDER BY examination.`acl iga` DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.`t-bil` >= 2.0 AND examination.`ana pattern` LIKE '%P%'
SELECT examination.`ana pattern` FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.`t-bil` < 2.0 ORDER BY laboratory.`t-bil` DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.`t-cho` > 250 AND examination.kct = '-'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`t-cho` < 250 AND examination.`ana pattern` = 'P'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.diagnosis = 'Normal' AND laboratory.tg < 200
SELECT examination.diagnosis FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.tg < 200 ORDER BY laboratory.tg DESC LIMIT 1
SELECT patient.id FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.thrombosis = 0 AND laboratory.cpk < 250
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.cpk < 250 AND (examination.kct = '+' OR examination.rvvt = '+' OR examination.lac = '+')
SELECT min(patient.birthday) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.glu > 180
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.diagnosis = 'Normal' AND laboratory.glu < 180 AND examination.thrombosis = 0
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.wbc BETWEEN 3.5 AND 9
SELECT count(id) FROM patient WHERE diagnosis = 'SLE' AND wbc BETWEEN 3.5 AND 9
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rbc BETWEEN 3.5 AND 6.0 AND patient.admission = '-'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.diagnosis IS NOT NULL AND laboratory.plt BETWEEN 100 AND 400
SELECT laboratory.plt, patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'MCTD' AND laboratory.plt BETWEEN 100 AND 400
SELECT avg(laboratory.pt) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.pt < 14
SELECT count(id) FROM examination WHERE thrombosis IN (2, 1) AND pt < 14
SELECT major.major_name FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.first_name = 'Angela' AND member.last_name = 'Sanders'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.college = 'College of Engineering'
SELECT member.first_name, member.last_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.department = 'Art and Design Department'
SELECT count(member.member_id) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer'
SELECT member.phone FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Women''s Soccer'
SELECT count(member.member_id) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer' AND member.t_shirt_size = 'Medium'
SELECT event.event_name FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id GROUP BY attendance.link_to_event ORDER BY count(attendance.link_to_event) DESC LIMIT 1
SELECT major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.position = 'Vice President'
SELECT event.event_name FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id INNER JOIN member ON attendance.link_to_member = member.member_id WHERE member.first_name = 'Maya' AND member.last_name = 'Mclean'
SELECT count(event.event_id) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison' AND strftime('%Y', event.event_date) = '2019'
SELECT count(DISTINCT attendance.link_to_event) FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.type = 'Meeting' GROUP BY attendance.link_to_event HAVING count(DISTINCT attendance.link_to_event) > 10
SELECT event.event_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event WHERE attendance.link_to_member IN ( SELECT member.member_id FROM member INNER JOIN attendance ON member.member_id = attendance.link_to_member GROUP BY member.member_id HAVING count(attendance.link_to_member) > 20 )
SELECT cast(count(event_id) AS REAL) / count(DISTINCT event_name) FROM event WHERE strftime('%Y', event_date) = '2020' AND TYPE = 'Meeting'
SELECT expense_description FROM expense ORDER BY cost DESC LIMIT 1
SELECT count(member.member_id) FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.major_name = 'Environmental Engineering'
SELECT member.first_name, member.last_name FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Laugh Out Loud'
SELECT member.last_name FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.major_name = 'Law and Constitutional Studies'
SELECT zip_code.county FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE member.first_name = 'Sherri' AND member.last_name = 'Ramsey'
SELECT major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.first_name = 'Tyler' AND member.last_name = 'Hewitt'
SELECT sum(income.amount) FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.position = 'Vice President'
SELECT sum(budget.spent) FROM budget INNER JOIN EVENT ON budget.link_to_event = EVENT.event_id WHERE EVENT.event_name = 'September Meeting' AND budget.category = 'Food'
SELECT zip_code.city, zip_code.state FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE member.position = 'President'
SELECT member.first_name, member.last_name FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.state = 'Illinois'
SELECT sum(budget.spent) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Advertisement' AND event.event_name = 'September Meeting'
SELECT major.department FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.first_name = 'Pierce' AND member.last_name = 'Guidi'
SELECT sum(budget.amount) FROM event INNER JOIN budget ON event.event_id = budget.link_to_event WHERE event.event_name = 'October Speaker'
SELECT approved FROM expense WHERE event_date = '2019-10-08' AND event_name = 'October Meeting'
SELECT avg(expense.cost) FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.first_name = 'Elijah' AND member.last_name = 'Allen' AND strftime('%Y-%m', expense.expense_date) BETWEEN '2019-09' AND '2019-10'
SELECT sum(CASE WHEN strftime('%Y', event_date) = '2019' THEN budget.spent ELSE 0 END) - sum(CASE WHEN strftime('%Y', event_date) = '2020' THEN budget.spent ELSE 0 END) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id
SELECT LOCATION FROM event WHERE event_name = 'Spring Budget Review'
SELECT sum(expense.cost) FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_date = '2019-09-04' AND expense.expense_description = 'Posters'
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT notes FROM income WHERE date_received = '2019-09-14' AND source = 'Fundraising'
SELECT count(major_id) FROM major WHERE department = 'College of Humanities and Social Sciences'
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT zip_code.county FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Adela' AND member.last_name = 'O''Gallagher'
SELECT count(budget.budget_id) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'November Meeting' AND budget.remaining < 0
SELECT sum(budget.amount) FROM event INNER JOIN budget ON event.event_id = budget.link_to_event WHERE event.event_name = 'September Speaker'
SELECT budget.event_status FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id WHERE expense.expense_date = '2019-08-20' AND expense.expense_description = 'Post Cards, Posters'
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Brent' AND member.last_name = 'Thomason'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Human Development and Family Studies' AND member.t_shirt_size = 'Large'
SELECT zip_code.type FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Christof' AND member.last_name = 'Nielson'
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Vice President'
SELECT zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison'
SELECT major.department FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.position = 'President'
SELECT income.date_received FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Connor' AND member.last_name = 'Hilton' AND income.source = 'Dues'
SELECT member.first_name, member.last_name FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.source = 'Dues' ORDER BY income.date_received ASC LIMIT 1
SELECT cast(sum(CASE WHEN event.event_name = 'Yearly Kickoff' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN event.event_name = 'October Meeting' THEN 1 ELSE 0 END) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Advertisement'
SELECT cast(sum(CASE WHEN category = 'Parking' THEN amount ELSE 0 END) AS REAL) * 100 / sum(amount) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'November Speaker'
SELECT sum(expense.cost) FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id WHERE expense.expense_description = 'Pizza'
SELECT count(city) FROM zip_code WHERE county = 'Orange County' AND state = 'Virginia'
SELECT department FROM major GROUP BY department
SELECT zip_code.city, zip_code.county, zip_code.state FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE member.first_name = 'Amy' AND member.last_name = 'Firth'
SELECT expense.expense_description FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget ORDER BY budget.remaining LIMIT 1
SELECT attendance.link_to_member FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'October Meeting'
SELECT major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major GROUP BY major.college ORDER BY count(member.member_id) DESC LIMIT 1
SELECT major.major_name FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.phone = '809-555-3360'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id ORDER BY budget.amount DESC LIMIT 1
SELECT DISTINCT expense.expense_description FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.position = 'Vice President'
SELECT count(member.member_id) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer'
SELECT income.date_received FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Casey' AND member.last_name = 'Mason'
SELECT count(*) FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE zip_code.state = 'Maryland'
SELECT count(attendance.link_to_event) FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id WHERE member.phone = '954-555-6240'
SELECT member.first_name, member.last_name FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code INNER JOIN major ON member.link_to_major = major.major_id WHERE major.department = 'School of Applied Sciences, Technology and Education'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.status = 'Closed' ORDER BY budget.spent / budget.amount DESC LIMIT 1
SELECT count(member_id) FROM member WHERE POSITION = 'President'
SELECT max(spent) FROM budget
SELECT count(event_id) FROM event WHERE strftime('%Y', event_date) = '2020' AND TYPE = 'Meeting'
SELECT sum(spent) FROM budget WHERE category = 'Food'
SELECT member.first_name, member.last_name FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id GROUP BY attendance.link_to_member HAVING count(attendance.link_to_event) > 7
SELECT member.first_name, member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN major ON member.link_to_major = major.major_id WHERE event.event_name = 'Community Theater' AND major.major_name = 'Interior Design'
SELECT member.first_name, member.last_name FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.city = 'Georgetown' AND zip_code.state = 'South Carolina'
SELECT income.amount FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Grant' AND member.last_name = 'Gilmour'
SELECT member.first_name, member.last_name FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.amount > 40
SELECT sum(expense.cost) FROM event INNER JOIN expense ON event.event_id = expense.link_to_event WHERE event.event_name = 'Yearly Kickoff'
SELECT member.first_name, member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Yearly Kickoff'
SELECT member.first_name, member.last_name, income.source FROM income INNER JOIN member ON income.link_to_member = member.member_id ORDER BY income.amount DESC LIMIT 1
SELECT event_name FROM expense ORDER BY cost LIMIT 1
SELECT cast(sum(CASE WHEN event.event_name = 'Yearly Kickoff' THEN expense.cost ELSE 0 END) AS REAL) * 100 / sum(expense.cost) FROM event INNER JOIN expense ON event.event_id = expense.link_to_event
SELECT cast(sum(CASE WHEN major.major_name = 'Finance' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN major.major_name = 'Physics' THEN 1 ELSE 0 END) FROM major INNER JOIN member ON major.major_id = member.link_to_major
SELECT source FROM income WHERE date_received LIKE '2019-09%' ORDER BY amount DESC LIMIT 1
SELECT first_name, last_name, email FROM member WHERE POSITION = 'Student Club'
SELECT count(member.member_id) FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.major_name = 'Physics Teaching'
SELECT count(attendance.link_to_member) FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Community Theater' AND strftime('%Y', event.event_date) = '2019'
SELECT count(attendance.link_to_event), major.major_name FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Luisa' AND member.last_name = 'Guidi'
SELECT sum(budget.spent) / count(budget.spent) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Food' AND event.status = 'Closed'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Advertisement' ORDER BY budget.spent DESC LIMIT 1
SELECT attendance.link_to_event FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE member.first_name = 'Maya' AND member.last_name = 'Mclean' AND event.event_name = 'Women''s Soccer'
SELECT cast(sum(CASE WHEN TYPE = 'Community Service' THEN 1 ELSE 0 END) AS REAL) * 100 / count(event_id) FROM event WHERE event_date LIKE '2019%'
SELECT sum(expense.cost) FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'September Speaker' AND expense.expense_description = 'Posters'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(t_shirt_size) DESC LIMIT 1
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.event_status = 'Closed' AND budget.remaining < 0 ORDER BY budget.remaining LIMIT 1
SELECT DISTINCT expense.expense_description, sum(expense.cost) FROM event INNER JOIN budget ON event.event_id = budget.link_to_event INNER JOIN expense ON budget.budget_id = expense.link_to_budget WHERE event.event_name = 'October Meeting'
SELECT budget.category, budget.amount FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'April Speaker' ORDER BY budget.amount ASC
SELECT budget_id FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT category, amount FROM budget WHERE category = 'Advertisement' ORDER BY amount DESC LIMIT 3
SELECT sum(cost) FROM expense WHERE expense_description = 'Parking'
SELECT sum(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT member.first_name, member.last_name, sum(expense.cost) FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.member_id = 'rec4BLdZHS2Blfp4v' GROUP BY member.first_name, member.last_name
SELECT DISTINCT expense.expense_description FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison'
SELECT DISTINCT expense.expense_description FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.t_shirt_size = 'X-Large'
SELECT member.zip FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE expense.cost < 50
SELECT major.major_name FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Phillip' AND member.last_name = 'Cullen'
SELECT member.position FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Business'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Business' AND member.t_shirt_size = 'Medium'
SELECT DISTINCT event.type FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.remaining > 30
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.location = 'MU 215'
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_date = '2020-03-24T12:00:00'
SELECT major.major_name FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.position = 'Vice President'
SELECT cast(sum(CASE WHEN member.position = 'Member' THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Mathematics'
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.location = 'MU 215'
SELECT count(income_id) FROM income WHERE amount = 50
SELECT count(member_id) FROM member WHERE t_shirt_size = 'X-Large' AND POSITION = 'Member'
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education'
SELECT member.last_name, major.department, major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.major_name = 'Environmental Engineering'
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.location = 'MU 215' AND event.type = 'Guest Speaker' AND budget.spent = 0
SELECT zip_code.city, zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code INNER JOIN major ON member.link_to_major = major.major_id WHERE major.department = 'Electrical and Computer Engineering' AND member.position = 'Member'
SELECT event.event_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.location = '900 E. Washington St.' AND member.position = 'Vice President'
SELECT member.last_name, member.position FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE expense.expense_date = '2019-09-10' AND expense.expense_description = 'Pizza'
SELECT member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer' AND member.position = 'Member'
SELECT cast(sum(CASE WHEN income.amount = 50 THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.member_id) FROM member INNER JOIN income ON member.member_id = income.link_to_member WHERE member.t_shirt_size = 'Medium' AND member.position = 'Member'
SELECT DISTINCT county FROM zip_code WHERE TYPE = 'PO Box'
SELECT zip_code.zip_code FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE zip_code.state = 'PR' AND zip_code.county = 'San Juan Municipio' AND zip_code.type = 'PO Box'
SELECT event_name FROM event WHERE TYPE = 'Game' AND status = 'Closed' AND event_date BETWEEN '2019-03-15' AND '2020-03-20'
SELECT budget.link_to_event FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget WHERE expense.cost > 50
SELECT attendance.link_to_member, attendance.link_to_event FROM attendance INNER JOIN expense ON attendance.link_to_member = expense.link_to_member WHERE expense.approved = 'true' AND strftime('%Y-%m-%d', expense.expense_date) BETWEEN '2019-01-10' AND '2019-11-19'
SELECT major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.first_name = 'Katy'
SELECT member.phone FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.college = 'College of Agriculture and Applied Sciences' AND major.major_name = 'Business'
SELECT member.email FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE strftime('%Y-%m-%d', expense.expense_date) BETWEEN '2019-09-10' AND '2019-11-19' AND expense.cost > 20
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'College of Education & Human Services'
SELECT cast(sum(CASE WHEN budget.remaining < 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id
SELECT event_id, LOCATION, status FROM event WHERE event_date BETWEEN '2019-11-01' AND '2020-03-31'
SELECT DISTINCT expense_description FROM expense WHERE cost > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'X-Large'
SELECT cast(sum(CASE WHEN TYPE = 'PO Box' THEN 1 ELSE 0 END) AS REAL) * 100 / count(zip_code.zip_code) FROM zip_code
SELECT event.event_name, event.location FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.remaining > 0
SELECT event.event_name, event.event_date FROM expense INNER JOIN attendance ON expense.expense_id = attendance.link_to_event INNER JOIN event ON attendance.link_to_event = event.event_id WHERE expense.cost BETWEEN 50 AND 100 AND expense.expense_description = 'Pizza'
SELECT member.first_name, member.last_name, major.major_name FROM expense INNER JOIN member ON expense.link_to_member = member.member_id INNER JOIN major ON member.link_to_major = major.major_id WHERE expense.cost > 100
SELECT zip_code.city, zip_code.county FROM income INNER JOIN zip_code ON income.link_to_member = zip_code.zip_code WHERE income.amount > 40
SELECT member.first_name, member.last_name FROM expense INNER JOIN member ON expense.link_to_member = member.member_id GROUP BY member.first_name, member.last_name ORDER BY sum(expense.cost) DESC LIMIT 1
SELECT avg(expense.cost) FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.position != 'Member'
SELECT event.event_name FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Parking' ORDER BY expense.cost ASC LIMIT 1
SELECT cast(sum(expense.cost) AS REAL) * 100 / count(event.event_id) FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.type = 'Game'
SELECT budget.budget_id FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id WHERE expense.expense_description = 'Water, chips, cookies' ORDER BY expense.cost DESC LIMIT 1
SELECT member.first_name, member.last_name FROM member INNER JOIN expense ON member.member_id = expense.link_to_member ORDER BY expense.cost DESC LIMIT 5
SELECT member.first_name, member.last_name, member.phone FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE expense.cost > ( SELECT avg(cost) FROM expense )
SELECT cast(sum(CASE WHEN zip_code.state = 'Maine' THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.position) - cast(sum(CASE WHEN zip_code.state = 'Vermont' THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.position) FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code
SELECT major.major_name, major.department FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Garrett' AND member.last_name = 'Gerke'
SELECT member.first_name, member.last_name, expense.cost FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE expense.expense_description = 'Water, Veggie tray, supplies'
SELECT member.last_name, member.phone FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Elementary Education'
SELECT budget.category, budget.amount FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'January Speaker'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Food'
SELECT member.first_name, member.last_name, income.amount FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.date_received = '2019-09-09'
SELECT budget.category FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget WHERE expense.expense_description = 'Posters'
SELECT first_name, last_name, major.college FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Secretary'
SELECT sum(budget.spent), event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Speaker Gifts'
SELECT zip_code.city FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE member.first_name = 'Garrett' AND member.last_name = 'Girke'
SELECT member.first_name, member.last_name, member.position FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.city = 'Lincolnton' AND zip_code.state = 'North Carolina' AND member.zip = 28092
SELECT count(gasstationid) FROM gasstations WHERE country = 'CZE' AND segment = 'Premium'
SELECT cast(sum(CASE WHEN customers.currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN customers.currency = 'CZK' THEN 1 ELSE 0 END) FROM customers
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y', yearmonth.date) = '2012' AND customers.segment = 'LAM' ORDER BY yearmonth.consumption ASC LIMIT 1
SELECT avg(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y', yearmonth.date) = '2013' AND customers.segment = 'SME'
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y', yearmonth.date) = '2011' AND customers.currency = 'CZK' GROUP BY customers.customerid ORDER BY sum(yearmonth.consumption) DESC LIMIT 1
SELECT count(customers.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y', yearmonth.date) = '2012' AND customers.segment = 'KAM' AND yearmonth.consumption < 30000
SELECT sum(CASE WHEN customers.currency = 'CZK' THEN yearmonth.consumption ELSE 0 END) - sum(CASE WHEN customers.currency = 'EUR' THEN yearmonth.consumption ELSE 0 END) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y', yearmonth.date) = '2012'
SELECT yearmonth.date FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR' GROUP BY yearmonth.date ORDER BY count(yearmonth.date) DESC LIMIT 1
SELECT segment FROM yearmonth ORDER BY consumption ASC LIMIT 1
SELECT date FROM yearmonth ORDER BY consumption DESC LIMIT 1
SELECT substr(yearmonth.date, 1, 4) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE substr(yearmonth.date, 1, 4) = '2013' AND customers.segment = 'SME'
SELECT sum(iif(customers.segment = 'SME', yearmonth.consumption, 0)) - sum(iif(customers.segment = 'LAM', yearmonth.consumption, 0)) - sum(iif(customers.segment = 'LAM', yearmonth.consumption, 0)) - sum(iif(customers.segment = 'KAM', yearmonth.consumption, 0)) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y', yearmonth.date) = '2013' AND customers.currency = 'CZK'
SELECT customers.segment FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y', yearmonth.date) BETWEEN '2012' AND '2013' GROUP BY customers.segment ORDER BY sum(yearmonth.consumption) DESC LIMIT 1
SELECT sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y', yearmonth.date) BETWEEN '201308' AND '201311' AND customers.customerid = 6
SELECT sum(CASE WHEN country = 'CZE' THEN 1 ELSE 0 END) - sum(CASE WHEN country = 'SVK' THEN 1 ELSE 0 END) AS diff FROM gasstations
SELECT sum(CASE WHEN customerid = 7 THEN consumption ELSE 0 END) - sum(CASE WHEN customerid = 5 THEN consumption ELSE 0 END) FROM yearmonth WHERE date = '201304'
SELECT sum(CASE WHEN customers.currency = 'CZK' THEN 1 ELSE 0 END) - sum(CASE WHEN customers.currency = 'EUR' THEN 1 ELSE 0 END) AS diff FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'SME'
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y%m', yearmonth.date) = '201310' AND customers.currency = 'EUR' ORDER BY yearmonth.consumption DESC LIMIT 1
SELECT customers.customerid, sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'KAM' GROUP BY customers.customerid ORDER BY sum(yearmonth.consumption) DESC LIMIT 1
SELECT sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE strftime('%Y-%m', yearmonth.date) = '201305' AND customers.segment = 'KAM'
SELECT cast(sum(CASE WHEN customers.segment = 'LAM' THEN 1 ELSE 0 END) AS REAL) * 100 / count(customers.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.consumption > 46.73
SELECT country, count(gasstationid) FROM gasstations WHERE segment = 'Value for money' GROUP BY country
SELECT cast(sum(CASE WHEN customers.currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / count(customers.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'KAM'
SELECT cast(sum(CASE WHEN consumption > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM yearmonth WHERE date = '201202'
SELECT cast(sum(CASE WHEN country = 'SK' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM gasstations WHERE segment = 'Premium'
SELECT customerid FROM yearmonth WHERE `date` = '201309' ORDER BY consumption DESC LIMIT 1
SELECT customers.segment FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date = '201309' GROUP BY customers.segment ORDER BY sum(yearmonth.consumption) LIMIT 1
SELECT customers.segment FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date = '201206' GROUP BY customers.segment ORDER BY count(customers.segment) LIMIT 1
SELECT max(consumption) FROM yearmonth WHERE strftime('%Y', `date`) = '2012'
SELECT sum(yearmonth.consumption) / 12 FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR'
SELECT DISTINCT products.description FROM products INNER JOIN transactions_1k ON products.productid = transactions_1k.productid INNER JOIN yearmonth ON transactions_1k.date = yearmonth.date WHERE substr(yearmonth.date, 1, 7) = '201309'
SELECT DISTINCT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE strftime('%Y', transactions_1k.date) = '201306'
SELECT DISTINCT gasstations.chainid FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE'
SELECT DISTINCT products.description FROM products INNER JOIN transactions_1k ON products.productid = transactions_1k.productid WHERE transactions_1k.price = ( SELECT max(price) FROM transactions_1k )
SELECT avg(price) FROM transactions_1k WHERE date LIKE '2012-01%'
SELECT count(customers.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR' AND yearmonth.consumption > 1000
SELECT DISTINCT products.description FROM products INNER JOIN transactions_1k ON products.productid = transactions_1k.productid INNER JOIN gasstations ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE'
SELECT DISTINCT transactions_1k.time FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.chainid = 11
SELECT count(*) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE' AND transactions_1k.price > 1000
SELECT count(transactions_1k.transactionid) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE' AND strftime('%Y-%m-%d', transactions_1k.date) > '2012-01-01'
SELECT avg(transactions_1k.price) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE'
SELECT avg(transactions_1k.price) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE customers.currency = 'EUR'
SELECT customerid FROM transactions_1k WHERE `date` = '2012-08-25' GROUP BY customerid ORDER BY count(customerid) DESC LIMIT 1
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.date = '2012-08-25' GROUP BY gasstations.country
SELECT customers.currency FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.time = '16:25:00' AND transactions_1k.date = '2012-08-24'
SELECT customers.segment FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.date = '2012-08-23' AND transactions_1k.time = '21:20:00'
SELECT sum(CASE WHEN customers.currency = 'EUR' AND transactions_1k.time < '13:00:00' THEN 1 ELSE 0 END) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.date = '2012-08-26'
SELECT segment FROM customers WHERE customerid = ( SELECT min(customerid) FROM customers )
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.date = '2012-08-24' AND transactions_1k.time = '12:42:00'
SELECT productid FROM transactions_1k WHERE date = '2012-08-23' AND time = '21:20:00'
SELECT yearmonth.date, yearmonth.consumption FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date = '2012-08-24' AND yearmonth.consumption = 124.05
SELECT sum(CASE WHEN gasstations.country = 'CZE' THEN 1 ELSE 0 END) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE strftime('%Y-%m-%d', transactions_1k.time) = '2012-08-26' AND transactions_1k.time BETWEEN '08:00:00' AND '09:00:00'
SELECT customers.currency FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE substr(yearmonth.date, 1, 7) = '201306'
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.cardid = 667467
SELECT customers.currency FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date = '2012-08-24' AND yearmonth.consumption = 548.4
SELECT cast(sum(CASE WHEN customers.currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / count(customers.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date = '2012-08-25'
SELECT (sum(yearmonth.consumption) - sum(yearmonth2.consumption)) / sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid INNER JOIN yearmonth AS yearmonth2 ON customers.customerid = yearmonth2.customerid WHERE yearmonth.date = '2012-08-25' AND customers.customerid = 6348
SELECT gasstationid FROM transactions_1k GROUP BY gasstationid ORDER BY sum(amount) DESC LIMIT 1
SELECT cast(sum(CASE WHEN segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM gasstations WHERE country = 'SVK'
SELECT sum(transactions_1k.amount), sum(transactions_1k.price) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid INNER JOIN transactions_1k ON yearmonth.customerid = transactions_1k.customerid WHERE yearmonth.date = '201201' AND customers.customerid = 38508
SELECT description FROM products ORDER BY productid DESC LIMIT 5
SELECT customers.customerid, avg(transactions_1k.price) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid GROUP BY customers.customerid ORDER BY count(customers.customerid) DESC LIMIT 1
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.productid = 2 ORDER BY transactions_1k.price DESC LIMIT 1
SELECT yearmonth.consumption FROM yearmonth INNER JOIN transactions_1k ON yearmonth.customerid = transactions_1k.customerid WHERE transactions_1k.productid = 5 AND transactions_1k.amount > 29
