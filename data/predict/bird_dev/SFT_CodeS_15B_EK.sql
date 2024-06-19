SELECT max(`free meal count (k-12)`) / max(`enrollment (k-12)`) FROM frpm WHERE `county name` = 'Alameda'
SELECT min(`free meal count (ages 5-17)`) FROM frpm WHERE `educational option type` = 'Continuation School'
SELECT schools.zip FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school (y/n)` = 1 AND schools.county = 'Fresno'
SELECT schools.streetabr FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode ORDER BY frpm.`frpm count (k-12)` DESC LIMIT 1
SELECT phone FROM schools WHERE charter = 1 AND opendate > '2000-01-01'
SELECT count(schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.virtual = 'P' AND satscores.avgscrmath < 400
SELECT schools.school FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.numge1500 > 500 AND schools.magnet = 1
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr > 1500 ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT satscores.numtsttakr FROM frpm INNER JOIN satscores ON frpm.`school code` = satscores.sname ORDER BY frpm.`frpm count (k-12)` DESC LIMIT 1
SELECT count(schools.cdscode) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.charter = 1 AND satscores.avgscrmath > 560
SELECT frpm.`frpm count (ages 5-17)` FROM frpm INNER JOIN satscores ON frpm.cdscode = satscores.cds ORDER BY satscores.avgscrread DESC LIMIT 1
SELECT cdscode FROM frpm WHERE `enrollment (k-12)` + `enrollment (ages 5-17)` > 500
SELECT max(`free meal count (ages 5-17)`) FROM frpm WHERE `percent (%) eligible free (ages 5-17)` = ( SELECT max(`percent (%) eligible free (ages 5-17)`) FROM frpm )
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.numge1500 / satscores.numtsttakr DESC LIMIT 3
SELECT schools.ncesschool FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode ORDER BY frpm.`enrollment (ages 5-17)` DESC LIMIT 5
SELECT schools.district FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.virtual = 'N' GROUP BY schools.district ORDER BY avg(satscores.avgscrread) DESC LIMIT 1
SELECT count(*) FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.county = 'Alameda' AND satscores.numtsttakr < 100
SELECT schools.charternum FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.avgscrwrite = 499
SELECT count(schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.county = 'Contra Costa' AND schools.fundingtype = 'Directly funded' AND satscores.numtsttakr < 250
SELECT schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrmath DESC LIMIT 1
SELECT count(*) FROM frpm WHERE `low grade` = 9 AND `high grade` = 12 AND `county name` = 'Amador'
SELECT count(schools.school) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.city = 'Los Angeles' AND frpm.`free meal count (k-12)` BETWEEN 500 AND 700
SELECT sname FROM satscores WHERE cname = 'Contra Costa' ORDER BY numtsttakr DESC LIMIT 1
SELECT DISTINCT frpm.`school name`, schools.street FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`enrollment (k-12)` - frpm.`enrollment (ages 5-17)` > 30
SELECT satscores.sname FROM satscores INNER JOIN frpm ON satscores.cds = frpm.cdscode WHERE frpm.`percent (%) eligible free (k-12)` > 0.1 AND satscores.avgscrmath > 1500
SELECT DISTINCT schools.school, schools.fundingtype FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.city = 'Riverside' AND satscores.avgscrmath > 400
SELECT schools.school, schools.street, schools.streetabr, schools.city, schools.state, schools.zip FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.city = 'Monterey' AND schools.soctype = 'High Schools (Public)' AND frpm.`free meal count (ages 5-17)` > 800
SELECT avg(satscores.avgscrwrite), satscores.sname, schools.phone FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.opendate > '1991-01-01' AND schools.closeddate < '2000-12-31'
SELECT avg(frpm.`enrollment (k-12)` - frpm.`enrollment (ages 5-17)`) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.fundingtype = 'Locally funded'
SELECT schools.opendate FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`school type` = 'K-12 Schools (Public)' ORDER BY frpm.`enrollment (k-12)` DESC LIMIT 1
SELECT schools.city FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`enrollment (k-12)` IS NOT NULL ORDER BY frpm.`enrollment (k-12)` ASC LIMIT 5
SELECT `free meal count (k-12)` / `enrollment (k-12)` FROM frpm ORDER BY `enrollment (k-12)` DESC LIMIT 1, 1
SELECT frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.soc = 66 ORDER BY frpm.`free meal count (k-12)` DESC LIMIT 5
SELECT schools.website, frpm.`school name` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`free meal count (ages 5-17)` BETWEEN 1900 AND 2000
SELECT cast(frpm.`free meal count (ages 5-17)` AS REAL) / frpm.`enrollment (ages 5-17)` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.admfname1 = 'Kacey' AND schools.admlname1 = 'Gibson'
SELECT schools.admemail1 FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school (y/n)` = 1 ORDER BY frpm.`enrollment (k-12)` ASC LIMIT 1
SELECT schools.admfname1, schools.admfname2, schools.admfname3, schools.admlname1, schools.admlname2, schools.admlname3 FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numge1500 = ( SELECT max(numge1500) FROM satscores )
SELECT schools.street, schools.city, schools.zip, schools.state FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.numge1500 / satscores.numtsttakr ASC LIMIT 1
SELECT schools.website FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr BETWEEN 2000 AND 3000
SELECT avg(satscores.numtsttakr) FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.opendate LIKE '1980%'
SELECT schools.phone FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.dname = 'Fresno Unified' ORDER BY satscores.avgscrread LIMIT 1
SELECT schools.school FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE schools.virtual = 'N' ORDER BY satscores.avgscrread DESC LIMIT 5
SELECT schools.edopsname FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrmath DESC LIMIT 1
SELECT avgscrmath, cname FROM satscores ORDER BY avgscrmath + avgscrread + avgscrwrite ASC LIMIT 1
SELECT avgscrwrite, schools.city FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr >= 1500 ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT schools.school, satscores.avgscrwrite FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.admlname1 = 'Ulrich' AND schools.admfname1 = 'Ricci'
SELECT schools.state FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.doc = 31 AND schools.gsserved = 'K-12' GROUP BY schools.state ORDER BY sum(frpm.`enrollment (k-12)`) DESC LIMIT 1
SELECT cast(sum(CASE WHEN schools.opendate LIKE '1980%' THEN 1 ELSE 0 END) AS REAL) / 12 FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.county = 'Alameda' AND schools.doc = 52
SELECT cast(sum(CASE WHEN schools.doc = 54 THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN schools.doc = 52 THEN 1 ELSE 0 END) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.county = 'Orange'
SELECT county, school, closeddate FROM schools WHERE statustype = 'Closed' GROUP BY county, school, closeddate ORDER BY count(school) DESC LIMIT 1
SELECT schools.street, satscores.sname FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrmath DESC LIMIT 5, 1
SELECT schools.mailstreet, satscores.sname FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrread ASC LIMIT 1
SELECT count(schools.school) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.mailcity = 'Lakeport' AND satscores.avgscrread + satscores.avgscrmath + satscores.avgscrwrite >= 1500
SELECT sum(satscores.numtsttakr) FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE schools.mailcity = 'Fresno'
SELECT school, mailzip FROM schools WHERE admlname1 = 'Atoian' AND admfname1 = 'Avetik'
SELECT cast(sum(CASE WHEN county = 'Colusa' THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN county = 'Humboldt' THEN 1 ELSE 0 END) FROM schools WHERE mailstate = 'CA'
SELECT count(*) FROM schools WHERE mailstate = 'CA' AND county = 'San Joaquin' AND statustype = 'Active'
SELECT schools.phone, schools.ext FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode ORDER BY satscores.avgscrwrite DESC LIMIT 332, 1
SELECT schools.phone, schools.ext, schools.school FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.zip = '95203-3704'
SELECT website FROM schools WHERE admlname1 = 'Larson' AND admfname2 = 'Dante'
SELECT website FROM schools WHERE county = 'San Joaquin' AND charter = 1 AND virtual = 'P'
SELECT sum(CASE WHEN schools.city = 'Hickman' THEN 1 ELSE 0 END) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.doc = 52 AND schools.charter = 1
SELECT sum(CASE WHEN frpm.`percent (%) eligible free (k-12)` < 0.18 THEN 1 ELSE 0 END) FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.county = 'Los Angeles' AND schools.charter = 0
SELECT schools.admfname1, schools.admlname1, schools.school, schools.city FROM schools INNER JOIN frpm ON schools.cdscode = frpm.`charter school number` WHERE frpm.`charter school number` = '00D2'
SELECT count(*) FROM schools WHERE mailcity = 'Hickman' AND charternum = '00D4'
SELECT cast(sum(CASE WHEN schools.fundingtype = 'Locally funded' THEN 1 ELSE 0 END) AS REAL) * 100 / count(schools.fundingtype) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`county name` = 'Santa Clara'
SELECT count(*) FROM schools WHERE fundingtype = 'Directly funded' AND county = 'Stanislaus' AND opendate BETWEEN '2000-01-01' AND '2005-12-31'
SELECT count(schools.cdscode) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.city = 'San Francisco' AND schools.closeddate LIKE '1989%'
SELECT county FROM schools WHERE strftime('%Y', closeddate) BETWEEN '1980' AND '1989' AND soc = 11 GROUP BY county ORDER BY count(county) DESC LIMIT 1
SELECT ncesdist FROM schools WHERE soc = 31
SELECT count(*) FROM schools WHERE county = 'Alpine' AND edopsname = 'District Community Day School' AND closeddate IS NOT NULL
SELECT frpm.`district code` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.city = 'Fresno' AND schools.magnet = 0
SELECT `enrollment (ages 5-17)` FROM frpm WHERE `school name` = 'State Special School' AND `academic year` = '2014-2015'
SELECT sum(frpm.`free meal count (ages 5-17)`) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.mailstreet = 'PO Box 1040'
SELECT frpm.`low grade` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.ncesdist = 613360 AND schools.edopscode = 'SPECON'
SELECT DISTINCT schools.eilname, frpm.`school name` FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`nslp provision status` = 'Breakfast Provision 2' AND frpm.`county code` = 37
SELECT schools.city FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.eilcode = 'HS' AND frpm.`nslp provision status` = 'Lunch Provision 2' AND frpm.`low grade` = 9 AND frpm.`high grade` = 12 AND frpm.`county name` = 'Merced'
SELECT schools.school, cast(frpm.`free meal count (ages 5-17)` AS REAL) * 100 / frpm.`enrollment (ages 5-17)` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.county = 'Los Angeles' AND schools.gsserved = 'K-9'
SELECT gsserved FROM schools WHERE city = 'Adelanto' GROUP BY gsserved ORDER BY count(gsserved) DESC LIMIT 1
SELECT county, sum(CASE WHEN virtual = 'N' THEN 1 ELSE 0 END) AS cnt FROM schools WHERE county IN ('San Diego', 'Santa Barbara') GROUP BY county ORDER BY cnt DESC LIMIT 1
SELECT frpm.`school type`, frpm.`school name`, schools.latitude FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode ORDER BY schools.latitude DESC LIMIT 1
SELECT schools.city, frpm.`low grade` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.state = 'CA' ORDER BY schools.latitude ASC LIMIT 1
SELECT gsoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(DISTINCT schools.city) FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.gsserved = 'K-8' AND schools.magnet = 1 AND frpm.`nslp provision status` = 'Multiple Provision Types'
SELECT admfname1, district FROM schools GROUP BY admfname1, district ORDER BY count(admfname1) DESC LIMIT 2
SELECT frpm.`percent (%) eligible free (k-12)` FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.admfname1 = 'Alusine'
SELECT schools.admlname2, schools.district, schools.county, schools.school FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE frpm.`charter school number` = 40
SELECT schools.admemail1 FROM schools INNER JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.county = 'San Bernardino' AND schools.district = 'San Bernardino City Unified' AND schools.opendate BETWEEN '2009-01-01' AND '2010-12-31' AND schools.soc = 62 AND schools.doc = 54
SELECT schools.admemail1, schools.school FROM satscores INNER JOIN schools ON satscores.cds = schools.cdscode WHERE satscores.numtsttakr >= 1500 ORDER BY satscores.numtsttakr DESC LIMIT 1
SELECT count(district.district_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a3 = 'East Bohemia' AND account.frequency = 'POPLATEK PO OBRATU'
SELECT count(account.account_id) FROM account INNER JOIN district ON account.district_id = district.district_id WHERE district.a3 = 'Prague'
SELECT avg(a12), avg(a13) FROM district
SELECT count(district.district_id) FROM district INNER JOIN client ON district.district_id = client.district_id WHERE client.gender = 'F' AND district.a11 BETWEEN 6000 AND 10000
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'M' AND district.a3 = 'north Bohemia' AND district.a11 > 8000
SELECT account.account_id FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id WHERE client.gender = 'F' ORDER BY client.birth_date ASC LIMIT 1
SELECT account.account_id FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id ORDER BY client.birth_date ASC, district.a11 DESC LIMIT 1
SELECT count(client.client_id) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND disp.type = 'OWNER'
SELECT client.client_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id WHERE account.frequency = 'POPLATEK PO OBRATU'
SELECT account.account_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE strftime('%Y', loan.date) = '1997' AND account.frequency = 'POPLATEK TYDNE' ORDER BY loan.amount ASC LIMIT 1
SELECT account.account_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE strftime('%Y', loan.date) = '1993' AND loan.duration > 12 ORDER BY loan.amount DESC LIMIT 1
SELECT count(client.district_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' AND client.birth_date < '1950-01-01'
SELECT account_id FROM trans WHERE date LIKE '1995%' ORDER BY date ASC LIMIT 1
SELECT DISTINCT account.account_id FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.date < '1997-01-01' AND trans.amount > 3000
SELECT client.client_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id WHERE strftime('%Y', card.issued) = '1994' AND strftime('%m', card.issued) = '03' AND strftime('%d', card.issued) = '03'
SELECT date FROM account WHERE account_id = 840
SELECT account.district_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE loan.status = 'A' AND loan.date = '1994-08-25'
SELECT max(trans.amount) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN client ON disp.client_id = client.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE card.issued = '1996-10-21'
SELECT client.gender FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id ORDER BY district.a11 DESC LIMIT 1
SELECT trans.amount FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id INNER JOIN loan ON account.account_id = loan.account_id ORDER BY loan.amount DESC LIMIT 1
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a2 = 'Jesenik' AND client.gender = 'F'
SELECT disp.disp_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE account.date = '1998-09-02' AND trans.amount = 5100
SELECT count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a2 = 'Litomerice' AND strftime('%Y', account.`date`) = '1996'
SELECT district.a2 FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE client.gender = 'F' AND client.birth_date = '1976-01-29'
SELECT client.birth_date FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN loan ON account.account_id = loan.account_id WHERE loan.amount = 98832 AND loan.date = '1996-01-03'
SELECT account.account_id FROM client INNER JOIN account ON client.client_id = account.district_id INNER JOIN district ON account.district_id = district.district_id WHERE district.a3 = 'Prague' LIMIT 1
SELECT cast(sum(CASE WHEN client.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.gender) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'south Bohemia'
SELECT cast((sum(CASE WHEN `date` = '1998-12-27' THEN balance ELSE 0 END) - sum(CASE WHEN `date` = '1993-03-22' THEN balance ELSE 0 END)) AS REAL) * 100 / sum(CASE WHEN `date` = '1993-03-22' THEN balance ELSE 0 END) FROM trans WHERE account_id = ( SELECT account_id FROM loan WHERE date = '1993-07-05' )
SELECT cast(sum(CASE WHEN status = 'A' THEN 1 ELSE 0 END) AS REAL) * 100 / count(loan_id) FROM loan
SELECT cast(sum(CASE WHEN loan.status = 'C' THEN 1 ELSE 0 END) AS REAL) * 100 / count(loan.status) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE loan.amount < 100000
SELECT account.account_id, district.a2, district.a3 FROM account INNER JOIN district ON account.district_id = district.district_id WHERE strftime('%Y', account.date) = '1993' AND account.frequency = 'POPLATEK PO OBRATU'
SELECT client.client_id, account.frequency FROM client INNER JOIN district ON client.district_id = district.district_id INNER JOIN account ON district.district_id = account.district_id WHERE district.a3 = 'east Bohemia' AND strftime('%Y', account.date) BETWEEN '1995' AND '2000'
SELECT account.account_id, account.date FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a2 = 'Prachatice'
SELECT district.a2, district.a3 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.loan_id = 4990
SELECT account.account_id, district.a2, district.a3 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.amount > 300000
SELECT loan.loan_id, district.a3, district.a11 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.duration = 60
SELECT district.a2, cast((district.a13 - district.a12) AS REAL) * 100 / district.a12 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN client ON account.district_id = client.district_id INNER JOIN district ON client.district_id = district.district_id WHERE loan.status = 'D'
SELECT cast(sum(CASE WHEN district.a2 = 'Decin' THEN 1 ELSE 0 END) AS REAL) * 100 / count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE strftime('%Y', account.`date`) = '1993'
SELECT account_id FROM account WHERE frequency = 'POPLATEK MESICNE'
SELECT district.a2 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' GROUP BY district.a2 ORDER BY count(district.a2) DESC LIMIT 10
SELECT district.a2, sum(trans.amount) FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE trans.type = 'VYDAJ' AND strftime('%Y-%m', trans.`date`) = '1996-01' GROUP BY district.a2 ORDER BY sum(trans.amount) DESC LIMIT 10
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'south Bohemia' AND client.client_id NOT IN ( SELECT client.client_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'south Bohemia' )
SELECT district.a3 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.status = 'C' GROUP BY district.a3 ORDER BY count(district.a3) DESC LIMIT 1
SELECT avg(loan.amount) FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'M'
SELECT district_id, a2 FROM district ORDER BY a13 DESC LIMIT 1
SELECT count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a16 = ( SELECT max(a16) FROM district )
SELECT count(account.account_id) FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.frequency = 'POPLATEK MESICNE' AND trans.operation = 'VYBER KARTOU' AND trans.balance < 0
SELECT count(loan.loan_id) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE account.frequency = 'POPLATEK MESICNE' AND loan.status = 'A' AND loan.amount > 250000 AND account.date BETWEEN '1995-01-01' AND '1997-12-31'
SELECT count(account.account_id) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE account.district_id = 1 AND loan.status = 'C'
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a15 = ( SELECT a15 FROM district ORDER BY a15 DESC LIMIT 1, 1 ) AND client.gender = 'M'
SELECT count(card.card_id) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE card.type = 'gold' AND disp.type = 'DISPONENT'
SELECT count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a2 = 'Pisek'
SELECT district.a2 FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE strftime('%Y', trans.`date`) = '1997' AND trans.amount > 10000
SELECT DISTINCT order.account_id FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN order ON account.account_id = order.account_id WHERE district.a2 = 'Pisek' AND order.k_symbol = 'SIPO'
SELECT DISTINCT disp.account_id FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE card.type IN ('gold', 'junior')
SELECT avg(trans.amount) FROM trans INNER JOIN account ON trans.account_id = account.account_id WHERE account.date LIKE '2021%' AND trans.operation = 'VYBER KARTOU'
SELECT client.client_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id INNER JOIN order ON card.disp_id = order.account_id GROUP BY client.client_id HAVING sum(order.amount) < ( SELECT avg(amount) FROM order )
SELECT client.client_id FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id INNER JOIN loan ON disp.account_id = loan.account_id WHERE client.gender = 'F'
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'south Bohemia' AND client.gender = 'F'
SELECT account.account_id FROM account INNER JOIN district ON account.district_id = district.district_id INNER JOIN loan ON account.account_id = loan.account_id WHERE district.a2 = 'Tabor' AND loan.status = 'A'
SELECT district.a11 FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN disp ON account.account_id = disp.account_id WHERE disp.type = 'OWNER' AND district.a11 BETWEEN 8000 AND 9000
SELECT count(district.district_id) FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE district.a3 = 'north Bohemia' AND trans.bank = 'AB'
SELECT district.a2 FROM district INNER JOIN account ON district.district_id = account.district_id INNER JOIN trans ON account.account_id = trans.account_id WHERE trans.type = 'VYDAJ'
SELECT avg(district.a15) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE account.date LIKE '1997%' AND district.a15 > 4000
SELECT count(card.card_id) FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE disp.type = 'OWNER' AND card.type = 'classic'
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a2 = 'Hl.m. Praha' AND client.gender = 'M'
SELECT cast(sum(CASE WHEN TYPE = 'gold' THEN 1 ELSE 0 END) AS REAL) * 100 / count(card_id) FROM card WHERE strftime('%Y', issued) < '1998'
SELECT client.gender FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN disp ON account.account_id = disp.account_id INNER JOIN client ON disp.client_id = client.client_id ORDER BY loan.amount DESC LIMIT 1
SELECT district.a15 FROM account INNER JOIN district ON account.district_id = district.district_id WHERE account.account_id = 532
SELECT account.district_id FROM order INNER JOIN account ON order.account_id = account.account_id WHERE order.order_id = 33333
SELECT trans.amount FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE client.client_id = 3356 AND trans.operation = 'VYBER'
SELECT count(account.account_id) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND loan.amount < 200000
SELECT card.type FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE disp.client_id = 13539
SELECT district.a3 FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.client_id = 3541
SELECT district.a2 FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE loan.status = 'A' GROUP BY district.a2 ORDER BY count(district.a2) DESC LIMIT 1
SELECT account_id FROM `order` WHERE order_id = 32423
SELECT trans.trans_id FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.district_id = 5
SELECT count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a2 = 'Jesenik'
SELECT card.disp_id FROM card INNER JOIN disp ON card.disp_id = disp.disp_id INNER JOIN client ON disp.client_id = client.client_id WHERE card.type = 'junior' AND card.issued > '1996-01-01'
SELECT cast(sum(CASE WHEN client.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.client_id) FROM client INNER JOIN account ON client.district_id = account.district_id INNER JOIN district ON client.district_id = district.district_id WHERE district.a11 > 10000
SELECT cast(sum(CASE WHEN strftime('%Y', loan.date) = '1997' THEN loan.amount ELSE 0 END) - sum(CASE WHEN strftime('%Y', loan.date) = '1996' THEN loan.amount ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN strftime('%Y', loan.date) = '1996' THEN loan.amount ELSE 0 END) FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'M'
SELECT count(trans.trans_id) FROM trans INNER JOIN account ON trans.account_id = account.account_id WHERE strftime('%Y', trans.`date`) > '1995' AND trans.operation = 'VYBER KARTOU'
SELECT sum(CASE WHEN district.a3 = 'east Bohemia' THEN district.a16 ELSE 0 END) - sum(CASE WHEN district.a3 = 'north Bohemia' THEN district.a16 ELSE 0 END) FROM district
SELECT count(CASE WHEN TYPE = 'OWNER' THEN 1 ELSE NULL END) AS OWNER , count(CASE WHEN TYPE = 'DISPONENT' THEN 1 ELSE NULL END) AS DISPONENT FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT account.frequency, trans.amount FROM account INNER JOIN trans ON account.account_id = trans.account_id WHERE account.account_id = 3539
SELECT strftime('%Y', birth_date) FROM client WHERE client_id = 130
SELECT count(account.account_id) FROM account INNER JOIN disp ON account.account_id = disp.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE disp.type = 'OWNER'
SELECT sum(loan.amount), sum(loan.payments) FROM loan INNER JOIN account ON loan.account_id = account.account_id INNER JOIN disp ON account.account_id = disp.account_id WHERE disp.client_id = 992
SELECT sum(trans.amount), client.gender FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE client.client_id = 4 AND trans.trans_id = 851
SELECT card.type FROM card INNER JOIN disp ON card.disp_id = disp.disp_id WHERE disp.client_id = 9
SELECT sum(trans.amount) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN trans ON account.account_id = trans.account_id WHERE client.client_id = 617 AND strftime('%Y', trans.`date`) = '1998'
SELECT client.client_id, client.district_id FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'East Bohemia' AND client.birth_date BETWEEN '1983-01-01' AND '1987-12-31'
SELECT client.client_id FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'F' ORDER BY loan.amount DESC LIMIT 3
SELECT count(client.client_id) FROM client INNER JOIN loan ON client.client_id = loan.account_id WHERE client.gender = 'M' AND client.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND loan.amount > 4000
SELECT count(account.account_id) FROM district INNER JOIN account ON district.district_id = account.district_id WHERE district.a2 = 'Beroun' AND strftime('%Y', account.`date`) > '1996'
SELECT count(client.client_id) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id WHERE client.gender = 'F' AND card.type = 'junior'
SELECT cast(sum(CASE WHEN client.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.client_id) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE district.a3 = 'Prague'
SELECT cast(sum(CASE WHEN client.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / count(client.gender) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id WHERE account.frequency = 'POPLATEK TYDNE'
SELECT count(client.client_id) FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN account ON disp.account_id = account.account_id WHERE account.frequency = 'POPLATEK TYDNE'
SELECT account.account_id FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE loan.duration > 24 AND strftime('%Y', account.`date`) < '1997' ORDER BY loan.amount ASC LIMIT 1
SELECT client.client_id FROM client INNER JOIN district ON client.district_id = district.district_id WHERE client.gender = 'F' ORDER BY client.birth_date ASC, district.a11 ASC LIMIT 1
SELECT count(client.client_id) FROM client INNER JOIN district ON client.district_id = district.district_id WHERE district.a3 = 'east Bohemia' AND client.birth_date LIKE '1920%'
SELECT count(*) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE account.frequency = 'POPLATEK TYDNE' AND loan.duration = 24
SELECT avg(loan.amount) FROM loan INNER JOIN account ON loan.account_id = account.account_id WHERE account.frequency = 'POPLATEK PO OBRATU' AND loan.status = 'C'
SELECT client.client_id, client.district_id FROM client INNER JOIN disp ON client.client_id = disp.client_id WHERE disp.type = 'OWNER'
SELECT client.client_id, client.birth_date FROM client INNER JOIN disp ON client.client_id = disp.client_id INNER JOIN card ON disp.disp_id = card.disp_id WHERE card.type = 'gold'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(bond_type) DESC LIMIT 1
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' AND atom.element = 'cl'
SELECT avg(atom.element) FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE bond.bond_type = '-' AND atom.element = 'o'
SELECT cast(sum(CASE WHEN bond.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) / count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' AND atom.element = 'na'
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#' AND molecule.label = '+'
SELECT cast(sum(CASE WHEN atom.element = 'c' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.atom_id) FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = '
SELECT count(bond_id) FROM bond WHERE bond_type = '#'
SELECT count(atom_id) FROM atom WHERE element != 'br'
SELECT count(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR099' AND label = '+'
SELECT molecule_id FROM atom WHERE element = 'si'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR004_8_9'
SELECT DISTINCT atom.element FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = '
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'h' GROUP BY molecule.label ORDER BY count(molecule.label) DESC LIMIT 1
SELECT DISTINCT bond.bond_type FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'te'
SELECT connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '-'
SELECT connected.atom_id, connected.atom_id2 FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE molecule.label = '-'
SELECT element FROM atom WHERE molecule_id IN ( SELECT molecule_id FROM molecule WHERE label = '-' ) GROUP BY element ORDER BY count(element) ASC LIMIT 1
SELECT bond.bond_type FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE connected.atom_id = 'TR004_8' AND connected.atom_id2 = 'TR004_20'
SELECT DISTINCT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element != 'sn' AND molecule.label = '-'
SELECT count(connected.atom_id) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = '-' AND (atom.element = 'i' OR atom.element = 's')
SELECT connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '#'
SELECT atom.atom_id FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id2 WHERE atom.molecule_id = 'TR181'
SELECT cast(sum(CASE WHEN molecule.label = '+' AND atom.element != 'f' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id
SELECT cast(count(CASE WHEN bond.bond_type = '#' THEN molecule.molecule_id ELSE NULL END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+'
SELECT element FROM atom WHERE molecule_id = 'TR000' GROUP BY element ORDER BY count(element) DESC LIMIT 3
SELECT connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.molecule_id = 'TR001' AND bond.bond_id = 'TR001_2_6'
SELECT sum(iif(label = '+', 1, 0)) - sum(iif(label = '-', 1, 0)) AS diff FROM molecule
SELECT atom_id, atom_id2 FROM connected WHERE bond_id = 'TR000_2_5'
SELECT bond_id FROM connected WHERE atom_id2 = 'TR000_2'
SELECT molecule.label FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = ' = ' ORDER BY molecule.label LIMIT 5
SELECT cast(sum(CASE WHEN bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond_id) FROM bond WHERE molecule_id = 'TR008'
SELECT cast(count(CASE WHEN label = '+' THEN molecule_id ELSE NULL END) AS REAL) * 100 / count(molecule_id) FROM molecule
SELECT cast(sum(CASE WHEN element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom_id) FROM atom WHERE molecule_id = 'TR206'
SELECT DISTINCT bond.bond_type FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR000'
SELECT DISTINCT molecule.label, atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR060'
SELECT bond.bond_type, molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.molecule_id = 'TR018' GROUP BY bond.bond_type, molecule.label ORDER BY count(bond.bond_type) DESC LIMIT 1
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '-' ORDER BY molecule.label LIMIT 3
SELECT bond_id FROM bond WHERE molecule_id = 'TR006' ORDER BY bond_id LIMIT 2
SELECT count(bond.bond_id) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.molecule_id = 'TR009' AND (connected.atom_id = 'TR009_12' OR connected.atom_id2 = 'TR009_12')
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND atom.element = 'br'
SELECT bond.bond_type, connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_id = 'TR001_6_9'
SELECT molecule.molecule_id, molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.atom_id = 'TR001_10'
SELECT count(molecule_id) FROM bond WHERE bond_type = '#'
SELECT count(bond_id) FROM connected WHERE atom_id = 'TR000_19'
SELECT DISTINCT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR004'
SELECT count(molecule_id) FROM molecule WHERE label = '-'
SELECT molecule.molecule_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND substr(atom.atom_id, 7, 2) BETWEEN '21' AND '25'
SELECT DISTINCT bond.bond_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE atom.element IN ('p', 'n')
SELECT molecule.label FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = ' = ' GROUP BY molecule.molecule_id ORDER BY count(bond.bond_id) DESC LIMIT 1
SELECT cast(count(bond.bond_id) AS REAL) / count(DISTINCT atom.atom_id) FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE atom.element = 'i'
SELECT bond.bond_type, bond.bond_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE connected.atom_id = 'TR000_45'
SELECT DISTINCT element FROM atom WHERE atom_id NOT IN ( SELECT atom_id FROM connected )
SELECT connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.molecule_id = 'TR447' AND bond.bond_type = '#'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR144_8_19'
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '+' AND bond.bond_type = ' = ' GROUP BY molecule.molecule_id ORDER BY count(bond.bond_id) DESC LIMIT 1
SELECT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' GROUP BY atom.element ORDER BY count(atom.element) ASC LIMIT 1
SELECT connected.atom_id FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.element = 'pb'
SELECT DISTINCT atom.element FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = '#'
SELECT cast(count(DISTINCT bond.bond_id) AS REAL) * 100 / count(DISTINCT connected.bond_id) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id GROUP BY connected.atom_id, connected.atom_id2 ORDER BY count(connected.atom_id) DESC LIMIT 1
SELECT cast(sum(CASE WHEN molecule.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond.bond_id) FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = '-'
SELECT count(atom_id) FROM atom WHERE element IN ('c', 'h')
SELECT connected.atom_id2 FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE atom.element = 's'
SELECT DISTINCT bond.bond_type FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE atom.element = 'sn'
SELECT count(DISTINCT atom.element) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = '-'
SELECT count(connected.atom_id) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = '#' AND (atom.element = 'p' OR atom.element = 'br')
SELECT bond.bond_id FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.label = '+'
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '-' AND molecule.label = '-'
SELECT cast(sum(CASE WHEN atom.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.atom_id) FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE bond.bond_type = '-'
SELECT label FROM molecule WHERE molecule_id IN ('TR000', 'TR001', 'TR002')
SELECT molecule_id FROM molecule WHERE label = '-'
SELECT count(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR030' AND label = '+'
SELECT bond_type FROM bond WHERE molecule_id BETWEEN 'TR000' AND 'TR050'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR001_10_11'
SELECT count(bond.bond_id) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'i'
SELECT label FROM molecule WHERE molecule_id IN ( SELECT molecule_id FROM atom WHERE element = 'ca' )
SELECT sum(CASE WHEN atom.element = 'cl' THEN 1 ELSE 0 END) AS num1 , sum(CASE WHEN atom.element = 'c' THEN 1 ELSE 0 END) AS num2 FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id2 WHERE connected.bond_id = 'TR001_1_8'
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE bond.bond_type = '#' AND molecule.label = '-' AND atom.element = 'c' LIMIT 2
SELECT cast(sum(CASE WHEN atom.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT DISTINCT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = ' = '
SELECT connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '#'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id2 WHERE connected.bond_id = 'TR005_16_26'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.label = '-' AND bond.bond_type = '-'
SELECT molecule.label FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_id = 'TR001_10_11'
SELECT bond.bond_id, molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#'
SELECT DISTINCT atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND substr(atom.atom_id, 7, 1) = '4'
SELECT cast(sum(CASE WHEN atom.element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / count(atom.element), molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.molecule_id = 'TR006'
SELECT DISTINCT molecule.label FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE atom.element = 'ca'
SELECT bond_type FROM bond WHERE molecule_id IN ( SELECT molecule_id FROM atom WHERE element = 'te' )
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR001_10_11'
SELECT cast(sum(CASE WHEN bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond_id) FROM bond
SELECT cast(sum(CASE WHEN bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond_id) FROM bond WHERE molecule_id = 'TR047'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.atom_id = 'TR001_1'
SELECT label FROM molecule WHERE molecule_id = 'TR151'
SELECT DISTINCT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.molecule_id = 'TR151'
SELECT count(molecule_id) FROM molecule WHERE label = '+'
SELECT atom_id FROM atom WHERE molecule_id LIKE 'TR010%' AND molecule_id LIKE 'TR050%' AND element = 'c'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT bond.bond_id FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE molecule.label = '+' AND bond.bond_type = ' = '
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND atom.element = 'h'
SELECT bond.molecule_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_id = 'TR000_1_2' AND connected.atom_id = 'TR000_1'
SELECT atom.atom_id FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.label = '-' AND atom.element = 'c'
SELECT cast(sum(CASE WHEN molecule.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'h'
SELECT label FROM molecule WHERE molecule_id = 'TR124'
SELECT atom_id FROM atom WHERE molecule_id = 'TR186'
SELECT bond_type FROM bond WHERE bond_id = 'TR007_4_19'
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR001_2_4'
SELECT count(bond.bond_id), molecule.label FROM bond INNER JOIN molecule ON bond.molecule_id = molecule.molecule_id WHERE bond.bond_type = ' = ' AND molecule.molecule_id = 'TR006'
SELECT DISTINCT molecule.molecule_id, atom.element FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+'
SELECT bond.bond_id, connected.atom_id, connected.atom_id2 FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id WHERE bond.bond_type = '-'
SELECT DISTINCT molecule.molecule_id, atom.element FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = '#' AND atom.element IN ('cl', 'c', 'h', 'o', 's', 'n', 'p', 'na', 'br', 'f', 'i', 'sn', 'pb', 'te', 'ca')
SELECT DISTINCT atom.element FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id WHERE connected.bond_id = 'TR000_2_3'
SELECT count(bond.bond_id) FROM bond INNER JOIN atom ON bond.molecule_id = atom.molecule_id WHERE atom.element = 'cl'
SELECT atom.atom_id, count(bond.bond_type) FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE atom.molecule_id = 'TR346' GROUP BY atom.atom_id
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = ' = ' AND molecule.label = '+'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type != ' = ' AND atom.element != 's'
SELECT molecule.label FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_id = 'TR001_2_4'
SELECT count(atom_id) FROM atom WHERE molecule_id = 'TR005'
SELECT count(bond_id) FROM bond WHERE bond_type = '-'
SELECT DISTINCT molecule.molecule_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'cl' AND molecule.label = '+'
SELECT molecule.molecule_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'c' AND molecule.label = '-'
SELECT cast(sum(CASE WHEN molecule.label = '+' AND atom.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT count(DISTINCT atom.element) FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_id = 'TR001_3_4'
SELECT bond_type FROM bond WHERE bond_id IN ( SELECT bond_id FROM connected WHERE atom_id = 'TR000_1' AND atom_id2 = 'TR000_2' )
SELECT molecule_id FROM atom WHERE atom_id = 'TR000_2' OR atom_id = 'TR000_4'
SELECT element FROM atom WHERE atom_id = 'TR000_1'
SELECT label FROM molecule WHERE molecule_id = 'TR000'
SELECT cast(sum(CASE WHEN bond_type = '-' THEN 1 ELSE 0 END) AS REAL) * 100 / count(bond_id) FROM bond
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'n' AND molecule.label = '+'
SELECT molecule.molecule_id FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE atom.element = 's' AND bond.bond_type = ' = '
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '-' GROUP BY molecule.molecule_id HAVING count(molecule.molecule_id) > 5
SELECT DISTINCT atom.element FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = '=' AND atom.molecule_id = 'TR024'
SELECT molecule.molecule_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' GROUP BY molecule.molecule_id ORDER BY count(atom.atom_id) DESC LIMIT 1
SELECT cast(sum(CASE WHEN molecule.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE atom.element = 'h' AND bond.bond_type = '#'
SELECT count(molecule_id) FROM molecule WHERE label = '+'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE molecule.molecule_id BETWEEN 'TR004' AND 'TR010' AND bond.bond_type = '-'
SELECT count(atom_id) FROM atom WHERE molecule_id = 'TR008' AND element = 'c'
SELECT atom.element FROM atom INNER JOIN molecule ON atom.molecule_id = molecule.molecule_id WHERE molecule.label = '-' AND atom.atom_id = 'TR004_7'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE bond.bond_type = ' = ' AND atom.element = 'o'
SELECT count(molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#' AND molecule.label = '-'
SELECT DISTINCT atom.element, bond.bond_type FROM atom INNER JOIN bond ON atom.molecule_id = bond.molecule_id WHERE atom.molecule_id = 'TR016'
SELECT connected.atom_id FROM bond INNER JOIN connected ON bond.bond_id = connected.bond_id INNER JOIN atom ON connected.atom_id = atom.atom_id WHERE bond.bond_type = ' = ' AND atom.element = 'c' AND bond.molecule_id = 'TR012'
SELECT atom.atom_id FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' AND atom.element = 'o'
SELECT name FROM cards WHERE cardkingdomid = cardkingdomfoilid
SELECT name FROM cards WHERE bordercolor = 'borderless' AND cardkingdomid IS NULL AND cardkingdomfoilid IS NULL
SELECT name FROM cards WHERE faceconvertedmanacost > convertedmanacost
SELECT name FROM cards WHERE frameversion = 2015 AND edhrecrank < 100
SELECT cards.name FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' AND legalities.format = 'gladiator' AND cards.rarity = 'mythic'
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.format = 'vintage' AND cards.types = 'Artifact' AND cards.side IS NULL
SELECT cards.id, cards.artist FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Legal' AND legalities.format = 'commander' AND (cards.power = '*' OR cards.power IS NULL)
SELECT DISTINCT rulings.text, cards.hascontentwarning FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.artist = 'Stephen Daniel'
SELECT rulings.text FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.name = 'Sublime Epiphany' AND cards.number = '74s'
SELECT cards.name, cards.artist, cards.ispromo FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid GROUP BY cards.name, cards.artist, cards.ispromo ORDER BY count(rulings.id) DESC LIMIT 1
SELECT foreign_data.language FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.name = 'Annul' AND cards.number = '29'
SELECT DISTINCT cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Japanese' AND cards.isalternative = 1
SELECT cast(count(CASE WHEN foreign_data.language = 'Chinese Simplified' THEN cards.id ELSE NULL END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid
SELECT DISTINCT sets.name, sets.totalsetsize FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Italian'
SELECT count(DISTINCT TYPE) FROM cards WHERE artist = 'Aaron Boyd'
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(id) FROM cards WHERE power = '*'
SELECT promotypes FROM cards WHERE name = 'Duress'
SELECT colors FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT originaltype FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT DISTINCT set_translations.language FROM cards INNER JOIN sets ON cards.setcode = sets.code INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE cards.name = 'Angel of Mercy'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Restricted' AND cards.istextless = 0
SELECT rulings.text FROM rulings INNER JOIN cards ON rulings.uuid = cards.uuid WHERE cards.name = 'Condemn'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Restricted' AND cards.isstarter = 1
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.name = 'Cloudchaser Eagle'
SELECT TYPE FROM cards WHERE name = 'Benalish Knight'
SELECT legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.name = 'Benalish Knight'
SELECT DISTINCT cards.artist FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Phyrexian'
SELECT cast(sum(iif(bordercolor = 'borderless', 1, 0)) AS REAL) * 100 / count(id) FROM cards
SELECT count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'German' AND cards.isreprint = 1
SELECT count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Russian' AND cards.bordercolor = 'borderless'
SELECT cast(sum(CASE WHEN foreign_data.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.isstoryspotlight = 1
SELECT count(id) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = 'Aaron Boyd'
SELECT count(id) FROM cards WHERE bordercolor = 'black' AND availability = 'mtgo'
SELECT id FROM cards WHERE convertedmanacost = 0
SELECT DISTINCT layout FROM cards WHERE keywords = 'Flying'
SELECT count(id) FROM cards WHERE originaltype = 'Summon - Angel' AND subtypes != 'Angel'
SELECT cardkingdomid FROM cards WHERE cardkingdomid IS NOT NULL AND cardkingdomfoilid IS NOT NULL
SELECT id FROM cards WHERE dueldeck = 'a'
SELECT edhrecrank FROM cards WHERE frameversion = 2015
SELECT DISTINCT cards.artist FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Chinese Simplified'
SELECT cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Japanese' AND cards.availability = 'paper'
SELECT count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' AND cards.bordercolor = 'white'
SELECT legalities.uuid, foreign_data.language FROM legalities INNER JOIN foreign_data ON legalities.uuid = foreign_data.uuid WHERE legalities.format = 'legacy'
SELECT rulings.text FROM rulings INNER JOIN cards ON rulings.uuid = cards.uuid WHERE cards.name = 'Beacon of Immortality'
SELECT count(cards.id), legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.frameversion = 'future'
SELECT cards.name, cards.colors FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.code = 'OGW'
SELECT cards.name, set_translations.translation, set_translations.language FROM cards INNER JOIN set_translations ON cards.setcode = set_translations.setcode WHERE cards.setcode = '10E' AND cards.convertedmanacost = 5
SELECT DISTINCT cards.name, rulings.date FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.originaltype = 'Creature - Elf'
SELECT cards.colors, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.id BETWEEN 1 AND 20
SELECT foreign_data.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.originaltype = 'Artifact' AND cards.colors = 'B'
SELECT cards.name FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.rarity = 'uncommon' ORDER BY rulings.date ASC LIMIT 3
SELECT count(id) FROM cards WHERE artist = 'John Avon' AND cardkingdomid IS NOT NULL AND cardkingdomfoilid IS NULL
SELECT count(id) FROM cards WHERE cardkingdomid IS NOT NULL AND cardkingdomfoilid IS NOT NULL AND bordercolor = 'white'
SELECT count(id) FROM cards WHERE artist = 'UDON' AND availability = 'mtgo' AND hand = -1
SELECT count(id) FROM cards WHERE frameversion = 1993 AND availability = 'paper' AND hascontentwarning = 1
SELECT manacost FROM cards WHERE layout = 'normal' AND frameversion = 2003 AND bordercolor = 'black' AND availability IN ('paper', 'mtgo')
SELECT sum(manacost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT subtypes, supertypes FROM cards WHERE availability = 'arena'
SELECT DISTINCT cards.setcode FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Spanish'
SELECT cast(sum(CASE WHEN hand = '+3' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards WHERE frameeffects = 'legendary'
SELECT cast(sum(CASE WHEN istextless = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards WHERE isstoryspotlight = 1
SELECT cast(sum(CASE WHEN foreign_data.language = 'Spanish' THEN 1 ELSE 0 END) AS REAL) * 100 / count(foreign_data.id), cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid GROUP BY cards.name
SELECT DISTINCT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.basesetsize = 309
SELECT count(DISTINCT sets.code) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.block = 'Commander' AND set_translations.language = 'Portuguese (Brasil)'
SELECT cards.id FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Legal' AND cards.types = 'Creature'
SELECT DISTINCT foreign_data.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'German' AND (cards.subtypes IS NOT NULL OR cards.supertypes IS NOT NULL)
SELECT count(id) FROM cards WHERE power IS NULL OR power = '*'
SELECT count(cards.id) FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE rulings.text = 'This is a triggered mana ability.' AND cards.side IS NULL
SELECT cards.id FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.artist = 'Erica Yang' AND legalities.format = 'pauper' AND cards.availability = 'paper'
SELECT artist FROM cards WHERE text = 'Das perfekte Gegenmittel zu einer dichten Formation'
SELECT foreign_data.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'French' AND cards.artist = 'Matthew D. Wilson' AND cards.layout = 'normal' AND cards.type = 'Creature' AND cards.bordercolor = 'black'
SELECT count(cards.id) FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.rarity = 'rare' AND rulings.date = '2009-01-10'
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.basesetsize = 180 AND sets.block = 'Ravnica'
SELECT cast(sum(CASE WHEN cards.hascontentwarning = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.format = 'commander' AND legalities.status = 'Legal'
SELECT cast(sum(CASE WHEN cards.power IS NULL OR cards.power = '*' THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.power) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'French'
SELECT cast(sum(CASE WHEN sets.type = 'expansion' THEN 1 ELSE 0 END) AS REAL) * 100 / count(sets.type) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Japanese'
SELECT DISTINCT availability FROM cards WHERE artist = 'Daren Bader'
SELECT count(id) FROM cards WHERE edhrecrank > 12000 AND bordercolor = 'borderless'
SELECT count(id) FROM cards WHERE isoversized = 1 AND isreprint = 1 AND ispromo = 1
SELECT name FROM cards WHERE promotypes = 'arenaleague' AND (power IS NULL OR power = '*') ORDER BY name LIMIT 3
SELECT LANGUAGE FROM foreign_data WHERE multiverseid = 149934
SELECT cardkingdomid, cardkingdomfoilid FROM cards WHERE cardkingdomid IS NOT NULL AND cardkingdomfoilid IS NOT NULL ORDER BY cardkingdomfoilid DESC LIMIT 3
SELECT cast(sum(CASE WHEN istextless = 1 AND layout = 'normal' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM cards
SELECT DISTINCT number FROM cards WHERE side IS NULL AND subtypes = 'Angel, Wizard'
SELECT name FROM sets WHERE mtgocode IS NULL OR mtgocode = '' ORDER BY name ASC LIMIT 3
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.mcmname = 'Archenemy' AND sets.code = 'ARC'
SELECT sets.name, set_translations.translation FROM cards INNER JOIN sets ON cards.setcode = sets.code INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE cards.id = 5
SELECT set_translations.language, sets.type FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.id = 206
SELECT cards.id, cards.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid INNER JOIN sets ON foreign_data.setcode = sets.code WHERE foreign_data.language = 'Italian' AND sets.block = 'Shadowmoor' ORDER BY cards.name LIMIT 2
SELECT DISTINCT sets.id FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.isforeignonly = 0 AND sets.isfoilonly = 1 AND set_translations.language = 'Japanese'
SELECT sets.name FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Russian' ORDER BY sets.basesetsize DESC LIMIT 1
SELECT cast(sum(CASE WHEN cards.isonlineonly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.isonlineonly) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Chinese Simplified'
SELECT count(sets.id) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE (sets.mtgocode IS NULL OR sets.mtgocode = '') AND set_translations.language = 'Japanese'
SELECT count(id) FROM cards WHERE bordercolor = 'black'
SELECT count(id) FROM cards WHERE frameeffects = 'extendedart'
SELECT name FROM cards WHERE bordercolor = 'black' AND isfullart = 1
SELECT LANGUAGE FROM set_translations WHERE id = 174
SELECT name FROM sets WHERE code = 'ALL'
SELECT LANGUAGE FROM foreign_data WHERE name = 'A Pedra Fellwar'
SELECT code FROM sets WHERE releasedate = '2007-07-13'
SELECT basesetsize, code FROM sets WHERE block IN ('Masques', 'Mirage')
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT foreign_data.name, cards.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'boros'
SELECT foreign_data.language, foreign_data.flavortext, cards.types FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'colorpie'
SELECT cast(sum(CASE WHEN convertedmanacost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / count(name) FROM cards WHERE name = 'Abyssal Horror'
SELECT code FROM sets WHERE TYPE = 'commander'
SELECT foreign_data.name, cards.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'abzan'
SELECT foreign_data.language, cards.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'azorius'
SELECT count(cardkingdomid) FROM cards WHERE artist = 'Aaron Miller' AND cardkingdomid IS NOT NULL AND cardkingdomid = cardkingdomfoilid
SELECT count(id) FROM cards WHERE availability LIKE '%paper%' AND hand > 0
SELECT name FROM cards WHERE istextless = 0
SELECT manacost FROM cards WHERE name = 'Ancestor`s Chosen'
SELECT count(id) FROM cards WHERE power = '*' OR power IS NULL AND bordercolor = 'white'
SELECT name FROM cards WHERE ispromo = 1 AND side IS NOT NULL
SELECT subtypes, supertypes FROM cards WHERE name = 'Molimo, Maro-Sorcerer'
SELECT purchaseurls FROM cards WHERE promotypes = 'bundle'
SELECT count(DISTINCT artist) FROM cards WHERE availability LIKE '%arena,mtgo%' AND bordercolor = 'black'
SELECT name FROM cards WHERE name IN ('Serra Angel', 'Shrine Keeper') ORDER BY convertedmanacost DESC LIMIT 1
SELECT artist FROM cards WHERE flavorname = 'Battra, Dark Destroyer'
SELECT name FROM cards WHERE frameversion = '2003' ORDER BY convertedmanacost DESC LIMIT 3
SELECT foreign_data.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Italian' AND cards.name = 'Ancestor''s Chosen'
SELECT count(DISTINCT set_translations.translation) FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.id WHERE cards.name = 'Angel of Mercy'
SELECT cards.name FROM cards INNER JOIN set_translations ON cards.uuid = set_translations.id WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT CASE WHEN count(foreign_data.name) > 0 THEN 'YES' ELSE 'NO' END FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Korean' AND cards.name = 'Ancestor''s Chosen'
SELECT count(cards.id) FROM cards INNER JOIN set_translations ON cards.setcode = set_translations.setcode WHERE set_translations.translation = 'Hauptset Zehnte Edition' AND cards.artist = 'Adam Rex'
SELECT sum(sets.basesetsize) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Eighth Edition' AND set_translations.language = 'Chinese Simplified'
SELECT iif(sets.mtgocode IS NULL, 'No', 'Yes') FROM sets INNER JOIN cards ON sets.code = cards.setcode WHERE cards.name = 'Angel of Mercy'
SELECT sets.releasedate FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Ancestor''s Chosen'
SELECT sets.type FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Hauptset Zehnte Edition'
SELECT count(DISTINCT sets.code) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.block = 'Ice Age' AND set_translations.language = 'Italian'
SELECT DISTINCT sets.isforeignonly FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Adarkar Valkyrie'
SELECT count(DISTINCT sets.name) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Italian' AND sets.basesetsize < 10
SELECT count(cards.id) FROM cards INNER JOIN sets ON cards.cardkingdomid = sets.mcmid WHERE sets.name = 'Coldsnap' AND cards.bordercolor = 'black'
SELECT cards.name FROM cards INNER JOIN sets ON cards.uuid = sets.mcmid WHERE sets.name = 'Coldsnap' ORDER BY cards.convertedmanacost DESC LIMIT 1
SELECT cards.artist FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Coldsnap' AND cards.artist IN ('Jeremy Jarvis', 'Aaron Miller', 'Chippy')
SELECT cards.name FROM cards INNER JOIN sets ON cards.uuid = sets.mcmid WHERE sets.name = 'Coldsnap' AND cards.number = 4
SELECT count(cards.id) FROM cards INNER JOIN sets ON cards.uuid = sets.tcgplayergroupid WHERE sets.name = 'Coldsnap' AND cards.convertedmanacost > 5 AND (cards.power = '*' OR cards.power IS NULL)
SELECT foreign_data.flavortext FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Italian' AND cards.name = 'Ancestor''s Chosen'
SELECT foreign_data.language FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.name = 'Ancestor''s Chosen' AND foreign_data.flavortext IS NOT NULL
SELECT foreign_data.type FROM foreign_data INNER JOIN cards ON foreign_data.uuid = cards.uuid WHERE cards.name = 'Ancestor''s Chosen' AND foreign_data.language = 'German'
SELECT foreign_data.text FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Coldsnap' AND foreign_data.language = 'Italian'
SELECT foreign_data.name FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Coldsnap' AND foreign_data.language = 'Italian' ORDER BY cards.convertedmanacost DESC LIMIT 1
SELECT rulings.date FROM rulings INNER JOIN cards ON rulings.uuid = cards.uuid WHERE cards.name = 'Reminisce'
SELECT cast(sum(CASE WHEN cards.convertedmanacost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Coldsnap'
SELECT cast(sum(CASE WHEN cards.cardkingdomid IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.id) FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Coldsnap'
SELECT code FROM sets WHERE releasedate = '2017-07-14'
SELECT keyrunecode FROM sets WHERE code = 'PKHC'
SELECT mcmid FROM sets WHERE code = 'SS2'
SELECT mcmname FROM sets WHERE releasedate = '2017-06-09'
SELECT TYPE FROM sets WHERE name LIKE 'From the Vault: Lore'
SELECT parentcode FROM sets WHERE name = 'Commander 2014 Oversized'
SELECT DISTINCT rulings.text, cards.hascontentwarning FROM cards INNER JOIN rulings ON cards.uuid = rulings.uuid WHERE cards.artist = 'Jim Pavelec'
SELECT sets.releasedate FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Evacuation'
SELECT sum(sets.basesetsize) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Rinascita di Alara'
SELECT DISTINCT sets.type FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Huitième édition'
SELECT set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode INNER JOIN cards ON sets.code = cards.setcode WHERE cards.name = 'Tendo Ice Bridge' AND set_translations.language = 'French'
SELECT count(set_translations.translation) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Salvat 2011' AND set_translations.translation IS NOT NULL
SELECT set_translations.translation FROM cards INNER JOIN set_translations ON cards.setcode = set_translations.setcode WHERE cards.name = 'Fellwar Stone' AND set_translations.language = 'Japanese'
SELECT cards.name FROM cards INNER JOIN sets ON cards.uuid = sets.code WHERE sets.name = 'Journey into Nyx Hero''s Path' ORDER BY cards.convertedmanacost DESC LIMIT 1
SELECT sets.releasedate FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.translation = 'Ola de frío'
SELECT sets.type FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Samite Pilgrim'
SELECT count(cards.id) FROM cards INNER JOIN sets ON cards.uuid = sets.code WHERE sets.name = 'World Championship Decks 2004' AND cards.convertedmanacost = '3'
SELECT set_translations.translation FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Mirrodin' AND set_translations.language = 'Chinese Simplified'
SELECT cast(sum(CASE WHEN sets.isnonfoilonly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(sets.isnonfoilonly) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Japanese'
SELECT cast(sum(CASE WHEN cards.isonlineonly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(cards.isonlineonly) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Portuguese (Brazil)'
SELECT DISTINCT availability FROM cards WHERE artist = 'Aleksi Briclot' AND istextless = 1
SELECT id FROM sets ORDER BY basesetsize DESC LIMIT 1
SELECT artist FROM cards WHERE side IS NULL ORDER BY convertedmanacost DESC LIMIT 1
SELECT frameeffects FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL GROUP BY frameeffects ORDER BY count(frameeffects) DESC LIMIT 1
SELECT count(id) FROM cards WHERE dueldeck = 'a' AND (power IS NULL OR power = '*') AND hasfoil = 0
SELECT id FROM sets WHERE TYPE = 'commander' ORDER BY totalsetsize DESC LIMIT 1
SELECT cards.name FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.format = 'duel' ORDER BY cards.manacost DESC LIMIT 10
SELECT cards.originalreleasedate, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.rarity = 'mythic' ORDER BY cards.originalreleasedate ASC LIMIT 1
SELECT count(cards.id) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'French' AND cards.artist = 'Volkan Baga'
SELECT count(cards.name) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Legal' AND cards.name = 'Abundance' AND cards.types = 'Enchantment' AND cards.rarity = 'rare'
SELECT legalities.format, cards.name FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' GROUP BY legalities.format ORDER BY count(legalities.status) DESC LIMIT 1
SELECT set_translations.language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE sets.name = 'Battlebond'
SELECT cards.artist, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid GROUP BY cards.artist, legalities.format ORDER BY count(cards.artist) ASC LIMIT 1
SELECT legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.frameversion = 1997 AND cards.artist = 'D. Alexander Gregory' AND cards.hascontentwarning = 1 AND legalities.format = 'legacy'
SELECT cards.name, legalities.format FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Banned' AND cards.edhrecrank = 1
SELECT cast(count(sets.id) AS REAL) / count(DISTINCT strftime('%Y', sets.releasedate)) FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE strftime('%Y', sets.releasedate) BETWEEN '2012' AND '2015'
SELECT artist FROM cards WHERE bordercolor = 'black' AND availability = 'arena'
SELECT uuid FROM legalities WHERE format = 'oldschool' AND status IN ('Restricted', 'Banned')
SELECT count(id) FROM cards WHERE artist = 'Matthew D. Wilson' AND availability = 'paper'
SELECT rulings.text FROM rulings INNER JOIN cards ON rulings.uuid = cards.uuid WHERE cards.artist = 'Kev Walker' ORDER BY rulings.date DESC
SELECT cards.name, legalities.format FROM legalities INNER JOIN cards ON legalities.uuid = cards.uuid INNER JOIN sets ON cards.setcode = sets.code WHERE sets.name = 'Hour of Devastation' AND legalities.status = 'Legal'
SELECT DISTINCT sets.name FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE set_translations.language = 'Korean' AND set_translations.language NOT LIKE '%Japanese%'
SELECT DISTINCT cards.frameversion, cards.artist, legalities.status FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE cards.artist = 'Allen Williams'
SELECT displayname FROM users WHERE displayname IN ('Harlan', 'Jarrod Dixon') ORDER BY reputation DESC LIMIT 1
SELECT displayname FROM users WHERE strftime('%Y', creationdate) = '2014'
SELECT count(id) FROM users WHERE lastaccessdate > '2014-09-01 00:00:00'
SELECT displayname FROM users ORDER BY views DESC LIMIT 1
SELECT count(id) FROM users WHERE upvotes > 100 AND downvotes > 1
SELECT count(id) FROM users WHERE strftime('%Y', creationdate) > '2013' AND views > 10
SELECT count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT posts.title FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE users.displayname = 'csgillespie'
SELECT ownerdisplayname FROM posts WHERE title = 'Eliciting priors from experts'
SELECT posts.title FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE users.displayname = 'csgillespie' ORDER BY posts.viewcount DESC LIMIT 1
SELECT ownerdisplayname FROM posts ORDER BY favoritecount DESC LIMIT 1
SELECT sum(posts.commentcount) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT answercount FROM posts WHERE ownerdisplayname = 'csgillespie' ORDER BY answercount DESC LIMIT 1
SELECT lasteditoruserid FROM posts WHERE title = 'Examples for teaching: Correlation does not mean causation'
SELECT count(posts.id) FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE users.displayname = 'csgillespie' AND posts.parentid IS NULL
SELECT DISTINCT users.displayname FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.closeddate IS NOT NULL
SELECT count(posts.id) FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE users.age > 65 AND posts.score > 19
SELECT users.location FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.title = 'Eliciting priors from experts'
SELECT posts.body FROM posts INNER JOIN tags ON posts.id = tags.excerptpostid WHERE tags.tagname = 'bayesian'
SELECT posts.body FROM tags INNER JOIN posts ON tags.excerptpostid = posts.id ORDER BY tags.count DESC LIMIT 1
SELECT count(badges.name) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'csgillespie'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'csgillespie'
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'csgillespie' AND strftime('%Y', badges.date) = '2011'
SELECT users.displayname FROM users INNER JOIN badges ON users.id = badges.userid GROUP BY users.displayname ORDER BY count(badges.id) DESC LIMIT 1
SELECT avg(posts.score) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'csgillespie'
SELECT cast(count(badges.id) AS REAL) / count(DISTINCT users.displayname) FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.views > 200
SELECT cast(sum(CASE WHEN users.age > 65 THEN 1 ELSE 0 END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.score > 20
SELECT count(id) FROM votes WHERE userid = 58 AND creationdate = '2010-07-19'
SELECT creationdate FROM votes GROUP BY creationdate ORDER BY count(id) DESC LIMIT 1
SELECT count(id) FROM badges WHERE name = 'Revival'
SELECT posts.title FROM posts INNER JOIN comments ON posts.id = comments.postid ORDER BY comments.score DESC LIMIT 1
SELECT answercount FROM posts WHERE viewcount = 1910
SELECT posts.favoritecount FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE comments.userid = 3025 AND comments.creationdate LIKE '2014-04-23 20:29:39'
SELECT comments.text FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.parentid = 107829 AND posts.commentcount = 1
SELECT CASE WHEN posts.closeddate IS NULL THEN 'No' ELSE 'Yes' END FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE comments.userid = 23853 AND comments.creationdate = '2013-07-12 09:08:18.0'
SELECT users.reputation FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.id = 65041
SELECT count(posts.id) FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE users.displayname = 'Tiago Pasqualini'
SELECT users.displayname FROM users INNER JOIN votes ON users.id = votes.userid WHERE votes.id = 6347
SELECT sum(votes.bountyamount) FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE posts.title LIKE '%data visualization%'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'DatEpicCoderGuyWhoPrograms'
SELECT cast(count(posts.id) AS REAL) / count(votes.id) FROM posts INNER JOIN votes ON posts.id = votes.postid WHERE votes.userid = 24
SELECT posts.viewcount FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT text FROM comments WHERE score = 17
SELECT displayname FROM users WHERE websiteurl = 'http://stackoverflow.com'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'SilentGhost'
SELECT users.displayname FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.text = 'thank you user93!'
SELECT comments.text FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.displayname = 'A Lion'
SELECT users.displayname, users.reputation FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.title LIKE 'Understanding what Dassault iSight is doing?'
SELECT comments.text FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.title = 'How does gentle boosting differ from AdaBoost?'
SELECT users.displayname FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name = 'Necromancer' LIMIT 10
SELECT badges.userid FROM posts INNER JOIN badges ON posts.owneruserid = badges.userid WHERE posts.title = 'Open source tools for visualizing multi-dimensional data'
SELECT posts.title FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posthistory.userdisplayname = 'Vebjorn Ljosa'
SELECT sum(posts.score), users.websiteurl FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN posts ON posthistory.postid = posts.id WHERE users.displayname = 'Yevgeny' GROUP BY users.websiteurl
SELECT posthistory.text FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posthistory.comment = 'Edited title' AND posts.title = 'Why square the difference instead of taking the absolute value in standard deviation?'
SELECT sum(votes.bountyamount) FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE posts.title LIKE '%data%'
SELECT users.displayname FROM votes INNER JOIN users ON votes.userid = users.id INNER JOIN posts ON votes.postid = posts.id WHERE votes.bountyamount = 50 AND posts.title LIKE '%variance%'
SELECT avg(posts.viewcount) FROM posts INNER JOIN tags ON posts.id = tags.wikipostid WHERE tags.tagname = 'humor'
SELECT count(id) FROM comments WHERE userid = 13
SELECT id FROM users ORDER BY reputation DESC LIMIT 1
SELECT id FROM users ORDER BY views LIMIT 1
SELECT count(DISTINCT badges.userid) FROM badges INNER JOIN users ON badges.userid = users.id WHERE strftime('%Y', badges.date) = '2011' AND badges.name = 'Supporter'
SELECT count(DISTINCT userid) FROM badges WHERE name > 5
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name IN ('Supporter', 'Teacher') AND users.location = 'New York'
SELECT users.id, users.reputation FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE posts.id = 1
SELECT users.id FROM users INNER JOIN posthistory ON users.id = posthistory.userid WHERE users.views >= 1000 GROUP BY users.id HAVING count(DISTINCT posthistory.postid) = 1
SELECT badges.userid, badges.name FROM badges INNER JOIN comments ON badges.userid = comments.userid GROUP BY badges.userid, badges.name ORDER BY count(comments.id) DESC LIMIT 1
SELECT count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Teacher' AND users.location = 'India'
SELECT cast((sum(CASE WHEN strftime('%Y', badges.date) = '2010' THEN 1 ELSE 0 END) - sum(CASE WHEN strftime('%Y', badges.date) = '2011' THEN 1 ELSE 0 END)) AS REAL) * 100 / sum(CASE WHEN strftime('%Y', badges.date) = '2010' THEN 1 ELSE 0 END) FROM badges WHERE name = 'Student'
SELECT posthistorytypeid, count(DISTINCT userid) FROM posthistory WHERE postid = 3720 GROUP BY posthistorytypeid
SELECT posts.id, posts.viewcount FROM posts INNER JOIN postlinks ON posts.id = postlinks.relatedpostid WHERE postlinks.postid = 61217
SELECT comments.score, postlinks.linktypeid FROM comments INNER JOIN postlinks ON comments.postid = postlinks.postid WHERE postlinks.postid = 395
SELECT id, owneruserid FROM posts WHERE score > 60
SELECT sum(favoritecount) FROM posts WHERE owneruserid = 686 AND strftime('%Y', creaiondate) = '2011'
SELECT avg(users.upvotes), avg(users.age) FROM users INNER JOIN posts ON users.id = posts.owneruserid GROUP BY users.id HAVING count(users.id) > 10
SELECT count(DISTINCT userid) FROM badges WHERE name = 'Announcer'
SELECT name FROM badges WHERE date = '2010-07-19 19:39:08'
SELECT count(id) FROM comments WHERE score > 60
SELECT text FROM comments WHERE creationdate = '2010-07-19 19:25:47.0'
SELECT count(id) FROM posts WHERE score = 10
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.reputation = ( SELECT max(reputation) FROM users )
SELECT users.reputation FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.date = '2010-07-19 19:39:08.0'
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'Pierre'
SELECT badges.date FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.location = 'Rochester, NY'
SELECT cast(count(CASE WHEN badges.name = 'Teacher' THEN badges.userid ELSE NULL END) AS REAL) * 100 / count(badges.userid) FROM badges
SELECT cast(sum(CASE WHEN users.age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Organizer'
SELECT comments.score FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.creaiondate = '2010-07-19 19:19:56.0'
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
SELECT count(id) FROM users WHERE age BETWEEN 19 AND 65
SELECT displayname FROM users ORDER BY views DESC LIMIT 1
SELECT cast(sum(CASE WHEN strftime('%Y', creationdate) = '2010' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN strftime('%Y', creationdate) = '2011' THEN 1 ELSE 0 END) FROM votes
SELECT tags.tagname FROM users INNER JOIN posthistory ON users.id = posthistory.userid INNER JOIN tags ON posthistory.postid = tags.wikipostid WHERE users.displayname = 'John Stauffer'
SELECT count(posts.id) FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE users.displayname = 'Daniel Vassallo'
SELECT count(votes.id) FROM users INNER JOIN votes ON users.id = votes.userid WHERE users.displayname = 'Harlan'
SELECT posts.id FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'slashnick' ORDER BY posts.answercount DESC LIMIT 1
SELECT ownerdisplayname FROM posts WHERE ownerdisplayname IN ('Harvey Motulsky', 'Noah Snyder') ORDER BY viewcount DESC LIMIT 1
SELECT count(votes.postid) FROM votes INNER JOIN users ON votes.userid = users.id WHERE users.displayname = 'Matt Parker' AND votes.postid > 4
SELECT count(comments.id) FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.displayname = 'Neil McGuigan' AND comments.score < 60
SELECT tags FROM posts WHERE ownerdisplayname = 'Mark Meckes' AND commentcount = 0
SELECT users.displayname FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name = 'Organizer'
SELECT cast(sum(CASE WHEN tags.tagname = 'r' THEN 1 ELSE 0 END) AS REAL) * 100 / count(posts.id) FROM posts INNER JOIN tags ON posts.id = tags.wikipostid INNER JOIN users ON posts.owneruserid = users.id WHERE users.displayname = 'Community'
SELECT sum(CASE WHEN users.displayname = 'Mornington' THEN posts.viewcount ELSE 0 END) - sum(CASE WHEN users.displayname = 'Amos' THEN posts.viewcount ELSE 0 END) AS diff FROM users INNER JOIN posts ON users.id = posts.owneruserid
SELECT count(DISTINCT users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE strftime('%Y', badges.date) = '2014' AND badges.name = 'Commentator'
SELECT count(id) FROM posts WHERE creaiondate LIKE '2010-07-21%'
SELECT displayname, age FROM users ORDER BY views DESC LIMIT 1
SELECT lasteditdate, lasteditoruserid FROM posts WHERE title = 'Detecting a given face in a database of facial images'
SELECT count(id) FROM comments WHERE userid = 13 AND score < 60
SELECT DISTINCT posts.title, comments.userdisplayname FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE comments.score > 60
SELECT badges.name FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.location = 'North Pole' AND strftime('%Y', badges.date) = '2011'
SELECT users.displayname, users.websiteurl FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE posts.favoritecount > 150
SELECT posthistory.id, posthistory.creationdate FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'What is the best introductory Bayesian statistics textbook?'
SELECT users.lastaccessdate, users.location FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Outliers'
SELECT posts.title FROM posts INNER JOIN postlinks ON posts.id = postlinks.relatedpostid WHERE posts.title = 'How to tell if something happened in a data set which monitors a value over time'
SELECT posthistory.postid, badges.name FROM badges INNER JOIN posthistory ON badges.userid = posthistory.userid WHERE posthistory.userdisplayname = 'Samuel' AND strftime('%Y', badges.date) = '2013'
SELECT ownerdisplayname FROM posts ORDER BY viewcount DESC LIMIT 1
SELECT users.displayname, users.location FROM tags INNER JOIN posts ON tags.excerptpostid = posts.id INNER JOIN users ON posts.owneruserid = users.id WHERE tags.tagname = 'hypothesis-testing'
SELECT posts.title, postlinks.linktypeid FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid WHERE posts.title = 'What are principal component scores?'
SELECT ownerdisplayname FROM posts WHERE parentid IS NOT NULL ORDER BY score DESC LIMIT 1
SELECT users.displayname, users.websiteurl FROM votes INNER JOIN users ON votes.userid = users.id WHERE votes.votetypeid = 8 ORDER BY votes.bountyamount DESC LIMIT 1
SELECT title FROM posts ORDER BY viewcount DESC LIMIT 5
SELECT count(DISTINCT tags.tagname) FROM tags INNER JOIN posts ON tags.wikipostid = posts.id WHERE posts.viewcount BETWEEN 5000 AND 7000
SELECT owneruserid FROM posts ORDER BY favoritecount DESC LIMIT 1
SELECT age FROM users WHERE reputation = ( SELECT max(reputation) FROM users )
SELECT count(DISTINCT votes.postid) FROM votes INNER JOIN posts ON votes.postid = posts.id WHERE strftime('%Y', votes.creationdate) = '2011' AND votes.bountyamount = 50
SELECT id FROM users WHERE age = ( SELECT min(age) FROM users )
SELECT posts.score FROM posts INNER JOIN tags ON posts.id = tags.wikipostid ORDER BY tags.count DESC LIMIT 1
SELECT cast(sum(CASE WHEN strftime('%Y', postlinks.creationdate) = '2010' THEN 1 ELSE 0 END) AS REAL) / 12 FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid WHERE posts.answercount <= 2
SELECT posts.id FROM posts INNER JOIN votes ON posts.id = votes.postid WHERE votes.userid = 1465 ORDER BY posts.favoritecount DESC LIMIT 1
SELECT posts.title FROM posts INNER JOIN postlinks ON posts.id = postlinks.postid ORDER BY postlinks.creationdate ASC LIMIT 1
SELECT users.displayname FROM users INNER JOIN badges ON users.id = badges.userid GROUP BY users.displayname ORDER BY count(badges.name) DESC LIMIT 1
SELECT votes.creationdate FROM votes INNER JOIN users ON votes.userid = users.id WHERE users.displayname = 'chl' ORDER BY votes.creationdate LIMIT 1
SELECT posts.creaiondate FROM users INNER JOIN posts ON users.id = posts.owneruserid ORDER BY users.age LIMIT 1
SELECT users.displayname FROM badges INNER JOIN users ON badges.userid = users.id WHERE badges.name = 'Autobiographer' ORDER BY badges.date ASC LIMIT 1
SELECT count(users.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.location = 'United Kingdom' AND posts.favoritecount >= 4
SELECT cast(count(votes.postid) AS REAL) / count(DISTINCT users.id) FROM users INNER JOIN votes ON users.id = votes.userid
SELECT displayname FROM users ORDER BY reputation DESC LIMIT 1
SELECT count(id) FROM users WHERE reputation > 2000 AND views > 1000
SELECT displayname FROM users WHERE age BETWEEN 19 AND 65
SELECT count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'Jay Stevens' AND strftime('%Y', posts.creationdate) = '2010'
SELECT posts.id, posts.title FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'Harvey Motulsky' ORDER BY posts.viewcount DESC LIMIT 1
SELECT id, title FROM posts WHERE score = ( SELECT max(score) FROM posts )
SELECT avg(posts.score) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.displayname = 'Stephen Turner'
SELECT users.displayname FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE strftime('%Y', posts.creaiondate) = '2011' AND posts.viewcount > 20000
SELECT id, ownerdisplayname FROM posts WHERE strftime('%Y', creaiondate) = '2010' ORDER BY favoritecount DESC LIMIT 1
SELECT cast(count(CASE WHEN users.reputation > 1000 THEN 1 ELSE NULL END) AS REAL) * 100 / count(users.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE strftime('%Y', posts.creationdate) = '2011'
SELECT cast(sum(iif(age >= 13 AND age <= 18, 1, 0)) AS REAL) * 100 / count(id) FROM users
SELECT sum(posts.viewcount), users.displayname FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid INNER JOIN users ON posthistory.userid = users.id WHERE posthistory.text = 'Computer Game Datasets'
SELECT count(id) FROM users WHERE views > ( SELECT avg(views) FROM users )
SELECT count(comments.id) FROM posts INNER JOIN comments ON posts.id = comments.postid ORDER BY posts.score DESC LIMIT 1
SELECT count(id) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT users.displayname, users.location FROM users INNER JOIN posts ON users.id = posts.lasteditoruserid WHERE posts.id = 183 ORDER BY posts.lasteditdate DESC LIMIT 1
SELECT name FROM badges WHERE userid = ( SELECT id FROM users WHERE displayname = 'Emmett' ) ORDER BY date DESC LIMIT 1
SELECT count(id) FROM users WHERE age BETWEEN 19 AND 65 AND upvotes > 5000
SELECT badges.date - users.creationdate FROM users INNER JOIN badges ON users.id = badges.userid WHERE users.displayname = 'Zolomon'
SELECT count(posts.id) , count(comments.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid INNER JOIN comments ON posts.id = comments.postid ORDER BY users.creationdate DESC LIMIT 1
SELECT comments.text, comments.userdisplayname FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.title = 'Analysing wind data with R' ORDER BY comments.creationdate DESC LIMIT 1
SELECT count(DISTINCT userid) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(tags.wikipostid) FROM tags WHERE tags.tagname = 'careers'
SELECT reputation, views FROM users WHERE displayname = 'Jarrod Dixon'
SELECT answercount, commentcount FROM posts WHERE title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE displayname = 'IrishStat'
SELECT count(postid) FROM votes WHERE bountyamount > 30
SELECT cast(count(CASE WHEN posts.score > 50 THEN 1 ELSE NULL END) AS REAL) * 100 / count(posts.id) FROM users INNER JOIN posts ON users.id = posts.owneruserid WHERE users.reputation = ( SELECT max(reputation) FROM users )
SELECT count(id) FROM posts WHERE score < 20
SELECT count(DISTINCT tags.tagname) FROM tags INNER JOIN posts ON tags.wikipostid = posts.id WHERE tags.id < 15 AND posts.viewcount <= 20
SELECT excerptpostid, wikipostid FROM tags WHERE tagname = 'sample'
SELECT users.reputation, users.upvotes FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.text = 'fine, you win :)'
SELECT posthistory.text FROM posts INNER JOIN posthistory ON posts.id = posthistory.postid WHERE posts.title = 'How can I adapt ANOVA for binary data?'
SELECT comments.text FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.viewcount BETWEEN 100 AND 150 ORDER BY comments.score DESC LIMIT 1
SELECT comments.creationdate, users.age FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.websiteurl LIKE '%http://%'
SELECT count(DISTINCT posts.id) FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE comments.score = 0 AND posts.viewcount < 5
SELECT count(comments.id) FROM comments INNER JOIN posts ON comments.postid = posts.id WHERE posts.commentcount = 1 AND comments.score = 0
SELECT count(users.id) FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.score = 0 AND users.age = 40
SELECT posts.id, comments.text FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.title = 'Group differences on a five point Likert item'
SELECT users.upvotes FROM users INNER JOIN comments ON users.id = comments.userid WHERE comments.text = 'R is also lazy evaluated.'
SELECT comments.text FROM users INNER JOIN comments ON users.id = comments.userid WHERE users.displayname = 'Harvey Motulsky'
SELECT users.displayname FROM comments INNER JOIN users ON comments.userid = users.id WHERE comments.score BETWEEN 1 AND 5 AND users.downvotes = 0
SELECT cast(sum(CASE WHEN users.upvotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(comments.userid) FROM comments INNER JOIN users ON comments.userid = users.id WHERE comments.score BETWEEN 5 AND 10
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = '3-D Man'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Super Strength'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Super Strength' AND superhero.height_cm > 200
SELECT superhero.full_name FROM hero_power INNER JOIN superhero ON hero_power.hero_id = superhero.id GROUP BY superhero.full_name HAVING count(superhero.id) > 15
SELECT count(superhero.id) FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id WHERE superhero.superhero_name = 'Apocalypse'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue' AND superpower.power_name = 'Agility'
SELECT superhero.superhero_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue' AND superhero.hair_colour_id = ( SELECT id FROM colour WHERE colour = 'Blond' )
SELECT count(*) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT superhero.full_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics' ORDER BY superhero.height_cm DESC LIMIT 1
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.superhero_name = 'Sauron'
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE publisher.publisher_name = 'Marvel Comics' AND colour.colour = 'Blue'
SELECT avg(superhero.height_cm) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT cast(sum(CASE WHEN superpower.power_name = 'Super Strength' THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'DC Comics'
SELECT publisher.publisher_name FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' ORDER BY hero_attribute.attribute_value ASC LIMIT 1
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE publisher.publisher_name = 'Marvel Comics' AND colour.colour = 'Gold'
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.superhero_name = 'Blue Beetle II'
SELECT count(superhero.id) FROM superhero INNER JOIN colour ON superhero.hair_colour_id = colour.id WHERE colour.colour = 'Blond'
SELECT superhero.full_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Intelligence' ORDER BY hero_attribute.attribute_value ASC LIMIT 1
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.superhero_name = 'Copycat'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Durability' AND hero_attribute.attribute_value < 50
SELECT superhero.superhero_name FROM hero_power INNER JOIN superhero ON hero_power.hero_id = superhero.id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Death Touch'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE attribute.attribute_name = 'Strength' AND hero_attribute.attribute_value = 100 AND gender.gender = 'Female'
SELECT superhero.superhero_name FROM hero_power INNER JOIN superhero ON hero_power.hero_id = superhero.id GROUP BY superhero.superhero_name ORDER BY count(superhero.superhero_name) DESC LIMIT 1
SELECT count(superhero.id) FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Vampire'
SELECT cast(sum(CASE WHEN alignment.alignment = 'Bad' THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id), count(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN superhero.id ELSE NULL END) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN alignment ON superhero.alignment_id = alignment.id
SELECT sum(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) - sum(CASE WHEN publisher.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id
SELECT t.id FROM publisher AS t WHERE t.publisher_name = 'Star Trek'
SELECT avg(attribute_value) FROM hero_attribute
SELECT count(id) FROM superhero WHERE full_name IS NULL
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.id = 75
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Deathlok'
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Male' LIMIT 5
SELECT superhero.superhero_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Alien'
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 AND eye_colour_id = 1
SELECT superpower.power_name FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE hero_power.hero_id = 56
SELECT superhero.full_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Demi-God' LIMIT 5
SELECT count(id) FROM superhero WHERE alignment_id = 2
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.weight_kg = 169
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.hair_colour_id = colour.id INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Human' AND superhero.height_cm = 185
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id ORDER BY superhero.weight_kg DESC LIMIT 1
SELECT cast(count(CASE WHEN publisher.id = 13 THEN superhero.id ELSE NULL END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.height_cm BETWEEN 150 AND 180
SELECT superhero.full_name FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Male' AND superhero.weight_kg > ( SELECT avg(weight_kg) * 0.79 FROM superhero )
SELECT superpower.power_name FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id GROUP BY superpower.power_name ORDER BY count(superpower.power_name) DESC LIMIT 1
SELECT hero_attribute.attribute_value FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id WHERE superhero.superhero_name = 'Abomination'
SELECT superpower.power_name FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE hero_power.hero_id = 1
SELECT count(hero_power.hero_id) FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Stealth'
SELECT superhero.full_name FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Strength' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT cast(count(superhero.id) AS REAL) / count(DISTINCT superhero.skin_colour_id) FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id WHERE colour.id = 1
SELECT count(*) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Dark Horse Comics'
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Dark Horse Comics' AND attribute.attribute_name = 'Durability' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.full_name = 'Abraham Sapien'
SELECT superhero.superhero_name FROM hero_power INNER JOIN superhero ON hero_power.hero_id = superhero.id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Flight'
SELECT superhero.eye_colour_id, superhero.hair_colour_id, superhero.skin_colour_id FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE publisher.publisher_name = 'Dark Horse Comics' AND gender.gender = 'Female'
SELECT superhero.superhero_name, publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.hair_colour_id = superhero.eye_colour_id AND superhero.hair_colour_id = superhero.skin_colour_id
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.superhero_name = 'A-Bomb'
SELECT cast(count(CASE WHEN colour.colour = 'Blue' THEN superhero.id ELSE NULL END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE gender.gender = 'Female'
SELECT superhero.superhero_name, race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.full_name = 'Charles Chandler'
SELECT gender.gender FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id WHERE superhero.superhero_name = 'Agent 13'
SELECT superhero.full_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Adaptation'
SELECT count(hero_power.power_id) FROM hero_power INNER JOIN superhero ON hero_power.hero_id = superhero.id WHERE superhero.superhero_name = 'Amazo'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.full_name = 'Hunter Zolomon'
SELECT superhero.height_cm FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Amber'
SELECT superhero.superhero_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Black' AND superhero.eye_colour_id = superhero.hair_colour_id
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Gold'
SELECT superhero.full_name FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Vampire'
SELECT superhero.superhero_name FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT count(hero_id) FROM hero_attribute WHERE attribute_id = ( SELECT id FROM attribute WHERE attribute_name = 'Strength' ) ORDER BY attribute_value DESC LIMIT 1
SELECT race.race, alignment.alignment FROM superhero INNER JOIN race ON superhero.race_id = race.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE superhero.superhero_name = 'Cameron Hicks'
SELECT cast(sum(CASE WHEN gender.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT avg(superhero.weight_kg) FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'Alien'
SELECT sum(CASE WHEN superhero.full_name = 'Emil Blonsky' THEN superhero.weight_kg ELSE 0 END) - sum(CASE WHEN superhero.full_name = 'Charles Chandler' THEN superhero.weight_kg ELSE 0 END) FROM superhero
SELECT avg(height_cm) FROM superhero
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Abomination'
SELECT count(superhero.id) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN race ON superhero.race_id = race.id WHERE race.race = 'God/Eternal' AND gender.id = 1
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT count(id) FROM superhero WHERE alignment_id = 3
SELECT attribute.attribute_name, hero_attribute.attribute_value FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE superhero.superhero_name = '3-D Man'
SELECT superhero_name FROM superhero WHERE eye_colour_id = 7 AND hair_colour_id = 9
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.superhero_name IN ('Hawkman', 'Karate Kid', 'Speedy')
SELECT count(id) FROM superhero WHERE publisher_id = 1
SELECT cast(count(CASE WHEN eye_colour_id = 7 THEN 1 ELSE NULL END) AS REAL) * 100 / count(eye_colour_id) FROM superhero
SELECT cast(count(CASE WHEN gender_id = 1 THEN 1 ELSE NULL END) AS REAL) / count(CASE WHEN gender_id = 2 THEN 1 ELSE NULL END) FROM superhero
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT id FROM superpower WHERE power_name = 'Cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = 0 OR weight_kg IS NULL
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.full_name = 'Karen Beecher-Duncan'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.full_name = 'Helen Parr'
SELECT race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.weight_kg = 108 AND superhero.height_cm = 188
SELECT publisher.publisher_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE superhero.id = 38
SELECT race.race FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id INNER JOIN race ON superhero.race_id = race.id ORDER BY hero_attribute.attribute_value DESC LIMIT 1
SELECT alignment.alignment, superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE superhero.superhero_name = 'Atom IV'
SELECT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue' LIMIT 5
SELECT avg(hero_attribute.attribute_value) FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT colour.colour FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN colour ON superhero.skin_colour_id = colour.id WHERE hero_attribute.attribute_value = 100
SELECT count(superhero.id) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE gender.id = 2 AND alignment.id = 1
SELECT superhero.superhero_name FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id WHERE hero_attribute.attribute_value BETWEEN 75 AND 80
SELECT race.race FROM superhero INNER JOIN colour ON superhero.hair_colour_id = colour.id INNER JOIN gender ON superhero.gender_id = gender.id INNER JOIN race ON superhero.race_id = race.id WHERE colour.colour = 'Blue' AND gender.gender = 'Male'
SELECT cast(count(CASE WHEN gender.id = 2 THEN 1 ELSE NULL END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE alignment.id = 2
SELECT sum(CASE WHEN eye_colour_id = 7 THEN 1 ELSE 0 END) - sum(CASE WHEN eye_colour_id = 1 THEN 1 ELSE 0 END) FROM superhero
SELECT hero_attribute.attribute_value FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE superhero.superhero_name = 'Hulk' AND attribute.attribute_name = 'Strength'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.superhero_name = 'Ajax'
SELECT count(superhero.id) FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE colour.colour = 'Green' AND alignment.alignment = 'Bad'
SELECT count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE publisher.publisher_name = 'Marvel Comics' AND gender.gender = 'Female'
SELECT superhero.superhero_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Wind Control' ORDER BY superhero.superhero_name
SELECT superhero.gender_id FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Phoenix Force'
SELECT superhero.superhero_name FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'DC Comics' ORDER BY superhero.weight_kg DESC LIMIT 1
SELECT avg(superhero.height_cm) FROM publisher INNER JOIN superhero ON publisher.id = superhero.publisher_id INNER JOIN race ON superhero.race_id = race.id WHERE publisher.publisher_name = 'Dark Horse Comics' AND race.race != 'Human'
SELECT count(superhero.id) FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE attribute.attribute_name = 'Speed' AND hero_attribute.attribute_value = 100
SELECT sum(CASE WHEN publisher.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) - sum(CASE WHEN publisher.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id
SELECT attribute.attribute_name FROM superhero INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id INNER JOIN attribute ON hero_attribute.attribute_id = attribute.id WHERE superhero.superhero_name = 'Black Panther' ORDER BY hero_attribute.attribute_value ASC LIMIT 1
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.superhero_name = 'Abomination'
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT cast(count(CASE WHEN gender.gender = 'Female' THEN superhero.id ELSE NULL END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE publisher.publisher_name = 'George Lucas'
SELECT cast(sum(CASE WHEN alignment.alignment = 'Good' THEN 1 ELSE 0 END) AS REAL) * 100 / count(superhero.id) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT count(id) FROM superhero WHERE full_name LIKE 'John%'
SELECT hero_id FROM hero_attribute ORDER BY attribute_value ASC LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT superhero.full_name FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Brown' AND superhero.weight_kg < 100
SELECT hero_attribute.attribute_value FROM hero_attribute INNER JOIN superhero ON hero_attribute.hero_id = superhero.id WHERE superhero.superhero_name = 'Aquababy'
SELECT superhero.weight_kg, race.race FROM superhero INNER JOIN race ON superhero.race_id = race.id WHERE superhero.id = 40
SELECT avg(superhero.height_cm) FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT hero_power.hero_id FROM hero_power INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = 'Intelligence'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.superhero_name = 'Blackwulf'
SELECT superpower.power_name FROM superhero INNER JOIN hero_power ON superhero.id = hero_power.hero_id INNER JOIN superpower ON hero_power.power_id = superpower.id WHERE superhero.height_cm * 100 > ( SELECT avg(height_cm) * 80 FROM superhero )
SELECT drivers.driverref FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.raceid = 18 AND qualifying.q1 IS NOT NULL ORDER BY qualifying.q1 DESC LIMIT 5
SELECT drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE laptimes.raceid = 19 AND qualifying.q2 = laptimes.time ORDER BY laptimes.time LIMIT 1
SELECT DISTINCT races.year FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.location = 'Shanghai'
SELECT races.url FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Circuit de Barcelona-Catalunya'
SELECT races.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.country = 'Germany'
SELECT DISTINCT constructorstandings.position FROM constructors INNER JOIN constructorstandings ON constructors.constructorid = constructorstandings.constructorid WHERE constructors.name = 'Renault'
SELECT count(races.raceid) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2010 AND circuits.country NOT IN ('Asia', 'Europe')
SELECT DISTINCT races.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.country = 'Spain'
SELECT circuits.lat, circuits.lng FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'Australian Grand Prix'
SELECT url FROM races WHERE circuitid = ( SELECT circuitid FROM circuits WHERE circuitref = 'sepang' )
SELECT races.time FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.circuitref = 'sepang'
SELECT circuits.lat, circuits.lng FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'Abu Dhabi Grand Prix'
SELECT constructors.nationality FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructorresults.raceid = 24 AND constructorresults.points = 1
SELECT qualifying.q1 FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE drivers.forename = 'Bruno' AND drivers.surname = 'Senna' AND qualifying.raceid = 354
SELECT drivers.nationality FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.q2 = '0:01:40' AND qualifying.raceid = 355
SELECT drivers.number FROM qualifying INNER JOIN drivers ON qualifying.driverid = drivers.driverid WHERE qualifying.raceid = 903 AND qualifying.q3 = '01:54.000'
SELECT count(DISTINCT results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2007 AND races.name = 'Bahrain Grand Prix' AND results.time IS NULL
SELECT seasons.url FROM races INNER JOIN seasons ON races.year = seasons.year WHERE races.raceid = 901
SELECT count(results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.date = '2015-11-29'
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 592 ORDER BY drivers.dob LIMIT 1
SELECT drivers.url FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid WHERE laptimes.milliseconds = 127000 AND laptimes.raceid = 161
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 933 ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT circuits.lat, circuits.lng FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'Malaysian Grand Prix'
SELECT constructors.url FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructorresults.raceid = 9 ORDER BY constructorresults.points DESC LIMIT 1
SELECT qualifying.q1 FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE drivers.forename = 'Lucas' AND drivers.surname = 'di Grassi' AND qualifying.raceid = 345
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.q2 = '0:01:15.000' AND qualifying.raceid = 347
SELECT drivers.code FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.q3 = '0:01:33' AND qualifying.raceid = 45
SELECT results.time FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE drivers.forename = 'Bruce' AND drivers.surname = 'McLaren' AND results.raceid = 743
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.name = 'San Marino Grand Prix' AND races.year = 2006 AND results.position = 2
SELECT seasons.url FROM races INNER JOIN seasons ON races.year = seasons.year WHERE races.raceid = 901
SELECT count(DISTINCT results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.date = '2015-11-29'
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 872 ORDER BY drivers.dob DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid WHERE laptimes.raceid = 348 ORDER BY laptimes.time LIMIT 1
SELECT drivers.nationality FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 348 ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT cast((results.fastestlapspeed - ( SELECT fastestlapspeed FROM results WHERE raceid = 852 AND driverid = 452 )) AS REAL) * 100 / results.fastestlapspeed FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE results.raceid = 853 AND drivers.forename = 'Paul' AND drivers.surname = 'di Resta'
SELECT cast(count(CASE WHEN results.time IS NOT NULL THEN 1 ELSE NULL END) AS REAL) * 100 / count(results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.date = '1983-07-16'
SELECT YEAR FROM races WHERE name = 'Singapore Grand Prix' ORDER BY YEAR ASC LIMIT 1
SELECT name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races WHERE strftime('%Y-%m', date) = ( SELECT strftime('%Y-%m', min(date)) FROM races )
SELECT name, date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(round) DESC LIMIT 1
SELECT name FROM races WHERE YEAR != 2000 AND YEAR = 2017
SELECT circuits.country, circuits.name, circuits.location FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'European Grand Prix' ORDER BY races.year LIMIT 1
SELECT max(races.year) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Brands Hatch' AND races.name = 'British Grand Prix'
SELECT count(races.year) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Silverstone Circuit' AND races.name = 'British Grand Prix'
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2010 AND races.name = 'Singapore Grand Prix' ORDER BY results.position
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY results.points DESC LIMIT 1
SELECT drivers.forename, drivers.surname, driverstandings.points FROM races INNER JOIN driverstandings ON races.raceid = driverstandings.raceid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid WHERE races.name = 'Chinese Grand Prix' AND races.year = 2017 ORDER BY driverstandings.points DESC LIMIT 3
SELECT laptimes.time, drivers.forename, drivers.surname, races.name FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid INNER JOIN races ON laptimes.raceid = races.raceid ORDER BY laptimes.time LIMIT 1
SELECT avg(laptimes.time) FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid INNER JOIN races ON laptimes.raceid = races.raceid WHERE races.year = 2009 AND drivers.forename = 'Sebastian' AND drivers.surname = 'Vettel'
SELECT cast(sum(CASE WHEN driverstandings.position > 1 THEN 1 ELSE 0 END) AS REAL) * 100 / count(races.raceid) FROM races INNER JOIN driverstandings ON races.raceid = driverstandings.raceid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid WHERE drivers.surname = 'Hamilton' AND races.year >= 2010
SELECT drivers.forename, drivers.surname, drivers.nationality, avg(driverstandings.points) FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid GROUP BY drivers.driverid, drivers.forename, drivers.surname, drivers.nationality ORDER BY count(driverstandings.wins) DESC LIMIT 1
SELECT 2022 - strftime('%Y', dob) FROM drivers WHERE nationality = 'Japanese' ORDER BY dob DESC LIMIT 1
SELECT DISTINCT circuits.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year BETWEEN 1990 AND 2000
SELECT DISTINCT circuits.name, circuits.location, races.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.country = 'USA' AND races.year = 2006
SELECT races.name, circuits.name, circuits.location FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE strftime('%Y-%m', races.date) = '2005-09' AND races.name LIKE 'F1%'
SELECT races.name FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Alex' AND drivers.surname = 'Yoong' AND results.position < 10
SELECT count(driverstandings.wins) FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid INNER JOIN races ON driverstandings.raceid = races.raceid WHERE drivers.forename = 'Michael' AND drivers.surname = 'Schumacher' AND races.circuitid = ( SELECT circuitid FROM circuits WHERE circuitref = 'sepang' )
SELECT races.name, races.year FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Michael' AND drivers.surname = 'Schumacher' ORDER BY results.milliseconds LIMIT 1
SELECT avg(driverstandings.points) FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid WHERE drivers.forename = 'Eddie' AND drivers.surname = 'Irvine' AND driverstandings.raceid IN ( SELECT raceid FROM races WHERE YEAR = 2000 )
SELECT races.year, driverstandings.points FROM races INNER JOIN driverstandings ON races.raceid = driverstandings.raceid INNER JOIN drivers ON driverstandings.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY races.year LIMIT 1
SELECT DISTINCT races.name, circuits.country FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2017 ORDER BY races.date
SELECT races.name, races.year, circuits.location FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid ORDER BY results.laps DESC LIMIT 1
SELECT cast(sum(CASE WHEN circuits.country = 'Germany' THEN 1 ELSE 0 END) AS REAL) * 100 / count(races.raceid) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.name = 'European Grand Prix'
SELECT lat, lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT name FROM circuits ORDER BY lat DESC LIMIT 1
SELECT circuitref FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(driverid) FROM drivers WHERE code IS NULL
SELECT nationality FROM drivers ORDER BY dob ASC LIMIT 1
SELECT surname FROM drivers WHERE nationality = 'Italian'
SELECT url FROM drivers WHERE forename = 'Anthony' AND surname = 'Davidson'
SELECT driverref FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton'
SELECT circuits.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2009 AND races.name = 'Spanish Grand Prix'
SELECT DISTINCT races.year FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Silverstone Circuit'
SELECT races.url FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Silverstone Circuit'
SELECT races.time FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2010 AND circuits.name = 'Abu Dhabi Grand Prix'
SELECT count(races.raceid) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.country = 'Italy'
SELECT DISTINCT races.date FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Barcelona-Catalunya'
SELECT races.url FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2009 AND races.name = 'Spanish Grand Prix'
SELECT min(results.fastestlaptime) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT drivers.driverref FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' AND results.position = 1
SELECT races.name FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT races.name FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY results.rank LIMIT 1
SELECT max(results.fastestlapspeed) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2009 AND races.name = 'Spanish Grand Prix'
SELECT DISTINCT races.year FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT results.positionorder FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2008 AND drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.year = 2008 AND results.grid = 4
SELECT count(DISTINCT results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' AND results.time IS NOT NULL
SELECT results.fastestlap FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE races.year = 2008 AND drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT results.time FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' AND results.rank = 2
SELECT results.time, races.url FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' ORDER BY results.points DESC LIMIT 1
SELECT count(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE races.year = 2008 AND drivers.nationality = 'American'
SELECT count(DISTINCT results.driverid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix' AND results.time IS NOT NULL
SELECT sum(results.points) FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT avg(cast(substr(fastestlaptime, 3, length(fastestlaptime) - 4) AS REAL)) FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT cast(count(CASE WHEN results.time IS NOT NULL THEN 1 ELSE NULL END) AS REAL) * 100 / count(results.raceid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix'
SELECT cast((sum(results.fastestlaptime) - sum(results.time)) AS REAL) * 100 / sum(results.time) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2008 AND races.name = 'Australian Grand Prix'
SELECT count(circuitid) FROM circuits WHERE country = 'Australia' AND LOCATION = 'Melbourne'
SELECT lat, lng FROM circuits WHERE country = 'USA'
SELECT count(driverid) FROM drivers WHERE nationality = 'British' AND strftime('%Y', dob) > '1980'
SELECT avg(constructorresults.points) FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructors.nationality = 'British'
SELECT constructors.name FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid ORDER BY constructorresults.points DESC LIMIT 1
SELECT constructors.name FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructorresults.raceid = 291 AND constructorresults.points = 0
SELECT count(DISTINCT constructors.constructorid) FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructors.nationality = 'Japanese' AND constructorresults.points = 0 LIMIT 2
SELECT DISTINCT constructors.name FROM constructors INNER JOIN results ON constructors.constructorid = results.constructorid WHERE results.rank = 1
SELECT count(constructors.constructorid) FROM constructors INNER JOIN results ON constructors.constructorid = results.constructorid WHERE constructors.nationality = 'French' AND results.laps > 50
SELECT cast(sum(CASE WHEN results.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / count(results.driverid) FROM results INNER JOIN races ON results.raceid = races.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.nationality = 'Japanese' AND races.year BETWEEN 2007 AND 2009
SELECT avg(cast(substr(results.time, 3, length(results.time) - 6) AS REAL)) FROM races INNER JOIN results ON races.raceid = results.raceid GROUP BY races.year
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE strftime('%Y', drivers.dob) > '1975' AND results.position = 2
SELECT count(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE drivers.nationality = 'Italian' AND results.time IS NULL
SELECT drivers.forename, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY results.fastestlaptime ASC LIMIT 1
SELECT results.fastestlap FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2009 ORDER BY results.fastestlaptime ASC LIMIT 1
SELECT avg(results.fastestlapspeed) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009
SELECT races.name, races.year FROM races INNER JOIN results ON races.raceid = results.raceid WHERE results.milliseconds IS NOT NULL ORDER BY results.milliseconds ASC LIMIT 1
SELECT cast(sum(CASE WHEN laps > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / count(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE strftime('%Y', drivers.dob) < '1985' AND strftime('%Y', results.time) BETWEEN '2000' AND '2005'
SELECT count(drivers.driverid) FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE laptimes.milliseconds < 120 AND drivers.nationality = 'French'
SELECT code FROM drivers WHERE nationality = 'America'
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(driverid) FROM results WHERE raceid = 18
SELECT count(drivers.driverid) FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid WHERE drivers.nationality = 'Dutch' ORDER BY strftime('%Y', drivers.dob) DESC LIMIT 3
SELECT driverref FROM drivers WHERE forename = 'Robert' AND surname = 'Kubica'
SELECT count(driverid) FROM drivers WHERE nationality = 'Australian' AND strftime('%Y', dob) = '1980'
SELECT drivers.forename, drivers.surname FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid WHERE drivers.nationality = 'German' AND strftime('%Y', drivers.dob) BETWEEN '1980' AND '1990' ORDER BY laptimes.time LIMIT 3
SELECT driverref FROM drivers WHERE nationality = 'German' ORDER BY dob ASC LIMIT 1
SELECT DISTINCT drivers.driverid, drivers.code FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE substr(drivers.dob, 1, 4) = '1971' AND results.fastestlaptime IS NOT NULL
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE drivers.nationality = 'Spanish' AND strftime('%Y', drivers.dob) < '1982' ORDER BY laptimes.time DESC LIMIT 10
SELECT DISTINCT races.year FROM races INNER JOIN results ON races.raceid = results.raceid WHERE results.fastestlaptime IS NOT NULL
SELECT races.year FROM races INNER JOIN results ON races.raceid = results.raceid ORDER BY results.fastestlapspeed DESC LIMIT 1
SELECT driverid FROM laptimes ORDER BY `time` ASC LIMIT 5
SELECT count(results.driverid) FROM results INNER JOIN status ON results.statusid = status.statusid WHERE status.statusid = 2 AND results.raceid BETWEEN 50 AND 100
SELECT name, lat, lng FROM circuits WHERE country = 'Austria'
SELECT raceid FROM results WHERE time IS NOT NULL GROUP BY raceid ORDER BY count(driverid) DESC LIMIT 1
SELECT DISTINCT drivers.driverref, drivers.nationality, drivers.dob FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid WHERE qualifying.raceid = 23 AND qualifying.q2 IS NOT NULL
SELECT races.year, races.name, races.date, races.time FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid INNER JOIN races ON qualifying.raceid = races.raceid ORDER BY drivers.dob DESC LIMIT 1
SELECT count(results.driverid) FROM results INNER JOIN status ON results.statusid = status.statusid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE status.statusid = 2 AND drivers.nationality = 'American'
SELECT constructors.url FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid WHERE constructors.nationality = 'Italian' ORDER BY constructorresults.points DESC LIMIT 1
SELECT constructors.url FROM constructors INNER JOIN constructorstandings ON constructors.constructorid = constructorstandings.constructorid ORDER BY constructorstandings.wins DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE races.name = 'French Grand Prix' AND results.laps = 3 ORDER BY results.time DESC LIMIT 1
SELECT raceid, milliseconds FROM laptimes WHERE lap = 1 ORDER BY milliseconds LIMIT 1
SELECT avg(results.fastestlaptime) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.year = 2006 AND races.name = 'United States Grand Prix' AND results.rank < 11
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.nationality = 'German' AND strftime('%Y', drivers.dob) BETWEEN '1980' AND '1985' GROUP BY drivers.driverid ORDER BY sum(pitstops.duration) / count(pitstops.duration) ASC LIMIT 5
SELECT results.time FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Canadian Grand Prix' AND races.year = 2008 ORDER BY results.points DESC LIMIT 1
SELECT constructors.constructorref, constructors.url FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN constructors ON results.constructorid = constructors.constructorid WHERE races.year = 2009 AND races.name = 'Singapore Grand Prix' ORDER BY results.time DESC LIMIT 1
SELECT forename, surname, dob FROM drivers WHERE nationality = 'Austrian' AND strftime('%Y', dob) BETWEEN '1981' AND '1991'
SELECT surname, forename, dob, url FROM drivers WHERE nationality = 'German' AND strftime('%Y', dob) BETWEEN '1971' AND '1985' ORDER BY dob DESC
SELECT LOCATION, country, lat, lng FROM circuits WHERE name = 'Hungaroring'
SELECT constructorresults.points, constructors.name, constructors.nationality FROM constructors INNER JOIN constructorresults ON constructors.constructorid = constructorresults.constructorid INNER JOIN races ON constructorresults.raceid = races.raceid WHERE races.name = 'Monaco Grand Prix' AND races.year BETWEEN 1980 AND 2010 ORDER BY constructorresults.points DESC LIMIT 1
SELECT avg(results.points) FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' AND races.name = 'Turkish Grand Prix'
SELECT cast(count(raceid) AS REAL) / count(DISTINCT YEAR) FROM races WHERE YEAR BETWEEN 2000 AND 2010
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(nationality) DESC
SELECT driverstandings.wins FROM results INNER JOIN driverstandings ON results.raceid = driverstandings.raceid WHERE results.position = 91
SELECT races.name FROM races INNER JOIN results ON races.raceid = results.raceid ORDER BY results.fastestlaptime LIMIT 1
SELECT circuits.name, circuits.location, circuits.country FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid ORDER BY races.date DESC LIMIT 1
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN qualifying ON drivers.driverid = qualifying.driverid INNER JOIN races ON qualifying.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2008 AND circuits.name = 'Marina Bay Street Circuit' AND qualifying.position = 3 ORDER BY qualifying.q3 LIMIT 1
SELECT drivers.forename, drivers.surname, drivers.nationality, races.name FROM races INNER JOIN results ON races.raceid = results.raceid INNER JOIN drivers ON results.driverid = drivers.driverid ORDER BY drivers.dob DESC LIMIT 1
SELECT count(results.statusid) FROM races INNER JOIN results ON races.raceid = results.raceid WHERE races.name = 'Canadian Grand Prix' AND results.statusid = 3 GROUP BY results.driverid ORDER BY count(results.statusid) DESC LIMIT 1
SELECT driverstandings.wins, drivers.forename, drivers.surname FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid ORDER BY drivers.dob LIMIT 1
SELECT max(duration) FROM pitstops
SELECT laptimes.time FROM laptimes INNER JOIN races ON laptimes.raceid = races.raceid WHERE races.name = 'Australian Grand Prix' ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT max(pitstops.duration) FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT pitstops.lap FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid INNER JOIN races ON pitstops.raceid = races.raceid WHERE races.year = 2011 AND drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT pitstops.duration FROM races INNER JOIN pitstops ON races.raceid = pitstops.raceid WHERE races.year = 2011 AND races.name = 'Australian Grand Prix'
SELECT laptimes.time FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT drivers.forename, drivers.surname FROM laptimes INNER JOIN drivers ON laptimes.driverid = drivers.driverid ORDER BY laptimes.time ASC LIMIT 1
SELECT results.position FROM results INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton' ORDER BY results.time LIMIT 1
SELECT laptimes.time FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid WHERE races.name = 'Austrian Grand Prix' ORDER BY laptimes.milliseconds ASC LIMIT 1
SELECT DISTINCT laptimes.time FROM laptimes INNER JOIN races ON laptimes.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.country = 'Italy'
SELECT laptimes.time FROM races INNER JOIN laptimes ON races.raceid = laptimes.raceid WHERE races.name = 'Austrian Grand Prix' AND races.circuitid = 1
SELECT pitstops.duration FROM races INNER JOIN pitstops ON races.raceid = pitstops.raceid WHERE races.name = 'Austrian Grand Prix' AND pitstops.driverid = ( SELECT driverid FROM results WHERE raceid = races.raceid ORDER BY fastestlaptime ASC LIMIT 1 )
SELECT circuits.lat, circuits.lng FROM laptimes INNER JOIN races ON laptimes.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE laptimes.time = '1:29.488'
SELECT avg(pitstops.milliseconds) FROM drivers INNER JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.forename = 'Lewis' AND drivers.surname = 'Hamilton'
SELECT avg(laptimes.milliseconds) FROM laptimes INNER JOIN races ON laptimes.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.country = 'Italy'
SELECT player_api_id FROM player_attributes ORDER BY overall_rating DESC LIMIT 1
SELECT height, player_name FROM player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM player_attributes ORDER BY potential ASC LIMIT 1
SELECT count(player_api_id) FROM player_attributes WHERE overall_rating BETWEEN 60 AND 65 AND defensive_work_rate = 'low'
SELECT player_api_id FROM player_attributes ORDER BY crossing DESC LIMIT 5
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2015/2016' GROUP BY league.name ORDER BY sum(MATCH.home_team_goal + MATCH.away_team_goal) DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.home_team_api_id WHERE MATCH.season = '2015/2016' GROUP BY team.team_long_name ORDER BY sum(MATCH.home_team_goal - MATCH.away_team_goal) ASC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.penalties DESC LIMIT 10
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.away_team_api_id INNER JOIN league ON MATCH.league_id = league.id WHERE MATCH.season = '2009/2010' AND league.name = 'Scotland Premier League' ORDER BY MATCH.away_team_goal - MATCH.home_team_goal DESC LIMIT 1
SELECT buildupplayspeed FROM team_attributes ORDER BY buildupplayspeed DESC LIMIT 4
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2015/2016' GROUP BY league.name ORDER BY sum(CASE WHEN MATCH.home_team_goal = MATCH.away_team_goal THEN 1 ELSE 0 END) DESC LIMIT 1
SELECT strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', player.birthday) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.sprint_speed >= 97 AND player_attributes.date BETWEEN '2013-01-01 00:00:00' AND '2015-12-31 00:00:00'
SELECT league.name, count(MATCH.id) FROM MATCH INNER JOIN league ON MATCH.league_id = league.id GROUP BY league.name ORDER BY count(MATCH.id) DESC LIMIT 1
SELECT avg(height) FROM player WHERE birthday BETWEEN '1990-01-01 00:00:00' AND '1995-12-31 00:00:00'
SELECT player_api_id FROM player_attributes WHERE substr(date, 1, 4) = '2010' ORDER BY overall_rating DESC LIMIT 1
SELECT team_fifa_api_id FROM team_attributes WHERE buildupplayspeed BETWEEN 51 AND 59
SELECT team.team_long_name FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.date LIKE '2012%' AND team_attributes.buildupplaypassing IS NOT NULL GROUP BY team.team_long_name HAVING sum(team_attributes.buildupplaypassing) / count(team.team_long_name) < team_attributes.buildupplaypassing
SELECT cast(count(CASE WHEN player_attributes.preferred_foot = 'left' THEN 1 ELSE NULL END) AS REAL) * 100 / count(player_attributes.player_fifa_api_id) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player.birthday BETWEEN '1987-01-01 00:00:00' AND '1992-12-31 00:00:00'
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id GROUP BY league.name ORDER BY sum(MATCH.home_team_goal + MATCH.away_team_goal) DESC LIMIT 5
SELECT avg(player_attributes.long_shots) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Ahmed Samir Farag'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 180 GROUP BY player.player_name ORDER BY sum(player_attributes.heading_accuracy) / count(player_attributes.player_fifa_api_id) DESC LIMIT 10
SELECT team.team_long_name FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.date LIKE '2014%' AND team_attributes.buildupplaydribblingclass = 'Normal' ORDER BY team_attributes.chancecreationpassing DESC LIMIT 1
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2009/2010' AND MATCH.home_team_goal > MATCH.away_team_goal
SELECT team_short_name FROM team WHERE team_long_name = 'Queens Park Rangers'
SELECT player_name FROM player WHERE substr(birthday, 1, 4) = '1970' AND substr(birthday, 6, 2) = '10'
SELECT player_attributes.attacking_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Franco Zennaro'
SELECT team_attributes.buildupplaypositioningclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'ADO Den Haag'
SELECT player_attributes.heading_accuracy FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Francois Affolter' AND player_attributes.date = '2014-09-18 00:00:00'
SELECT player_attributes.overall_rating FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Gabriel Tamas' AND strftime('%Y', player_attributes.date) = '2011'
SELECT sum(CASE WHEN league.name = 'Scotland Premier League' THEN 1 ELSE 0 END) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2015/2016'
SELECT player_attributes.preferred_foot FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.birthday DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.potential DESC LIMIT 1
SELECT count(player_api_id) FROM player_attributes WHERE preferred_foot = 'left' AND player_api_id IN ( SELECT player_api_id FROM player WHERE weight < 130 )
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.chancecreationpassingclass = 'Risky'
SELECT player_attributes.defensive_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'David Wilson'
SELECT player.birthday FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT league.name FROM league INNER JOIN country ON league.country_id = country.id WHERE country.name = 'Netherlands'
SELECT avg(MATCH.home_team_goal) FROM MATCH INNER JOIN league ON MATCH.league_id = league.id INNER JOIN country ON league.country_id = country.id WHERE country.name = 'Poland' AND MATCH.season = '2010/2011'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.finishing DESC LIMIT 1
SELECT player_name FROM player WHERE height > 180
SELECT count(id) FROM player WHERE substr(birthday, 1, 4) > '1990'
SELECT count(player.player_name) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.weight > 170 AND player.player_name LIKE 'Adam%'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.overall_rating > 80 AND strftime('%Y', player_attributes.date) BETWEEN '2008' AND '2010'
SELECT player_attributes.potential FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Doran'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.preferred_foot = 'left'
SELECT DISTINCT team.team_long_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplayspeedclass = 'Fast'
SELECT team_attributes.buildupplaypassingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_short_name = 'CLB'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplaypassing > 70
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 170 AND strftime('%Y', player_attributes.date) BETWEEN '2010' AND '2015'
SELECT player_name FROM player ORDER BY height ASC LIMIT 1
SELECT country.name FROM league INNER JOIN country ON league.country_id = country.id WHERE league.name = 'Italy Serie A'
SELECT team.team_short_name FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.buildupplayspeed = 31 AND team_attributes.buildupplaydribbling = 53 AND team_attributes.buildupplaypassing = 32
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Doran'
SELECT count(MATCH.id) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE league.name = 'Germany 1. Bundesliga' AND strftime('%Y-%m', MATCH.date) BETWEEN '2008-08' AND '2008-10'
SELECT team.team_short_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.home_team_api_id WHERE MATCH.home_team_goal = 10
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.balance = ( SELECT max(balance) FROM player_attributes ) AND player_attributes.potential = 61
SELECT avg(player_attributes.ball_control) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Abdou Diallo' OR player.player_name = 'Aaron Appindangoye'
SELECT team_long_name FROM team WHERE team_short_name = 'GEN'
SELECT player_name FROM player WHERE birthday = ( SELECT max(birthday) FROM player WHERE player_name = 'Aaron Lennon' OR player_name = 'Abdelaziz Barrada' )
SELECT player_name FROM player ORDER BY height DESC LIMIT 1
SELECT count(player_api_id) FROM player_attributes WHERE preferred_foot = 'left' AND attacking_work_rate = 'low'
SELECT country.name FROM league INNER JOIN country ON league.country_id = country.id WHERE league.name = 'Belgium Jupiler League'
SELECT league.name FROM league INNER JOIN country ON league.country_id = country.id WHERE country.name = 'Germany'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT count(player.id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player.birthday) < '1986' AND player_attributes.defensive_work_rate = 'high'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name IN ('Alexis', 'Ariel Borysiuk', 'Arouna Kone') ORDER BY player_attributes.crossing DESC LIMIT 1
SELECT player_attributes.heading_accuracy FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Ariel Borysiuk'
SELECT count(player.player_name) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 180 AND player_attributes.volleys > 70
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.volleys > 70 AND player_attributes.dribbling > 70
SELECT sum(CASE WHEN country.name = 'Belgium' THEN 1 ELSE 0 END) FROM country INNER JOIN league ON country.id = league.country_id INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2008/2009'
SELECT player_attributes.long_passing FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.birthday ASC LIMIT 1
SELECT count(MATCH.id) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE league.name = 'Belgium Jupiler League' AND strftime('%Y', MATCH.date) = '2009' AND strftime('%m', MATCH.date) = '04'
SELECT league.name FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE MATCH.season = '2008/2009' GROUP BY league.name ORDER BY count(league.name) DESC LIMIT 1
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE strftime('%Y', player.birthday) < '1986'
SELECT cast((player_attributes.overall_rating - ( SELECT overall_rating FROM player_attributes WHERE player_name = 'Paulin Puel' )) AS REAL) * 100 / ( SELECT overall_rating FROM player_attributes WHERE player_name = 'Paulin Puel' ) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player.player_name = 'Ariel Borysiuk'
SELECT avg(team_attributes.buildupplayspeed) FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'Heart of Midlothian'
SELECT avg(player_attributes.overall_rating) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Pietro Marino'
SELECT sum(player_attributes.crossing) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Aaron Lennox'
SELECT team_attributes.chancecreationpassing, team_attributes.chancecreationpassingclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'Ajax' ORDER BY team_attributes.chancecreationpassing DESC LIMIT 1
SELECT player_attributes.preferred_foot FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Abdou Diallo'
SELECT player_attributes.overall_rating FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Dorlan Pabon' ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT avg(match.away_team_goal) FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.away_team_api_id INNER JOIN league ON team.team_api_id = league.id INNER JOIN country ON league.country_id = country.id WHERE team.team_long_name = 'Parma' AND country.name = 'Italy'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.overall_rating = 77 AND player_attributes.date = '2016-06-23' ORDER BY player.birthday LIMIT 1
SELECT player_attributes.overall_rating FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player_attributes.date = '2016-02-04 00:00:00' AND player.player_name = 'Aaron Mooy'
SELECT player_attributes.potential FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Francesco Parravicini' AND player_attributes.date = '2010-08-30 00:00:00'
SELECT player_attributes.attacking_work_rate FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player_attributes.date = '2015-05-01 00:00:00' AND player.player_name = 'Francesco Migliore'
SELECT player_attributes.defensive_work_rate FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Kevin Berigaud' AND player_attributes.date = '2013-02-22 00:00:00'
SELECT player_attributes.date FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Kevin Constant' ORDER BY player_attributes.crossing DESC LIMIT 1
SELECT team_attributes.buildupplayspeedclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.date = '2012-02-22 00:00:00' AND team.team_long_name = 'Willem II'
SELECT team_attributes.buildupplaydribblingclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.date = '2015-09-10 00:00:00' AND team.team_short_name = 'LEI'
SELECT team_attributes.buildupplaypassingclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.date = '2010-02-22' AND team.team_long_name = 'FC Lorient'
SELECT team_attributes.chancecreationpassingclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.date = '2013-09-20 00:00:00' AND team.team_long_name = 'PEC Zwolle'
SELECT team_attributes.chancecreationcrossingclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.date = '2010-02-22 00:00:00' AND team.team_long_name = 'Hull City'
SELECT team_attributes.defenceaggressionclass FROM team_attributes INNER JOIN team ON team_attributes.team_api_id = team.team_api_id WHERE team_attributes.date = '2015-09-10 00:00:00' AND team.team_long_name = 'Hannover 96'
SELECT avg(player_attributes.overall_rating) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player.player_name = 'Marko Arnautovic' AND player_attributes.date BETWEEN '2007-02-22 00:00:00' AND '2016-04-21 00:00:00'
SELECT cast((sum(CASE WHEN player.player_name = 'Landon Donovan' THEN player_attributes.overall_rating ELSE 0 END) - sum(CASE WHEN player.player_name = 'Jordan Bowery' THEN player_attributes.overall_rating ELSE 0 END)) AS REAL) * 100 / sum(CASE WHEN player.player_name = 'Landon Donovan' THEN player_attributes.overall_rating ELSE 0 END) FROM player_attributes INNER JOIN player ON player_attributes.player_api_id = player.player_api_id WHERE player_attributes.date = '2013-07-12'
SELECT player_name FROM player ORDER BY height DESC LIMIT 5
SELECT player_api_id FROM player ORDER BY weight DESC LIMIT 10
SELECT player_name FROM player WHERE datetime('now', 'localtime') - birthday > 34
SELECT sum(CASE WHEN player.player_name = 'Aaron Lennon' THEN 1 ELSE 0 END) FROM MATCH INNER JOIN player ON player.player_api_id = MATCH.home_player_11
SELECT sum(CASE WHEN player.player_name = 'Daan Smith' THEN match.away_team_goal ELSE 0 END) + sum(CASE WHEN player.player_name = 'Filipe Ferreira' THEN match.away_team_goal ELSE 0 END) FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.away_player_11
SELECT sum(MATCH.home_team_goal) FROM MATCH INNER JOIN player ON player.player_api_id = MATCH.home_player_11 WHERE strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', player.birthday) < 30
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 10
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.potential DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.attacking_work_rate = 'high'
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_attributes.finishing = 1 ORDER BY datetime(CURRENT_TIMESTAMP, 'localtime') - datetime(player.birthday) DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN MATCH ON player.player_api_id = MATCH.home_player_1 INNER JOIN league ON MATCH.league_id = league.id INNER JOIN country ON league.country_id = country.id WHERE country.name = 'Belgium'
SELECT DISTINCT country.name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id INNER JOIN league ON league.country_id = player.id INNER JOIN country ON country.id = league.country_id WHERE player_attributes.vision > 89
SELECT country.name FROM player INNER JOIN country ON player.id = country.id GROUP BY country.name ORDER BY avg(player.weight) DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.buildupplayspeedclass = 'Slow'
SELECT team.team_short_name FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team_attributes.chancecreationpassingclass = 'Safe'
SELECT avg(player.height) FROM country INNER JOIN league ON country.id = league.country_id INNER JOIN MATCH ON league.id = MATCH.country_id INNER JOIN player ON MATCH.home_player_1 = player.player_api_id WHERE country.name = 'Italy'
SELECT player_name FROM player WHERE height > 180 ORDER BY player_name LIMIT 3
SELECT count(player_name) FROM player WHERE substr(birthday, 1, 4) > '1990' AND player_name LIKE 'Aaron%'
SELECT jumping FROM player_attributes WHERE id = 6 OR id = 23
SELECT player_api_id FROM player_attributes WHERE preferred_foot = 'right' ORDER BY potential LIMIT 3
SELECT count(player_api_id) FROM player_attributes WHERE preferred_foot = 'left' AND crossing = ( SELECT max(crossing) FROM player_attributes )
SELECT cast(count(CASE WHEN strength > 80 AND stamina > 80 THEN player_api_id ELSE NULL END) AS REAL) * 100 / count(player_api_id) FROM player_attributes
SELECT country.name FROM league INNER JOIN country ON league.country_id = country.id WHERE league.name = 'Poland Ekstraklasa'
SELECT match.home_team_goal, match.away_team_goal FROM `match` INNER JOIN league ON match.league_id = league.id WHERE league.name = 'Belgium Jupiler League' AND match.date LIKE '2008-09-24%'
SELECT player_attributes.sprint_speed, player_attributes.agility, player_attributes.acceleration FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.player_name = 'Alexis Blin'
SELECT team_attributes.buildupplayspeedclass FROM team INNER JOIN team_attributes ON team.team_api_id = team_attributes.team_api_id WHERE team.team_long_name = 'KSV Cercle Brugge'
SELECT count(match_api_id) FROM `match` WHERE season = '2015/2016'
SELECT max(MATCH.home_team_goal) FROM league INNER JOIN MATCH ON league.id = MATCH.league_id WHERE league.name = 'Netherlands Eredivisie'
SELECT player_attributes.finishing, player_attributes.curve FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player.weight DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.home_team_api_id OR team.team_api_id = MATCH.away_team_api_id WHERE MATCH.season = '2015/2016' GROUP BY team.team_long_name ORDER BY count(team.team_long_name) DESC LIMIT 1
SELECT team.team_long_name FROM team INNER JOIN MATCH ON team.team_api_id = MATCH.away_team_api_id ORDER BY MATCH.away_team_goal DESC LIMIT 1
SELECT player.player_name FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id ORDER BY player_attributes.overall_rating DESC LIMIT 1
SELECT cast(count(CASE WHEN player.height < 180 AND player_attributes.overall_rating > 70 THEN player.id ELSE NULL END) AS REAL) * 100 / count(player.id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id
SELECT cast((sum(iif(admission = '+', 1, 0)) - sum(iif(admission = '-', 1, 0))) AS REAL) * 100 / sum(iif(sex = 'M', 1, 0)) FROM patient
SELECT cast(sum(iif(sex = 'F', 1, 0)) AS REAL) * 100 / count(id) FROM patient WHERE strftime('%Y', birthday) > '1930'
SELECT cast(sum(CASE WHEN admission = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM patient WHERE strftime('%Y', birthday) BETWEEN '1930' AND '1940'
SELECT cast(sum(CASE WHEN patient.admission = '-' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN patient.admission = '+' THEN 1 ELSE 0 END) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.diagnosis = 'SLE'
SELECT patient.diagnosis, laboratory.`date` FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.id = 30609
SELECT patient.sex, patient.birthday, examination.`examination date`, examination.symptoms FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.id = 163109
SELECT patient.id, patient.sex, patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ldh > 500
SELECT patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) AS age FROM examination INNER JOIN patient ON examination.id = patient.id WHERE examination.rvvt = '+'
SELECT patient.id, patient.sex, patient.diagnosis FROM examination INNER JOIN patient ON examination.id = patient.id WHERE examination.thrombosis = 2
SELECT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE strftime('%Y', patient.birthday) = '1937' AND laboratory.`t-cho` > 250
SELECT patient.id, patient.sex, patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.alb < 3.5
SELECT cast(sum(iif(laboratory.tp < 6.0 OR laboratory.tp > 8.5, 1, 0)) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F'
SELECT avg(examination.`acl igg`) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.admission = '+' AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 50
SELECT count(id) FROM patient WHERE sex = 'F' AND strftime('%Y', `description`) = '1997' AND admission = '-'
SELECT max(strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', birthday)) FROM patient
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.sex = 'F' AND strftime('%Y', examination.`examination date`) = '1997' AND examination.thrombosis = '1'
SELECT max(strftime('%Y', patient.birthday)) - min(strftime('%Y', patient.birthday)) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg >= 200
SELECT examination.symptoms, patient.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id ORDER BY patient.birthday LIMIT 1
SELECT cast(count(patient.id) AS REAL) / 12 FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND strftime('%Y', laboratory.`date`) = '1998'
SELECT laboratory.`date`, strftime('%Y', laboratory.`date`) - strftime('%Y', patient.birthday) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SJS' ORDER BY patient.birthday LIMIT 1
SELECT cast(sum(CASE WHEN patient.sex = 'M' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN patient.sex = 'F' THEN 1 ELSE 0 END) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ua BETWEEN 8 AND 6.5
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', examination.`examination date`) - strftime('%Y', patient.`first date`) < 1
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', examination.`examination date`) BETWEEN '1990' AND '1993' AND strftime('%Y', patient.birthday) < '18'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.`t-bil` > 2.0
SELECT patient.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.`examination date` BETWEEN '1985-01-01' AND '1995-12-31' GROUP BY patient.diagnosis ORDER BY count(patient.diagnosis) DESC LIMIT 1
SELECT avg(strftime('%Y', examination.`examination date`) - strftime('%Y', patient.birthday)) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id INNER JOIN patient ON examination.id = patient.id WHERE strftime('%Y-%m', examination.`examination date`) = '1991-10'
SELECT patient.description - patient.birthday, patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id ORDER BY laboratory.hgb DESC LIMIT 1
SELECT ana FROM examination WHERE `examination date` = '1996-12-02' AND id = 3605340
SELECT `t-cho` < 250 FROM laboratory WHERE id = 2927464 AND `date` = '1995-09-04'
SELECT sex FROM patient WHERE diagnosis = 'AORTITIS' LIMIT 1
SELECT examination.`acl igm` FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.description = '1993-11-12' AND examination.diagnosis = 'SLE'
SELECT patient.sex FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.date = '1992-06-12' AND laboratory.gpt = 9
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.date = '1991-10-21' AND laboratory.ua = '8.4'
SELECT count(laboratory.id) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.`first date` = '1991-06-13' AND patient.diagnosis = 'SJS' AND strftime('%Y', laboratory.`date`) = '1995'
SELECT patient.diagnosis FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.`examination date` = '1997-01-27' AND patient.diagnosis = 'SLE'
SELECT examination.symptoms FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.birthday = '1959-03-01' AND examination.`examination date` = '1993-09-27'
SELECT sum(CASE WHEN strftime('%Y-%m', laboratory.`date`) = '1981-11' THEN laboratory.`t-cho` ELSE 0 END) - sum(CASE WHEN strftime('%Y-%m', laboratory.`date`) = '1981-12' THEN laboratory.`t-cho` ELSE 0 END) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.birthday = '1959-02-18'
SELECT patient.id FROM examination INNER JOIN patient ON examination.id = patient.id WHERE patient.diagnosis = 'Behcet' AND examination.`examination date` BETWEEN '1997-01-01' AND '1997-12-31'
SELECT DISTINCT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.date BETWEEN '1987-07-06' AND '1996-01-31' AND laboratory.gpt > 30 AND laboratory.alb < 4
SELECT count(id) FROM patient WHERE sex = 'F' AND strftime('%Y', birthday) = '1964' AND admission = '+'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.thrombosis = 2 AND examination.`ana pattern` = 'S' AND examination.`acl igm` * 1.2 > ( SELECT avg(examination.`acl igm`) FROM patient INNER JOIN examination ON patient.id = examination.id )
SELECT cast(sum(CASE WHEN laboratory.ua <= 6.5 THEN 1 ELSE 0 END) AS REAL) * 100 / count(laboratory.id) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.`u-pro` BETWEEN 0 AND 30
SELECT cast(count(CASE WHEN patient.diagnosis = 'BEHCET' THEN 1 ELSE NULL END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE strftime('%Y', patient.`first date`) = '1981' AND patient.sex = 'M'
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '-' AND strftime('%Y-%m', laboratory.`date`) = '1991-10' AND laboratory.`t-bil` < 2
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.sex = 'F' AND patient.birthday BETWEEN '1980-01-01' AND '1989-12-31' AND examination.`ana pattern` != 'p'
SELECT patient.sex FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.diagnosis = 'PSS' AND laboratory.crp > 2 AND laboratory.cre = 1 AND laboratory.ldh = 123
SELECT avg(laboratory.alb) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.sex = 'F' AND patient.diagnosis = 'SLE' AND laboratory.plt > 400
SELECT symptoms FROM examination WHERE diagnosis = 'SLE' GROUP BY symptoms ORDER BY count(symptoms) DESC LIMIT 1
SELECT description, diagnosis FROM patient WHERE id = 48473
SELECT count(id) FROM patient WHERE sex = 'F' AND diagnosis = 'APS'
SELECT count(id) FROM laboratory WHERE strftime('%Y', `date`) = '1997' AND tp < 6 OR tp > 8.5
SELECT cast(sum(CASE WHEN diagnosis = 'SLE' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM examination WHERE symptoms = 'thrombocytopenia'
SELECT cast(sum(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(id) FROM patient WHERE strftime('%Y', birthday) = '1980' AND diagnosis = 'RA'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.sex = 'M' AND strftime('%Y', examination.`examination date`) BETWEEN '1995' AND '1997' AND patient.diagnosis = 'BEHCET' AND patient.admission = '-'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F' AND laboratory.wbc < 3.5
SELECT strftime('%J', examination.`examination date`) - strftime('%J', patient.`first date`) AS days FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.id = 821298
SELECT CASE WHEN (laboratory.ua > 8.0 AND patient.sex = 'M') OR (laboratory.ua > 6.5 AND patient.sex = 'F') THEN 'YES' ELSE 'NO' END AS RESULT FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.id = 57266
SELECT `date` FROM laboratory WHERE id = 48473 AND got >= 60
SELECT patient.sex, patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE strftime('%Y', laboratory.`date`) = '1994' AND laboratory.got < 60
SELECT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.sex = 'M' AND laboratory.gpt >= 60
SELECT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.gpt > 60 ORDER BY patient.birthday ASC
SELECT avg(ldh) FROM laboratory WHERE ldh < 500
SELECT patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', birthday) AS age FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ldh BETWEEN 100 AND 300
SELECT patient.admission FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.alp < 300
SELECT patient.id, CASE WHEN laboratory.alp < 300 THEN 'YES' ELSE 'NO' END FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.birthday = '1982-04-01'
SELECT patient.id, patient.sex, patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.tp < 6.0
SELECT tp - 8.5 FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.sex = 'F' AND laboratory.tp > 8.5
SELECT patient.id, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND (laboratory.alb < 3.5 OR laboratory.alb > 5.5) ORDER BY patient.birthday DESC
SELECT iif(laboratory.alb BETWEEN 3.5 AND 5.5, 'YES', 'NO') FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE strftime('%Y', patient.birthday) = '1982'
SELECT cast(sum(CASE WHEN patient.sex = 'F' AND laboratory.ua > 8.0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id
SELECT avg(laboratory.ua) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE (patient.sex = 'M' AND laboratory.ua < 8.0) OR (patient.sex = 'F' AND laboratory.ua < 6.5)
SELECT patient.id, patient.sex, patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.un = 29
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'RA' AND laboratory.un < 30
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.cre >= 1.5
SELECT cast(sum(CASE WHEN patient.sex = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / sum(CASE WHEN patient.sex = 'F' THEN 1 ELSE 0 END) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.cre < 1.5
SELECT patient.id, patient.sex, patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id ORDER BY laboratory.`t-bil` DESC LIMIT 1
SELECT patient.sex FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.`t-bil` < 2.0 GROUP BY patient.sex
SELECT patient.id, laboratory.`t-cho` FROM laboratory INNER JOIN patient ON laboratory.id = patient.id ORDER BY patient.birthday ASC, laboratory.`t-cho` DESC LIMIT 1
SELECT avg(strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', birthday)) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`t-cho` >= 250 AND patient.sex = 'M'
SELECT patient.id, patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.tg > 100
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 50 AND laboratory.tg > 200
SELECT DISTINCT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '-' AND laboratory.cpk < 250
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND strftime('%Y', patient.birthday) BETWEEN '1936' AND '1956' AND laboratory.cpk > 250
SELECT patient.id, patient.sex, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`t-cho` < 250 AND laboratory.glu >= 180
SELECT patient.id, laboratory.glu FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.description) >= '1991' AND laboratory.glu < 180
SELECT patient.id, patient.sex, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.wbc < 3.5 OR laboratory.wbc > 9 ORDER BY patient.sex, patient.birthday
SELECT patient.diagnosis, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rbc < 3.5
SELECT patient.id, patient.admission FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'F' AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 50 AND (laboratory.rbc < 3.5 OR laboratory.rbc > 6)
SELECT patient.id, patient.sex FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.admission = '-' AND laboratory.hgb < 10
SELECT patient.id, patient.sex FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SLE' AND laboratory.hgb BETWEEN 10 AND 17 ORDER BY patient.birthday LIMIT 1
SELECT patient.id, strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', birthday) AS age FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.hct > 52 GROUP BY patient.id HAVING count(patient.id) > 2
SELECT avg(hct) FROM laboratory WHERE `date` LIKE '1991%' AND hct < 29
SELECT sum(CASE WHEN plt < 100 THEN 1 ELSE 0 END) AS low , sum(CASE WHEN plt > 400 THEN 1 ELSE 0 END) AS high FROM laboratory
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', laboratory.date) = '1984' AND laboratory.plt BETWEEN 100 AND 400 AND strftime('%Y', patient.birthday) + 50 > strftime('%Y', laboratory.date)
SELECT cast(sum(CASE WHEN patient.sex = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 55 AND laboratory.pt >= 14
SELECT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE strftime('%Y', laboratory.`date`) > '1992' AND laboratory.pt < 14
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE examination.`examination date` > '1997-01-01' AND laboratory.aptt < 45
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.aptt > 45 AND examination.thrombosis = 3
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.wbc BETWEEN 3.5 AND 9.0 AND (laboratory.fg <= 150 OR laboratory.fg >= 450)
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.fg BETWEEN 150 AND 450 AND patient.birthday > '1980-01-01'
SELECT DISTINCT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.`u-pro` > 30
SELECT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.diagnosis = 'SLE' AND laboratory.`u-pro` BETWEEN 0 AND 30
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE examination.symptoms = 'abortion' AND laboratory.igg < 900
SELECT count(examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.igg BETWEEN 900 AND 2000 AND examination.symptoms IS NOT NULL
SELECT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.iga BETWEEN 80 AND 500 ORDER BY laboratory.iga DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.iga BETWEEN 80 AND 500 AND strftime('%Y', patient.`first date`) >= '1990'
SELECT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.igm NOT BETWEEN 40 AND 400 GROUP BY patient.diagnosis ORDER BY count(patient.diagnosis) DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE (laboratory.crp = '+' OR laboratory.crp = '-' OR laboratory.crp < 1) AND patient.description IS NULL
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.crp NOT IN ('+', '-') AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) < 18
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.ra = '+' AND examination.kct = '+'
SELECT patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE strftime('%Y', patient.birthday) > '1995' AND laboratory.ra IN ('-', '+-')
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rf < 20 AND strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', patient.birthday) > 60
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.rf < 20 AND examination.thrombosis = 0
SELECT count(DISTINCT patient.id) FROM examination INNER JOIN patient ON examination.id = patient.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.`ana pattern` = 'P' AND laboratory.c3 > 35
SELECT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.hct < 29 OR laboratory.hct > 52 ORDER BY examination.`acl iga` DESC LIMIT 1
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.diagnosis = 'APS' AND laboratory.c4 > 10
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rnp = '-' AND patient.admission = '+'
SELECT patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rnp NOT IN ('-', '+-') ORDER BY patient.birthday DESC LIMIT 1
SELECT count(examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.sm IN ('-', '+-') AND examination.thrombosis = 1
SELECT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.sm NOT IN ('-', '+-') ORDER BY patient.birthday DESC LIMIT 3
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.sc170 IN ('-', '+-') AND examination.`examination date` >= '1997-01-01'
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.sc170 IN ('-', '+-') AND patient.sex = 'M' AND examination.symptoms = 'vertigo'
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ssa IN ('-', '+-') AND strftime('%Y', patient.`first date`) < '1990'
SELECT patient.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ssa NOT IN ('-', '+-') ORDER BY patient.`first date` LIMIT 1
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE examination.diagnosis = 'SLE' AND laboratory.ssb IN ('-', '+-')
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.ssb IN ('-', '+-') AND examination.symptoms IS NOT NULL
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.centromea IN ('-', '+-') AND laboratory.ssb IN ('-', '+-') AND patient.sex = 'M'
SELECT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.dna >= 8
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.dna < 8 AND patient.description IS NULL
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.`dna-ii` < 8 AND patient.admission = '+'
SELECT cast(sum(CASE WHEN laboratory.got >= 60 AND patient.diagnosis = 'SLE' THEN 1 ELSE 0 END) AS REAL) * 100 / count(patient.id) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.got < 60 AND patient.sex = 'M'
SELECT patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.got >= 60 ORDER BY patient.birthday DESC LIMIT 1
SELECT patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.gpt < 60 ORDER BY laboratory.gpt DESC LIMIT 3
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.got < 60 AND patient.sex = 'M'
SELECT patient.`first date` FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ldh < 500 ORDER BY laboratory.ldh DESC LIMIT 1
SELECT laboratory.`date` FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.ldh >= 500 ORDER BY patient.`first date` DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.alp >= 300 AND patient.admission = '+'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '-' AND laboratory.alp < 300
SELECT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.tp < 6.0
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SJS' AND laboratory.tp BETWEEN 6 AND 8.5
SELECT examination.`examination date` FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.alb > 3.5 AND laboratory.alb < 5.5 ORDER BY laboratory.alb DESC LIMIT 1
SELECT count(patient.id) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.sex = 'M' AND laboratory.alb > 3.5 AND laboratory.alb < 5.5 AND laboratory.tp > 6.0 AND laboratory.tp < 8.5
SELECT examination.`acl igg` FROM laboratory INNER JOIN examination ON laboratory.id = examination.id INNER JOIN patient ON examination.id = patient.id WHERE patient.sex = 'F' AND laboratory.ua > 6.50 ORDER BY examination.`acl igg` DESC LIMIT 1
SELECT max(examination.ana) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.cre < 1.5
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.cre < 1.5 ORDER BY examination.`acl iga` DESC LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.`t-bil` > 2 AND examination.`ana pattern` LIKE '%P%'
SELECT examination.ana FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.`t-bil` < 2.0 ORDER BY examination.ana DESC LIMIT 1
SELECT count(examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE laboratory.`t-cho` > 250 AND examination.kct = '-'
SELECT count(examination.id) FROM examination INNER JOIN laboratory ON examination.id = laboratory.id WHERE examination.`ana pattern` = 'P' AND laboratory.`t-cho` < 250
SELECT count(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.tg < 200 AND examination.symptoms IS NOT NULL
SELECT patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.tg < 200 ORDER BY laboratory.tg DESC LIMIT 1
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.cpk < 250 AND examination.thrombosis = 0
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.cpk < 250 AND (examination.kct = '+' OR examination.rvvt = '+' OR examination.lac = '+')
SELECT patient.birthday FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE laboratory.glu > 180 ORDER BY patient.birthday LIMIT 1
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id WHERE laboratory.glu < 180 AND examination.thrombosis = 0
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.wbc BETWEEN 3.5 AND 9.0 AND patient.admission = '+'
SELECT count(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SLE' AND laboratory.wbc BETWEEN 3.5 AND 9
SELECT patient.id FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.rbc < 3.5 OR laboratory.rbc > 6.0 AND patient.admission = '-'
SELECT count(patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.plt BETWEEN 100 AND 400 AND examination.diagnosis IS NOT NULL
SELECT laboratory.plt, patient.diagnosis FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.diagnosis = 'MCTD' AND (laboratory.plt > 100 AND laboratory.plt < 400)
SELECT avg(laboratory.pt) FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE patient.sex = 'M' AND laboratory.pt < 14
SELECT count(laboratory.id) FROM laboratory INNER JOIN examination ON laboratory.id = examination.id WHERE laboratory.pt < 14 AND (examination.thrombosis = 2 OR examination.thrombosis = 1)
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Angela' AND member.last_name = 'Sanders'
SELECT count(*) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.college = 'College of Engineering'
SELECT member.first_name, member.last_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.department = 'Art and Design Department'
SELECT count(attendance.link_to_member) FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Women''s Soccer'
SELECT member.phone FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Women''s Soccer'
SELECT count(member.member_id) FROM member INNER JOIN attendance ON member.member_id = attendance.link_to_member INNER JOIN event ON event.event_id = attendance.link_to_event WHERE event.event_name = 'Women''s Soccer' AND member.t_shirt_size = 'Medium'
SELECT event.event_name FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id GROUP BY event.event_name ORDER BY count(event.event_name) DESC LIMIT 1
SELECT major.college FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Vice President'
SELECT event.event_name FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id INNER JOIN member ON attendance.link_to_member = member.member_id WHERE member.first_name = 'Maya' AND member.last_name = 'Mclean'
SELECT count(*) FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN event ON attendance.link_to_event = event.event_id WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison' AND strftime('%Y', event.event_date) = '2019'
SELECT count(event.event_id) FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id GROUP BY event.event_id HAVING count(event.event_id) > 10 AND event.type = 'Meeting'
SELECT event.event_name FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id GROUP BY event.event_name HAVING count(event.event_id) > 20
SELECT cast(count(event.event_id) AS REAL) / count(DISTINCT event.event_name) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event WHERE strftime('%Y', event.event_date) = '2020' AND event.type = 'Meeting'
SELECT expense_description FROM expense ORDER BY cost DESC LIMIT 1
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Environmental Engineering'
SELECT member.first_name, member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Laugh Out Loud'
SELECT member.last_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Law and Constitutional Studies'
SELECT zip_code.county FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Sherri' AND member.last_name = 'Ramsey'
SELECT major.college FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Tyler' AND member.last_name = 'Hewitt'
SELECT income.amount FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.position = 'Vice President'
SELECT sum(budget.spent) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'September Meeting' AND budget.category = 'Food' AND member.position = 'Member'
SELECT zip_code.city, zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.position = 'President'
SELECT member.first_name, member.last_name FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.state = 'Illinois'
SELECT sum(CASE WHEN budget.category = 'Advertisement' THEN budget.spent ELSE 0 END) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'September Meeting' AND member.position = 'Member'
SELECT major.department FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Pierce' AND member.last_name = 'Guidi'
SELECT sum(budget.amount) FROM event INNER JOIN budget ON event.event_id = budget.link_to_event WHERE event.event_name = 'October Speaker'
SELECT DISTINCT expense.approved FROM expense INNER JOIN attendance ON expense.link_to_member = attendance.link_to_member INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'October Meeting' AND expense.expense_date = '2019-10-08'
SELECT avg(expense.cost) FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE member.first_name = 'Elijah' AND member.last_name = 'Allen' AND strftime('%m', expense.expense_date) IN ('9', '10')
SELECT sum(CASE WHEN strftime('%Y', event.event_date) = '2019' THEN budget.spent ELSE 0 END) - sum(CASE WHEN strftime('%Y', event.event_date) = '2020' THEN budget.spent ELSE 0 END) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id
SELECT LOCATION FROM event WHERE event_name = 'Spring Budget Review'
SELECT expense.cost FROM expense INNER JOIN event ON expense.link_to_event = event.event_id WHERE event.event_date = '2019-09-04' AND expense.expense_description = 'Posters'
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT notes FROM income WHERE date_received = '2019-09-14' AND source = 'Fundraising'
SELECT count(*) FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT zip_code.county FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Adela' AND member.last_name = 'O''Gallagher'
SELECT count(*) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_name = 'November Meeting' AND budget.remaining < 0
SELECT sum(budget.amount) FROM budget INNER JOIN EVENT ON budget.link_to_event = EVENT.event_id WHERE EVENT.event_name = 'September Speaker'
SELECT budget.event_status FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id WHERE expense.expense_date = '2019-08-20' AND expense.expense_description = 'Post Cards, Posters'
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Brent' AND member.last_name = 'Thomason'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Human Development and Family Studies' AND member.t_shirt_size = 'Large'
SELECT zip_code.type FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Christof' AND member.last_name = 'Nielson'
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Vice President'
SELECT zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison'
SELECT DISTINCT major.department FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'President'
SELECT income.date_received FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Connor' AND member.last_name = 'Hilton' AND income.source = 'Dues'
SELECT member.first_name, member.last_name FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.source = 'Dues' ORDER BY income.date_received LIMIT 1
SELECT sum(CASE WHEN event.event_name = 'Yearly Kickoff' THEN 1 ELSE 0 END) - sum(CASE WHEN event.event_name = 'October Meeting' THEN 1 ELSE 0 END) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Advertisement'
SELECT cast(sum(CASE WHEN budget.category = 'Parking' THEN budget.amount ELSE 0 END) AS REAL) * 100 / sum(budget.amount) FROM budget INNER JOIN EVENT ON budget.link_to_event = EVENT.event_id WHERE EVENT.event_name = 'November Speaker'
SELECT sum(expense.cost) FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE expense.expense_description = 'Pizza'
SELECT count(city) FROM zip_code WHERE state = 'Virginia' AND county = 'Orange County'
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT zip_code.city, zip_code.county, zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Amy' AND member.last_name = 'Firth'
SELECT expense.expense_description FROM budget INNER JOIN expense ON budget.link_to_event = expense.link_to_budget ORDER BY budget.remaining LIMIT 1
SELECT member.first_name, member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'October Meeting'
SELECT major.college FROM member INNER JOIN major ON member.link_to_major = major.major_id GROUP BY major.college ORDER BY count(major.college) DESC LIMIT 1
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.phone = '809-555-3360'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id ORDER BY budget.amount DESC LIMIT 1
SELECT expense.expense_description FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.position = 'Vice President'
SELECT count(attendance.link_to_member) FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Women''s Soccer'
SELECT income.date_received FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Casey' AND member.last_name = 'Mason'
SELECT count(*) FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE zip_code.state = 'Maryland'
SELECT count(*) FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id WHERE member.phone = '954-555-6240'
SELECT member.first_name, member.last_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.department = 'School of Applied Sciences, Technology and Education'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.status = 'Closed' ORDER BY budget.spent / budget.amount DESC LIMIT 1
SELECT count(*) FROM member WHERE POSITION = 'President'
SELECT spent FROM budget ORDER BY spent DESC LIMIT 1
SELECT count(event_id) FROM event WHERE strftime('%Y', event_date) = '2020' AND TYPE = 'Meeting'
SELECT sum(spent) FROM budget WHERE category = 'Food'
SELECT member.first_name, member.last_name FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id GROUP BY member.first_name, member.last_name HAVING count(member.member_id) > 7
SELECT member.first_name, member.last_name FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN major ON member.link_to_major = major.major_id WHERE event.event_name = 'Community Theater' AND major.major_name = 'Interior Design'
SELECT member.first_name, member.last_name FROM zip_code INNER JOIN member ON zip_code.zip_code = member.zip WHERE zip_code.city = 'Georgetown' AND zip_code.state = 'South Carolina'
SELECT sum(income.amount) FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.first_name = 'Grant' AND member.last_name = 'Gilmour'
SELECT member.first_name, member.last_name FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.amount > 40
SELECT sum(expense.cost) FROM expense INNER JOIN attendance ON expense.link_to_member = attendance.link_to_member INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'Yearly Kickoff'
SELECT member.first_name, member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Yearly Kickoff'
SELECT member.first_name, member.last_name, income.source FROM income INNER JOIN member ON income.link_to_member = member.member_id ORDER BY income.amount DESC LIMIT 1
SELECT event.event_name FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id ORDER BY expense.cost ASC LIMIT 1
SELECT cast(sum(CASE WHEN event.event_name = 'Yearly Kickoff' THEN expense.cost ELSE 0 END) AS REAL) * 100 / sum(expense.cost) FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id
SELECT cast(sum(CASE WHEN major_name = 'Finance' THEN 1 ELSE 0 END) AS REAL) / sum(CASE WHEN major_name = 'Physics' THEN 1 ELSE 0 END) FROM major
SELECT income.source FROM income WHERE income.date_received LIKE '2019-09%' ORDER BY income.amount DESC LIMIT 1
SELECT first_name, last_name, email FROM member WHERE position = 'Secretary'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Physics Teaching'
SELECT count(event.event_id) FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event WHERE strftime('%Y', event.event_date) = '2019' AND event.event_name = 'Community Theater'
SELECT count(attendance.link_to_event), major.major_name FROM attendance INNER JOIN member ON attendance.link_to_member = member.member_id INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Luisa' AND member.last_name = 'Guidi'
SELECT sum(budget.spent) / count(event.event_id) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.event_status = 'Closed' AND budget.category = 'Food'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Advertisement' ORDER BY budget.spent DESC LIMIT 1
SELECT CASE WHEN count(event.event_id) > 0 THEN 'Yes' ELSE 'No' END FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer' AND member.first_name = 'Maya' AND member.last_name = 'Mclean'
SELECT cast(sum(CASE WHEN TYPE = 'Community Service' THEN 1 ELSE 0 END) AS REAL) * 100 / count(event_id) FROM event WHERE strftime('%Y', event_date) = '2019'
SELECT expense.cost FROM expense INNER JOIN attendance ON expense.link_to_member = attendance.link_to_member INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'September Speaker' AND expense.expense_description = 'Posters'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(t_shirt_size) DESC LIMIT 1
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.status = 'Closed' ORDER BY budget.remaining LIMIT 1
SELECT expense.expense_description, sum(expense.cost) FROM expense INNER JOIN attendance ON expense.link_to_member = attendance.link_to_member INNER JOIN event ON attendance.link_to_event = event.event_id WHERE event.event_name = 'October Meeting' AND expense.approved = 'true' GROUP BY expense.expense_description
SELECT DISTINCT budget.amount, budget.category FROM budget INNER JOIN EVENT ON budget.link_to_event = EVENT.event_id WHERE EVENT.event_name = 'April Speaker' ORDER BY budget.amount ASC
SELECT budget_id FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT budget_id FROM budget WHERE category = 'Advertisement' ORDER BY amount DESC LIMIT 3
SELECT sum(cost) FROM expense WHERE expense_description = 'Parking'
SELECT sum(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT member.first_name, member.last_name, sum(expense.cost) FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE expense.link_to_member = 'rec4BLdZHS2Blfp4v' GROUP BY member.first_name, member.last_name
SELECT expense.expense_description FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE member.first_name = 'Sacha' AND member.last_name = 'Harrison'
SELECT DISTINCT expense.expense_description FROM member INNER JOIN expense ON member.member_id = expense.link_to_member WHERE member.t_shirt_size = 'X-Large'
SELECT member.zip FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE expense.cost < 50
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Phillip' AND member.last_name = 'Cullen'
SELECT member.position FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Business'
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Business' AND member.t_shirt_size = 'Medium'
SELECT DISTINCT event.type FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.remaining > 30
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.location = 'MU 215'
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.event_date = '2020-03-24T12:00:00'
SELECT DISTINCT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Vice President'
SELECT cast(count(CASE WHEN member.position = 'Member' THEN 1 ELSE NULL END) AS REAL) * 100 / count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Mathematics'
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.location = 'MU 215'
SELECT count(income_id) FROM income WHERE amount = 50
SELECT count(member_id) FROM member WHERE t_shirt_size = 'X-Large' AND POSITION = 'Member'
SELECT count(*) FROM major WHERE college = 'College of Agriculture and Applied Sciences' AND department = 'School of Applied Sciences, Technology and Education'
SELECT member.last_name, major.department, major.college FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Environmental Engineering'
SELECT DISTINCT budget.category FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE event.location = 'MU 215' AND event.type = 'Guest Speaker' AND budget.spent = 0
SELECT zip_code.city, zip_code.state FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code INNER JOIN major ON member.link_to_major = major.major_id WHERE major.department = 'Electrical and Computer Engineering' AND member.position = 'Member'
SELECT event.event_name FROM attendance INNER JOIN event ON attendance.link_to_event = event.event_id INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.type = 'Social' AND member.position = 'Vice President' AND event.location = '900 E. Washington St.'
SELECT member.last_name, member.position FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE expense.expense_date = '2019-09-10' AND expense.expense_description = 'Pizza'
SELECT member.last_name FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN member ON attendance.link_to_member = member.member_id WHERE event.event_name = 'Women''s Soccer' AND member.position = 'Member'
SELECT cast(sum(CASE WHEN income.amount = 50 THEN 1 ELSE 0 END) AS REAL) * 100 / count(*) FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE member.t_shirt_size = 'Medium'
SELECT DISTINCT county FROM zip_code WHERE TYPE = 'PO Box'
SELECT zip_code FROM zip_code WHERE TYPE = 'PO Box' AND county = 'San Juan Municipio' AND state = 'Puerto Rico'
SELECT event_name FROM event WHERE status = 'Closed' AND TYPE = 'Game' AND event_date BETWEEN '2019-03-15' AND '2020-03-20'
SELECT DISTINCT attendance.link_to_event FROM expense INNER JOIN attendance ON expense.link_to_member = attendance.link_to_member WHERE expense.cost > 50
SELECT expense.link_to_member, attendance.link_to_event FROM attendance INNER JOIN expense ON attendance.link_to_member = expense.link_to_member WHERE expense.approved = 'true' AND expense.expense_date BETWEEN '2019-01-10' AND '2019-11-19'
SELECT major.college FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Katy' AND major.major_id = 'rec1N0upiVLy5esTO'
SELECT member.phone FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.college = 'College of Agriculture and Applied Sciences' AND major.major_name = 'Business'
SELECT member.email FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE expense.expense_date BETWEEN '2019-09-10' AND '2019-11-19' AND expense.cost > 20
SELECT count(member.member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Education' AND member.position = 'Member'
SELECT cast(sum(CASE WHEN budget.remaining < 0 THEN 1 ELSE 0 END) AS REAL) * 100 / count(event.event_id) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id
SELECT event_id, location, status FROM event WHERE event_date BETWEEN '2019-11-01' AND '2020-03-31'
SELECT expense_description FROM expense GROUP BY expense_description HAVING sum(cost) / count(expense_id) > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'X-Large'
SELECT cast(count(CASE WHEN TYPE = 'PO Box' THEN zip_code ELSE NULL END) AS REAL) * 100 / count(zip_code) FROM zip_code
SELECT event.event_name, event.location FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.remaining > 0
SELECT event.event_name, event.event_date FROM event INNER JOIN attendance ON event.event_id = attendance.link_to_event INNER JOIN expense ON attendance.link_to_member = expense.link_to_member WHERE expense.cost BETWEEN 50 AND 100 AND expense.expense_description = 'Pizza'
SELECT member.first_name, member.last_name, major.major_name FROM expense INNER JOIN member ON expense.link_to_member = member.member_id INNER JOIN major ON member.link_to_major = major.major_id WHERE expense.cost > 100
SELECT zip_code.city, zip_code.county FROM income INNER JOIN attendance ON income.link_to_member = attendance.link_to_member INNER JOIN event ON attendance.link_to_event = event.event_id INNER JOIN member ON income.link_to_member = member.member_id INNER JOIN zip_code ON member.zip = zip_code.zip_code GROUP BY zip_code.city, zip_code.county HAVING sum(income.amount) > 40
SELECT member.first_name, member.last_name FROM expense INNER JOIN member ON expense.link_to_member = member.member_id GROUP BY expense.expense_id HAVING count(expense.expense_id) > 1 ORDER BY sum(expense.cost) DESC LIMIT 1
SELECT avg(expense.cost) FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE member.position != 'Member'
SELECT event.event_name FROM expense INNER JOIN budget ON expense.link_to_budget = budget.budget_id INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Parking' AND expense.cost < ( SELECT avg(cost) FROM expense )
SELECT cast(sum(expense.cost) AS REAL) * 100 / count(event.event_id) FROM event INNER JOIN expense ON event.event_id = expense.link_to_budget WHERE event.type = 'Game'
SELECT expense_description FROM expense ORDER BY cost DESC LIMIT 1
SELECT member.first_name, member.last_name FROM expense INNER JOIN member ON expense.link_to_member = member.member_id ORDER BY expense.cost DESC LIMIT 5
SELECT DISTINCT member.first_name, member.last_name, member.phone FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE expense.cost > ( SELECT avg(cost) FROM expense )
SELECT cast(sum(CASE WHEN zip_code.state = 'Maine' THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.member_id) - cast(sum(CASE WHEN zip_code.state = 'Vermont' THEN 1 ELSE 0 END) AS REAL) * 100 / count(member.member_id) FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.position = 'Member'
SELECT major.major_name, major.department FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.first_name = 'Garrett' AND member.last_name = 'Gerke'
SELECT member.first_name, member.last_name, expense.cost FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE expense.expense_description = 'Water, Veggie tray, supplies'
SELECT member.last_name, member.phone FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Elementary Education'
SELECT budget.category, budget.amount FROM budget INNER JOIN EVENT ON budget.link_to_event = EVENT.event_id WHERE EVENT.event_name = 'January Speaker'
SELECT event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Food'
SELECT member.first_name, member.last_name, income.amount FROM income INNER JOIN member ON income.link_to_member = member.member_id WHERE income.date_received = '2019-09-09'
SELECT DISTINCT budget.category FROM budget INNER JOIN expense ON budget.budget_id = expense.link_to_budget WHERE expense.expense_description = 'Posters'
SELECT member.first_name, member.last_name, major.college FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Secretary'
SELECT sum(budget.spent), event.event_name FROM budget INNER JOIN event ON budget.link_to_event = event.event_id WHERE budget.category = 'Speaker Gifts'
SELECT zip_code.city FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE member.first_name = 'Garrett' AND member.last_name = 'Girke'
SELECT member.first_name, member.last_name, member.position FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.city = 'Lincolnton' AND zip_code.state = 'North Carolina' AND member.zip = 28092
SELECT count(gasstationid) FROM gasstations WHERE country = 'CZE' AND segment = 'Premium'
SELECT cast(sum(iif(currency = 'EUR', 1, 0)) AS REAL) / sum(iif(currency = 'CZK', 1, 0)) FROM customers
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'LAM' AND strftime('%Y', yearmonth.`date`) = '2012' ORDER BY yearmonth.consumption ASC LIMIT 1
SELECT sum(yearmonth.consumption) / 12 FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'SME' AND strftime('%Y', yearmonth.`date`) = '2013'
SELECT customers.customerid FROM customers INNER JOIN `yearmonth` ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'CZK' AND strftime('%Y', yearmonth.`date`) = '2011' ORDER BY yearmonth.consumption DESC LIMIT 1
SELECT count(customers.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'KAM' AND strftime('%Y', yearmonth.`date`) = '2012' AND yearmonth.consumption < 30000
SELECT sum(CASE WHEN customers.currency = 'CZK' THEN yearmonth.consumption ELSE 0 END) - sum(CASE WHEN customers.currency = 'EUR' THEN yearmonth.consumption ELSE 0 END) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency IN ('CZK', 'EUR') AND strftime('%Y', yearmonth.`date`) = '2012'
SELECT strftime('%Y', `date`) FROM transactions_1k WHERE price > 0 GROUP BY strftime('%Y', `date`) ORDER BY sum(price) DESC LIMIT 1
SELECT customers.segment FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid ORDER BY yearmonth.consumption ASC LIMIT 1
SELECT substr(date, 1, 4) FROM yearmonth GROUP BY substr(date, 1, 4) ORDER BY sum(consumption) DESC LIMIT 1
SELECT DISTINCT substr(yearmonth.date, 5, 2) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'SME' AND substr(yearmonth.date, 1, 4) = '2013' ORDER BY yearmonth.consumption DESC LIMIT 1
SELECT sum(CASE WHEN customers.segment = 'SME' THEN yearmonth.consumption ELSE 0 END) - sum(CASE WHEN customers.segment = 'LAM' THEN yearmonth.consumption ELSE 0 END) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'CZK' AND substr(yearmonth.date, 1, 4) = '2013'
SELECT customers.segment FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR' AND customers.segment IN ('SME', 'LAM', 'KAM') AND substr(yearmonth.`date`, 1, 4) BETWEEN '2012' AND '2013' ORDER BY yearmonth.consumption DESC LIMIT 1
SELECT sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.customerid = 6 AND substr(yearmonth.date, 1, 4) = '2013' AND substr(yearmonth.date, 5, 2) BETWEEN '08' AND '11'
SELECT sum(CASE WHEN country = 'CZE' THEN 1 ELSE 0 END) - sum(CASE WHEN country = 'SVK' THEN 1 ELSE 0 END) FROM gasstations WHERE segment = 'Discount'
SELECT sum(CASE WHEN customerid = 7 THEN consumption ELSE 0 END) - sum(CASE WHEN customerid = 5 THEN consumption ELSE 0 END) FROM yearmonth WHERE date LIKE '201304'
SELECT sum(iif(currency = 'CZK', 1, 0)) - sum(iif(currency = 'EUR', 1, 0)) AS diff FROM customers
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR' AND customers.segment = 'LAM' AND substr(yearmonth.date, 1, 6) = '201310' ORDER BY yearmonth.consumption DESC LIMIT 1
SELECT customers.customerid, yearmonth.consumption FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'KAM' ORDER BY yearmonth.consumption DESC LIMIT 1
SELECT sum(yearmonth.consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'KAM' AND yearmonth.date = 201305
SELECT cast(sum(CASE WHEN yearmonth.consumption > 46.73 THEN 1 ELSE 0 END) AS REAL) * 100 / count(customers.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'LAM'
SELECT country, count(gasstationid) FROM gasstations WHERE segment = 'Value for money' GROUP BY country
SELECT cast(sum(CASE WHEN currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / count(customerid) FROM customers WHERE segment = 'KAM'
SELECT cast(sum(CASE WHEN consumption > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / count(customerid) FROM yearmonth WHERE date LIKE '201202'
SELECT cast(sum(CASE WHEN segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / count(country) FROM gasstations WHERE country = 'SVK'
SELECT customerid FROM yearmonth WHERE `date` = '201309' ORDER BY consumption DESC LIMIT 1
SELECT customers.segment FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date = '201309' ORDER BY yearmonth.consumption ASC LIMIT 1
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.segment = 'SME' AND yearmonth.date = '201206' ORDER BY yearmonth.consumption ASC LIMIT 1
SELECT max(consumption) FROM yearmonth WHERE date LIKE '2012%'
SELECT sum(yearmonth.consumption) / 12 FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR'
SELECT DISTINCT products.description FROM products INNER JOIN `transactions_1k` ON products.productid = transactions_1k.productid WHERE strftime('%Y%m', transactions_1k.`date`) = '201309' LIMIT 4
SELECT DISTINCT gasstations.country FROM transactions_1k INNER JOIN gasstations ON transactions_1k.gasstationid = gasstations.gasstationid WHERE strftime('%Y%m', transactions_1k.`date`) = '201306'
SELECT DISTINCT gasstations.chainid FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE'
SELECT DISTINCT products.description FROM products INNER JOIN `transactions_1k` ON products.productid = transactions_1k.productid
SELECT avg(price) FROM transactions_1k WHERE date LIKE '2012-01%'
SELECT count(customers.customerid) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'EUR' AND yearmonth.consumption > 1000
SELECT DISTINCT products.description FROM products INNER JOIN transactions_1k ON products.productid = transactions_1k.productid INNER JOIN gasstations ON transactions_1k.gasstationid = gasstations.gasstationid WHERE gasstations.country = 'CZE'
SELECT DISTINCT transactions_1k.time FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.chainid = 11
SELECT count(transactions_1k.transactionid) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE' AND transactions_1k.price > 1000
SELECT count(transactions_1k.gasstationid) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE' AND strftime('%Y-%m-%d', transactions_1k.`date`) > '2012-01-01'
SELECT avg(transactions_1k.price) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE'
SELECT avg(price) FROM transactions_1k WHERE customerid IN ( SELECT customerid FROM customers WHERE currency = 'EUR' )
SELECT customerid FROM transactions_1k WHERE date = '2012-08-25' ORDER BY price DESC LIMIT 1
SELECT gasstations.country FROM transactions_1k INNER JOIN gasstations ON transactions_1k.gasstationid = gasstations.gasstationid WHERE transactions_1k.date = '2012-08-25' ORDER BY transactions_1k.price ASC LIMIT 1
SELECT customers.currency FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.date = '2012-08-24' AND transactions_1k.time = '16:25:00'
SELECT customers.segment FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.date = '2012-08-23' AND transactions_1k.time = '21:20:00'
SELECT count(transactions_1k.transactionid) FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE customers.currency = 'EUR' AND transactions_1k.date = '2012-08-26' AND transactions_1k.time < '13:00:00'
SELECT segment FROM customers WHERE customerid = ( SELECT min(customerid) FROM customers )
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.date = '2012-08-24' AND transactions_1k.time = '12:42:00'
SELECT productid FROM transactions_1k WHERE date = '2012-08-23' AND time = '21:20:00'
SELECT sum(yearmonth.consumption), yearmonth.date FROM `yearmonth` INNER JOIN transactions_1k ON yearmonth.customerid = transactions_1k.customerid WHERE transactions_1k.date = '2012-08-24' AND transactions_1k.price = 124.05
SELECT count(transactions_1k.transactionid) FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE gasstations.country = 'CZE' AND transactions_1k.date = '2012-08-26' AND transactions_1k.time BETWEEN '08:00:00' AND '09:00:00'
SELECT customers.currency FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE substr(yearmonth.date, 1, 6) = '201306' AND yearmonth.consumption = 214582.17
SELECT gasstations.country FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid INNER JOIN gasstations ON transactions_1k.gasstationid = gasstations.gasstationid WHERE transactions_1k.cardid = 667467
SELECT customers.currency FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid WHERE transactions_1k.date = '2012-08-24' AND transactions_1k.price = 548.4
SELECT cast(sum(iif(currency = 'EUR', 1, 0)) AS REAL) * 100 / count(customerid) FROM customers
SELECT cast((sum(CASE WHEN strftime('%Y', `date`) = '2012' THEN consumption ELSE 0 END) - sum(CASE WHEN strftime('%Y', `date`) = '2013' THEN consumption ELSE 0 END)) AS REAL) * 100 / sum(CASE WHEN strftime('%Y', `date`) = '2012' THEN consumption ELSE 0 END) FROM `yearmonth`
SELECT gasstationid FROM transactions_1k GROUP BY gasstationid ORDER BY sum(price) DESC LIMIT 1
SELECT cast(sum(CASE WHEN segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / count(segment) FROM gasstations WHERE country = 'SVK'
SELECT sum(transactions_1k.price), sum(transactions_1k.price) FROM transactions_1k INNER JOIN yearmonth ON transactions_1k.customerid = yearmonth.customerid WHERE yearmonth.date = '201201' AND transactions_1k.customerid = 38508
SELECT description FROM products ORDER BY productid DESC LIMIT 5
SELECT customers.customerid, avg(transactions_1k.price / transactions_1k.amount), customers.currency FROM customers INNER JOIN transactions_1k ON customers.customerid = transactions_1k.customerid GROUP BY customers.customerid ORDER BY sum(transactions_1k.price / transactions_1k.amount) DESC LIMIT 1
SELECT gasstations.country FROM gasstations INNER JOIN transactions_1k ON gasstations.gasstationid = transactions_1k.gasstationid WHERE transactions_1k.productid = 2 ORDER BY transactions_1k.price DESC LIMIT 1
SELECT DISTINCT CASE WHEN sum(transactions_1k.price / transactions_1k.amount) > 29 THEN 'high' ELSE 'low' END FROM transactions_1k INNER JOIN yearmonth ON transactions_1k.`date` = yearmonth.`date` WHERE transactions_1k.productid = 5
