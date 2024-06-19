SELECT max(frpm.`free meal count (k-12)`) / max(frpm.`enrollment (k-12)`) FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.county = 'Alameda'
SELECT min(`free meal count (ages 5-17)`) / min(`enrollment (ages 5-17)`) FROM frpm WHERE `educational option type` = 'Continuation School' LIMIT 3
SELECT schools.zip FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Fresno' AND frpm.`charter school (y/n)` = 1
SELECT schools.mailstreet FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode ORDER BY frpm."FRPM count (k-12)" DESC LIMIT 1
SELECT schools.phone FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school (y/n)` = 1 AND schools.opendate > '2000-01-01'
SELECT count(schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.avgscrmath < 400 AND schools.virtual = 'F'
SELECT DISTINCT schools.school FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.numge1500 > 500 AND schools.magnet = 1
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr > 1500 ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT sum(satscores.numtsttakr) FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode INNER JOIN frpm ON schools.cdscode = frpm.cdscode ORDER BY frpm."FRPM count (k-12)" DESC LIMIT 1
SELECT count(DISTINCT schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.avgscrmath > 560 AND schools.fundingtype = 'Directly funded'
SELECT frpm.`frpm count (ages 5-17)` FROM satscores INNER JOIN frpm ON satscores.sname = frpm.`school name` ORDER BY satscores.avgscrread DESC LIMIT 1
SELECT cdscode FROM frpm WHERE `enrollment (k-12)` + `enrollment (ages 5-17)` > 500
SELECT frpm.`free meal count (ages 5-17)` / frpm.`enrollment (ages 5-17)` FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE satscores.numge1500 / satscores.numtsttakr > 0.3 ORDER BY frpm.`free meal count (ages 5-17)` / frpm.`enrollment (ages 5-17)` DESC LIMIT 1
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.numge1500 / satscores.numtsttakr DESC LIMIT 3
SELECT schools.school, schools.ncesschool FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode ORDER BY frpm.`enrollment (ages 5-17)` DESC LIMIT 5
SELECT dname FROM satscores WHERE rtype = 'D' ORDER BY avgscrread DESC LIMIT 1
SELECT count(*) FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.county = 'Alameda' AND satscores.numtsttakr < 100
SELECT schools.charternum FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.avgscrwrite = 499
SELECT count(schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.county = 'Contra Costa' AND schools.fundingtype = 'Directly funded' AND satscores.numtsttakr <= 250
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrmath DESC LIMIT 1
SELECT count(cdscode) FROM frpm WHERE `county name` = 'Amador' AND `low grade` = 9 AND `high grade` = 12
SELECT count(*) FROM frpm WHERE `county name` = 'Los Angeles' AND `free meal count (k-12)` > 500 AND `free meal count (k-12)` < 700
SELECT satscores.sname FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.county = 'Contra Costa' ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT schools.school, schools.street FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`enrollment (k-12)` - frpm.`enrollment (ages 5-17)` > 30
SELECT satscores.sname FROM satscores INNER JOIN frpm ON satscores.cds = frpm.cdscode WHERE frpm.`percent (%) eligible free (k-12)` > 0.1 AND satscores.numtsttakr >= 1500
SELECT DISTINCT schools.fundingtype FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.avgscrmath > 400 AND schools.city = 'Riverside'
SELECT DISTINCT schools.school, schools.street, schools.city, schools.state, schools.zip FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.city = 'Monterey' AND frpm.`free meal count (ages 5-17)` > 800
SELECT satscores.sname, satscores.avgscrwrite, schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE strftime('%Y', schools.opendate) > '1991' AND strftime('%Y', schools.closeddate) < '2000'
SELECT schools.school, schools.doc FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.fundingtype = 'Locally funded' AND frpm.`enrollment (k-12)` - frpm.`enrollment (ages 5-17)` > ( SELECT avg(frpm.`enrollment (k-12)` - frpm.`enrollment (ages 5-17)`) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.fundingtype = 'Locally funded' )
SELECT schools.opendate FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`school type` = 'K-12 Schools (Public)' ORDER BY frpm.`enrollment (k-12)` DESC LIMIT 1
SELECT schools.city FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.enroll12 LIMIT 5
SELECT frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode ORDER BY frpm.`enrollment (k-12)` DESC LIMIT 10, 1
SELECT frpm.`frpm count (k-12)` / frpm.`enrollment (k-12)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.soc = 66 ORDER BY frpm.`free meal count (k-12)` DESC LIMIT 5
SELECT schools.website, schools.school FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`free meal count (ages 5-17)` BETWEEN 1900 AND 2000
SELECT cast(frpm.`free meal count (ages 5-17)` AS REAL) / frpm.`enrollment (ages 5-17)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.admfname1 = 'Kacey' AND schools.admlname1 = 'Gibson'
SELECT schools.admemail1 FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`charter school (y/n)` = 1 ORDER BY frpm.`enrollment (k-12)` LIMIT 1
SELECT schools.admfname1, schools.admlname1 FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numge1500 = 3 ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT schools.street, schools.city, schools.zip, schools.state FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.numge1500 / satscores.numtsttakr LIMIT 1
SELECT schools.website FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr BETWEEN 2000 AND 3000
SELECT cast(sum(satscores.numtsttakr) AS REAL) / count(satscores.cds) FROM satscores INNER JOIN frpm ON satscores.cds = frpm.cdscode WHERE strftime('%Y', schools.opendate) BETWEEN '1980' AND '1980' AND frpm.`county name` = 'Fresno'
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.dname = 'Fresno Unified' ORDER BY satscores.avgscrread LIMIT 1
SELECT schools.school FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds ORDER BY satscores.avgscrread DESC LIMIT 5
SELECT frpm.`educational option type` FROM satscores INNER JOIN frpm ON satscores.cds = frpm.cdscode ORDER BY satscores.avgscrmath DESC LIMIT 1
SELECT avgscrmath, cname FROM satscores ORDER BY avgscrmath LIMIT 1
SELECT avgscrwrite, schools.city FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr >= 1500 ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT schools.school, satscores.avgscrwrite FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.admfname1 = 'Ricci' AND schools.admlname1 = 'Ulrich'
SELECT count(cdscode) FROM schools WHERE doc = 31 AND gsoffered = '12'
SELECT cast(sum(CASE WHEN schools.opendate LIKE '1980%' THEN 1 ELSE 0 END) AS REAL) / 12 FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Alameda' AND schools.doc = 52
SELECT cast(sum(CASE WHEN doc = 54 THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN doc = 52 THEN 1 ELSE 0 END) FROM schools WHERE county = 'Orange'
SELECT DISTINCT schools.county, schools.school, schools.closeddate FROM schools WHERE schools.statustype = 'Closed'
SELECT schools.street, schools.school FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrmath DESC LIMIT 5, 1
SELECT schools.mailstreet, schools.eilname FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds ORDER BY satscores.avgscrread LIMIT 1
SELECT count(schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.numtsttakr >= 1500 AND schools.mailcity = 'Lakeport'
SELECT count(schools.cdscode) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.mailcity = 'Fresno'
SELECT school, mailzip FROM schools WHERE admfname1 = 'Avetik' AND admfname2 = 'Avetik' AND admlname1 = 'Administration' AND admlname2 = 'Atoian'
SELECT cast(sum(CASE WHEN schools.county = 'Colusa' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN schools.county = 'Humboldt' THEN 1 ELSE 0 END) FROM schools WHERE schools.mailstate = 'CA'
SELECT count(schools.school) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'San Joaquin' AND schools.mailstate = 'CA' AND schools.statustype = 'Active'
SELECT schools.phone, schools.ext FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrwrite DESC LIMIT 322, 1
SELECT phone, ext, school FROM schools WHERE zip = '95203-3704'
SELECT website FROM schools WHERE admfname1 = 'Mike' AND admlname1 = 'Larson' AND admfname2 = 'Dante' AND admlname2 = 'Alvarez'
SELECT website FROM schools WHERE county = 'San Joaquin' AND charter = 1 AND virtual = 'P'
SELECT count(*) FROM schools WHERE charter = 1 AND city = 'Hickman' AND doc = 52
SELECT sum(CASE WHEN frpm.`percent (%) eligible free (k-12)` < 0.18 THEN 1 ELSE 0 END) FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.county = 'Los Angeles' AND schools.charter = 0
SELECT schools.school, schools.city FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school number` = '00D2' AND schools.charter = 1
SELECT count(*) FROM schools WHERE charternum = '00D4' AND mailcity = 'Hickman'
SELECT cast(sum(CASE WHEN schools.fundingtype = 'Locally funded' THEN 1 ELSE 0 END) AS REAL) * 100 / count(schools.fundingtype) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Santa Clara'
SELECT count(cdscode) FROM schools WHERE fundingtype = 'Directly funded' AND county = 'Stanislaus' AND opendate BETWEEN '2000-01-01' AND '2005-12-31'
SELECT sum(CASE WHEN schools.city = 'San Francisco' AND schools.closeddate LIKE '1989%' THEN 1 ELSE 0 END) FROM schools
SELECT frpm.`county name` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE strftime('%Y', schools.closeddate) BETWEEN '1980' AND '1989' AND schools.soc = 11 GROUP BY frpm.`county name` ORDER BY count(frpm.`county name`) DESC LIMIT 1
SELECT ncesdist FROM schools WHERE soc = 31
SELECT count(schools.school) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Alpine' AND schools.closeddate IS NULL
SELECT DISTINCT frpm.`district code` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.city = 'Fresno' AND schools.magnet = 0
SELECT sum(frpm.`enrollment (ages 5-17)`) FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.edopscode = 'SSS' AND frpm.`academic year` = '2014-2015'
SELECT frpm.`free meal count (ages 5-17)` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.mailstreet = 'PO Box 1040' AND schools.edopsname = 'Youth Authority School'
SELECT min(frpm.`low grade`) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.edopscode = 'SPECON' AND schools.ncesdist = '613360'
SELECT DISTINCT schools.eilname, frpm.`school name` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`county code` = 37 AND frpm.`nslp provision status` = 'Breakfast Provision 2'
SELECT schools.city FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.eilcode = 'HS' AND frpm.`nslp provision status` = 'Lunch Provision 2' AND frpm.`low grade` = 9 AND frpm.`high grade` = 12 AND frpm.`county name` = 'Merced'
SELECT frpm.`school name`, frpm.`percent (%) eligible frpm (ages 5-17)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.county = 'Los Angeles' AND schools.gsoffered = 'K-12'
SELECT gsserved FROM schools WHERE city = 'Adelanto' GROUP BY gsserved ORDER BY count(gsserved) DESC LIMIT 1
SELECT frpm.`county name`, count(schools.cdscode) FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.county IN ('San Diego', 'Santa Barbara') AND schools.virtual = 'F' GROUP BY frpm.`county name` ORDER BY count(schools.cdscode) DESC LIMIT 1
SELECT frpm.`school type`, schools.school, schools.latitude FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode ORDER BY schools.latitude DESC LIMIT 1
SELECT schools.city, frpm.`school name` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.state = 'CA' ORDER BY schools.latitude ASC LIMIT 1
SELECT gsoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(schools.school), count(DISTINCT schools.city) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.gsoffered = 'K-8' AND schools.magnet = 1 AND frpm.`nslp provision status` = 'Multiple Provision Types'
SELECT DISTINCT admfname1, district FROM schools ORDER BY admfname1 DESC LIMIT 2
SELECT cast(frpm."`free meal count (k-12)`" AS REAL) * 100 / frpm."`enrollment (k-12)`" FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.admfname1 = 'Alusine'
SELECT schools.admlname2, schools.district, schools.county, schools.school FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school number` = 40
SELECT schools.admemail1 FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.county = 'San Bernardino' AND schools.district = 'San Bernardino City Unified' AND schools.opendate BETWEEN '2009-01-01' AND '2010-12-31' AND frpm.`school type` IN ('Public Intermediate/Middle Schools', 'Unified Schools')
SELECT schools.admemail1, schools.school FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr >= 1500 ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a3 = 'east Bohemia' AND account.frequency = 'POPLATEK PO OBRATU'
SELECT count(district.district_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a3 = 'Prague'
SELECT avg(a12), avg(a13) FROM district
SELECT count(district.district_id) FROM district INNER JOIN client ON district.district_id = client.district_id WHERE client.gender = 'F' AND district.a11 BETWEEN 6000 AND 10000
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'north Bohemia' AND client.gender = 'M' AND district.a11 > 8000
SELECT client.client_id FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' ORDER BY client.birth_date DESC LIMIT 1
SELECT client.client_id FROM client INNER JOIN district ON client.district_id = district.district_id ORDER BY client.birth_date ASC, district.a11 DESC LIMIT 1
SELECT count(client.client_id) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON account.account_id = disp.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND disp.type = 'OWNER'
SELECT client.client_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON card.disp_id = disp.disp_id WHERE card.type = 'classic' AND card.issued IS NULL
SELECT account.account_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE strftime('%Y', loan.date) = '1997' AND account.frequency = 'POPLATEK TYDNE' ORDER BY loan.amount LIMIT 1
SELECT account.account_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE loan.duration > 12 AND strftime('%Y', account.date) = '1993' ORDER BY loan.amount DESC LIMIT 1
SELECT district.a2 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' AND client.birth_date < '1950'
SELECT account_id FROM account WHERE date = '1995-01-01'
SELECT account.account_id FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.date < '1997-01-01' AND trans.amount > 3000
SELECT client.client_id FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN client ON disp.client_id = client.client_id WHERE card.issued = '1994-03-03'
SELECT date FROM account WHERE account_id = 840
SELECT district_id FROM account WHERE date = '1994-08-25'
SELECT max(trans.amount) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN trans ON disp.account_id = trans.account_id WHERE card.issued = '1996-10-21'
SELECT client.gender FROM client INNER JOIN district ON client.district_id = district.district_id ORDER BY district.a11 DESC LIMIT 1
SELECT trans.amount FROM account INNER JOIN loan ON account.account_id = loan.account_id INNER JOIN trans ON account.account_id = trans.account_id ORDER BY loan.amount DESC LIMIT 1
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a2 = 'Jesenik' AND client.gender = 'F'
SELECT card.disp_id FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN trans ON disp.account_id = trans.account_id WHERE card.issued = '1998-09-02' AND trans.amount = 5100
SELECT count(account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a2 = 'Litomerice' AND strftime('%Y', account.date) = '1996'
SELECT district.a2 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' AND client.birth_date = '1976-01-29'
SELECT client.birth_date FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE loan.amount = 98832 AND loan.date = '1996-01-03'
SELECT client.client_id FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'Prague'
SELECT cast(sum(CASE WHEN client.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.gender) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'south Bohemia'
SELECT cast((sum(CASE WHEN trans.date = '1993-07-05' THEN trans.balance ELSE 0 END) - sum(CASE WHEN trans.date = '1998-12-27' THEN trans.balance ELSE 0 END)) AS REAL) * 100 / sum(CASE WHEN trans.date = '1998-12-27' THEN trans.balance ELSE 0 END) FROM account INNER JOIN trans ON account.account_id = trans.account_id
SELECT cast(sum(CASE WHEN status = 'A' THEN 1 ELSE 0 END) AS REAL) * 100 / count(loan_id) FROM loan
SELECT cast(sum(CASE WHEN amount < 100000 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM loan WHERE status = 'C'
SELECT account.account_id, district.a2, district.a3 FROM account INNER JOIN district ON account.district_id = district.district_id WHERE strftime('%Y', account.date) = '1993' AND account.frequency = 'POPLATEK PO OBRATU'
SELECT account.account_id, account.frequency FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a3 = 'east Bohemia' AND strftime('%Y', account.date) BETWEEN '1995' AND '2000'
SELECT account.account_id, account.date FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a2 = 'Prachatice'
SELECT district.a2, district.a3 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.loan_id = 4990
SELECT account.account_id, district.a2, district.a3 FROM account INNER JOIN district ON account.district_id = district.district_id INNER JOIN loan ON account.account_id = loan.account_id WHERE loan.amount > 300000
SELECT loan.loan_id, district.a2, district.a11 FROM loan INNER JOIN district ON loan.account_id = district.district_id WHERE loan.duration = 60
SELECT district.a12, district.a13 FROM district INNER JOIN loan ON district.district_id = loan.account_id WHERE loan.status = 'D'
SELECT cast(sum(CASE WHEN district.a2 = 'Decin' THEN 1 ELSE 0 END) AS REAL) * 100 / count(account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE strftime('%Y', account.date) = '1993'
SELECT account_id FROM account WHERE frequency = 'POPLATEK MESICNE'
SELECT district.a2 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' GROUP BY district.a2 ORDER BY count(district.a2) DESC LIMIT 10
SELECT district.a2 FROM trans INNER JOIN account ON trans.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE trans.date LIKE '1996-01%' AND trans.type = 'VYDAJ' GROUP BY district.a2 ORDER BY sum(trans.amount) DESC LIMIT 10
SELECT count(district.district_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a3 = 'south Bohemia' AND card.card_id IS NULL
SELECT district.a3 FROM district INNER JOIN loan ON district.district_id = loan.account_id WHERE loan.status = 'C' GROUP BY district.a3 ORDER BY count(district.a3) DESC LIMIT 1
SELECT avg(loan.amount) FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'M'
SELECT district_id, a2 FROM district ORDER BY a13 DESC LIMIT 1
SELECT count(account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a16 = ( SELECT max(a16) FROM district )
SELECT count(account.account_id) FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.frequency = 'POPLATEK MESICNE' AND trans.operation = 'VYBER KARTOU' AND trans.balance < 0
SELECT count(loan.account_id) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE account.frequency = 'POPLATEK MESICNE' AND loan.amount > 250000 AND loan.date BETWEEN '1995-01-01' AND '1997-12-31' AND loan.status = 'A'
SELECT count(account_id) FROM loan WHERE status = 'C'
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a15 = ( SELECT max(a15) FROM district ) AND client.gender = 'M'
SELECT count(card.card_id) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE card.type = 'gold' AND disp.type = 'DISPONENT'
SELECT count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a2 = 'Pisek'
SELECT district.a2 FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE trans.amount > 10000 AND strftime('%Y', trans.date) = '1997' GROUP BY district.a2
SELECT account.account_id FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN order ON account.account_id = order.account_id WHERE district.a2 = 'Pisek' AND order.k_symbol = 'SIPO'
SELECT account.account_id FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN account ON disp.account_id = account.account_id WHERE card.type IN ('gold', 'junior')
SELECT avg(trans.amount) FROM trans INNER JOIN account ON trans.account_id = account.account_id WHERE strftime('%Y', trans.date) = '2021' AND trans.operation = 'VYBER KARTOU'
SELECT card.disp_id FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE card.issued LIKE '1998%' AND trans.operation = 'VYBER KARTOU' GROUP BY card.disp_id HAVING sum(trans.amount) < ( SELECT avg(sum(trans.amount)) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE card.issued LIKE '1998%' AND trans.operation = 'VYBER KARTOU' GROUP BY card.disp_id )
SELECT client.client_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id INNER JOIN loan ON loan.account_id = disp.account_id WHERE client.gender = 'F'
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'south Bohemia' AND client.gender = 'F'
SELECT account.account_id FROM account INNER JOIN district ON account.district_id = district.district_id INNER JOIN disp ON account.account_id = disp.account_id WHERE district.a2 = 'Tabor' AND disp.type = 'OWNER'
SELECT district.a11 FROM district INNER JOIN account ON district.district_id = account.district_id WHERE account.type = 'OWNER' AND district.a11 > 8000 AND district.a11 < 9000
SELECT count(district.district_id) FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE district.a3 = 'North Bohemia' AND trans.bank = 'AB'
SELECT district.a2 FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE trans.type = 'VYDAJ'
SELECT avg(district.a15) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE account.date LIKE '1997%' AND district.a15 > 4000
SELECT count(card.card_id) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE card.type = 'classic' AND disp.type = 'OWNER'
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a2 = 'Hl.m. Praha' AND client.gender = 'M'
SELECT cast(sum(CASE WHEN TYPE = 'gold' AND issued < '1998' THEN 1 ELSE 0 END) AS REAL) * 100 / count(card_id) FROM card
SELECT client.client_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN loan ON loan.account_id = disp.account_id ORDER BY loan.amount DESC LIMIT 1
SELECT district.a15 FROM district INNER JOIN account ON district.district_id = account.district_id WHERE account.account_id = 532
SELECT account.district_id FROM order INNER JOIN account ON order.account_id = account.account_id WHERE order.order_id = 33333
SELECT trans.operation FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE client.client_id = 3356 AND trans.operation = 'VYBER'
SELECT count(account.account_id) FROM account INNER JOIN loan ON account.account_id = loan.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND loan.amount < 200000
SELECT card.type FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE disp.client_id = 13539
SELECT district.a3 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.client_id = 3541
SELECT district.district_id FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN loan ON account.account_id = loan.account_id WHERE loan.status = 'A' GROUP BY district.district_id ORDER BY count(account.account_id) DESC LIMIT 1
SELECT account_id FROM order WHERE order_id = 32423
SELECT trans.trans_id FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.district_id = 5
SELECT count(account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a2 = 'Jesenik'
SELECT client.client_id FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN client ON disp.client_id = client.client_id WHERE card.issued > '1996-01-01' AND card.type = 'junior'
SELECT cast(sum(CASE WHEN client.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a11 > 10000
SELECT sum(loan.amount) - sum(loan.amount) FROM loan INNER JOIN client ON loan.account_id = client.client_id WHERE client.gender = 'M' AND strftime('%Y', loan.date) BETWEEN '1996' AND '1997'
SELECT count(*) FROM trans WHERE TYPE = 'VYBER KARTOU' AND strftime('%Y', `date`) > '1995'
SELECT sum(CASE WHEN a3 = 'east Bohemia' THEN a16 ELSE 0 END) - sum(CASE WHEN a3 = 'north Bohemia' THEN a16 ELSE 0 END) FROM district
SELECT count(disp_id) FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT account.frequency, trans.amount FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.account_id = 3539
SELECT birth_date FROM client WHERE client_id = 130
SELECT count(card.card_id) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE disp.type = 'OWNER'
SELECT sum(loan.amount), sum(loan.payments) FROM loan INNER JOIN disp ON loan.account_id = disp.account_id WHERE disp.client_id = 992
SELECT sum(trans.amount), client.gender FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE client.client_id = 4 AND account.account_id = 851 GROUP BY client.gender
SELECT card.type FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE disp.client_id = 9
SELECT sum(trans.amount) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE client.client_id = 617 AND strftime('%Y', account.date) = '1998'
SELECT client.client_id FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'East Bohemia' AND client.birth_date BETWEEN '1983-01-01' AND '1987-12-31'
SELECT client.client_id FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'F' ORDER BY loan.amount DESC LIMIT 3
SELECT count(client.client_id) FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'M' AND client.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND loan.amount > 4000
SELECT count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a2 = 'Beroun' AND strftime('%Y', account.date) > '1996'
SELECT count(client.client_id) FROM client INNER JOIN card ON client.client_id = card.disp_id WHERE client.gender = 'F' AND card.type = 'junior'
SELECT cast(sum(CASE WHEN client.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.gender) FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id
SELECT cast(sum(CASE WHEN client.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.gender) FROM client INNER JOIN account ON client.district_id = account.district_id WHERE account.frequency = 'POPLATEK TYDNE'
SELECT count(client.client_id) FROM client INNER JOIN account ON client.district_id = account.district_id WHERE account.frequency = 'POPLATEK TYDNE'
SELECT account.account_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE loan.duration > 24 AND strftime('%Y', account.date) < '1997' ORDER BY loan.amount ASC LIMIT 1
SELECT account.account_id FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id WHERE client.gender = 'F' AND district.a11 = ( SELECT min(a11) FROM district )
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'east Bohemia' AND strftime('%Y', client.birth_date) = '1920'
SELECT count(account.account_id) FROM account INNER JOIN loan ON account.account_id = loan.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND loan.duration = 24
SELECT avg(loan.amount) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE account.frequency = 'POPLATEK PO OBRATU' AND loan.status = 'C'
SELECT client.client_id, client.district_id FROM client INNER JOIN disp ON client.client_id = disp.client_id WHERE disp.type = 'OWNER'
SELECT client.client_id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', client.birth_date) AS age FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id WHERE card.type = 'gold'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(bond_type) DESC LIMIT 1
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' AND atom.element = 'cl'
SELECT avg(atom.element = 'o') FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '-'
SELECT cast(sum(CASE WHEN bond.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.label = '+'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' AND atom.element = 'na'
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#' AND molecule.label = '+'
SELECT cast(sum(CASE WHEN atom.element = 'c' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.atom_id) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = ' = '
SELECT count(bond_id) FROM bond WHERE bond_type = '#'
SELECT count(atom_id) FROM atom WHERE element != 'br'
SELECT count(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR099' AND label = '+'
SELECT molecule_id FROM atom WHERE element = 'si'
SELECT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR004_8_9'
SELECT DISTINCT atom.element FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = ' = '
SELECT label FROM molecule WHERE molecule_id IN ( SELECT molecule_id FROM atom WHERE element = 'h' ) GROUP BY label ORDER BY count(label) DESC LIMIT 1
SELECT bond.bond_type FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'te'
SELECT connected.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '-'
SELECT atom.atom_id FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.label = '-'
SELECT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' GROUP BY atom.element ORDER BY count(atom.element) ASC LIMIT 1
SELECT bond.bond_type FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE connected.atom_id = 'TR004_8' AND connected.atom_id2 = 'TR004_20'
SELECT DISTINCT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element != 'sn' AND molecule.label = '-'
SELECT count(atom.atom_id) FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE bond.bond_type = '-' AND atom.element IN ('i', 's')
SELECT connected.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '#'
SELECT atom.atom_id FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.molecule_id = 'TR181'
SELECT cast(sum(iif(atom.element = 'f', 1, 0)) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT cast(sum(CASE WHEN bond.bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.label = '+'
SELECT element FROM atom WHERE molecule_id = 'TR000' GROUP BY element ORDER BY count(element) DESC LIMIT 3
SELECT connected.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.molecule_id = 'TR001' AND bond.bond_id = 'TR001_2_6'
SELECT sum(iif(label = '+', 1, 0)) - sum(iif(label = '-', 1, 0)) FROM molecule
SELECT atom_id FROM connected WHERE bond_id = 'TR_000_2_5'
SELECT bond_id FROM connected WHERE atom_id2 = 'TR000_2'
SELECT molecule.label FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = ' = ' ORDER BY molecule.label LIMIT 5
SELECT cast(sum(CASE WHEN bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond_id) FROM bond WHERE molecule_id = 'TR008'
SELECT cast(sum(iif(label = '+', 1, 0)) AS REAL) * 100 / count(molecule_id) FROM molecule
SELECT cast(sum(CASE WHEN element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom_id) FROM atom WHERE molecule_id = 'TR206'
SELECT bond_type FROM bond WHERE molecule_id = 'TR000'
SELECT atom.element, molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR060'
SELECT bond.bond_type, molecule.label FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.molecule_id = 'TR018' GROUP BY bond.bond_type, molecule.label ORDER BY count(bond.bond_type) DESC LIMIT 1
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '-' AND molecule.label = '-' ORDER BY molecule.label LIMIT 3
SELECT bond_id FROM bond WHERE molecule_id = 'TR006' ORDER BY bond_id LIMIT 2
SELECT count(bond_id) FROM connected WHERE atom_id = 'TR009_12' OR atom_id2 = 'TR009_12'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND atom.element = 'br'
SELECT bond.bond_type, connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_id = 'TR001_6_9'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.atom_id = 'TR001_10'
SELECT count(bond_id) FROM bond WHERE bond_type = '#'
SELECT count(bond_id) FROM connected WHERE atom_id = 'TR000_19'
SELECT DISTINCT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR004'
SELECT count(molecule_id) FROM molecule WHERE label = '-'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.atom_id LIKE 'TR000_21%' AND atom.atom_id LIKE 'TR000_25%' AND molecule.label = '+'
SELECT bond.bond_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE atom.element = 'p' OR atom.element = 'n'
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = ' AND molecule.label = '+' GROUP BY molecule.label ORDER BY count(bond.bond_id) DESC LIMIT 1
SELECT cast(count(bond.bond_id) AS REAL) / count(DISTINCT atom.atom_id) FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id INNER JOIN bond ON bond.bond_id = connected.bond_id WHERE atom.element = 'i'
SELECT bond.bond_type, bond.bond_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE connected.atom_id = 'TR000_45'
SELECT DISTINCT element FROM atom WHERE atom_id NOT IN ( SELECT atom_id FROM connected )
SELECT connected.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.molecule_id = 'TR447' AND bond.bond_type = '#'
SELECT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR144_8_19'
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+' AND bond.bond_type = ' = ' GROUP BY molecule.label ORDER BY count(bond.bond_id) DESC LIMIT 1
SELECT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' GROUP BY atom.element ORDER BY count(atom.element) ASC LIMIT 1
SELECT connected.atom_id FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.element = 'pb'
SELECT atom.element FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '#'
SELECT cast(count(DISTINCT bond.bond_id) AS REAL) * 100 / count(DISTINCT connected.atom_id) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id GROUP BY connected.atom_id ORDER BY count(connected.atom_id) DESC LIMIT 1
SELECT cast(sum(CASE WHEN molecule.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = '-'
SELECT count(atom_id) FROM atom WHERE element IN ('c', 'h')
SELECT connected.atom_id2 FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.element = 's'
SELECT bond.bond_type FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'sn'
SELECT count(atom.element) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '-'
SELECT count(atom.atom_id) FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE bond.bond_type = '#' AND (atom.element = 'p' OR atom.element = 'br')
SELECT bond.bond_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+'
SELECT DISTINCT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '-' AND molecule.label = '-'
SELECT cast(sum(CASE WHEN atom.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.atom_id) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '-'
SELECT label FROM molecule WHERE molecule_id IN ('TR000', 'TR001', 'TR002')
SELECT molecule_id FROM molecule WHERE label = '-'
SELECT count(molecule_id) FROM molecule WHERE label = '+'
SELECT DISTINCT bond.bond_type FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.molecule_id BETWEEN 'TR000' AND 'TR050'
SELECT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR001_10_11'
SELECT count(atom_id) FROM atom WHERE element = 'i'
SELECT max(label) FROM molecule WHERE label = '+' OR label = '-'
SELECT bond.bond_id FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_id = 'TR001_1_8' AND atom.element IN ('c', 'cl')
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '#' AND molecule.label = '-' AND atom.element = 'c' LIMIT 2
SELECT cast(sum(iif(atom.element = 'cl', 1, 0)) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT DISTINCT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = ' = '
SELECT connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '#'
SELECT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR005_16_26'
SELECT count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.label = '-' AND bond.bond_type = '-'
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_id = 'TR001_10_11'
SELECT bond.bond_id, molecule.label FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = '#'
SELECT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND substr(atom.atom_id, 7, 1) = 4
SELECT cast(sum(iif(atom.element = 'h', 1, 0)) AS REAL) / count(atom.element), molecule.label FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE atom.molecule_id = 'TR006'
SELECT label FROM molecule WHERE molecule_id IN ( SELECT molecule_id FROM atom WHERE element = 'ca' )
SELECT bond.bond_type FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'te'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR001_10_11'
SELECT cast(sum(CASE WHEN bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond_id) FROM bond
SELECT cast(sum(CASE WHEN bond.bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR047'
SELECT molecule.label FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE atom.atom_id = 'TR001_1'
SELECT label FROM molecule WHERE molecule_id = 'TR151'
SELECT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR151'
SELECT count(molecule_id) FROM molecule WHERE label = '+'
SELECT atom.atom_id FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id BETWEEN 'TR010' AND 'TR050' AND atom.element = 'c'
SELECT count(atom.atom_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT bond.bond_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+' AND bond.bond_type = ' = '
SELECT count(atom.atom_id) FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.label = '+' AND atom.element = 'h'
SELECT bond.molecule_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE connected.atom_id = 'TR000_1' AND bond.bond_id = 'TR000_1_2'
SELECT atom.atom_id FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.label = '-' AND atom.element = 'c'
SELECT cast(sum(iif(molecule.label = '+', 1, 0)) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'h'
SELECT label FROM molecule WHERE molecule_id = 'TR124'
SELECT atom_id FROM atom WHERE molecule_id = 'TR186'
SELECT bond_type FROM bond WHERE bond_id = 'TR007_4_19'
SELECT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR001_2_4'
SELECT count(bond.bond_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+' AND bond.bond_type = ' = ' AND molecule.molecule_id = 'TR006'
SELECT molecule.label, atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT bond.bond_id, connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '-'
SELECT DISTINCT molecule.molecule_id, atom.element FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = '#' AND atom.element IN ('cl', 'c', 'h', 'o', 's', 'n', 'p', 'na', 'br', 'f', 'i', 'sn', 'pb', 'te', 'ca')
SELECT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR000_2_3'
SELECT count(bond.bond_id) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'cl'
SELECT atom.atom_id, count(bond.bond_type) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.molecule_id = 'TR346' GROUP BY atom.atom_id
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = ' AND molecule.label = '+'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type != ' = ' AND atom.element != 's'
SELECT molecule.label FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_id = 'TR001_2_4'
SELECT count(atom_id) FROM atom WHERE molecule_id = 'TR005'
SELECT count(bond_id) FROM bond WHERE bond_type = '-'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'cl' AND molecule.label = '+'
SELECT DISTINCT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'c' AND molecule.label = '-'
SELECT cast(sum(iif(atom.element = 'cl', 1, 0)) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT count(atom.element) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_id = 'TR001_3_4'
SELECT bond.bond_type FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE connected.atom_id = 'TR000_1' AND connected.atom_id2 = 'TR000_2'
SELECT molecule.label FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE atom.atom_id = 'TR000_2' AND atom.atom_id = 'TR000_4'
SELECT element FROM atom WHERE atom_id = 'TR000_1'
SELECT label FROM molecule WHERE molecule_id = 'TR000'
SELECT cast(sum(CASE WHEN bond.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'n' AND molecule.label = '+'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE atom.element = 's' AND bond.bond_type = '='
SELECT label FROM molecule WHERE label = '-' GROUP BY label HAVING count(molecule_id) > 5
SELECT DISTINCT atom.element FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE bond.bond_type = '=' AND atom.element IN ('cl', 'c', 'h', 'o', 's', 'n', 'p', 'na', 'br', 'f', 'i', 'sn', 'pb', 'te', 'ca') AND bond.molecule_id = 'TR024'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' GROUP BY molecule.label ORDER BY count(atom.atom_id) DESC LIMIT 1
SELECT cast(sum(CASE WHEN molecule.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'h' AND bond.bond_type = '#'
SELECT count(molecule_id) FROM molecule WHERE label = '+'
SELECT count(bond_id) FROM bond WHERE molecule_id BETWEEN 'TR004' AND 'TR010' AND bond_type = '-'
SELECT count(atom_id) FROM atom WHERE molecule_id = 'TR008' AND element = 'c'
SELECT DISTINCT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE atom.atom_id = 'TR004_7' AND molecule.label = '-'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'o' AND bond.bond_type = '='
SELECT count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = '#' AND molecule.label = '-'
SELECT atom.element, bond.bond_type FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE atom.molecule_id = 'TR016'
SELECT connected.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = ' = ' AND atom.element = 'c' AND bond.molecule_id = 'TR012'
SELECT atom.atom_id FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.label = '+' AND atom.element = 'o'
SELECT name FROM cards WHERE cardkingdomfoilid = cardkingdomid AND cardkingdomid IS NOT NULL
SELECT name FROM cards WHERE bordercolor = 'borderless' AND cardkingdomfoilid IS NULL AND cardkingdomid IS NOT NULL
SELECT name FROM cards ORDER BY faceconvertedmanacost DESC LIMIT 1
SELECT name FROM cards WHERE frameversion = 2015 AND edhrecrank < 100
SELECT cards.name FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.rarity = 'mythic' AND legalities.status = 'Banned' AND legalities.format = 'gladiator'
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.types = 'Artifact' AND cards.side IS NULL AND legalities.format = 'vintage'
SELECT cards.id, cards.artist FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.power = '*' OR cards.power IS NULL AND legalities.format = 'commander' AND legalities.status = 'Legal'
SELECT cards.text, rulings.text, cards.hascontentwarning FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.artist = 'Stephen Daniele'
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Sublime Epiphany' AND cards.number = '74s'
SELECT cards.name, cards.artist, cards.ispromo FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid GROUP BY cards.name, cards.artist, cards.ispromo ORDER BY count(rulings.uuid) DESC LIMIT 1
SELECT foreign_data.language FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.name = 'Annul' AND cards.number = 29 AND cards.isalternative = 1
SELECT cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Japanese' AND cards.isalternative = 1
SELECT cast(sum(CASE WHEN LANGUAGE = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM foreign_data
SELECT sets.name, sets.totalsetsize FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Italian'
SELECT count(id) FROM cards WHERE artist = 'Aaron Boyd'
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(id) FROM cards WHERE power = '*'
SELECT promotypes FROM cards WHERE name = 'Duress'
SELECT coloridentity FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT originaltype FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT set_translations.language FROM cards INNER JOIN set_translations ON cards.setcode = set_translations.setcode WHERE cards.name = 'Angel of Mercy'
SELECT count(*) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Restricted' AND cards.istextless = 0
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Condemn'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Restricted' AND cards.isstarter = 1
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.name = 'Cloudchaser Eagle'
SELECT TYPE FROM cards WHERE name = 'Benalish Knight'
SELECT legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.name = 'Benalish Knight'
SELECT artist FROM cards WHERE uuid IN ( SELECT uuid FROM foreign_data WHERE LANGUAGE = 'Phyrexian' )
SELECT cast(sum(CASE WHEN bordercolor = 'borderless' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards
SELECT count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'German' AND cards.isreprint = 1
SELECT count(*) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Russian' AND cards.bordercolor = 'borderless'
SELECT cast(sum(CASE WHEN cards.isstoryspotlight = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'French'
SELECT count(id) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = 'Aaron Boyd'
SELECT count(id) FROM cards WHERE bordercolor = 'black' AND availability = 'mtgo'
SELECT id FROM cards WHERE convertedmanacost = 0
SELECT layout FROM cards WHERE keywords = 'Flying'
SELECT count(id) FROM cards WHERE originaltype = 'Summon - Angel' AND subtypes != 'Angel'
SELECT id FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL
SELECT id FROM cards WHERE dueldeck = 'a'
SELECT edhrecrank FROM cards WHERE frameversion = 2015
SELECT DISTINCT cards.artist FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Chinese Simplified'
SELECT cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.availability = 'paper' AND foreign_data.language = 'Japanese'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' AND cards.bordercolor = 'white'
SELECT foreign_data.uuid, foreign_data.language FROM foreign_data INNER JOIN legalities ON foreign_data.uuid = legalities.uuid WHERE legalities.format = 'legacy'
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Beacon of Immortality'
SELECT count(id), status FROM legalities WHERE uuid IN ( SELECT uuid FROM cards WHERE frameversion = 'future' )
SELECT name, colors FROM cards WHERE setcode = 'OGW'
SELECT set_translations.translation, set_translations.language FROM cards INNER JOIN set_translations ON cards.setcode = set_translations.setcode WHERE cards.setcode = '10E' AND cards.convertedmanacost = 5
SELECT cards.name, rulings.date FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.originaltype = 'Creature - Elf'
SELECT cards.colors, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.id BETWEEN 1 AND 20
SELECT cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.originaltype = 'Artifact' AND cards.colors = 'B'
SELECT cards.name FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.rarity = 'uncommon' ORDER BY rulings.date LIMIT 3
SELECT count(id) FROM cards WHERE artist = 'John Avon' AND cardkingdomid IS NOT NULL AND cardkingdomfoilid IS NOT NULL AND power = 0
SELECT count(id) FROM cards WHERE bordercolor = 'white' AND cardkingdomfoilid = cardkingdomid
SELECT count(id) FROM cards WHERE artist = 'UDON' AND availability = 'mtgo' AND hand = -1
SELECT count(id) FROM cards WHERE frameversion = 1993 AND availability = 'paper' AND hascontentwarning = 1
SELECT manacost FROM cards WHERE availability IN ('paper', 'mtgo') AND frameversion = 2003 AND bordercolor = 'black' AND layout = 'normal'
SELECT sum(convertedmanacost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT types FROM cards WHERE availability = 'arena'
SELECT setcode FROM set_translations WHERE LANGUAGE = 'Spanish'
SELECT cast(sum(CASE WHEN hand = 3 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards WHERE frameeffects = 'legendary'
SELECT cast(sum(CASE WHEN istextless = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards WHERE isstoryspotlight = 1
SELECT cast(sum(CASE WHEN LANGUAGE = 'Spanish' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id), name FROM foreign_data GROUP BY name
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.basesetsize = 309
SELECT count(set_translations.setcode) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.block = 'Commander' AND set_translations.language = 'Portuguese (Brasil)'
SELECT cards.id FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.types = 'Creature' AND legalities.status = 'Legal'
SELECT DISTINCT cards.types FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'German' AND cards.subtypes IS NOT NULL AND cards.supertypes IS NOT NULL
SELECT count(*) FROM cards WHERE power IS NULL OR power = '*'
SELECT count(cards.id) FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE rulings.text = 'This is a triggered mana ability' AND cards.side IS NULL
SELECT cards.id FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.artist = 'Erica Yang' AND legalities.format = 'pauper' AND cards.availability = 'paper'
SELECT artist FROM cards WHERE text = 'Das perfekte Gegenmittel zu einer dichten Formation'
SELECT foreign_data.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'French' AND cards.bordercolor = 'black' AND cards.artist = 'Matthew D. Wilson' AND cards.type = 'Creature' AND cards.layout = 'normal'
SELECT count(*) FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.rarity = 'rare' AND rulings.date = '2009-01-10'
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.block = 'Ravnica' AND sets.basesetsize = 180
SELECT cast(sum(CASE WHEN cards.hascontentwarning = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.format = 'commander' AND legalities.status = 'Legal'
SELECT cast(sum(CASE WHEN cards.power IS NULL OR cards.power = '*' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'French'
SELECT cast(sum(CASE WHEN set_translations.language = 'Japanese' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.type = 'expansion'
SELECT availability FROM cards WHERE artist = 'Daren Bader'
SELECT count(id) FROM cards WHERE bordercolor = 'borderless' AND edhrecrank > 12000
SELECT count(*) FROM cards WHERE isoversized = 1 AND isreprint = 1 AND ispromo = 1
SELECT name FROM cards WHERE power IS NULL AND promotypes = 'arenaleague' ORDER BY name LIMIT 3
SELECT LANGUAGE FROM foreign_data WHERE multiverseid = 149934
SELECT cardkingdomfoilid, cardkingdomid FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL ORDER BY cardkingdomfoilid LIMIT 3
SELECT cast(sum(iif(layout = 'normal', 1, 0)) AS REAL) * 100 / count(id) FROM cards WHERE istextless = 1
SELECT number FROM cards WHERE side IS NULL AND subtypes = 'Angel Wizard'
SELECT name FROM sets WHERE mtgocode IS NULL OR mtgocode = '' ORDER BY name LIMIT 3
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.mcmname = 'Archenemy' AND sets.code = 'ARC'
SELECT sets.name, set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.id = 5
SELECT set_translations.language, sets.type FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.id = 206
SELECT cards.id, cards.name FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.block = 'Shadowmoor' AND set_translations.language = 'Italian' ORDER BY cards.name LIMIT 2
SELECT sets.id FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.isforeignonly = 1 AND sets.isfoilonly = 1 AND set_translations.language = 'Japanese'
SELECT sets.name FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Russian' ORDER BY sets.basesetsize DESC LIMIT 1
SELECT cast(sum(CASE WHEN set_translations.language = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN set_translations ON cards.id = set_translations.id WHERE cards.isonlineonly = 1
SELECT count(*) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Japanese' AND (sets.mtgocode IS NULL OR sets.mtgocode = '')
SELECT count(id) FROM cards WHERE bordercolor = 'black'
SELECT count(id) FROM cards WHERE frameeffects = 'extendedart'
SELECT name FROM cards WHERE bordercolor = 'black' AND isfullart = 1
SELECT LANGUAGE FROM set_translations WHERE id = 174
SELECT name FROM sets WHERE code = 'ALL'
SELECT LANGUAGE FROM foreign_data WHERE name = 'A Pedra Fellwar'
SELECT code FROM sets WHERE releasedate = '2007-07-13'
SELECT basesetsize, code FROM sets WHERE block = 'Masques' AND name = 'Mirage'
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT foreign_data.name, cards.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'boros'
SELECT foreign_data.language, foreign_data.flavortext, cards.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'colorpie'
SELECT cast(sum(CASE WHEN convertedmanacost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards WHERE name = 'Abyssal Horror'
SELECT code FROM sets WHERE TYPE = 'commander'
SELECT foreign_data.name, cards.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'abzan'
SELECT foreign_data.language, cards.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'azorius'
SELECT count(id) FROM cards WHERE artist = 'Aaron Miller' AND cardkingdomfoilid = cardkingdomid
SELECT count(id) FROM cards WHERE availability LIKE '%paper%' AND hand = '+'
SELECT name FROM cards WHERE istextless = 0
SELECT manacost FROM cards WHERE name = 'Ancestor`s Chosen'
SELECT count(id) FROM cards WHERE bordercolor = 'white' AND power = '*'
SELECT name FROM cards WHERE ispromo = 1 AND side IS NOT NULL
SELECT subtypes, supertypes FROM cards WHERE name = 'Molimo, Maro-Sorcerer'
SELECT purchaseurls FROM cards WHERE promotypes = 'bundle'
SELECT count(id) FROM cards WHERE bordercolor = 'black' AND availability LIKE '%arena,mtgo%'
SELECT name FROM cards WHERE name = 'Serra Angel' OR name = 'Shrine Keeper' ORDER BY convertedmanacost DESC LIMIT 1
SELECT artist FROM cards WHERE flavorname = 'Battra, Dark Destroyer'
SELECT name FROM cards WHERE frameversion = '2003' ORDER BY convertedmanacost DESC LIMIT 3
SELECT set_translations.translation FROM cards INNER JOIN set_translations ON cards.id = set_translations.id WHERE cards.name = 'Ancestor''s Chosen' AND set_translations.language = 'Italian'
SELECT count(set_translations.id) FROM cards INNER JOIN set_translations ON cards.id = set_translations.id WHERE cards.name = 'Angel of Mercy'
SELECT cards.name FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.setcode WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT foreign_data.text FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.name = 'Ancestor''s Chosen' AND foreign_data.language = 'Korean'
SELECT count(cards.id) FROM cards INNER JOIN set_translations ON cards.id = set_translations.id WHERE set_translations.translation = 'Hauptset Zehnte Edition' AND cards.artist = 'Adam Rex'
SELECT sum(sets.basesetsize) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Eighth Edition' AND set_translations.language = 'Chinese Simplified'
SELECT sets.mtgocode FROM cards INNER JOIN sets ON cards.id = sets.id WHERE cards.name = 'Angel of Mercy'
SELECT sets.releasedate FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Ancestor''s Chosen'
SELECT sets.type FROM set_translations INNER JOIN sets ON set_translations.setcode = sets.code WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT count(set_translations.setcode) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.block = 'Ice Age' AND set_translations.language = 'Italian'
SELECT sets.isforeignonly FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Adarkar Valkyrie'
SELECT count(*) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Italian' AND sets.basesetsize < 10
SELECT count(id) FROM cards WHERE bordercolor = 'black' AND name = 'Coldsnap'
SELECT cards.name FROM cards INNER JOIN sets ON cards.id = sets.mcmid WHERE sets.name = 'Coldsnap' ORDER BY cards.convertedmanacost DESC LIMIT 1
SELECT cards.artist FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Coldsnap' AND cards.artist IN ('Jeremy Jarvis', 'Aaron Miller', 'Chippy')
SELECT cards.number FROM cards INNER JOIN sets ON cards.id = sets.id WHERE cards.number = 4 AND sets.name = 'Coldsnap'
SELECT count(*) FROM cards INNER JOIN sets ON cards.id = sets.id WHERE sets.name = 'Coldsnap' AND cards.convertedmanacost > 5 AND (cards.power = '*' OR cards.power IS NULL)
SELECT foreign_data.flavortext FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Italian' AND cards.name = 'Ancestor''s Chosen'
SELECT foreign_data.language FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.name = 'Ancestor''s Chosen' AND foreign_data.flavortext IS NOT NULL
SELECT foreign_data.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.name = 'Ancestor''s Chosen' AND foreign_data.language = 'German'
SELECT foreign_data.text FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode INNER JOIN foreign_data ON set_translations.id = foreign_data.id WHERE set_translations.language = 'Italian' AND sets.name = 'Coldsnap'
SELECT cards.name FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.uuid INNER JOIN sets ON set_translations.setcode = sets.code WHERE sets.name = 'Coldsnap' AND set_translations.language = 'Italian' ORDER BY cards.convertedmanacost DESC LIMIT 1
SELECT rulings.date FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Reminisce'
SELECT cast(sum(CASE WHEN cards.convertedmanacost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM cards INNER JOIN sets ON cards.id = sets.id WHERE sets.name = 'Coldsnap'
SELECT cast(sum(CASE WHEN cards.cardkingdomfoilid IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM cards INNER JOIN sets ON cards.id = sets.id WHERE sets.name = 'Coldsnap'
SELECT code FROM sets WHERE releasedate = '2017-07-14'
SELECT keyrunecode FROM sets WHERE code = 'PKHC'
SELECT mcmid FROM sets WHERE code = 'SS2'
SELECT name FROM sets WHERE releasedate = '2017-06-09'
SELECT TYPE FROM sets WHERE name = 'From the Vault: Lore'
SELECT parentcode FROM sets WHERE name = 'Commander 2014 Oversized'
SELECT cards.text, cards.hascontentwarning FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.artist = 'Jim Pavelec'
SELECT sets.releasedate FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Evacuation'
SELECT sets.basesetsize FROM set_translations INNER JOIN sets ON set_translations.setcode = sets.code WHERE set_translations.translation = 'Rinascita di Alara'
SELECT sets.type FROM set_translations INNER JOIN sets ON set_translations.setcode = sets.code WHERE set_translations.translation = 'Huitième édition'
SELECT set_translations.translation FROM cards INNER JOIN set_translations ON cards.id = set_translations.id WHERE cards.name = 'Tendo Ice Bridge' AND set_translations.language = 'French'
SELECT count(id) FROM set_translations WHERE setcode = ( SELECT code FROM sets WHERE name = 'Salvat 2011' ) AND translation IS NOT NULL
SELECT set_translations.translation FROM cards INNER JOIN set_translations ON cards.setcode = set_translations.setcode WHERE cards.name = 'Fellwar Stone' AND set_translations.language = 'Japanese'
SELECT cards.name FROM cards INNER JOIN sets ON cards.id = sets.id WHERE sets.name = 'Journey into Nyx Hero''s Path' ORDER BY cards.convertedmanacost DESC LIMIT 1
SELECT sets.releasedate FROM set_translations INNER JOIN sets ON set_translations.setcode = sets.code WHERE set_translations.translation = 'Ola de frío'
SELECT sets.type FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Samite Pilgrim'
SELECT count(cards.id) FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'World Championship Decks 2004' AND cards.convertedmanacost = 3
SELECT set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Chinese Simplified' AND sets.name = 'Mirrodin'
SELECT cast(sum(CASE WHEN sets.isnonfoilonly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Japanese'
SELECT cast(sum(CASE WHEN set_translations.language = 'Portuguese (Brazil)' THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN set_translations ON cards.id = set_translations.id WHERE cards.isonlineonly = 1
SELECT availability FROM cards WHERE artist = 'Aleksi Briclot' AND istextless = 1
SELECT id FROM sets ORDER BY basesetsize DESC LIMIT 1
SELECT artist FROM cards WHERE side IS NULL ORDER BY convertedmanacost DESC LIMIT 1
SELECT max(frameeffects) FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL
SELECT count(id) FROM cards WHERE power IS NULL AND hasfoil = 0 AND dueldeck = 'a'
SELECT id FROM sets WHERE TYPE = 'commander' ORDER BY totalsetsize DESC LIMIT 1
SELECT cards.name FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.format = 'duel' ORDER BY cards.manacost DESC LIMIT 10
SELECT min(originalreleasedate), legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.rarity = 'mythic' AND legalities.status = 'Legal'
SELECT count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.artist = 'Volkan Baga' AND foreign_data.language = 'French'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.name = 'Abundance' AND cards.types = 'Enchantment' AND cards.rarity = 'rare' AND legalities.status = 'Legal'
SELECT legalities.format, cards.name FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' GROUP BY legalities.format, cards.name ORDER BY count(legalities.status) DESC LIMIT 1
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Battlebond'
SELECT cards.artist, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid ORDER BY cards.artist LIMIT 1
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.frameversion = 1997 AND cards.artist = 'D. Alexander Gregory' AND legalities.format = 'legacy' AND cards.hascontentwarning = 1
SELECT cards.name, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.edhrecrank = 1 AND legalities.status = 'banned'
SELECT cast(count(sets.id) AS REAL) / 12 FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.releasedate BETWEEN '2012-01-01' AND '2015-12-31' GROUP BY set_translations.language ORDER BY count(set_translations.language) DESC LIMIT 1
SELECT artist FROM cards WHERE bordercolor = 'black' AND availability = 'arena'
SELECT uuid FROM legalities WHERE format = 'oldschool' AND status IN ('Restricted', 'Banned')
SELECT count(id) FROM cards WHERE artist = 'Matthew D. Wilson' AND availability = 'paper'
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.artist = 'Kev Walker' ORDER BY rulings.date DESC
SELECT cards.name, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Hour of Devastation' AND legalities.status = 'Legal'
SELECT DISTINCT sets.name FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language != 'Japanese' AND set_translations.language = 'Korean'
SELECT DISTINCT cards.frameversion, cards.artist FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.artist = 'Allen Williams' AND legalities.status = 'Banned'
SELECT displayname FROM users WHERE displayname = 'Harlan' OR displayname = 'Jarrod Dixon' ORDER BY reputation DESC LIMIT 1
SELECT displayname FROM users WHERE strftime('%Y', creationdate) = '2014'
SELECT count(id) FROM users WHERE lastaccessdate > '2014-09-01 00:00:00'
SELECT displayname FROM users ORDER BY views DESC LIMIT 1
SELECT count(id) FROM users WHERE upvotes > 100 AND downvotes > 1
SELECT count(id) FROM users WHERE views > 10 AND strftime('%Y', creationdate) > '2013'
SELECT count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT title FROM posts WHERE ownerdisplayname = 'csgillespie'
SELECT users.displayname FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.title = 'Eliciting priors from experts'
SELECT title FROM posts WHERE ownerdisplayname = 'csgillespie' ORDER BY viewcount DESC LIMIT 1
SELECT ownerdisplayname FROM posts ORDER BY favoritecount DESC LIMIT 1
SELECT sum(posts.commentcount) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT answercount FROM posts WHERE ownerdisplayname = 'csgillespie' ORDER BY answercount DESC LIMIT 1
SELECT users.displayname FROM posts INNER JOIN users ON posts.lasteditoruserid = users.id WHERE posts.title = 'Examples for teaching: Correlation does not mean causation'
SELECT count(id) FROM posts WHERE owneruserid = ( SELECT id FROM users WHERE displayname = 'csgillespie' ) AND parentid IS NULL
SELECT DISTINCT posts.ownerdisplayname FROM posts WHERE closeddate IS NOT NULL
SELECT count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.age > 65 AND posts.score > 19
SELECT users.location FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.title = 'Eliciting priors from experts'
SELECT posts.body FROM tags INNER JOIN posts ON tags.excerptpostid = posts.id WHERE tags.tagname = 'bayesian'
SELECT posts.body FROM tags INNER JOIN posts ON tags.excerptpostid = posts.id ORDER BY tags.count DESC LIMIT 1
SELECT count(badges.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'csgillespie'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'csgillespie'
SELECT count(badges.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'csgillespie' AND strftime('%Y', badges.date) = '2011'
SELECT users.displayname FROM users INNER JOIN badges ON users.id = badges.userid GROUP BY users.id ORDER BY count(badges.id) DESC LIMIT 1
SELECT avg(posts.score) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT cast(count(badges.id) AS REAL) / count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.views > 200
SELECT cast(sum(CASE WHEN users.age > 65 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.score > 20
SELECT count(id) FROM votes WHERE userid = 58 AND creationdate LIKE '2010-07-19%'
SELECT votes.creationdate FROM votes GROUP BY votes.creationdate ORDER BY count(votes.id) DESC LIMIT 1
SELECT count(id) FROM badges WHERE name = 'Revival'
SELECT posts.title FROM comments INNER JOIN posts ON comments.postid = posts.id ORDER BY comments.score DESC LIMIT 1
SELECT count(comments.postid) FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.viewcount = 1910
SELECT posts.favoritecount FROM comments INNER JOIN posts ON comments.postid = posts.id WHERE comments.userid = 3025 AND comments.creationdate = '2014-04-23 20:29:39'
SELECT comments.text FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.parentid = 107829 AND posts.commentcount = 1
SELECT posts.closeddate IS NULL FROM comments INNER JOIN posts ON comments.postid = posts.id WHERE comments.userid = 23853 AND comments.creationdate = '2013-07-12 09:08:18.0'
SELECT users.reputation FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.id = 65041
SELECT count(id) FROM posts WHERE ownerdisplayname = 'Tiago Pasqualini'
SELECT users.displayname FROM votes INNER JOIN users ON votes.userid = users.id WHERE votes.id = 6347
SELECT sum(votes.bountyamount) FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE posts.title LIKE '%data visualization%'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'DatEpicCoderGuyWhoPrograms'
SELECT cast(count(posts.id) AS REAL) / count(votes.id) FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE posts.owneruserid = 24
SELECT viewcount FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT text FROM comments WHERE score = 17
SELECT displayname FROM users WHERE websiteurl = 'http://stackoverflow.com'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'SilentGhost'
SELECT users.displayname FROM comments INNER JOIN users ON comments.userid = users.id WHERE comments.text = 'thank you user93!'
SELECT comments.text FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.displayname = 'A Lion'
SELECT users.displayname, users.reputation FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.title = 'Understanding what Dassault iSight is doing?'
SELECT comments.text FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.title = 'How does gentle boosting differ from AdaBoost?'
SELECT users.displayname FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Necromancer' LIMIT 10
SELECT badges.name FROM posts INNER JOIN badges ON posts.owneruserid = badges.userid WHERE posts.title = 'Open source tools for visualizing multi-dimensional data?'
SELECT DISTINCT posts.title FROM users INNER JOIN posts ON users.id = posts.lasteditoruserid WHERE users.displayname = 'Vebjorn Ljosa'
SELECT sum(posts.score), users.websiteurl FROM users INNER JOIN posts ON users.id = posts.lasteditoruserid WHERE users.displayname = 'Yevgeny'
SELECT posthistory.text FROM posthistory INNER JOIN posts ON posthistory.postid = posts.id WHERE posts.title = 'Why square the difference instead of taking the absolute value in standard deviation?'
SELECT sum(votes.bountyamount) FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE posts.title LIKE '%data%'
SELECT users.displayname FROM votes INNER JOIN users ON votes.userid = users.id INNER JOIN posts ON votes.postid = posts.id WHERE votes.bountyamount = 50 AND posts.title LIKE '%variance%'
SELECT avg(posts.viewcount), posts.title, comments.text FROM posts INNER JOIN tags ON posts.id = tags.excerptpostid INNER JOIN comments ON posts.id = comments.postid WHERE tags.tagname = 'humor'
SELECT count(id) FROM comments WHERE userid = 13
SELECT id FROM users ORDER BY reputation DESC LIMIT 1
SELECT id FROM users ORDER BY views ASC LIMIT 1
SELECT count(badges.userid) FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name = 'Supporter' AND strftime('%Y', badges.date) = '2011'
SELECT count(userid) FROM badges WHERE name > 5
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name IN ('Teacher', 'Supporter') AND users.location = 'New York'
SELECT users.id, users.reputation FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.id = 1
SELECT posthistory.userid FROM users INNER JOIN posthistory ON users.id = posthistory.userid WHERE users.views >= 1000 GROUP BY posthistory.userid HAVING count(posthistory.postid) = 1
SELECT badges.userid FROM comments INNER JOIN badges ON comments.userid = badges.userid GROUP BY badges.userid ORDER BY count(badges.userid) DESC LIMIT 1
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Teacher' AND users.location = 'India'
SELECT cast(sum(CASE WHEN badges.date LIKE '2010%' THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN badges.date LIKE '2011%' THEN 1 ELSE 0 END) FROM badges INNER JOIN users ON badges.userid = users.id
SELECT posthistorytypeid, count(DISTINCT userid) FROM posthistory WHERE postid = 3720 GROUP BY posthistorytypeid
SELECT posts.title, posts.viewcount FROM posts INNER JOIN postlinks ON posts.id = postlinks.relatedpostid WHERE postlinks.postid = 61217
SELECT score, linktypeid FROM postlinks WHERE postid = 395
SELECT id, owneruserid FROM posts WHERE score > 60
SELECT sum(posts.favoritecount) FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posthistory.userid = 686 AND strftime('%Y', posthistory.creationdate) = '2011'
SELECT cast(sum(users.upvotes) AS REAL) / count(users.id), cast(sum(users.age) AS REAL) / count(users.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.owneruserid > 10
SELECT count(userid) FROM badges WHERE name = 'Announcer'
SELECT name FROM badges WHERE date = '2010-07-19 19:39:08'
SELECT count(id) FROM comments WHERE score > 60
SELECT text FROM comments WHERE creationdate = '2010-07-19 19:16:14.0'
SELECT count(id) FROM posts WHERE score = 10
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid ORDER BY users.reputation DESC LIMIT 1
SELECT users.reputation FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.date = '2010-07-19 19:39:08.0'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'Pierre'
SELECT badges.date FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.location = 'Rochester, NY'
SELECT cast(count(CASE WHEN badges.name = 'Teacher' THEN badges.userid ELSE NULL END) AS REAL) * 100 / count(badges.userid) FROM badges INNER JOIN users ON badges.userid = users.id
SELECT cast(sum(CASE WHEN users.age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Organizer'
SELECT comments.score FROM comments INNER JOIN posts ON comments.postid = posts.id WHERE posts.creaiondate = '2010-07-19 19:19:56.0'
SELECT text FROM comments WHERE creationdate = '2010-07-19 19:37:33'
SELECT users.age FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.location = 'Vienna, Austria'
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Supporter' AND users.age >= 19 AND users.age <= 65
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.date = '2010-07-19 19:39:08.0'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.reputation = ( SELECT min(reputation) FROM users )
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'Sharpie'
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Supporter' AND users.age > 65
SELECT displayname FROM users WHERE id = 30
SELECT count(id) FROM users WHERE LOCATION = 'New York'
SELECT count(id) FROM votes WHERE strftime('%Y', creationdate) = '2010'
SELECT count(id) FROM users WHERE age BETWEEN 19 AND 65
SELECT displayname FROM users ORDER BY views DESC LIMIT 1
SELECT cast(sum(CASE WHEN strftime('%Y', votes.creationdate) = '2010' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN strftime('%Y', votes.creationdate) = '2011' THEN 1 ELSE 0 END) FROM votes
SELECT tags.tagname FROM users INNER JOIN posts ON users.id = posts.owneruserid INNER JOIN tags ON posts.id = tags.wikipostid WHERE users.displayname = 'John Stauffer'
SELECT count(id) FROM posts WHERE ownerdisplayname = 'Daniel'
SELECT count(votes.id) FROM votes INNER JOIN users ON votes.userid = users.id WHERE users.displayname = 'Harlan'
SELECT posts.id FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'slashnick' ORDER BY posts.answercount DESC LIMIT 1
SELECT max(posts.viewcount) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'Harvey Motulsky' OR users.displayname = 'Noah Snyder'
SELECT count(votes.postid) FROM votes INNER JOIN users ON votes.userid = users.id WHERE users.displayname = 'Matt Parker' AND votes.postid > 4
SELECT count(comments.id) FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.displayname = 'Neil McGuigan' AND comments.score < 60
SELECT tags.tagname FROM users INNER JOIN posts ON users.id = posts.owneruserid INNER JOIN tags ON posts.id = tags.excerptpostid WHERE users.displayname = 'Mark Meckes' AND tags.id NOT IN ( SELECT tags.id FROM comments INNER JOIN tags ON comments.postid = tags.excerptpostid )
SELECT users.displayname FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Organizer'
SELECT cast(sum(CASE WHEN tags.tagname = 'r' THEN 1 ELSE 0 END) AS REAL) * 100 / count(posts.id) FROM posts INNER JOIN tags ON posts.id = tags.excerptpostid INNER JOIN users ON users.id = posts.owneruserid WHERE users.displayname = 'Community'
SELECT sum(CASE WHEN users.displayname = 'Mornington' THEN posts.viewcount ELSE 0 END) - sum(CASE WHEN users.displayname = 'Amos' THEN posts.viewcount ELSE 0 END) FROM users INNER JOIN posts ON users.id = posts.owneruserid
SELECT count(badges.userid) FROM badges INNER JOIN users ON badges.userid = users.id WHERE strftime('%Y', badges.date) = '2014' AND badges.name = 'Commentator'
SELECT count(id) FROM posts WHERE creaiondate LIKE '2010-07-21%'
SELECT displayname, age FROM users ORDER BY views DESC LIMIT 1
SELECT lasteditdate, lasteditoruserid FROM posts WHERE title = 'Detecting a given face in a database of facial images'
SELECT count(id) FROM comments WHERE score < 60 AND userid = 13
SELECT DISTINCT posts.title, comments.userdisplayname FROM comments INNER JOIN posts ON comments.postid = posts.id WHERE comments.score > 60
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.location = 'North Pole' AND strftime('%Y', badges.date) = '2011'
SELECT users.displayname, users.websiteurl FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.favoritecount > 150
SELECT count(posthistory.id), posts.lasteditdate FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'What is the best introductory Bayesian statistics textbook?'
SELECT users.lastaccessdate, users.location FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Outliers'
SELECT posts.title FROM posts INNER JOIN postlinks ON posts.id = postlinks.relatedpostid WHERE posts.title = 'How to tell if something happened in a data set which monitors a value over time'
SELECT posthistory.postid, badges.name FROM posthistory INNER JOIN badges ON posthistory.userid = badges.userid WHERE posthistory.userdisplayname = 'Samuel' AND strftime('%Y', posthistory.creationdate) = '2013'
SELECT ownerdisplayname FROM posts ORDER BY viewcount DESC LIMIT 1
SELECT users.displayname, users.location FROM users INNER JOIN tags ON users.id = tags.wikipostid WHERE tags.tagname = 'hypothesis-testing'
SELECT posts.title, postlinks.linktypeid FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid WHERE posts.title = 'What are principal component scores?'
SELECT ownerdisplayname FROM posts WHERE parentid IS NOT NULL ORDER BY score DESC LIMIT 1
SELECT users.displayname, users.websiteurl FROM votes INNER JOIN users ON votes.userid = users.id WHERE votes.votetypeid = 8 ORDER BY votes.bountyamount DESC LIMIT 1
SELECT title FROM posts ORDER BY viewcount DESC LIMIT 5
SELECT count(id) FROM tags WHERE count BETWEEN 5000 AND 7000
SELECT owneruserid FROM posts ORDER BY favoritecount DESC LIMIT 1
SELECT age FROM users WHERE reputation = ( SELECT max(reputation) FROM users )
SELECT count(votes.postid) FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE strftime('%Y', votes.creationdate) = '2011' AND votes.bountyamount = 50
SELECT id FROM users ORDER BY age LIMIT 1
SELECT posts.score FROM tags INNER JOIN posts ON tags.excerptpostid = posts.id ORDER BY tags.count DESC LIMIT 1
SELECT cast(count(postlinks.id) AS REAL) / 12 FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid WHERE strftime('%Y', posts.creaiondate) = '2010' AND posts.answercount <= 2
SELECT posts.id FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE votes.userid = 1465 ORDER BY posts.favoritecount DESC LIMIT 1
SELECT posts.title FROM postlinks INNER JOIN posts ON postlinks.postid = posts.id ORDER BY postlinks.creationdate LIMIT 1
SELECT users.displayname FROM users INNER JOIN badges ON users.id = badges.userid GROUP BY users.displayname ORDER BY count(badges.name) DESC LIMIT 1
SELECT votes.creationdate FROM users INNER JOIN votes ON users.id = votes.userid WHERE users.displayname = 'chl' ORDER BY votes.creationdate ASC LIMIT 1
SELECT min(creationdate) FROM users WHERE age = ( SELECT min(age) FROM users )
SELECT users.displayname FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Autobiographer' ORDER BY badges.date LIMIT 1
SELECT count(users.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.location = 'United Kingdom' AND posts.favoritecount >= 4
SELECT avg(votes.postid) FROM users INNER JOIN votes ON users.id = votes.userid WHERE users.age = ( SELECT max(age) FROM users )
SELECT displayname FROM users ORDER BY reputation DESC LIMIT 1
SELECT count(id) FROM users WHERE reputation > 2000 AND views > 1000
SELECT displayname FROM users WHERE age BETWEEN 19 AND 65
SELECT count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'Jay Stevens' AND strftime('%Y', posts.creaiondate) = '2010'
SELECT id, title FROM posts WHERE ownerdisplayname = 'Harvey Motulsky' ORDER BY viewcount DESC LIMIT 1
SELECT id, title FROM posts WHERE score = ( SELECT max(score) FROM posts )
SELECT avg(posts.score) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'Stephen Turner'
SELECT DISTINCT users.displayname FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.viewcount > 20000 AND strftime('%Y', posts.creaiondate) = '2011'
SELECT id, ownerdisplayname FROM posts WHERE strftime('%Y', creaiondate) = '2010' ORDER BY favoritecount DESC LIMIT 1
SELECT cast(sum(CASE WHEN users.reputation > 1000 THEN 1 ELSE 0 END) AS REAL) * 100 / count(posts.id) FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE strftime('%Y', posts.creaiondate) = '2011'
SELECT cast(sum(CASE WHEN age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM users
SELECT sum(posts.viewcount), users.displayname FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.title = 'Computer Game Datasets'
SELECT count(id) FROM posts WHERE viewcount > ( SELECT avg(viewcount) FROM posts )
SELECT count(id) FROM comments WHERE postid = ( SELECT id FROM posts ORDER BY score DESC LIMIT 1 )
SELECT count(id) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT users.displayname, users.location FROM users INNER JOIN posts ON users.id = posts.lasteditoruserid WHERE posts.id = 183 ORDER BY posts.lasteditdate DESC LIMIT 1
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'Emmett' ORDER BY badges.date DESC LIMIT 1
SELECT count(id) FROM users WHERE age > 18 AND upvotes > 5000
SELECT badges.date - users.creationdate FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'Zolomon'
SELECT count(posts.id), count(comments.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid INNER JOIN comments ON posts.id = comments.postid ORDER BY users.creationdate DESC LIMIT 1
SELECT comments.text, comments.userdisplayname FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.title = 'Analysing wind data with R' ORDER BY comments.creationdate DESC LIMIT 1
SELECT count(badges.userid) FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name = 'Citizen Patrol'
SELECT count(id) FROM tags WHERE tagname = 'careers'
SELECT reputation, views FROM users WHERE displayname = 'Jarrod Dixon'
SELECT answercount, commentcount FROM posts WHERE title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE displayname = 'IrishStat'
SELECT count(id) FROM votes WHERE bountyamount > 30
SELECT cast(sum(CASE WHEN posts.score > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid
SELECT count(id) FROM posts WHERE score < 20
SELECT count(id) FROM tags WHERE count <= 20 AND id < 15
SELECT excerptpostid, wikipostid FROM tags WHERE tagname = 'sample'
SELECT users.reputation, users.upvotes FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.text = 'fine, you win :)'
SELECT posthistory.text FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'How can I adapt ANOVA for binary data?'
SELECT comments.text FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.viewcount BETWEEN 100 AND 150 ORDER BY comments.score DESC LIMIT 1
SELECT comments.creationdate, users.age FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.websiteurl LIKE '%http://%'
SELECT count(posts.id) FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE comments.score = 0 AND posts.viewcount < 5
SELECT count(id) FROM comments WHERE score = 0 AND postid IN ( SELECT id FROM posts WHERE commentcount = 1 )
SELECT count(users.id) FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.age = 40 AND comments.score = 0
SELECT comments.postid, comments.text FROM comments INNER JOIN posts ON comments.postid = posts.id WHERE posts.title = 'Group differences on a five point Likert item'
SELECT users.upvotes FROM comments INNER JOIN users ON comments.userid = users.id WHERE comments.text = 'R is also lazy evaluated.'
SELECT comments.text FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.displayname = 'Harvey Motulsky'
SELECT users.displayname FROM comments INNER JOIN users ON comments.userid = users.id WHERE comments.score BETWEEN 1 AND 5 AND users.downvotes = 0
SELECT cast(sum(CASE WHEN users.upvotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(comments.id) FROM comments INNER JOIN users ON comments.userid = users.id WHERE comments.score BETWEEN 5 AND 10
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = '3-D Man'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Super Strength'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Super Strength' AND superhero.height_cm > 200
SELECT superhero.full_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id GROUP BY superhero.id HAVING count(superhero.id) > 15
SELECT count(*) FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id WHERE superhero.superhero_name = 'Apocalypse'
SELECT count(superhero.id) FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Agility' AND colour.colour = 'Blue'
SELECT superhero.superhero_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue' AND superhero.eye_colour_id = colour.id AND colour.colour = 'Blond' AND superhero.hair_colour_id = colour.id
SELECT count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT superhero.full_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE publisher.publisher_name = 'Marvel Comics' ORDER BY superhero.height_cm DESC LIMIT 1
SELECT publisher.publisher_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE superhero.superhero_name = 'Sauron'
SELECT count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN colour ON colour.id = superhero.eye_colour_id WHERE publisher.publisher_name = 'Marvel Comics' AND colour.colour = 'Blue'
SELECT avg(superhero.height_cm) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT cast(sum(CASE WHEN superpower.power_name = 'Super Strength' THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE publisher.publisher_name = 'DC Comics'
SELECT publisher.publisher_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' ORDER BY hero_attribute.attribute_value LIMIT 1
SELECT count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN colour ON colour.id = superhero.eye_colour_id WHERE publisher.publisher_name = 'Marvel Comics' AND colour.colour = 'Gold'
SELECT publisher.publisher_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE superhero.superhero_name = 'Blue Beetle II'
SELECT count(*) FROM superhero INNER JOIN colour ON superhero.hair_colour_id = colour.id WHERE colour.colour = 'Blond'
SELECT superhero.full_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Intelligence' ORDER BY hero_attribute.attribute_value LIMIT 1
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.superhero_name = 'Copycat'
SELECT count(*) FROM hero_attribute INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Durability' AND hero_attribute.attribute_value < 50
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Death Touch'
SELECT count(superhero.id) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE gender.gender = 'Female' AND attribute.attribute_name = 'Strength' AND hero_attribute.attribute_value = 100
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id GROUP BY superhero.superhero_name ORDER BY count(superhero.superhero_name) DESC LIMIT 1
SELECT count(superhero.id) FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Vampire'
SELECT cast(sum(CASE WHEN alignment.alignment = 'Bad' THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id), count(superhero.id) FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id INNER JOIN publisher ON publisher.id = superhero.publisher_id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT sum(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) - sum(CASE WHEN publisher.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id
SELECT id FROM publisher WHERE publisher_name = 'Star Trek'
SELECT avg(hero_attribute.attribute_value) FROM hero_attribute
SELECT count(id) FROM superhero WHERE full_name IS NULL
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.id = 75
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Deathlok'
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Male' LIMIT 5
SELECT superhero.superhero_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Alien'
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 AND eye_colour_id = 1
SELECT superpower.power_name FROM superpower INNER JOIN hero_power ON superpower.id = hero_power.power_id WHERE hero_power.hero_id = 56
SELECT superhero.full_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Demi-God' LIMIT 5
SELECT count(id) FROM superhero WHERE alignment_id = 2
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.weight_kg = 169
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.hair_colour_id = colour.id INNER JOIN race ON superhero.race_id = race.id WHERE superhero.height_cm = 185 AND race.race = 'Human'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id ORDER BY superhero.weight_kg DESC LIMIT 1
SELECT cast(sum(CASE WHEN publisher.id = 13 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE superhero.height_cm BETWEEN 150 AND 180
SELECT full_name FROM superhero WHERE gender_id = 1 AND weight_kg > ( SELECT avg(weight_kg) * 0.79 FROM superhero )
SELECT power_name FROM superpower GROUP BY power_name ORDER BY count(power_name) DESC LIMIT 1
SELECT hero_attribute.attribute_value FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id WHERE superhero.superhero_name = 'Abomination'
SELECT superpower.power_name FROM superpower INNER JOIN hero_power ON superpower.id = hero_power.power_id WHERE hero_power.hero_id = 1
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Stealth'
SELECT superhero.full_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Strength' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT cast(count(CASE WHEN skin_colour_id = 1 THEN id ELSE NULL END) AS REAL) / count(id) FROM superhero
SELECT count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE publisher.publisher_name = 'Dark Horse Comics'
SELECT superhero.superhero_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE publisher.publisher_name = 'Dark Horse Comics' AND attribute.attribute_name = 'Durability' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.full_name = 'Abraham Sapien'
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Flight'
SELECT superhero.eye_colour_id, superhero.hair_colour_id, superhero.skin_colour_id FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN gender ON gender.id = superhero.gender_id WHERE gender.gender = 'Female' AND publisher.publisher_name = 'Dark Horse Comics'
SELECT superhero.superhero_name, publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.hair_colour_id = superhero.eye_colour_id AND superhero.hair_colour_id = superhero.skin_colour_id
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.superhero_name = 'A-Bomb'
SELECT cast(sum(CASE WHEN colour.colour = 'Blue' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN colour ON colour.id = superhero.eye_colour_id WHERE gender.gender = 'Female'
SELECT superhero.superhero_name, race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.full_name = 'Charles Chandler'
SELECT gender.gender FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id WHERE superhero.superhero_name = 'Agent 13'
SELECT superhero.full_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Adaptation'
SELECT count(*) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id WHERE superhero.superhero_name = 'Amazo'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.full_name = 'Hunter Zolomon'
SELECT superhero.height_cm FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Amber'
SELECT superhero.superhero_name FROM colour INNER JOIN superhero ON colour.id = superhero.eye_colour_id AND colour.id = superhero.hair_colour_id WHERE colour.colour = 'Black'
SELECT colour.colour FROM colour INNER JOIN superhero ON colour.id = superhero.eye_colour_id WHERE colour.colour = 'Gold'
SELECT superhero.full_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Vampire'
SELECT superhero.superhero_name FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT count(hero_attribute.hero_id) FROM attribute INNER JOIN hero_attribute ON attribute.id = hero_attribute.attribute_id WHERE attribute.attribute_name = 'Strength' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT race.race, alignment.alignment FROM superhero INNER JOIN race ON superhero.race_id = race.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE superhero.superhero_name = 'Cameron Hicks'
SELECT cast(sum(CASE WHEN gender.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN gender ON gender.id = superhero.gender_id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT avg(superhero.weight_kg) FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Alien'
SELECT sum(CASE WHEN full_name = 'Emil Blonsky' THEN weight_kg ELSE 0 END) - sum(CASE WHEN full_name = 'Charles Chandler' THEN weight_kg ELSE 0 END) FROM superhero
SELECT avg(height_cm) FROM superhero
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Abomination'
SELECT count(superhero.id) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'God/Eternal' AND gender.id = 1
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON attribute.id = hero_attribute.attribute_id WHERE attribute.attribute_name = 'Speed' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT count(id) FROM superhero WHERE alignment_id = 3
SELECT attribute.attribute_name, hero_attribute.attribute_value FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE superhero.superhero_name = '3-D Man'
SELECT superhero_name FROM superhero WHERE eye_colour_id = 7 AND hair_colour_id = 9
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.superhero_name = 'Hawkman' OR superhero.superhero_name = 'Karate Kid' OR superhero.superhero_name = 'Speedy'
SELECT count(id) FROM superhero WHERE publisher_id = 1
SELECT cast(sum(CASE WHEN eye_colour_id = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM superhero
SELECT cast(sum(iif(gender.gender = 'Male', 1, 0)) AS REAL) / sum(iif(gender.gender = 'Female', 1, 0)) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT id FROM superpower WHERE power_name = 'Cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = 0 OR weight_kg IS NULL
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.full_name = 'Karen Beecher-Duncan'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.full_name = 'Helen Parr'
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.weight_kg = 108 AND superhero.height_cm = 188
SELECT publisher.publisher_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id WHERE superhero.id = 38
SELECT race.race FROM race INNER JOIN superhero ON race.id = superhero.race_id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT alignment.alignment, superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE superhero.superhero_name = 'Atom IV'
SELECT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue' LIMIT 5
SELECT avg(hero_attribute.attribute_value) FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id WHERE hero_attribute.attribute_value = 100
SELECT count(*) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE gender.gender = 'Female' AND alignment.alignment = 'Good'
SELECT superhero.superhero_name FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id WHERE hero_attribute.attribute_value BETWEEN 75 AND 80
SELECT race.race FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN colour ON superhero.hair_colour_id = colour.id INNER JOIN race ON superhero.race_id = race.id WHERE gender.gender = 'Male' AND colour.colour = 'Blue'
SELECT cast(sum(CASE WHEN gender.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.id = 2
SELECT sum(CASE WHEN superhero.eye_colour_id = 7 THEN 1 ELSE 0 END) - sum(CASE WHEN superhero.eye_colour_id = 1 THEN 1 ELSE 0 END) FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.weight_kg = 0
SELECT hero_attribute.attribute_value FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON attribute.id = hero_attribute.attribute_id WHERE superhero.superhero_name = 'Hulk' AND attribute.attribute_name = 'Strength'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Ajax'
SELECT count(superhero.id) FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Bad' AND colour.colour = 'Green'
SELECT count(superhero.id) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN gender ON gender.id = superhero.gender_id WHERE gender.gender = 'Female' AND publisher.publisher_name = 'Marvel Comics'
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Wind Control'
SELECT gender.gender FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Phoenix Force'
SELECT superhero.superhero_name FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id ORDER BY superhero.weight_kg DESC LIMIT 1
SELECT avg(superhero.height_cm) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN race ON race.id = superhero.race_id WHERE race.race != 'Human' AND publisher.publisher_name = 'Dark Horse Comics'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON attribute.id = hero_attribute.attribute_id WHERE attribute.attribute_name = 'Speed' AND hero_attribute.attribute_value = 100
SELECT sum(CASE WHEN publisher.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) - sum(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id
SELECT attribute.attribute_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON attribute.id = hero_attribute.attribute_id WHERE superhero.superhero_name = 'Black Panther' ORDER BY hero_attribute.attribute_value LIMIT 1
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.superhero_name = 'Abomination'
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT cast(sum(CASE WHEN gender.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN gender ON gender.id = superhero.gender_id WHERE publisher.publisher_name = 'George Lucas'
SELECT cast(sum(CASE WHEN alignment.alignment = 'Good' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN alignment ON alignment.id = superhero.alignment_id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT count(id) FROM superhero WHERE full_name LIKE 'John%'
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Brown' AND superhero.weight_kg < 100
SELECT hero_attribute.attribute_value FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id WHERE superhero.superhero_name = 'Aquababy'
SELECT superhero.weight_kg, race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.id = 40
SELECT avg(superhero.height_cm) FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT hero_power.hero_id FROM superpower INNER JOIN hero_power ON superpower.id = hero_power.power_id WHERE superpower.power_name = 'Intelligence'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.superhero_name = 'Blackwulf'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.height_cm > ( SELECT avg(height_cm) * 0.8 FROM superhero )
SELECT drivers.driverref FROM qualifying INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE qualifying.raceid = 18 ORDER BY qualifying.q1 DESC LIMIT 5
SELECT drivers.surname FROM qualifying INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE qualifying.raceid = 19 AND qualifying.q2 = ( SELECT min(q2) FROM qualifying WHERE raceid = 19 )
SELECT DISTINCT races.year FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.location = 'Shanghai'
SELECT races.url FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Circuit de Barcelona-Catalunya'
SELECT races.name FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.country = 'Germany'
SELECT DISTINCT constructorstandings.position FROM constructors INNER JOIN constructorstandings ON constructors.constructorid = constructorstandings.constructorid WHERE constructors.name = 'Renault'
SELECT count(raceid) FROM races WHERE YEAR = 2010 AND circuitid NOT IN (1, 2)
SELECT races.name FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.country = 'Spain'
SELECT circuits.lat, circuits.lng FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'Australian Grand Prix'
SELECT url FROM races WHERE circuitid = ( SELECT circuitid FROM circuits WHERE circuitref = 'sepang' )
SELECT races.time FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.circuitref = 'sepang'
SELECT circuits.lat, circuits.lng FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'Abu Dhabi Grand Prix'
SELECT constructors.nationality FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructorresults.raceid = 24 AND constructorresults.points = 1
SELECT qualifying.q1 FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE drivers.forename = 'Bruno' AND drivers.surname = 'Senna' AND qualifying.raceid = 354
SELECT drivers.nationality FROM qualifying INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE qualifying.raceid = 355 AND qualifying.q2 = '0:01:40'
SELECT drivers.driverid FROM qualifying INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE qualifying.raceid = 903 AND qualifying.q3 = '1:01.540'
SELECT count(results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Bahrain Grand Prix' AND races.year = 2007 AND results.time IS NULL
SELECT seasons.url FROM races INNER JOIN seasons ON races.year = seasons.year WHERE races.raceid = 901
SELECT count(results.driverid) FROM results INNER JOIN races ON results.raceid = races.raceid WHERE races.date = '2015-11-29'
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE results.raceid = 592 ORDER BY drivers.dob ASC LIMIT 1
SELECT drivers.url FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE laptimes.raceid = 161 AND laptimes.time = '00:01:27'
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 933 ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT circuits.lat, circuits.lng FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'Malaysian Grand Prix'
SELECT constructors.url FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructorresults.raceid = 9 ORDER BY constructorresults.points DESC LIMIT 1
SELECT qualifying.q1 FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE drivers.forename = 'Lucas' AND drivers.surname = 'di Grassi' AND qualifying.raceid = 345
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.raceid = 347 AND qualifying.q2 = '0:01:15'
SELECT drivers.code FROM qualifying INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE qualifying.raceid = 45 AND qualifying.q3 = '0:01:33'
SELECT results.time FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 743 AND drivers.forename = 'Bruce' AND drivers.surname = 'McLaren'
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.name = 'San Marino Grand Prix' AND races.year = 2006 AND results.position = 2
SELECT seasons.url FROM races INNER JOIN seasons ON races.year = seasons.year WHERE races.raceid = 901
SELECT count(results.driverid) FROM results INNER JOIN races ON results.raceid = races.raceid WHERE strftime('%Y-%m-%d', races.date) = '2015-11-29'
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE results.raceid = 872 ORDER BY drivers.dob DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid WHERE laptimes.raceid = 348 ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT drivers.nationality FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 348 ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT cast((results.fastestlapspeed - ( SELECT fastestlapspeed FROM results WHERE raceid = 854 )) AS REAL) * 100 / results.fastestlapspeed FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 853 AND drivers.forename = 'Paul' AND drivers.surname = 'Di Resta'
SELECT cast(sum(CASE WHEN races.date = '1983-07-16' THEN 1 ELSE 0 END) AS REAL) * 100 / count(races.raceid) FROM races INNER JOIN results ON races.raceid = results.raceid
SELECT min(YEAR) FROM races WHERE name = 'Singapore Grand Prix'
SELECT count(raceid), name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races WHERE strftime('%Y-%m', date) = ( SELECT strftime('%Y-%m', min(date)) FROM races )
SELECT name, date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(raceid) DESC LIMIT 1
SELECT DISTINCT races.name FROM races INNER JOIN seasons ON races.year = seasons.year WHERE races.year = 2017 AND seasons.year != 2000
SELECT circuits.country, circuits.location FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'European Grand Prix' ORDER BY races.year LIMIT 1
SELECT races.date FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Brands Hatch' AND races.name = 'British Grand Prix' ORDER BY races.year DESC LIMIT 1
SELECT count(DISTINCT races.year) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Silverstone Circuit' AND races.name = 'British Grand Prix'
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.name = 'Singapore Grand Prix' AND races.year = 2010 ORDER BY results.position
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN results ON drivers.driverid = results.driverid ORDER BY results.points DESC LIMIT 1
SELECT drivers.forename, drivers.surname, driverstandings.points FROM races INNER JOIN driverstandings ON races.raceid = driverstandings.raceid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid WHERE races.year = 2017 AND races.name = 'Chinese Grand Prix' ORDER BY driverstandings.points DESC LIMIT 3
SELECT drivers.forename, drivers.surname, races.name FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid ORDER BY results.milliseconds ASC LIMIT 1
SELECT avg(results.milliseconds) FROM results INNER JOIN drivers ON results.driverid = drivers.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Sebastian' AND drivers.surname = 'Vettel' AND races.name = 'Chinese Grand Prix' AND races.year = 2009
SELECT cast(sum(CASE WHEN drivers.surname = 'Hamilton' THEN 1 ELSE 0 END) AS REAL) * 100 / count(results.raceid) FROM results INNER JOIN races ON results.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE circuits.name = 'F1' AND races.year >= 2010 AND results.position > 1
SELECT drivers.forename, drivers.surname, drivers.nationality, avg(driverstandings.points) FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid GROUP BY driverstandings.driverid ORDER BY count(driverstandings.wins) DESC LIMIT 1
SELECT dob FROM drivers WHERE nationality = 'Japanese' ORDER BY dob DESC LIMIT 1
SELECT DISTINCT circuits.name FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.year BETWEEN 1990 AND 2000 AND circuits.circuitid = 4
SELECT DISTINCT circuits.name, circuits.location, races.name FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.country = 'USA' AND races.year = 2006
SELECT races.name, circuits.name, circuits.location FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE strftime('%Y-%m', races.date) = '2005-09'
SELECT races.name FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Alex' AND drivers.surname = 'Yoong' AND results.position < 10
SELECT count(results.resultid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE drivers.forename = 'Michael' AND drivers.surname = 'Schumacher' AND circuits.circuitref = 'sepang' AND results.points = ( SELECT max(results.points) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE drivers.forename = 'Michael' AND drivers.surname = 'Schumacher' AND circuits.circuitref = 'sepang' )
SELECT races.name, races.year FROM results INNER JOIN drivers ON results.driverid = drivers.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Michael' AND drivers.surname = 'Schumacher' ORDER BY results.milliseconds ASC LIMIT 1
SELECT avg(results.points) FROM results INNER JOIN races ON results.raceid = races.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2000 AND drivers.forename = 'Eddie' AND drivers.surname = 'Irvine'
SELECT races.name, results.points FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY races.year LIMIT 1
SELECT races.name, circuits.country FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2017 ORDER BY races.date
SELECT races.name, races.year, circuits.location FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid ORDER BY races.round DESC LIMIT 1
SELECT cast(sum(CASE WHEN circuits.country = 'Germany' THEN 1 ELSE 0 END) AS REAL) * 100 / count(races.raceid) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'European Grand Prix'
SELECT lat, lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT name FROM circuits ORDER BY lat DESC LIMIT 1
SELECT circuitref FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code IS NULL
SELECT nationality FROM drivers ORDER BY dob ASC LIMIT 1
SELECT surname FROM drivers WHERE nationality = 'Italian'
SELECT url FROM drivers WHERE forename = 'Anthony' AND surname = 'Davidson'
SELECT driverref FROM drivers WHERE surname = 'Hamilton' AND forename = 'Lewis'
SELECT circuits.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009
SELECT DISTINCT races.year FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.name = 'Silverstone Circuit'
SELECT races.url FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Silverstone Circuit'
SELECT races.time FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.location = 'Abu Dhabi' AND races.year = 2010
SELECT count(races.raceid) FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.country = 'Italy'
SELECT races.date FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE circuits.name = 'Barcelona-Catalunya'
SELECT circuits.url FROM circuits INNER JOIN races ON circuits.circuitid = races.circuitid WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009
SELECT min(results.fastestlaptime) FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT drivers.driverref FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' AND results.rank = 1
SELECT races.name FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT races.name FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY results.rank LIMIT 1
SELECT max(results.fastestlapspeed) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2009 AND races.name = 'Spanish Grand Prix'
SELECT DISTINCT races.year FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT results.positionorder FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2008 AND drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.name = 'Australian Grand Prix' AND races.year = 2008 AND results.grid = 4
SELECT count(results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' AND results.time IS NOT NULL
SELECT results.fastestlap FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2008 AND drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT results.time FROM results INNER JOIN races ON results.raceid = races.raceid WHERE races.year = 2008 AND results.rank = 2
SELECT drivers.url FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' AND results.rank = 1
SELECT count(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE races.year = 2008 AND drivers.nationality = 'American'
SELECT count(results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' AND results.time IS NOT NULL
SELECT sum(results.points) FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT avg(cast(substr(fastestlaptime, 4) AS REAL)) FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT cast(sum(CASE WHEN laptimes.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / count(races.raceid) FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix'
SELECT cast(replace(results.time, ':', '') - replace(results.fastestlaptime, ':', '') AS REAL) * 100 / replace(results.fastestlaptime, ':', '') FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Australian Grand Prix' AND races.year = 2008 AND results.time IS NOT NULL
SELECT count(circuitid) FROM circuits WHERE country = 'Australia' AND LOCATION = 'Melbourne'
SELECT lat, lng FROM circuits WHERE country = 'USA'
SELECT count(driverid) FROM drivers WHERE nationality = 'British' AND strftime('%Y', dob) > '1980'
SELECT avg(constructorresults.points) FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructors.nationality = 'British'
SELECT constructors.name FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid ORDER BY constructorresults.points DESC LIMIT 1
SELECT DISTINCT constructors.name FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructorresults.raceid = 291 AND constructorresults.points = 0
SELECT count(constructors.constructorid) FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructors.nationality = 'Japanese' AND constructorresults.points = 0 GROUP BY constructors.constructorid HAVING count(constructorresults.raceid) = 2
SELECT DISTINCT constructors.name FROM constructors INNER JOIN results ON constructors.constructorid = results.constructorid WHERE results.rank = 1
SELECT count(constructors.constructorid) FROM constructors INNER JOIN results ON constructors.constructorid = results.constructorid WHERE constructors.nationality = 'French' AND results.laps > 50
SELECT cast(count(CASE WHEN drivers.nationality = 'Japanese' THEN 1 ELSE NULL END) AS REAL) * 100 / count(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE races.year BETWEEN 2007 AND 2009 AND results.time IS NOT NULL
SELECT avg(cast(replace(time, ':', '') AS REAL) / 1000) FROM races WHERE time IS NOT NULL
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE strftime('%Y', drivers.dob) > '1975' AND results.rank = 2
SELECT count(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE drivers.nationality = 'Italian' AND results.time IS NULL
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN results ON drivers.driverid = results.driverid ORDER BY results.fastestlaptime DESC LIMIT 1
SELECT results.number FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2009 ORDER BY results.milliseconds DESC LIMIT 1
SELECT avg(results.fastestlapspeed) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009
SELECT races.name, races.year FROM races INNER JOIN results ON races.raceid = results.raceid WHERE results.milliseconds IS NOT NULL ORDER BY results.milliseconds ASC LIMIT 1
SELECT cast(sum(CASE WHEN races.year BETWEEN 2000 AND 2005 THEN 1 ELSE 0 END) AS REAL) * 100 / count(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE results.laps > 50 AND races.year < 1985
SELECT count(drivers.driverid) FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE laptimes.milliseconds < 120 AND drivers.nationality = 'French'
SELECT code FROM drivers WHERE nationality = 'American'
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(driverid) FROM results WHERE raceid = 18
SELECT count(driverid) FROM drivers WHERE nationality = 'Dutch' AND dob IS NOT NULL ORDER BY dob DESC LIMIT 3
SELECT driverref FROM drivers WHERE surname = 'Kubica' AND forename = 'Robert'
SELECT count(driverid) FROM drivers WHERE strftime('%Y', dob) = '1980' AND nationality = 'Australian'
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE drivers.nationality = 'German' AND strftime('%Y', drivers.dob) BETWEEN '1980' AND '1990' ORDER BY laptimes.milliseconds ASC LIMIT 3
SELECT driverref FROM drivers WHERE nationality = 'German' ORDER BY dob ASC LIMIT 1
SELECT drivers.driverid, drivers.code FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE strftime('%Y', drivers.dob) = '1971' AND results.fastestlaptime IS NOT NULL
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE drivers.nationality = 'Spanish' AND strftime('%Y', drivers.dob) < '1982' ORDER BY laptimes.milliseconds DESC LIMIT 10
SELECT races.year FROM races INNER JOIN results ON races.raceid = results.raceid WHERE results.fastestlaptime IS NOT NULL ORDER BY results.fastestlaptime LIMIT 1
SELECT races.year FROM races INNER JOIN results ON races.raceid = results.raceid ORDER BY results.fastestlaptime DESC LIMIT 1
SELECT driverid FROM results ORDER BY time ASC LIMIT 5
SELECT count(raceid) FROM results WHERE statusid = 2 AND raceid BETWEEN 50 AND 100
SELECT count(circuitid), name, lat, lng FROM circuits WHERE country = 'Austria'
SELECT raceid FROM results WHERE time IS NOT NULL GROUP BY raceid ORDER BY count(raceid) DESC LIMIT 1
SELECT drivers.driverref, drivers.nationality, drivers.dob FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.raceid = 23 AND qualifying.q2 IS NOT NULL
SELECT races.year, races.name, races.date, races.time FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid INNER JOIN races ON qualifying.raceid = races.raceid ORDER BY drivers.dob LIMIT 1
SELECT count(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN status ON results.statusid = status.statusid WHERE status.status = 'Disqualified' AND drivers.nationality = 'American'
SELECT constructors.url FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructors.nationality = 'Italian' ORDER BY constructorresults.points DESC LIMIT 1
SELECT constructors.url FROM constructors INNER JOIN constructorstandings ON constructors.constructorid = constructorstandings.constructorid ORDER BY constructorstandings.wins DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid INNER JOIN drivers ON laptimes.driverid = drivers.driverid WHERE races.name = 'French Grand Prix' AND laptimes.lap = 3 ORDER BY laptimes.milliseconds DESC LIMIT 1
SELECT raceid FROM laptimes ORDER BY milliseconds ASC LIMIT 1
SELECT avg(results.fastestlaptime) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2006 AND races.name = 'United States Grand Prix' AND results.rank < 11
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.nationality = 'German' AND strftime('%Y', drivers.dob) BETWEEN '1980' AND '1985' GROUP BY drivers.driverid ORDER BY avg(pitstops.duration) LIMIT 5
SELECT results.time FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Canadian Grand Prix' AND races.year = 2008 ORDER BY results.milliseconds DESC LIMIT 1
SELECT constructors.constructorref, constructors.url FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN constructors ON results.constructorid = constructors.constructorid WHERE races.year = 2009 AND races.name = 'Singapore Grand Prix' ORDER BY results.time DESC LIMIT 1
SELECT forename, surname, dob FROM drivers WHERE nationality = 'Austrian' AND dob BETWEEN '1981-01-01' AND '1991-12-31'
SELECT forename, surname, url, dob FROM drivers WHERE nationality = 'German' AND dob BETWEEN '1971-01-01' AND '1985-12-31' ORDER BY dob DESC
SELECT name, country, lat, lng FROM circuits WHERE circuitref = 'hungaroring'
SELECT constructorresults.points, constructors.name, constructors.nationality FROM races INNER JOIN constructorresults ON races.raceid = constructorresults.raceid INNER JOIN constructors ON constructorresults.constructorid = constructors.constructorid WHERE races.name = 'Monaco Grand Prix' AND races.year BETWEEN 1980 AND 2010 ORDER BY constructorresults.points DESC LIMIT 1
SELECT avg(results.points) FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.name = 'Turkish Grand Prix' AND drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT cast(count(raceid) AS REAL) / 10 FROM races WHERE date BETWEEN '2000-01-01' AND '2010-12-31'
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(nationality) DESC LIMIT 1
SELECT driverstandings.points FROM driverstandings INNER JOIN results ON driverstandings.raceid = results.raceid WHERE driverstandings.position = 91
SELECT races.name FROM results INNER JOIN races ON results.raceid = races.raceid ORDER BY results.fastestlaptime ASC LIMIT 1
SELECT circuits.name, circuits.country FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid ORDER BY races.date DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid INNER JOIN races ON qualifying.raceid = races.raceid WHERE races.year = 2008 AND circuits.name = 'Marina Bay Street Circuit' ORDER BY qualifying.q3 ASC LIMIT 1
SELECT drivers.forename, drivers.surname, drivers.nationality, races.name FROM drivers INNER JOIN races ON drivers.driverid = races.raceid ORDER BY drivers.dob DESC LIMIT 1
SELECT count(results.driverid) FROM results INNER JOIN races ON results.raceid = races.raceid WHERE races.name = 'Canadian Grand Prix' AND results.statusid = 3 ORDER BY results.number DESC LIMIT 1
SELECT count(driverid), forename, surname FROM drivers WHERE dob = ( SELECT min(dob) FROM drivers )
SELECT max(duration) FROM pitstops
SELECT laptimes.time FROM laptimes INNER JOIN races ON laptimes.raceid = races.raceid ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT max(pitstops.duration) FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT pitstops.lap FROM races INNER JOIN pitstops ON races.raceid = pitstops.raceid INNER JOIN drivers ON pitstops.driverid = drivers.driverid WHERE races.year = 2011 AND drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT pitstops.duration FROM pitstops INNER JOIN races ON pitstops.raceid = races.raceid WHERE races.year = 2011 AND races.name = 'Australian Grand Prix'
SELECT laptimes.time FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT drivers.forename, drivers.surname FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT results.position FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY results.time ASC LIMIT 1
SELECT laptimes.time FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid WHERE races.name = 'Austrian Grand Prix' ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT DISTINCT laptimes.time FROM circuits INNER JOIN laptimes ON circuits.circuitid = laptimes.raceid WHERE circuits.country = 'Italy'
SELECT races.name FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid WHERE races.name = 'Austrian Grand Prix' ORDER BY laptimes.milliseconds DESC LIMIT 1
SELECT pitstops.duration FROM pitstops INNER JOIN races ON pitstops.raceid = races.raceid WHERE races.name = 'Austrian Grand Prix'
SELECT circuits.lat, circuits.lng FROM laptimes INNER JOIN races ON laptimes.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE laptimes.time = '1:29.488'
SELECT avg(pitstops.milliseconds) FROM pitstops INNER JOIN drivers ON pitstops.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT avg(laptimes.milliseconds) FROM circuits INNER JOIN laptimes ON circuits.circuitid = laptimes.raceid WHERE circuits.country = 'Italy'
SELECT player.player_api_id FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT height, player_name FROM player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM player_attributes ORDER BY potential ASC LIMIT 1
SELECT count(player_attributes.player_api_id) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player_attributes.overall_rating BETWEEN 60 AND 65 AND player_attributes.defensive_work_rate = 'low'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.crossing DESC LIMIT 5
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2015/2016' GROUP BY league.name ORDER BY sum(MATCH.home_team_goal + MATCH.away_team_goal) DESC LIMIT 1
SELECT team.team_short_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.home_team_api_id WHERE MATCH.season = '2015/2016' AND MATCH.home_team_goal - MATCH.away_team_goal < 0
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.penalties DESC LIMIT 10
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.away_team_api_id INNER JOIN league ON league.id = MATCH.league_id WHERE MATCH.season = '2009/2010' AND league.name = 'Scotland Premier League' ORDER BY MATCH.away_team_goal - MATCH.home_team_goal DESC LIMIT 1
SELECT team_attributes.buildupplayspeed FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id ORDER BY team_attributes.buildupplayspeed DESC LIMIT 4
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2015/2016' GROUP BY league.name ORDER BY sum(CASE WHEN MATCH.home_team_goal = MATCH.away_team_goal THEN 1 ELSE 0 END) DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.sprint_speed >= 97 AND player_attributes.date BETWEEN '2013-01-01 00:00:00' AND '2015-12-31 00:00:00'
SELECT league.name, count(match.id) FROM match INNER JOIN league ON match.league_id = league.id GROUP BY league.name ORDER BY count(match.id) DESC LIMIT 1
SELECT avg(player.height) FROM player WHERE strftime('%Y', player.birthday) BETWEEN '1990' AND '1995'
SELECT player.player_api_id FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE substr(player_attributes.date, 1, 4) = '2010' ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT team_fifa_api_id FROM team_attributes WHERE buildupplayspeed BETWEEN 51 AND 59
SELECT team.team_long_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE strftime('%Y', team_attributes.date) = '2012' AND team_attributes.buildupplaypassing IS NOT NULL GROUP BY team.team_long_name HAVING cast(sum(team_attributes.buildupplaypassing) AS REAL) / count(team_attributes.buildupplaypassing) > team_attributes.buildupplaypassing
SELECT cast(sum(CASE WHEN preferred_foot = 'left' THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player.birthday BETWEEN '1987-01-01 00:00:00' AND '1992-12-31 00:00:00'
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id GROUP BY league.name ORDER BY sum(MATCH.home_team_goal + MATCH.away_team_goal) DESC LIMIT 5
SELECT avg(player_attributes.long_shots) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Ahmed Samir Farag'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 180 GROUP BY player.player_name ORDER BY avg(player_attributes.heading_accuracy) DESC LIMIT 10
SELECT team.team_long_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id AND team.team_fifa_api_id = team_attributes.team_fifa_api_id WHERE team_attributes.date LIKE '2014%' AND team_attributes.buildupplaydribblingclass = 'Normal' GROUP BY team.team_long_name ORDER BY sum(team_attributes.chancecreationpassing) / count(team_attributes.id) DESC LIMIT 1
SELECT DISTINCT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2009/2010' AND MATCH.home_team_goal > MATCH.away_team_goal
SELECT team_short_name FROM team WHERE team_long_name = 'Queens Park Rangers'
SELECT player_name FROM player WHERE substr(birthday, 1, 4) = '1970' AND substr(birthday, 6, 2) = '10'
SELECT player_attributes.attacking_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Franco Zennaro'
SELECT team_attributes.buildupplaypositioningclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'ADO Den Haag'
SELECT player_attributes.heading_accuracy FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Francois Affolter' AND player_attributes.date = '2014-09-18 00:00:00'
SELECT player_attributes.overall_rating FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Gabriel Tamas' AND strftime('%Y', player_attributes.date) = '2011'
SELECT count(match.id) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2015/2016' AND league.name = 'Scotland Premier League'
SELECT player_attributes.preferred_foot FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.birthday DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.potential DESC LIMIT 1
SELECT count(player.id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.weight < 130 AND player_attributes.preferred_foot = 'left'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.chancecreationpassingclass = 'Risky'
SELECT player_attributes.defensive_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'David Wilson'
SELECT player.birthday FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT league.name FROM country INNER JOIN league ON country.id = league.country_id WHERE country.name = 'Netherlands'
SELECT avg(match.home_team_goal) FROM match INNER JOIN country ON match.country_id = country.id WHERE country.name = 'Poland' AND match.season = '2010/2011'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.height DESC LIMIT 1
SELECT player_name FROM player WHERE height > 180
SELECT count(id) FROM player WHERE strftime('%Y', birthday) > '1990'
SELECT count(player.player_name) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name LIKE 'Adam%' AND player.weight > 170
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player_attributes.date) BETWEEN '2008' AND '2010' AND player_attributes.overall_rating > 80
SELECT player_attributes.potential FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Doran'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.preferred_foot = 'left'
SELECT team.team_long_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplayspeedclass = 'Fast'
SELECT team_attributes.buildupplaypassingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_short_name = 'CLB'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplaypassing > 70
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player_attributes.date) BETWEEN '2010' AND '2015' AND player.height > 170
SELECT player_name FROM player ORDER BY height ASC LIMIT 1
SELECT country.name FROM league INNER JOIN country ON league.country_id = country.id WHERE league.name = 'Italy Serie A'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplayspeed = 31 AND team_attributes.buildupplaydribbling = 53 AND team_attributes.buildupplaypassing = 32
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Doran'
SELECT count(match.id) FROM match INNER JOIN league ON match.league_id = league.id WHERE league.name = 'Germany 1. Bundesliga' AND strftime('%Y-%m', match.date) BETWEEN '2008-08' AND '2008-10'
SELECT DISTINCT team.team_short_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.home_team_api_id WHERE MATCH.home_team_goal = 10
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.potential = 61 ORDER BY player_attributes.balance DESC LIMIT 1
SELECT avg(player_attributes.ball_control) - ( SELECT avg(player_attributes.ball_control) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Abdou Diallo' ) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Appindangoye'
SELECT team_long_name FROM team WHERE team_short_name = 'GEN'
SELECT player_name FROM player WHERE player_name = 'Abdelaziz Barrada' OR player_name = 'Aaron Lennon' ORDER BY birthday DESC LIMIT 1
SELECT player_name FROM player ORDER BY height DESC LIMIT 1
SELECT count(player.player_name) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.preferred_foot = 'left' AND player_attributes.attacking_work_rate = 'low'
SELECT country.name FROM country INNER JOIN league ON country.id = league.country_id WHERE league.name = 'Belgium Jupiler League'
SELECT league.name FROM country INNER JOIN league ON country.id = league.country_id WHERE country.name = 'Germany'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT count(player.id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player.birthday) < '1986' AND player_attributes.defensive_work_rate = 'high'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.crossing DESC LIMIT 1
SELECT player_attributes.heading_accuracy FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Ariel Borysiuk'
SELECT count(player.id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 180 AND player_attributes.volleys > 70
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.volleys > 70 AND player_attributes.dribbling > 70
SELECT count(match.id) FROM country INNER JOIN league ON country.id = league.country_id INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2008/2009' AND country.name = 'Belgium'
SELECT player_attributes.long_passing FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.birthday ASC LIMIT 1
SELECT count(match.id) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.date LIKE '2009-04%' AND league.name = 'Belgium Jupiler League'
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2008/2009' GROUP BY league.name ORDER BY count(MATCH.id) DESC LIMIT 1
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player.birthday) < '1986'
SELECT cast((sum(CASE WHEN player.player_name = 'Ariel Borysiuk' THEN player_attributes.overall_rating ELSE 0 END) - sum(CASE WHEN player.player_name = 'Paulin Puel' THEN player_attributes.overall_rating ELSE 0 END)) AS REAL) * 100 / sum(CASE WHEN player.player_name = 'Paulin Puel' THEN player_attributes.overall_rating ELSE 0 END) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id
SELECT avg(team_attributes.buildupplayspeed) FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'Heart of Midlothian'
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Pietro Marino'
SELECT sum(player_attributes.crossing) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Lennox'
SELECT team_attributes.chancecreationpassing, team_attributes.chancecreationpassingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'Ajax' ORDER BY team_attributes.chancecreationpassing DESC LIMIT 1
SELECT player_attributes.preferred_foot FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Abdou Diallo'
SELECT player_attributes.overall_rating FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Dorlan Pabon' ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT avg(match.away_team_goal) FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.away_team_api_id INNER JOIN country ON country.id = MATCH.country_id WHERE team.team_long_name = 'Parma' AND country.name = 'Italy'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.overall_rating = 77 AND player_attributes.`date` = '2016-06-23' ORDER BY player.birthday ASC LIMIT 1
SELECT player_attributes.overall_rating FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Mooy' AND player_attributes.date = '2016-02-04 00:00:00'
SELECT player_attributes.potential FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Francesco Parravicini' AND player_attributes.date = '2010-08-30 00:00:00'
SELECT player_attributes.attacking_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Francesco Migliore' AND player_attributes.date = '2015-05-01 00:00:00'
SELECT player_attributes.defensive_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Kevin Berigaud' AND player_attributes.date = '2013-02-22 00:00:00'
SELECT player_attributes.date FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Kevin Constant' ORDER BY player_attributes.crossing DESC LIMIT 1
SELECT team_attributes.buildupplayspeedclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.date = '2012-02-22 00:00:00' AND team.team_long_name = 'Willem II'
SELECT team_attributes.buildupplaydribblingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_short_name = 'LEI' AND team_attributes.date = '2015-09-10 00:00:00'
SELECT team_attributes.buildupplaypassingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'FC Lorient' AND team_attributes.date = '2010-02-22'
SELECT team_attributes.chancecreationpassingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'PEC Zwolle' AND team_attributes.date = '2013-09-20 00:00:00'
SELECT team_attributes.chancecreationcrossingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'Hull City' AND team_attributes.date = '2010-02-22 00:00:00'
SELECT team_attributes.defenceaggressionclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'Hannover 96' AND team_attributes.date = '2015-09-10 00:00:00'
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Marko Arnautovic' AND player_attributes.date BETWEEN '2007-02-22 00:00:00' AND '2016-04-21 00:00:00'
SELECT cast((sum(CASE WHEN player.player_name = 'Landon Donovan' THEN player_attributes.overall_rating ELSE 0 END) - sum(CASE WHEN player.player_name = 'Jordan Bowery' THEN player_attributes.overall_rating ELSE 0 END)) AS REAL) * 100 / sum(CASE WHEN player.player_name = 'Landon Donovan' THEN player_attributes.overall_rating ELSE 0 END) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.date = '2013-07-12'
SELECT player_name FROM player ORDER BY height DESC LIMIT 5
SELECT player_api_id FROM player ORDER BY weight DESC LIMIT 10
SELECT player_name FROM player WHERE strftime('%J', CURRENT_TIMESTAMP) - strftime('%J', birthday) > 34
SELECT sum(match.home_team_goal) FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.home_player_1 WHERE player.player_name = 'Aaron Lennon'
SELECT sum(match.away_team_goal) FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.away_player_1 WHERE player.player_name = 'Daan Smith' OR player.player_name = 'Filipe Ferreira'
SELECT sum(match.home_team_goal) FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.home_player_1 WHERE strftime('%J', MATCH.date) - strftime('%J', player.birthday) < 31
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 10
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.potential DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.attacking_work_rate = 'high'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.finishing = 1 ORDER BY player.birthday DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.home_player_1 INNER JOIN country ON country.id = MATCH.country_id WHERE country.name = 'Belgium'
SELECT player.player_name, country.name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id INNER JOIN country ON country.id = player_attributes.player_fifa_api_id WHERE player_attributes.vision > 89
SELECT country.name FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.home_player_1 INNER JOIN country ON country.id = MATCH.country_id GROUP BY country.name ORDER BY avg(player.weight) DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplayspeedclass = 'Slow'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.chancecreationpassingclass = 'Safe'
SELECT avg(player.height) FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.home_player_1 INNER JOIN country ON country.id = MATCH.country_id WHERE country.name = 'Italy'
SELECT player_name FROM player WHERE height > 180 ORDER BY player_name ASC LIMIT 3
SELECT count(player_name) FROM player WHERE birthday > '1990' AND player_name LIKE 'Aaron%'
SELECT sum(CASE WHEN id = 6 THEN jumping ELSE 0 END) - sum(CASE WHEN id = 23 THEN jumping ELSE 0 END) FROM player_attributes
SELECT player_attributes.player_api_id FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player_attributes.preferred_foot = 'right' ORDER BY player_attributes.potential LIMIT 3
SELECT count(player_attributes.player_api_id) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player_attributes.preferred_foot = 'left' ORDER BY player_attributes.crossing DESC LIMIT 1
SELECT cast(sum(CASE WHEN player_attributes.strength > 80 AND player_attributes.stamina > 80 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id
SELECT country.name FROM country INNER JOIN league ON country.id = league.country_id WHERE league.name = 'Poland Ekstraklasa'
SELECT match.home_team_goal, match.away_team_goal FROM match INNER JOIN league ON match.league_id = league.id WHERE league.name = 'Belgium Jupiler League' AND match.date LIKE '2008-09-24%'
SELECT player_attributes.sprint_speed, player_attributes.agility, player_attributes.acceleration FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Alexis Blin'
SELECT team_attributes.buildupplayspeedclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'KSV Cercle Brugge'
SELECT count(match.id) FROM match INNER JOIN league ON match.league_id = league.id WHERE league.name = 'Italian Serie A' AND match.season = '2015/2016'
SELECT max(match.home_team_goal) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE league.name = 'Netherlands Eredivisie'
SELECT player_attributes.finishing, player_attributes.curve FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.weight DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.home_team_api_id OR team.team_api_id = MATCH.away_team_api_id WHERE MATCH.season = '2015/2016' GROUP BY team.team_long_name ORDER BY count(team.team_long_name) DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.away_team_api_id ORDER BY MATCH.away_team_goal DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT cast(sum(CASE WHEN player.height < 180 AND player_attributes.overall_rating > 70 THEN 1 ELSE 0 END) AS REAL) * 100 / count(player.id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id
SELECT sum(iif(sex = 'M' AND admission = '+', 1, 0)) - sum(iif(sex = 'M' AND admission = '-', 1, 0)), cast(sum(iif(sex = 'M' AND admission = '+', 1, 0)) - sum(iif(sex = 'M' AND admission = '-', 1, 0)) AS REAL) * 100 / sum(iif(sex = 'M', 1, 0)) FROM patient
SELECT cast(sum(iif(sex = 'F', 1, 0)) AS REAL) * 100 / count(id) FROM patient WHERE strftime('%Y', birthday) > '1930'
SELECT cast(sum(iif(admission = '+', 1, 0)) AS REAL) * 100 / count(id) FROM patient WHERE strftime('%Y', birthday) BETWEEN '1930' AND '1940'
SELECT cast(sum(CASE WHEN admission = '-' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN admission = '+' THEN 1 ELSE 0 END) FROM patient WHERE diagnosis = 'SLE'
SELECT patient.diagnosis, laboratory.date FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.id = 30609
SELECT examination.`examination date`, patient.sex, patient.birthday, examination.symptoms FROM examination INNER JOIN patient ON examination.id = patient.id WHERE examination.id = 163109
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ldh > 500
SELECT patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM examination INNER JOIN patient ON examination.id = patient.id WHERE examination.rvvt = '+'
SELECT patient.id, patient.sex, patient.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.thrombosis = 2
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.birthday) = '1937' AND laboratory.`t-cho` > 250
SELECT patient.id, patient.sex, patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.alb < 3.5
SELECT cast(sum(CASE WHEN laboratory.tp < 6 OR laboratory.tp > 8.5 THEN 1 ELSE 0 END) AS REAL) * 100 / count(laboratory.id) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.sex = 'F'
SELECT avg(examination.`acl igg`) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.admission = '+' AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) >= 50
SELECT count(id) FROM patient WHERE sex = 'F' AND strftime('%Y', description) = '1997' AND admission = '-'
SELECT strftime('%Y', patient.`first date`) - strftime('%Y', patient.birthday) - (strftime('%m', patient.`first date`) < strftime('%m', patient.birthday)) AS age FROM patient
SELECT count(patient.id) FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.sex = 'F' AND strftime('%Y', examination.`examination date`) = '1997' AND examination.thrombosis = '1'
SELECT max(strftime('%Y', patient.birthday)) - min(strftime('%Y', patient.birthday)) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg >= 200
SELECT examination.symptoms, patient.diagnosis FROM examination INNER JOIN patient ON examination.id = patient.id ORDER BY patient.birthday ASC LIMIT 1
SELECT cast(count(patient.id) AS REAL) / 12 FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.date BETWEEN '1998-01-01' AND '1998-12-31'
SELECT laboratory.date, strftime('%Y', patient.birthday) - strftime('%Y', patient.`first date`) AS age FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SJS' ORDER BY patient.birthday DESC LIMIT 1
SELECT cast(sum(CASE WHEN sex = 'M' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) FROM laboratory WHERE ua <= '8.0' OR ua <= '6.5'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%J', examination.`examination date`) - strftime('%J', patient.`first date`) >= 365
SELECT count(patient.id) FROM examination INNER JOIN patient ON examination.id = patient.id WHERE strftime('%Y', examination.`examination date`) BETWEEN '1990' AND '1993' AND strftime('%Y', patient.birthday) < 18
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`t-bil` > 2 AND patient.sex = 'M'
SELECT examination.diagnosis FROM examination INNER JOIN patient ON examination.id = patient.id WHERE examination.`examination date` BETWEEN '1985-01-01' AND '1995-12-31' GROUP BY examination.diagnosis ORDER BY count(examination.diagnosis) DESC LIMIT 1
SELECT avg(strftime('%Y', examination.`examination date`) - strftime('%Y', patient.birthday)) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.`examination date` BETWEEN '1991-10-01' AND '1991-10-30'
SELECT strftime('%Y', examination.`examination date`) - strftime('%Y', patient.birthday) AS age, patient.diagnosis FROM examination INNER JOIN patient ON examination.id = patient.id ORDER BY laboratory.hgb DESC LIMIT 1
SELECT ana FROM examination WHERE `examination date` = '1996-12-02' AND id = 3605340
SELECT laboratory.`t-cho` FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.`t-cho` < 250 AND patient.id = 2927464 AND laboratory.`date` = '1995-09-04'
SELECT sex FROM patient WHERE diagnosis = 'AORTITIS' LIMIT 1
SELECT examination.`acl igm` FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.description = '1994-02-19' AND examination.diagnosis = 'SLE'
SELECT patient.sex FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.date = '1992-06-12' AND laboratory.gpt = 9
SELECT strftime('%J', patient.birthday) - strftime('%J', laboratory.date) AS age FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.date = '1991-10-21' AND laboratory.ua = '8.4'
SELECT count(laboratory.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.`first date` = '1991-06-13' AND patient.diagnosis = 'SJS' AND laboratory.`date` = '1995'
SELECT patient.diagnosis FROM examination INNER JOIN patient ON examination.id = patient.id WHERE examination.`examination date` = '1997-01-27' AND patient.diagnosis = 'SLE'
SELECT examination.symptoms FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.birthday = '1959-03-01' AND examination.`examination date` = '1993-09-27'
SELECT sum(CASE WHEN patient.birthday = '1959-02-18' AND laboratory.`date` LIKE '1981-11%' THEN laboratory.`t-cho` ELSE 0 END) - sum(CASE WHEN patient.birthday = '1959-02-18' AND laboratory.`date` LIKE '1981-12%' THEN laboratory.`t-cho` ELSE 0 END) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id
SELECT patient.id FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.diagnosis = 'BEHCET' AND strftime('%Y', patient.description) BETWEEN '1997' AND '1998'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.date BETWEEN '1987-07-06' AND '1996-01-31' AND laboratory.gpt > 30 AND laboratory.alb < 4
SELECT count(id) FROM patient WHERE sex = 'F' AND strftime('%Y', birthday) = '1964' AND admission = '+'
SELECT count(examination.id) FROM examination INNER JOIN patient ON examination.id = patient.id WHERE examination.thrombosis = 2 AND examination.`ana pattern` = 'S' AND examination.`acl igm` * 1.2 > ( SELECT avg(`acl igm`) FROM examination )
SELECT cast(sum(CASE WHEN laboratory.`u-pro` > 0 AND laboratory.`u-pro` < 30 THEN 1 ELSE 0 END) AS REAL) * 100 / count(laboratory.id) FROM laboratory WHERE laboratory.ua <= 6.5
SELECT cast(sum(CASE WHEN patient.diagnosis = 'BEHCET' THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient WHERE strftime('%Y', patient.`first date`) = '1981' AND patient.sex = 'M'
SELECT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE strftime('%Y-%m', laboratory.`date`) = '1991-10' AND laboratory.`t-bil` < 2 AND patient.admission = '-'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.`ana pattern` != 'P' AND patient.sex = 'F' AND strftime('%Y', patient.birthday) BETWEEN '1980' AND '1989'
SELECT patient.sex FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.diagnosis = 'PSS' AND laboratory.crp = 2 AND laboratory.cre = 1 AND laboratory.ldh = 123
SELECT avg(laboratory.alb) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F' AND laboratory.plt > 400 AND patient.diagnosis = 'SLE'
SELECT examination.symptoms FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.diagnosis = 'SLE' GROUP BY examination.symptoms ORDER BY count(examination.symptoms) DESC LIMIT 1
SELECT `first date`, diagnosis FROM patient WHERE id = 48473
SELECT count(id) FROM patient WHERE diagnosis = 'APS' AND sex = 'F'
SELECT count(id) FROM laboratory WHERE strftime('%Y', `date`) = '1997' AND tp < 6 OR tp > 8.5
SELECT cast(sum(CASE WHEN examination.symptoms = 'thrombocytopenia' THEN 1 ELSE 0 END) AS REAL) * 100 / count(examination.id) FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.diagnosis = 'SLE'
SELECT cast(sum(CASE WHEN patient.sex = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', patient.birthday) = '1980' AND examination.diagnosis = 'RA'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.sex = 'M' AND examination.`examination date` BETWEEN '1995' AND '1997' AND patient.diagnosis = 'BEHCET' AND patient.admission = '-'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F' AND laboratory.wbc < 3.5
SELECT strftime('%J', examination.`examination date`) - strftime('%J', patient.`first date`) AS days FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.id = 821298
SELECT CASE WHEN sex = 'M' THEN ua > 8.0 ELSE ua > 6.5 END FROM laboratory WHERE id = 57266
SELECT laboratory.date FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.got > 60 AND patient.id = 48473
SELECT patient.sex, patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE strftime('%Y', laboratory.`date`) = '1994' AND laboratory.got < 60
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.gpt > 60 AND patient.sex = 'M'
SELECT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.gpt > 60 ORDER BY patient.birthday DESC
SELECT avg(laboratory.ldh) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ldh < 500
SELECT patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ldh BETWEEN 600 AND 800
SELECT DISTINCT patient.admission FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.alp < 300
SELECT patient.id, laboratory.alp FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.birthday = '1982-04-01' AND laboratory.alp < 300
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tp < 6.0
SELECT sum(laboratory.tp - 8.5) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.sex = 'F'
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND (laboratory.alb <= 3.5 OR laboratory.alb >= 5.5) ORDER BY patient.birthday DESC
SELECT laboratory.alb BETWEEN 3.5 AND 5.5 FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.birthday) = '1982'
SELECT cast(sum(CASE WHEN sex = 'F' AND ua > 8 THEN 1 ELSE 0 END) AS REAL) * 100 / count(sex) FROM patient
SELECT avg(laboratory.ua) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ua < 8 AND patient.sex = 'M' OR laboratory.ua < 6.5 AND patient.sex = 'F'
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.un = 29
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.un < 30 AND patient.diagnosis = 'RA'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.cre > 1.5 AND patient.sex = 'M'
SELECT sum(CASE WHEN sex = 'M' THEN 1 ELSE 0 END) > sum(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) FROM laboratory WHERE cre >= 1.5
SELECT patient.id, patient.sex, patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id ORDER BY laboratory.`t-bil` DESC LIMIT 1
SELECT patient.sex FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.`t-bil` > 2 GROUP BY patient.sex
SELECT patient.id, laboratory.`t-cho` FROM patient INNER JOIN laboratory ON patient.id = laboratory.id ORDER BY patient.birthday ASC, laboratory.`t-cho` DESC LIMIT 1
SELECT avg(strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday)) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`t-cho` > 250 AND patient.sex = 'M'
SELECT patient.id, patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg > 100
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg > 200 AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 50
SELECT DISTINCT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.cpk < 250 AND patient.admission = '-'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND strftime('%Y', patient.birthday) BETWEEN '1936' AND '1956' AND laboratory.cpk > 250
SELECT patient.id, patient.sex, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`t-cho` < 250 AND laboratory.glu > 180
SELECT laboratory.id, laboratory.glu FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE strftime('%Y', patient.description) >= 1991 AND laboratory.glu < 180
SELECT patient.id, patient.sex, patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.wbc <= 3.5 OR laboratory.wbc >= 9.0 GROUP BY patient.id, patient.sex, patient.birthday
SELECT patient.diagnosis, patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rbc < 3.5
SELECT DISTINCT patient.sex, patient.admission FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F' AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) >= 50 AND (laboratory.rbc <= 3.5 OR laboratory.rbc >= 6.0)
SELECT patient.id, patient.sex FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.hgb < 10 AND patient.admission = '-'
SELECT patient.id, patient.sex FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SLE' AND laboratory.hgb BETWEEN 10 AND 17 ORDER BY patient.birthday ASC LIMIT 1
SELECT patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.hct > 52 GROUP BY patient.id HAVING count(patient.id) > 2
SELECT avg(hct) FROM laboratory WHERE strftime('%Y', `date`) = '1991' AND hct < 29
SELECT sum(CASE WHEN plt < 100 THEN 1 ELSE 0 END), sum(CASE WHEN plt > 400 THEN 1 ELSE 0 END) FROM laboratory
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', laboratory.`date`) = '1984' AND laboratory.plt BETWEEN 100 AND 400 AND strftime('%Y', patient.birthday) - strftime('%Y', laboratory.`date`) < 50
SELECT cast(sum(CASE WHEN patient.sex = 'F' AND laboratory.pt >= 14 THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 55
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.`first date`) > '1992' AND laboratory.pt < 14
SELECT count(id) FROM laboratory WHERE aptt < 45 AND `date` > '1997-01-01'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.aptt > 45 AND examination.thrombosis = 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.wbc BETWEEN 3.5 AND 9.0 AND (laboratory.fg <= 150 OR laboratory.fg >= 450) AND patient.sex = 'M'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.fg BETWEEN 150 AND 450 AND patient.birthday > '1980-01-01'
SELECT DISTINCT patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`u-pro` > 30
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`u-pro` BETWEEN 0 AND 30 AND patient.diagnosis = 'SLE'
SELECT count(examination.id) FROM examination INNER JOIN patient ON examination.id = patient.id WHERE examination.symptoms = 'abortion' AND examination.`acl igg` < 900
SELECT count(examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.igg BETWEEN 900 AND 2000 AND examination.symptoms IS NOT NULL
SELECT examination.diagnosis FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.iga BETWEEN 80 AND 500 ORDER BY laboratory.iga DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.iga BETWEEN 80 AND 500 AND strftime('%Y', patient.`first date`) > '1990'
SELECT patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.igm NOT BETWEEN 40 AND 400 GROUP BY patient.diagnosis ORDER BY count(patient.diagnosis) DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.crp = '+' OR laboratory.crp = '-' OR laboratory.crp < 1 AND patient.description IS NULL
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.crp != '-' AND laboratory.crp >= 1 AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) < 18
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.ra = '-' AND examination.kct = '+'
SELECT DISTINCT patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.birthday > '1995-01-01' AND laboratory.ra = '-'
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rf = 'normal' AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 60
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.rf < 20 AND examination.thrombosis = 0
SELECT count(patient.id) FROM examination INNER JOIN patient ON examination.id = patient.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.`ana pattern` = 'P' AND laboratory.c3 > 35
SELECT examination.id FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.hct NOT BETWEEN 29 AND 52 ORDER BY examination.`acl iga` DESC LIMIT 1
SELECT count(id) FROM laboratory WHERE c4 > 10
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rnp = '-' AND patient.admission = '+'
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rnp NOT IN ('-', '+-') ORDER BY patient.birthday DESC LIMIT 1
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.sm = '-' AND examination.thrombosis = 1
SELECT laboratory.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.sm NOT IN ('-', '+-') ORDER BY patient.birthday DESC LIMIT 3
SELECT patient.id FROM examination INNER JOIN patient ON examination.id = patient.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.`examination date` >= '1997-01-01' AND laboratory.sc170 IN ('-', '+-')
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.sc170 IN ('-', '+-') AND patient.sex = 'M' AND examination.symptoms = 'vertigo'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ssa IN ('-', '+') AND strftime('%Y', patient.`first date`) < '1990'
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ssa NOT IN ('-', '+-') ORDER BY patient.`first date` ASC LIMIT 1
SELECT count(DISTINCT laboratory.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE examination.diagnosis = 'SLE' AND laboratory.ssb IN ('-', '+-')
SELECT count(DISTINCT examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.ssb IN ('-', '+-') AND examination.symptoms IS NOT NULL
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.centromea IN ('-', '+-') AND laboratory.ssb IN ('-', '+-') AND patient.sex = 'M'
SELECT DISTINCT examination.diagnosis FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.dna >= 8
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.dna < 8 AND patient.description IS NULL
SELECT count(laboratory.id) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.`dna-ii` < 8 AND patient.admission = '+'
SELECT cast(sum(CASE WHEN laboratory.got >= 60 THEN 1 ELSE 0 END) AS REAL) * 100 / count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE examination.diagnosis = 'SLE'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.got < 60 AND patient.sex = 'M'
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.got >= 60 ORDER BY patient.birthday DESC LIMIT 1
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.gpt < 60 ORDER BY laboratory.gpt DESC LIMIT 3
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.got < 60 AND patient.sex = 'M'
SELECT patient.`first date` FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ldh < 500 ORDER BY laboratory.ldh DESC LIMIT 1
SELECT laboratory.`date` FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ldh > 500 ORDER BY laboratory.`date` DESC LIMIT 1
SELECT count(laboratory.id) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.alp >= 300 AND patient.admission = '+'
SELECT count(laboratory.id) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.alp < 300 AND patient.admission = '-'
SELECT examination.diagnosis FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.tp < 6.0
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SJS' AND laboratory.tp BETWEEN 6 AND 8.5
SELECT examination.`examination date` FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.alb > 3.5 AND laboratory.alb < 5.5 ORDER BY laboratory.alb DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.alb BETWEEN 3.5 AND 5.5 AND laboratory.tp BETWEEN 6 AND 8
SELECT max(examination.`acl igg`) FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.sex = 'F' AND examination.`acl igg` > 6.5
SELECT max(examination.ana) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.cre < 1.5
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.cre < 1.5 ORDER BY examination.`acl iga` DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.`t-bil` > 2 AND examination.`ana pattern` LIKE '%P%'
SELECT examination.ana FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.`t-bil` < 2.0 ORDER BY laboratory.`t-bil` DESC LIMIT 1
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.`t-cho` > 250 AND examination.kct = '-'
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.`t-cho` < 250 AND examination.`ana pattern` = 'P'
SELECT count(examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.tg < 200 AND examination.symptoms IS NOT NULL
SELECT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.tg < 200 ORDER BY laboratory.tg DESC LIMIT 1
SELECT laboratory.id FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE examination.thrombosis = 0 AND laboratory.cpk < 250
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.cpk < 250 AND (examination.kct = '+' OR examination.rvvt = '+' OR examination.lac = '+')
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.glu > 180 ORDER BY patient.birthday ASC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.glu < 180 AND examination.thrombosis = 0
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.wbc BETWEEN 3.5 AND 9.0 AND patient.admission = '+'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SLE' AND laboratory.wbc BETWEEN 3.5 AND 9
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rbc < 3.5 OR laboratory.rbc > 6.0 AND patient.admission = '-'
SELECT count(examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE examination.diagnosis IS NOT NULL AND laboratory.plt > 100 AND laboratory.plt < 400
SELECT laboratory.plt FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.plt BETWEEN 100 AND 400 AND patient.diagnosis = 'MCTD'
SELECT avg(laboratory.pt) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.pt < 14 AND patient.sex = 'M'
SELECT count(examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE examination.thrombosis IN (1, 2) AND laboratory.pt < 14
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Angela' AND member.last_name = 'Sanders'
SELECT count(*) FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.college = 'College of Engineering'
SELECT member.first_name, member.last_name FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.department = 'Art and Design Department'
SELECT count(attendance.link_to_member) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event WHERE event.event_name = 'Women''s Soccer'
SELECT member.phone FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer'
SELECT count(member.member_id) FROM member INNER JOIN attendance ON member.member_id = attendance.link_to_member INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Women''s Soccer' AND member.t_shirt_size = 'Medium'
SELECT event.event_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event GROUP BY event.event_name ORDER BY count(attendance.link_to_event) DESC LIMIT 1
SELECT major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.position = 'Vice President'
SELECT event.event_name FROM member INNER JOIN attendance ON member.member_id = attendance.link_to_member INNER JOIN event ON attendance.link_to_event = event.event_id WHERE member.first_name = 'Maya' AND member.last_name = 'Mclean'
SELECT count(event.event_id) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison' AND strftime('%Y', event.event_date) = '2019'
SELECT count(event.event_id) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event WHERE event.type = 'Meeting' GROUP BY attendance.link_to_event HAVING count(attendance.link_to_event) > 10
SELECT event.event_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event GROUP BY event.event_name HAVING count(event.event_id) > 20
SELECT cast(count(attendance.link_to_event) AS REAL) / count(DISTINCT event.event_name) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event WHERE strftime('%Y', event.event_date) = '2020' AND event.type = 'Meeting'
SELECT expense.expense_description FROM expense ORDER BY expense.cost DESC LIMIT 1
SELECT count(member.member_id) FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.major_name = 'Environmental Engineering'
SELECT member.first_name, member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Laugh Out Loud'
SELECT member.last_name FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.major_name = 'Law and Constitutional Studies'
SELECT zip_code.county FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Sherri' AND member.last_name = 'Ramsey'
SELECT major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.first_name = 'Tyler' AND member.last_name = 'Hewitt'
SELECT sum(income.amount) FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.position = 'Vice President'
SELECT budget.spent FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'September Meeting' AND budget.category = 'Food'
SELECT zip_code.city, zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.position = 'President'
SELECT member.first_name, member.last_name FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.state = 'Illinois'
SELECT budget.spent FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'September Meeting' AND budget.category = 'Advertisement'
SELECT major.department FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.first_name = 'Pierce' AND member.last_name = 'Guidi'
SELECT sum(budget.amount) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'October Speaker'
SELECT expense.approved FROM event INNER JOIN expense ON event.event_id = expense.link_to_budget WHERE event.event_name = 'October Meeting' AND expense.expense_date = '2019-10-08'
SELECT sum(expense.cost) / count(expense.expense_id) FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE member.first_name = 'Elijah' AND member.last_name = 'Allen' AND strftime('%Y-%m', expense.expense_date) IN ('2019-09', '2019-10')
SELECT sum(CASE WHEN strftime('%Y', event.event_date) = '2019' THEN budget.amount ELSE 0 END) - sum(CASE WHEN strftime('%Y', event.event_date) = '2020' THEN budget.amount ELSE 0 END) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Student_Club'
SELECT LOCATION FROM event WHERE event_name = 'Spring Budget Review'
SELECT expense.cost FROM expense INNER JOIN event ON expense.link_to_budget = event.event_id WHERE event.event_date = '2019-09-04' AND expense.expense_description = 'Posters'
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT notes FROM income WHERE date_received = '2019-09-14' AND source = 'Fundraising'
SELECT count(*) FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT zip_code.county FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Adela' AND member.last_name = 'O''Gallagher'
SELECT count(budget.budget_id) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'November Meeting' AND budget.remaining < 0
SELECT sum(budget.amount) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'September Speaker'
SELECT budget.event_status FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget WHERE expense.expense_date = '2019-08-20' AND expense.expense_description = 'Post Cards, Posters'
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Brent' AND member.last_name = 'Thomason'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Human Development and Family Studies' AND member.t_shirt_size = 'Large'
SELECT zip_code.type FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Christof' AND member.last_name = 'Nielson'
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Vice President'
SELECT zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison'
SELECT major.department FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.position = 'President'
SELECT income.date_received FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Connor' AND member.last_name = 'Hilton' AND income.source = 'Dues'
SELECT member.first_name, member.last_name FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.source = 'Dues' ORDER BY income.date_received ASC LIMIT 1
SELECT cast(sum(CASE WHEN event.event_name = 'Yearly Kickoff' THEN budget.amount ELSE 0 END) AS REAL) / sum(CASE WHEN event.event_name = 'October Meeting' THEN budget.amount ELSE 0 END) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Advertisement'
SELECT cast(sum(CASE WHEN budget.category = 'Parking' THEN budget.amount ELSE 0 END) AS REAL) * 100 / sum(budget.amount) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'November Speaker'
SELECT sum(expense.cost) FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id WHERE expense.expense_description = 'Pizza'
SELECT count(city) FROM zip_code WHERE county = 'Orange County' AND state = 'Virginia'
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT zip_code.city, zip_code.county, zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Amy' AND member.last_name = 'Firth'
SELECT expense.expense_description FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget ORDER BY budget.remaining LIMIT 1
SELECT member.first_name, member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'October Meeting'
SELECT major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major GROUP BY major.college ORDER BY count(member.member_id) DESC LIMIT 1
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.phone = '809-555-3360'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id ORDER BY budget.amount DESC LIMIT 1
SELECT expense.expense_description FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.position = 'Vice President'
SELECT count(attendance.link_to_member) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event WHERE event.event_name = 'Women''s Soccer'
SELECT income.date_received FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Casey' AND member.last_name = 'Mason'
SELECT count(zip_code.zip_code) FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.state = 'Maryland'
SELECT count(attendance.link_to_event) FROM member INNER JOIN attendance ON member.member_id = attendance.link_to_member WHERE member.phone = '954-555-6240'
SELECT member.first_name, member.last_name FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.department = 'School of Applied Sciences, Technology and Education'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.status = 'Closed' ORDER BY budget.spent / budget.amount DESC LIMIT 1
SELECT count(member_id) FROM member WHERE POSITION = 'President'
SELECT max(budget.spent) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id
SELECT count(event_id) FROM event WHERE strftime('%Y', event_date) = '2020' AND TYPE = 'Meeting'
SELECT sum(spent) FROM budget WHERE category = 'Food'
SELECT member.first_name, member.last_name FROM member INNER JOIN attendance ON member.member_id = attendance.link_to_member GROUP BY member.first_name, member.last_name HAVING count(attendance.link_to_event) > 7
SELECT member.first_name, member.last_name FROM major INNER JOIN member ON major.major_id = member.link_to_major INNER JOIN attendance ON member.member_id = attendance.link_to_member INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Community Theater' AND major.major_name = 'Interior Design'
SELECT member.first_name, member.last_name FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.city = 'Georgetown' AND zip_code.state = 'South Carolina'
SELECT sum(income.amount) FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Grant' AND member.last_name = 'Gilmour'
SELECT member.first_name, member.last_name FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.amount > 40
SELECT sum(expense.cost) FROM event INNER JOIN expense ON event.event_id = expense.link_to_budget WHERE event.event_name = 'Yearly Kickoff'
SELECT member.first_name, member.last_name FROM event INNER JOIN budget ON event.event_id = budget.link_to_event INNER JOIN expense ON budget.budget_id = expense.link_to_budget INNER JOIN member ON expense.link_to_member = member.member_id WHERE event.event_name = 'Yearly Kickoff'
SELECT member.first_name, member.last_name, income.source FROM income INNER JOIN member ON income.link_to_member = member.member_id ORDER BY income.amount DESC LIMIT 1
SELECT event.event_name FROM expense INNER JOIN EVENT ON expense.link_to_budget = EVENT.event_id ORDER BY expense.cost ASC LIMIT 1
SELECT cast(sum(CASE WHEN event.event_name = 'Yearly Kickoff' THEN expense.cost ELSE 0 END) AS REAL) * 100 / sum(expense.cost) FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id
SELECT cast(sum(CASE WHEN major_name = 'Finance' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN major_name = 'Physics' THEN 1 ELSE 0 END) FROM major
SELECT source FROM income WHERE date_received LIKE '2019-09%' ORDER BY amount DESC LIMIT 1
SELECT first_name, last_name, email FROM member WHERE POSITION = 'Secretary'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Physics Teaching'
SELECT count(attendance.link_to_member) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event WHERE event.event_name = 'Community Theater' AND strftime('%Y', event.event_date) = '2019'
SELECT count(attendance.link_to_event), major.major_name FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Luisa' AND member.last_name = 'Guidi'
SELECT sum(budget.spent) / count(budget.spent) FROM budget INNER JOIN EVENT ON budget.link_to_event = EVENT.event_id WHERE budget.category = 'Food' AND budget.event_status = 'Closed'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Advertisement' ORDER BY budget.spent DESC LIMIT 1
SELECT member.first_name, member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer' AND member.first_name = 'Maya' AND member.last_name = 'Mclean'
SELECT cast(sum(CASE WHEN TYPE = 'Community Service' THEN 1 ELSE 0 END) AS REAL) * 100 / count(event_id) FROM event WHERE event_date LIKE '2019%'
SELECT expense.cost FROM event INNER JOIN expense ON event.event_id = expense.link_to_budget WHERE event.event_name = 'September Speaker' AND expense.expense_description = 'Posters'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(t_shirt_size) DESC LIMIT 1
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.event_status = 'Closed' AND budget.remaining < 0
SELECT expense.expense_description, sum(expense.cost) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN expense ON attendance.link_to_event = expense.link_to_budget WHERE event.event_name = 'October Meeting' AND expense.approved = 'true' GROUP BY expense.expense_description
SELECT budget.amount, budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'April Speaker' ORDER BY budget.amount ASC
SELECT budget_id FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT budget_id FROM budget WHERE category = 'Advertisement' ORDER BY amount DESC LIMIT 3
SELECT sum(expense.cost) FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id WHERE expense.expense_description = 'Parking'
SELECT sum(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT member.first_name, member.last_name, sum(expense.cost) FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.member_id = 'rec4BLdZHS2Blfp4v' GROUP BY member.first_name, member.last_name
SELECT expense.expense_description FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison'
SELECT expense.expense_description FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.t_shirt_size = 'X-Large'
SELECT member.zip FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE expense.cost < 50
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Phillip' AND member.last_name = 'Cullen'
SELECT member.position FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Business'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Business' AND member.t_shirt_size = 'Medium'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.remaining > 30
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.location = 'MU 215'
SELECT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_date = '2020-03-24T12:00:00'
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Vice President'
SELECT cast(sum(CASE WHEN major.major_name = 'Mathematics' THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Member'
SELECT budget.category FROM event INNER JOIN budget ON event.event_id = budget.link_to_event WHERE event.location = 'MU 215'
SELECT count(income_id) FROM income WHERE amount = 50
SELECT count(member_id) FROM member WHERE t_shirt_size = 'X-Large' AND POSITION = 'Member'
SELECT count(*) FROM major WHERE college = 'College of Agriculture and Applied Sciences' AND department = 'School of Applied Sciences, Technology and Education'
SELECT member.last_name, major.department, major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.major_name = 'Environmental Engineering'
SELECT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.location = 'MU 215' AND event.type = 'Guest Speaker' AND budget.spent = 0
SELECT zip_code.city, zip_code.state FROM major INNER JOIN member ON major.major_id = member.link_to_major INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE major.department = 'Electrical and Computer Engineering' AND member.position = 'Member'
SELECT event.event_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE member.position = 'Vice President' AND event.location = '900 E. Washington St.' AND event.type = 'Social'
SELECT member.last_name, member.position FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE expense.expense_date = '2019-09-10' AND expense.expense_description = 'Pizza'
SELECT member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer' AND member.position = 'Member'
SELECT cast(sum(CASE WHEN income.amount = 50 THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.member_id) FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.t_shirt_size = 'Medium'
SELECT DISTINCT state FROM zip_code WHERE TYPE = 'PO Box'
SELECT zip_code.zip_code FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE zip_code.county = 'San Juan Municipio' AND zip_code.state = 'Puerto Rico' AND zip_code.type = 'PO Box'
SELECT event_name FROM event WHERE event_date BETWEEN '2019-03-15' AND '2020-03-20' AND status = 'Closed' AND TYPE = 'Game'
SELECT budget.link_to_event FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget WHERE expense.cost > 50
SELECT member.first_name, member.last_name, attendance.link_to_event FROM member INNER JOIN attendance ON member.member_id = attendance.link_to_member INNER JOIN expense ON attendance.link_to_event = expense.link_to_budget WHERE expense.approved = 'true' AND expense.expense_date BETWEEN '2019-01-10' AND '2019-11-19'
SELECT major.college FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE member.first_name = 'Katy' AND member.link_to_major = 'rec1N0upiVLy5esTO'
SELECT member.phone FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.college = 'College of Agriculture and Applied Sciences' AND major.major_name = 'Business'
SELECT member.email FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE strftime('%Y-%m-%d', expense.expense_date) BETWEEN '2019-09-10' AND '2019-11-19' AND expense.cost > 20
SELECT count(*) FROM major INNER JOIN member ON major.major_id = member.link_to_major WHERE major.major_name = 'Education' AND member.position = 'Member'
SELECT cast(sum(CASE WHEN budget.remaining < 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(event.event_id) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id
SELECT event_id, location, status FROM event WHERE event_date BETWEEN '2019-11-01' AND '2020-03-31'
SELECT expense_description FROM expense WHERE cost > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'X-Large'
SELECT cast(sum(CASE WHEN TYPE = 'PO Box' THEN 1 ELSE 0 END) AS REAL) * 100 / count(zip_code) FROM zip_code
SELECT event.event_name, event.location FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.remaining > 0
SELECT event.event_name, event.event_date FROM event INNER JOIN expense ON event.event_id = expense.link_to_budget WHERE expense.expense_description = 'Pizza' AND expense.cost BETWEEN 50 AND 100
SELECT member.first_name, member.last_name, major.major_name FROM member INNER JOIN expense ON member.member_id = expense.link_to_member INNER JOIN major ON member.link_to_major = major.major_id WHERE expense.cost > 100
SELECT DISTINCT zip_code.city, zip_code.county FROM income INNER JOIN member ON income.link_to_member = member.member_id INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE income.amount > 40
SELECT member.first_name, member.last_name FROM expense INNER JOIN member ON expense.link_to_member = member.member_id GROUP BY member.first_name, member.last_name ORDER BY sum(expense.cost) DESC LIMIT 1
SELECT avg(expense.cost) FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.position != 'Member'
SELECT event.event_name FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Parking' AND expense.cost < ( SELECT avg(expense.cost) FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Parking' )
SELECT cast(sum(expense.cost) AS REAL) * 100 / count(event.event_id) FROM event INNER JOIN expense ON event.event_id = expense.link_to_budget WHERE event.type = 'Game'
SELECT budget.budget_id FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget WHERE expense.expense_description = 'Water, chips, cookies' ORDER BY expense.cost DESC LIMIT 1
SELECT member.first_name, member.last_name FROM expense INNER JOIN member ON expense.link_to_member = member.member_id ORDER BY expense.cost DESC LIMIT 5
SELECT member.first_name, member.last_name, member.phone FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE expense.cost > ( SELECT avg(cost) FROM expense )
SELECT cast(sum(CASE WHEN zip_code.state = 'Maine' THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.position) - cast(sum(CASE WHEN zip_code.state = 'Vermont' THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.position) FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code
SELECT major.major_name, major.department FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Garrett' AND member.last_name = 'Gerke'
SELECT member.first_name, member.last_name, expense.cost FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE expense.expense_description = 'Water, Veggie tray, supplies'
SELECT member.last_name, member.phone FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Elementary Education'
SELECT budget.category, budget.amount FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'January Speaker'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Food'
SELECT member.first_name, member.last_name, income.amount FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.date_received = '2019-09-09'
SELECT budget.category FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget WHERE expense.expense_description = 'Posters'
SELECT member.first_name, member.last_name, major.college FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Secretary'
SELECT sum(budget.spent), event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Speaker Gifts'
SELECT zip_code.city FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Garrett' AND member.last_name = 'Girke'
SELECT member.first_name, member.last_name, member.position FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.city = 'Lincolnton' AND zip_code.state = 'North Carolina' AND member.zip = 28092
SELECT count(gasstationid) FROM gasstations WHERE country = 'CZE' AND segment = 'Premium'
SELECT cast(sum(CASE WHEN currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN currency = 'CZK' THEN 1 ELSE 0 END) FROM customers
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'LAM' AND substr(yearmonth.date, 1, 4) = '2012' ORDER BY yearmonth.consumption ASC LIMIT 1
SELECT avg(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'SME' AND substr(yearmonth.date, 1, 4) = '2013'
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'CZK' AND substr(yearmonth.date, 1, 4) = '2011' ORDER BY yearmonth.consumption DESC LIMIT 1
SELECT count(yearmonth.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'KAM' AND substr(yearmonth.date, 1, 4) = '2012' AND yearmonth.consumption < 30000
SELECT sum(CASE WHEN customers.currency = 'CZK' THEN yearmonth.consumption ELSE 0 END) - sum(CASE WHEN customers.currency = 'EUR' THEN yearmonth.consumption ELSE 0 END) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE substr(yearmonth.date, 1, 4) = '2012'
SELECT substr(date, 1, 4) FROM yearmonth WHERE currency = 'EUR' GROUP BY substr(date, 1, 4) ORDER BY sum(consumption) DESC LIMIT 1
SELECT gasstations.segment FROM gasstations INNER JOIN yearmonth ON gasstations.gasstationid = yearmonth.customerid GROUP BY gasstations.segment ORDER BY sum(yearmonth.consumption) LIMIT 1
SELECT substr(date, 1, 4) FROM yearmonth GROUP BY substr(date, 1, 4) ORDER BY sum(consumption) DESC LIMIT 1
SELECT sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'SME' AND substr(yearmonth.date, 1, 4) = '2013' GROUP BY substr(yearmonth.date, 5, 2) ORDER BY sum(yearmonth.consumption) DESC LIMIT 1
SELECT sum(CASE WHEN customers.segment = 'SME' THEN yearmonth.consumption ELSE 0 END) - sum(CASE WHEN customers.segment = 'LAM' THEN yearmonth.consumption ELSE 0 END), sum(CASE WHEN customers.segment = 'LAM' THEN yearmonth.consumption ELSE 0 END) - sum(CASE WHEN customers.segment = 'KAM' THEN yearmonth.consumption ELSE 0 END), sum(CASE WHEN customers.segment = 'KAM' THEN yearmonth.consumption ELSE 0 END) - sum(CASE WHEN customers.segment = 'SME' THEN yearmonth.consumption ELSE 0 END) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid
SELECT customers.segment FROM ( SELECT customers.segment, sum(CASE WHEN YEARMONTH.date LIKE '2012%' THEN YEARMONTH.consumption ELSE 0 END) - sum(CASE WHEN YEARMONTH.date LIKE '2013%' THEN YEARMONTH.consumption ELSE 0 END) AS diff FROM customers INNER JOIN YEARMONTH ON customers.customerid = YEARMONTH.customerid GROUP BY customers.segment ) AS t ORDER BY t.diff DESC LIMIT 1
SELECT sum(consumption) FROM yearmonth WHERE customerid = 6 AND date BETWEEN '201308' AND '201311'
SELECT sum(CASE WHEN gasstations.country = 'CZE' THEN 1 ELSE 0 END) - sum(CASE WHEN gasstations.country = 'SVK' THEN 1 ELSE 0 END) FROM gasstations WHERE gasstations.segment = 'Discount'
SELECT sum(CASE WHEN customerid = 7 THEN consumption ELSE 0 END) - sum(CASE WHEN customerid = 5 THEN consumption ELSE 0 END) FROM yearmonth WHERE date = '201304'
SELECT sum(CASE WHEN customers.currency = 'CZK' THEN 1 ELSE 0 END) - sum(CASE WHEN customers.currency = 'EUR' THEN 1 ELSE 0 END) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE customers.segment = 'SME'
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'LAM' AND customers.currency = 'EUR' AND yearmonth.date = '201310' ORDER BY yearmonth.consumption DESC LIMIT 1
SELECT customers.customerid, sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'KAM' GROUP BY customers.customerid ORDER BY sum(yearmonth.consumption) DESC LIMIT 1
SELECT sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'KAM' AND substr(yearmonth.date, 1, 7) = '201305'
SELECT cast(sum(CASE WHEN yearmonth.consumption > 46.73 THEN 1 ELSE 0 END) AS REAL) * 100 / count(yearmonth.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'LAM'
SELECT country, count(gasstationid) FROM gasstations WHERE segment = 'Value for money' GROUP BY country
SELECT cast(sum(CASE WHEN customers.currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / count(customers.customerid) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE customers.segment = 'KAM'
SELECT cast(sum(CASE WHEN consumption > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / count(customerid) FROM yearmonth WHERE date LIKE '201202'
SELECT cast(sum(CASE WHEN segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / count(gasstationid) FROM gasstations WHERE country = 'SVK'
SELECT customerid FROM yearmonth WHERE date = '201309' ORDER BY consumption DESC LIMIT 1
SELECT customers.segment FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date = '201309' GROUP BY customers.segment ORDER BY sum(yearmonth.consumption) LIMIT 1
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'SME' AND yearmonth.date = '201206' ORDER BY yearmonth.consumption ASC LIMIT 1
SELECT max(consumption) FROM yearmonth WHERE substr(date, 1, 4) = '2012'
SELECT sum(yearmonth.consumption) / 12 FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR'
SELECT products.description FROM products INNER JOIN transactions_1k ON products.productid = transactions_1k.productid WHERE strftime('%Y-%m', transactions_1k.`date`) = '2013-09'
SELECT DISTINCT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE strftime('%Y%m', transactions_1k.`date`) = '201306'
SELECT DISTINCT gasstations.chainid FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.price = 1
SELECT DISTINCT products.description FROM products INNER JOIN transactions_1k ON products.productid = transactions_1k.productid
SELECT avg(price) FROM transactions_1k WHERE date LIKE '2012-01%'
SELECT count(yearmonth.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR' AND yearmonth.consumption > 1000
SELECT DISTINCT products.description FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid INNER JOIN products ON transactions_1k.productid = products.productid WHERE gasstations.country = 'CZE'
SELECT DISTINCT transactions_1k.time FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.chainid = 11
SELECT count(transactions_1k.transactionid) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE' AND transactions_1k.price > 1000
SELECT count(transactions_1k.transactionid) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE' AND transactions_1k.`date` > '2012-01-01'
SELECT avg(transactions_1k.price) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE'
SELECT avg(transactions_1k.price) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE customers.currency = 'EUR'
SELECT customers.customerid FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.`date` = '2012-08-25' ORDER BY transactions_1k.amount DESC LIMIT 1
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.`date` = '2012-08-25' ORDER BY transactions_1k.price LIMIT 1
SELECT customers.currency FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.date = '2012-08-24' AND transactions_1k.time = '16:25:00'
SELECT customers.segment FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.date = '2012-08-23' AND transactions_1k.time = '21:20:00'
SELECT count(transactions_1k.transactionid) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE customers.currency = 'EUR' AND transactions_1k.date = '2012-08-26' AND transactions_1k.time < '13:00:00'
SELECT segment FROM customers WHERE customerid = ( SELECT min(customerid) FROM customers )
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.date = '2012-08-24' AND transactions_1k.time = '12:42:00'
SELECT productid FROM transactions_1k WHERE date = '2012-08-23' AND time = '21:20:00'
SELECT yearmonth.consumption, transactions_1k.date FROM transactions_1k INNER JOIN yearmonth ON transactions_1k.customerid = yearmonth.customerid WHERE transactions_1k.date = '2012-08-24' AND transactions_1k.price = 124.05
SELECT count(transactions_1k.transactionid) FROM transactions_1k INNER JOIN gasstations ON transactions_1k.gasstationid = gasstations.gasstationid WHERE gasstations.country = 'CZE' AND transactions_1k.`date` = '2012-08-26' AND transactions_1k.time BETWEEN '08:00' AND '09:00'
SELECT customers.currency FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date LIKE '201306' AND yearmonth.consumption = 214582.17
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.cardid = 667467
SELECT customers.currency FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.`date` = '2012-08-24' AND transactions_1k.price = 548.4
SELECT cast(sum(CASE WHEN customers.currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / count(customers.customerid) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.`date` = '2012-08-25'
SELECT ( SELECT consumption FROM yearmonth WHERE `date` = '201201' ) - ( SELECT consumption FROM yearmonth WHERE `date` = '201301' ) FROM transactions_1k WHERE `date` = '2012-08-25' AND price = 634.8
SELECT gasstationid FROM transactions_1k GROUP BY gasstationid ORDER BY sum(price) DESC LIMIT 1
SELECT cast(sum(CASE WHEN segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / count(gasstationid) FROM gasstations WHERE country = 'SVK'
SELECT sum(transactions_1k.amount), sum(yearmonth.consumption) FROM transactions_1k INNER JOIN yearmonth ON transactions_1k.customerid = yearmonth.customerid WHERE transactions_1k.customerid = 38508 AND transactions_1k.`date` LIKE '201201'
SELECT products.description FROM products INNER JOIN transactions_1k ON products.productid = transactions_1k.productid GROUP BY products.description ORDER BY sum(transactions_1k.amount) DESC LIMIT 5
SELECT customers.customerid, avg(transactions_1k.price), customers.currency FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid GROUP BY customers.customerid, customers.currency ORDER BY sum(transactions_1k.price) DESC LIMIT 1
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.productid = 2 ORDER BY transactions_1k.price DESC LIMIT 1
SELECT yearmonth.consumption FROM transactions_1k INNER JOIN yearmonth ON transactions_1k.date = yearmonth.date WHERE transactions_1k.productid = 5 AND transactions_1k.price / transactions_1k.amount > 29
