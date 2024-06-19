SELECT MAX(`free meal count (k-12)`/`enrollment (k-12)`) AS max_free_rate FROM frpm AS F INNER JOIN schools AS S ON F.cdscode = S.cdscode WHERE S.county = 'Alameda'
SELECT `school name`, `free meal count (ages 5-17)`, `enrollment (ages 5-17)`, (`free meal count (ages 5-17)`/`enrollment (ages 5-17)`) as free_rate FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.school = 'Continuation School' ORDER BY free_rate ASC LIMIT 3
SELECT T2.zip FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.`charter school (y/n)` = 1 AND T1.`district name` = 'Fresno County Office of Education'
SELECT streetabr, mailzip FROM schools WHERE cdscode = ( SELECT cdscode FROM frpm ORDER BY `frpm count (k-12)` DESC LIMIT 1 )
SELECT T2.phone FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.`charter school (y/n)` = 1 AND T 2.opendate > '2000-01-01' AND T1.`charter funding type` = 'Direct funded'
SELECT COUNT(DISTINCT T1.cds) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T1.avgscrmath < 400 AND T2.virtual = 'F'
SELECT schools.school FROM schools INNER JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.numtsttakr > 500 AND schools.magnet = 1;
SELECT T1.phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.numge1500 = ( SELECT MAX(numge1500) FROM satscores ) LIMIT 1;
SELECT SUM(T1.numtsttakr) FROM satscores AS T1 INNER JOIN frpm AS T2 ON T1.cds = T2.cdscode ORDER BY T2.`frpm count (k-12)` DESC LIMIT 1
SELECT COUNT(DISTINCT s.cdscode) FROM satscores AS ss INNER JOIN schools AS s ON ss.cds = s.cdscode WHERE ss.avgscrmath > 560 AND s.fundingtype = 'Directly Charter Funded'
SELECT T2.`frpm count (ages 5-17)` FROM satscores AS T1 INNER JOIN frpm AS T2 ON T1.cds = T2.cdscode ORDER BY T1.avgscrread DESC LIMIT 1
SELECT cdscode FROM frpm WHERE (`enrollment (k-12)` + `enrollment (ages 5-17)`) > 500
SELECT MAX(T2.`free meal count (ages 5-17)` / T2.`enrollment (ages 5-17)`) AS max_eligible_free_rate FROM satscores AS T1 INNER JOIN frpm AS T2 ON T1.cds = T2.cdscode WHERE T1.numge1500 / T1.numtsttakr > 0.3
SELECT T2.phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T2.cdscode = T1.cds WHERE T1.numtsttakr != 0 ORDER BY (T1.numge1500 / T1.numtsttakr) DESC LIMIT 3
SELECT T1.ncesschool, T1.school FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY T2.`enrollment (ages 5-17)` DESC LIMIT 5
SELECT s.district FROM schools AS s INNER JOIN satscores AS ss ON s.cdscode = ss.cds WHERE s.statustype = 'Active' ORDER BY ss.avgscrread DESC LIMIT 1
SELECT COUNT(DISTINCT T1.school) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.county = 'Alameda' AND T1.statustype = 'Merged' AND T2.numtsttakr < 100
SELECT T2.charternum FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T1.avgscrwrite = 499 
SELECT COUNT(T1.cdscode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.county = 'Contra Costa' AND T1.fundingtype = 'Directly funded' AND T2.numtsttakr <= 250
SELECT phone FROM schools JOIN satscores ON schools.cdscode = satscores.cds ORDER BY avgscrmath DESC LIMIT 1
SELECT COUNT(*) FROM frpm WHERE `county name` = 'Amador' AND `low grade` = '9' AND `high grade` = '12'
SELECT COUNT(DISTINCT s.school) FROM frpm AS f INNER JOIN schools AS s ON f.cdscode = s.cdscode WHERE s.city = 'Los Angeles' AND f.`free meal count (k-12)` > 500 AND f.`frpm count (k-12)` < 700
SELECT T1.school FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.county = 'Contra Costa' ORDER BY T2.numtsttakr DESC LIMIT 1
SELECT T1.school, T1.street FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE ABS(T2.`enrollment (k-12)` - T2.`enrollment (ages 5-17)`) > 30
SELECT T1.school FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.cdscode = T2.cds INNER JOIN frpm AS T3 ON T1.cdscode = T3.cdscode WHERE T3.`percent (%) eligible free (k-12)` > 0.1 AND T2.numge1500 >= 1500;
SELECT T1.school, T1.fundingtype FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.county = 'Riverside' GROUP BY T1.school HAVING AVG(T2.avgscrmath) > 400
SELECT S.school, S.street, S.city, S.state, S.zip FROM schools AS S INNER JOIN frpm AS F ON S.cdscode = F.cdscode WHERE F.`frpm count (ages 5-17)` > 800 AND S.city = 'Monterey' 
SELECT s.school, s.phone, avg(ss.avgscrwrite) as average_write_score FROM satscores ss JOIN schools s ON ss.cds = s.cdscode WHERE s.opendate > '1991-12-31' OR (s.closeddate IS NOT NULL AND s.closeddate < '2000-01-01') GROUP BY s.school, s.phone;
SELECT T1.`school name`, T2.edopsname FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.`charter funding type` = 'Locally funded' AND (T1.`enrollment (k-12)` - T1.`enrollment (ages 5-17)`) > (SELECT AVG(T1.`enrollment (k-12)` - T1.`enrollment (ages 5-17)`) FROM frpm AS T1 WHERE T1.`charter funding type` = 'Locally funded')
SELECT opendate FROM schools WHERE cdscode IN ( SELECT cdscode FROM frpm WHERE `enrollment (k-12)` = ( SELECT MAX(`enrollment (k-12)`) FROM frpm ) )
SELECT city FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY T2.`enrollment (k-12)` ASC LIMIT 5
SELECT "school name", `free meal count (k-12)` / `enrollment (k-12)` as eligible_free_rate FROM frpm ORDER BY `enrollment (k-12)` DESC LIMIT 9, 2 
SELECT `school name`, (`frpm count (k-12)` / `enrollment (k-12)`) as free_or_reduced_price_meal_rate FROM frpm WHERE `cdscode` IN ( SELECT cdscode FROM schools WHERE soctype = '66' ) ORDER BY `frpm count (k-12)` DESC LIMIT 5
SELECT T1.website, T1.school FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.`free meal count (ages 5-17)` BETWEEN 1900 AND 2000
SELECT (`free meal count (ages 5-17)` / `enrollment (ages 5-17)`) as free_rate FROM schools AS S INNER JOIN frpm AS F ON S.cdscode = F.cdscode WHERE S.admfname1 = 'Kacey' AND S.admlname1 = 'Gibson'
SELECT T2.admemail1 FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.`charter school (y/n)` = 1 ORDER BY T1.`enrollment (k-12)` ASC LIMIT 1
SELECT T1.admfname1, T1.admlname1 FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.school = T2.sname ORDER BY T2.numge1500 DESC LIMIT 1 
SELECT T2.street, T2.city, T2.state, T2.zip FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode ORDER BY T1.numge1500/T1.numtsttakr ASC LIMIT 1
SELECT T2.website FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T1.numtsttakr BETWEEN 2000 AND 3000 AND T2.county = 'Los Angeles'
SELECT AVG(T1.numtsttakr) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T2.opendate BETWEEN '1980-01-01' AND '1980-12-31' AND T2.city = 'Fresno'
SELECT T2.phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T1.dname = 'Fresno Unified' ORDER BY T1.avgscrread LIMIT 1
SELECT s.school, s.avgscrread FROM satscores AS s INNER JOIN schools AS sc ON s.cds = sc.cdscode WHERE sc.virtual = 'F' ORDER BY s.avgscrread DESC LIMIT 5;
SELECT `educational option type` FROM frpm WHERE cdscode = ( SELECT cds FROM satscores ORDER BY avgscrmath DESC LIMIT 1 ) 
SELECT T1.avgscrmath, T2.county FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE (T1.avgscrmath+T1.avgscrread+T1.avgscrwrite) = ( SELECT MIN(avgscrmath+avgscrread+avgscrwrite) FROM satscores )
SELECT T1.avgscrwrite, T2.city FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T1.numge1500 = ( SELECT MAX(numge1500) FROM satscores )
SELECT T1.sname, AVG(T1.avgscrwrite) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T2.admfname1 = 'Ricci' and T2.admlname1 = 'Ulrich' GROUP BY T1.sname
SELECT school FROM schools WHERE soctype = 'State Special Schools' ORDER BY gsserved DESC LIMIT 1 
SELECT COUNT(school) / 12 as 'Monthly Average' FROM schools WHERE county = 'Alameda' AND doctype = 'Elementary School District' AND STRFTIME('%Y', opendate) = '1980'
SELECT SUM(IIF(doctype = 'Unified School District' AND statustype = 'Merged' AND county = 'Orange', 1, 0)) / SUM(IIF(doctype = 'Elementary School District' AND statustype = 'Merged' AND county = 'Orange', 1, 0)) AS ratio FROM schools
SELECT county, school, closeddate FROM schools WHERE statustype = 'Closed' GROUP BY county ORDER BY COUNT(school) DESC LIMIT 1
SELECT T2.streetabr, T2.school FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode ORDER BY T1.avgscrmath DESC LIMIT 1 OFFSET 5
SELECT T2.mailstrabr, T2.school FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode ORDER BY T1.avgscrread ASC LIMIT 1
SELECT COUNT(DISTINCT S.school) FROM satscores AS SAT INNER JOIN schools AS S ON SAT.cds = S.cdscode WHERE (SAT.avgscrread + SAT.avgscrmath + SAT.avgscrwrite) >= 1500 AND S.mailcity = 'Lakeport'
SELECT SUM(T1.numtsttakr) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T2.mailcity = 'Fresno'
SELECT school, mailzip FROM schools WHERE admfname1 = 'Avetik' AND admlname1 = 'Atoian'
SELECT CAST(COUNT(CASE WHEN county = 'Colusa' THEN 1 ELSE NULL END) AS REAL) / COUNT(CASE WHEN county = 'Humboldt' THEN 1 ELSE NULL END) FROM schools WHERE mailstate = 'California'
SELECT COUNT(s.cdscode) FROM schools s WHERE s.mailstate = 'CA' AND s.county = 'San Joaquin' AND s.statustype = 'Active'
SELECT s.phone, s.ext FROM satscores AS sat INNER JOIN schools AS s ON sat.cds = s.cdscode ORDER BY sat.avgscrwrite DESC LIMIT 1 OFFSET 332;
SELECT school, phone, ext FROM schools WHERE zip = '95203-3704'
SELECT website FROM schools WHERE (admfname1 = 'Mike' AND admlname1 = 'Larson') OR (admfname1 = 'Dante' AND admlname1 = 'Alvarez')
SELECT website FROM schools WHERE virtual = 'P' AND charter = 1 AND county = 'San Joaquin'
SELECT COUNT(school) FROM schools WHERE city = 'Hickman' AND charter = 1 AND doctype = 'Elementary School District'
SELECT COUNT(*) FROM frpm JOIN schools ON frpm.cdscode = schools.cdscode WHERE `county name` = 'Los Angeles' AND `charter school (y/n)` = 0 AND (`free meal count (k-12)` * 100 / `enrollment (k-12)`) < 0.18
SELECT school, city, admfname1, admlname1, admfname2, admlname2, admfname3, admlname3 FROM schools WHERE charter = 1 AND charternum = '00D2'
SELECT COUNT(charternum) FROM schools WHERE mailcity = 'Hickman' AND charternum = '00D4'
SELECT CAST(SUM(CASE WHEN T1.`charter funding type` = 'Locally funded' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.`charter funding type`) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.`county name` = 'Santa Clara'
SELECT COUNT(*) FROM schools WHERE opendate BETWEEN '2000-01-01' AND '2005-12-31' AND fundingtype = 'Directly Funded' AND county = 'Stanislaus'
SELECT COUNT(*) FROM schools WHERE doctype = 'Community College District' AND closeddate LIKE '1989%' AND city = 'San Francisco, CA'
SELECT county FROM schools WHERE closeddate BETWEEN '1980-01-01' AND '1989-12-31' AND soc = '11' GROUP BY county ORDER BY COUNT(*) DESC LIMIT 1 
SELECT ncesdist FROM schools WHERE soc = '31'
SELECT COUNT(DISTINCT s.school) FROM schools AS s INNER JOIN frpm AS f ON s.cdscode = f.cdscode WHERE s.county = 'Alpine' AND f.`school type` = 'District Community Day Schools' AND s.statustype IN ('Active', 'Closed')
SELECT `district code` FROM frpm WHERE cdscode IN ( SELECT cdscode FROM schools WHERE city = 'Fresno' AND magnet = 0 )
SELECT T1.`enrollment (ages 5-17)` FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.edopscode = 'SSS' AND T2.city = 'Fremont' AND T1.`academic year` = '2014-2015'
SELECT `frpm count (ages 5-17)` FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.edopsname = 'Youth Authority School' AND T2.mailstreet = 'PO Box 1040'
SELECT `low grade` FROM frpm JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.edopscode = 'SPECON' AND schools.ncesdist = '613360'
SELECT frpm.`school name`, schools.eilname FROM frpm INNER JOIN schools ON frpm.cdscode = schools.cdscode WHERE frpm.`nslp provision status` = 'Breakfast Provision 2' and frpm.`county code` = '37' 
SELECT T2.city FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.`nslp provision status` = 'Lunch Provision 2' AND T1.`low grade` = '9' AND T1.`high grade` = '12' AND T1.`county name` = 'Merced' AND T2.eilcode = 'HS'
SELECT T1.`school name`, (T1.`free meal count (ages 5-17)` / T1.`enrollment (ages 5-17)`) * 100 AS 'Percent (%) Eligible FRPM (Ages 5-17)' FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.gsserved = 'K-9' AND T1.`county name` = 'Los Angeles'
SELECT gsserved FROM schools WHERE city = 'Adelanto' GROUP BY gsserved ORDER BY COUNT(gsserved) DESC LIMIT 1
SELECT county, COUNT(*) as number_of_schools FROM schools WHERE virtual = 'F' AND county IN ('San Diego', 'Santa Barbara') GROUP BY county ORDER BY number_of_schools DESC LIMIT 1; 
SELECT schools.school, schools.latitude, frpm.`school type` FROM schools JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.latitude = ( SELECT MAX(latitude) FROM schools )
SELECT school, mailcity, gsserved AS 'Lowest Grade' FROM schools WHERE state = 'CA' AND latitude > 0 ORDER BY latitude ASC LIMIT 1
SELECT `low grade`, `high grade` FROM schools JOIN frpm ON schools.cdscode=frpm.cdscode ORDER BY longitude DESC LIMIT 1 
SELECT T1.city, COUNT(T1.cdscode) AS SchoolCount, SUM(CASE WHEN T2.`nslp provision status` = 'Multiple Provision Types' THEN 1 ELSE 0 END) AS MagnetProgramCount FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.magnet = 1 AND T1.gsserved = 'K-8' GROUP BY T1.city 
SELECT admfname1 AS Name, district, COUNT(admfname1) AS Frequency FROM schools GROUP BY admfname1 ORDER BY Frequency DESC LIMIT 2;
SELECT (frpm.`free meal count (k-12)` / frpm.`enrollment (k-12)`)*100 as 'Percent (%) Eligible Free (K-12)', frpm.`district code` FROM schools JOIN frpm ON schools.cdscode = frpm.cdscode WHERE schools.admfname1 = 'Alusine'
SELECT s.admlname3, s.district, s.county, s.school FROM schools s INNER JOIN frpm f ON s.district = f.`district name` AND s.charter = f.`charter school (y/n)` AND s.school = f.`school name` AND s.county = f.`county name` WHERE f.`charter school number` = '40' 
SELECT admemail1 FROM schools WHERE county = 'San Bernardino' AND district = 'San Bernardino City Unified' AND soctype = 'Intermediate/Middle Schools (Public)' AND opendate BETWEEN '2009-01-01' AND '2010-12-31'
SELECT T2.school, T2.admemail1 FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.cdscode ORDER BY T1.numge1500 DESC LIMIT 1
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.a3 = 'east Bohemia' AND T1.frequency = 'POPLATEK PO OBRATU'
SELECT COUNT(DISTINCT account.account_id) FROM account JOIN district ON account.district_id = district.district_id JOIN loan ON account.account_id = loan.account_id WHERE district.a3 = 'Prague'
SELECT IIF(AVG(a12) > AVG(a13), '1995', '1996') FROM district 
SELECT COUNT(a11) FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND T1.a11 > 6000 AND T1.a11 < 10000
SELECT COUNT(DISTINCT T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.a3 = 'north Bohemia' AND T2.a11 > 8000
SELECT T1.account_id, MAX(T2.a11) - MIN(T2.a11) AS Salary_Gap FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T2.district_id = T3.district_id WHERE T3.gender = 'F' GROUP BY T1.account_id ORDER BY T3.birth_date ASC, T2.a11 DESC LIMIT 1
SELECT T2.account_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN district AS T4 ON T1.district_id = T4.district_id ORDER BY T1.birth_date DESC, T4.a11 DESC LIMIT 1
SELECT COUNT(*) FROM disp AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'POPLATEK TYDNE' AND T1.type = 'OWNER'
SELECT T1.client_id, T1.gender, T1.birth_date FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T2.type = 'DISPONENT' AND T3.frequency = 'POPLATEK PO OBRATU'
SELECT T1.account_id, T2.amount FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T2.date) = '1997' AND T2.status = 'approved' AND T1.frequency = 'POPLATEK TYDNE' ORDER BY T2.amount ASC LIMIT 1
SELECT T1.account_id, T1.amount, T2.date FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND STRFTIME('%Y', T2.date) = '1993' ORDER BY T1.amount DESC LIMIT 1
SELECT COUNT(DISTINCT T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN district AS T4 ON T1.district_id = T4.district_id WHERE T1.gender = 'F' AND T1.birth_date < '1950-01-01' AND T4.a2 = 'Slokolov'
SELECT T1.account_id FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T2.date) = '1995' ORDER BY T2.date LIMIT 1
SELECT T1.account_id FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date < '1997-01-01' AND T2.balance > 3000 
SELECT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.issued = '1994-03-03'
SELECT A.date FROM account AS A INNER JOIN trans AS T ON A.account_id = T.account_id WHERE T.amount = 840 AND T.date = '1998-10-14'
SELECT T2.district_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date = '1994-08-25' 
SELECT MAX(T1.amount) FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.issued = '1996-10-21'
SELECT T1.gender FROM client AS T1 INNER JOIN account AS T2 ON T1.client_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.a11 = ( SELECT MAX(a11) FROM district ) ORDER BY T1.birth_date ASC LIMIT 1 
SELECT T4.amount FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id INNER JOIN account AS T3 ON T1.client_id = T3.account_id INNER JOIN trans AS T4 ON T1.client_id = T4.account_id WHERE T2.amount = ( SELECT MAX(amount) FROM loan ) ORDER BY T4.date ASC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.a2 = 'Jesenik' AND T1.gender = 'F'
SELECT T1.disp_id FROM disp AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.amount = 5100 AND STRFTIME('%Y-%m-%d', T2.date) = '1998-09-02' 
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.a2 = 'Litomerice' AND STRFTIME('%Y', T1.date) = '1996'
SELECT T2.a2 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN account AS T3 ON T2.district_id = T3.district_id INNER JOIN disp AS T4 ON T3.account_id = T4.account_id WHERE T1.gender = 'F' AND T1.birth_date = '1976-01-29' AND T4.client_id = T1.client_id
SELECT c.birth_date FROM client AS c INNER JOIN disp AS d ON c.client_id = d.client_id INNER JOIN loan AS l ON d.account_id = l.account_id WHERE l.amount = 98832 AND l.date = '1996-01-03'
SELECT T1.account_id FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T2.district_id = T3.district_id WHERE T2.a3 = 'Prague' ORDER BY T1.date LIMIT 1
SELECT CAST(SUM(IIF(gender = 'M', 1, 0)) AS REAL) * 100 / COUNT(client_id) FROM client WHERE district_id = (SELECT district_id FROM district WHERE a3 = 'south Bohemia' ORDER BY a4 DESC LIMIT 1)
SELECT (CAST((SELECT balance FROM trans WHERE account_id = (SELECT account_id FROM loan WHERE date = '1993-07-05' ORDER BY date LIMIT 1) AND date = '1998-12-27') AS REAL) - CAST((SELECT balance FROM trans WHERE account_id = (SELECT account_id FROM loan WHERE date = '1993-07-05' ORDER BY date LIMIT 1) AND date = '1993-03-22') AS REAL)) / CAST((SELECT balance FROM trans WHERE account_id = (SELECT account_id FROM loan WHERE date = '1993-07-05' ORDER BY date LIMIT 1) AND date = '1993-03-22') AS REAL) * 100 AS increase_rate FROM trans WHERE account_id = (SELECT account_id FROM loan WHERE date = '1993-07-05' ORDER BY date LIMIT 1) LIMIT 1
SELECT CAST(SUM(CASE WHEN status = 'A' THEN amount ELSE 0 END) AS REAL) * 100 / SUM(amount) FROM loan 
SELECT CAST(SUM(CASE WHEN status = 'C' THEN 1 ELSE 0 END) AS REAL) / COUNT(account_id) * 100 AS Percentage FROM loan WHERE amount < 100000 
SELECT account.account_id, district.a2 AS district_name, district.a3 AS district_region FROM account INNER JOIN district ON account.district_id = district.district_id WHERE account.frequency = 'POPLATEK PO OBRATU' AND STRFTIME('%Y', account.date) = '1993'
SELECT A.account_id, A.frequency, C.client_id FROM account AS A INNER JOIN disp AS D ON A.account_id = D.account_id INNER JOIN client AS C ON D.client_id = C.client_id INNER JOIN district AS B ON A.district_id = B.district_id WHERE B.a3 = 'east Bohemia' AND A.date BETWEEN '1995-01-01' AND '2000-12-31'
SELECT T1.account_id, T1.date FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.a2 = 'Prachatice'
SELECT DISTINCT T1.a2 AS district, T1.a3 AS region FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.loan_id = 4990
SELECT T1.account_id, T2.a2 AS district, T2.a3 AS region FROM loan AS T1 INNER JOIN account AS T3 ON T1.account_id = T3.account_id INNER JOIN district AS T2 ON T3.district_id = T2.district_id WHERE T1.amount > 300000 
SELECT T1.loan_id, T2.a3 AS district, T2.a11 AS average_salary FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.duration = 60
SELECT district.district_id, district.a3, 100 * (district.a13 - district.a12) / district.a12 AS Unemployment_Increment_Rate FROM district JOIN account ON district.district_id = account.district_id JOIN loan ON account.account_id = loan.account_id WHERE loan.status = 'D' ORDER BY Unemployment_Increment_Rate DESC;
SELECT CAST(SUM(CASE WHEN T2.a2 = 'Decin' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE STRFTIME('%Y', T1.date) = '1993' 
SELECT account_id FROM account WHERE frequency = 'POPLATEK MESICNE'
SELECT T2.a2 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' GROUP BY T2.a2 ORDER BY COUNT(*) DESC LIMIT 10
SELECT T3.a2, T1.amount FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 on T2.district_id = T3.district_id WHERE T1.date LIKE '1996-01%' AND T1.type = 'VYDAJ' ORDER BY T1.amount DESC LIMIT 10
SELECT COUNT(DISTINCT T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id LEFT JOIN disp AS T3 ON T1.account_id = T3.account_id LEFT JOIN card AS T4 ON T3.disp_id = T4.disp_id WHERE T2.a3 = 'south Bohemia' AND T4.card_id IS NULL
SELECT a3 FROM district WHERE district_id = ( SELECT district_id FROM account WHERE account_id = ( SELECT account_id FROM loan WHERE status='C' OR status='D' GROUP BY account_id ORDER BY COUNT(*) DESC LIMIT 1 ) )
SELECT AVG(T2.amount) FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M'
SELECT a2, a6 FROM district WHERE a13 = (SELECT MAX(a13) FROM district) AND a14 = 1996
SELECT COUNT(account_id) FROM account WHERE district_id = (SELECT district_id FROM district WHERE a16 = (SELECT MAX(a16) FROM district))
SELECT COUNT(DISTINCT T1.account_id) FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'VYBER KARTOU' AND T2.balance < 0 AND T1.frequency = 'POPLATEK MESICNE'
SELECT COUNT(t1.loan_id) FROM loan AS t1 INNER JOIN account AS t2 ON t1.account_id = t2.account_id WHERE t1.amount >= 250000 AND t2.frequency = 'POPLATEK MESICNE' AND t1.date BETWEEN '1995-01-01' AND '1997-12-31'
SELECT COUNT(DISTINCT loan.account_id) FROM loan JOIN account ON loan.account_id = account.account_id JOIN district ON account.district_id = district.district_id WHERE (loan.status = 'C' OR loan.status = 'D') AND district.district_id = 1
SELECT COUNT(T4.gender) FROM district AS T1 INNER JOIN client AS T4 ON T1.district_id = T4.district_id WHERE T1.a15 = (SELECT MAX(a15) FROM district WHERE a15 <> (SELECT MAX(a15) FROM district)) AND T4.gender = 'M'
SELECT COUNT(DISTINCT T1.card_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'gold' AND T2.type = 'DISPONENT'
SELECT COUNT(account_id) FROM account WHERE district_id = ( SELECT district_id FROM district WHERE a2 = 'Pisek' )
SELECT DISTINCT T4.a2 FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T4 ON T2.district_id = T4.district_id WHERE T1.amount > 10000 AND STRFTIME('%Y', T1.date) = '1997'
SELECT account_id FROM order JOIN account ON order.account_id = account.account_id JOIN district ON account.district_id = district.district_id WHERE k_symbol = 'SIPO' AND a2 = 'Pisek'
SELECT T1.account_id FROM card AS T1 GROUP BY T1.account_id HAVING COUNT(DISTINCT T1.type) = 2 
SELECT AVG(T1.amount) FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T1.operation = 'VYBER KARTOU' AND STRFTIME('%Y', T1.date) = '2021'
SELECT T2.disp_id FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T1.date) = '1998' AND T1.operation = 'VYBER KARTOU' GROUP BY T2.disp_id HAVING AVG(T1.amount) < (SELECT AVG(amount) FROM trans WHERE operation = 'VYBER KARTOU' AND STRFTIME('%Y', date) = '1998')
SELECT DISTINCT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id INNER JOIN loan AS T4 ON T2.account_id = T4.account_id WHERE T1.gender = 'F' AND T3.type = 'credit'
SELECT COUNT(DISTINCT T1.account_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id INNER JOIN district AS T4 ON T1.district_id = T4.district_id WHERE T3.gender = 'F' AND T4.a3 = 'south Bohemia'
SELECT DISTINCT T2.account_id FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN disp AS T3 ON T2.account_id = T3.account_id WHERE T1.a2 = 'Tabor' AND T3.type = 'OWNER'
SELECT DISTINCT type, a11 FROM disp INNER JOIN account ON disp.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE disp.account_id NOT IN (SELECT account_id FROM loan) AND district.a11 > 8000 AND district.a11 <= 9000
SELECT COUNT(DISTINCT T2.account_id) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.a3 = 'north Bohemia' AND T3.bank = 'AB'
SELECT DISTINCT T1.a2 FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T3.type = 'VYDAJ'
SELECT A3, AVG(A15) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE A15 > 4000 AND DATE(T2.date) > = '1997-01-01' GROUP BY A3 HAVING AVG(A15) > 4000
SELECT COUNT(T1.card_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T1.type = 'classic' AND T2.type = 'OWNER'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.a2 = 'Hl.m. Praha'
SELECT CAST(SUM(CASE WHEN type = 'gold' AND STRFTIME('%Y', issued) < '1998' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM card;
SELECT T3.client_id FROM loan AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T2.type = 'OWNER' ORDER BY T1.amount DESC LIMIT 1
SELECT a15 FROM district WHERE district_id = ( SELECT district_id FROM account WHERE account_id = 532 )
SELECT T2.district_id FROM order AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.order_id = 33333
SELECT T1.amount, T1.date FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 3356 AND T1.operation = 'VYBER'
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK TYDNE' AND T2.amount < 200000
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 13539
SELECT T2.a3 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 3541 
SELECT T.a2 FROM ( SELECT T2.a2, COUNT(T1.account_id) AS num FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.status = 'A' GROUP BY T2.a2 ) AS T ORDER BY T.num DESC LIMIT 1 
SELECT T1.client_id FROM disp AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 32423
SELECT * FROM trans WHERE account_id IN ( SELECT account_id FROM account WHERE district_id = 5 ) 
SELECT COUNT(account_id) FROM account WHERE district_id = ( SELECT district_id FROM district WHERE a2 = 'Jesenik' )
SELECT DISTINCT T2.client_id FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.issued >= '1997-01-01' AND T1.type = 'junior' 
SELECT CAST(SUM(IIF(T1.gender = 'F', 1, 0)) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN account AS T2 ON T1.client_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.a11 > 10000 
SELECT ( CAST(( SELECT SUM(T2.amount) FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M' AND strftime('%Y', T2.date) = '1997' ) - ( SELECT SUM(T2.amount) FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M' AND strftime('%Y', T2.date) = '1996' ) AS REAL) / ( SELECT SUM(T2.amount) FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M' AND strftime('%Y', T2.date) = '1996' ) ) * 100 AS "Growth Rate" FROM client
SELECT COUNT(operation) FROM trans WHERE operation = 'VYBER KARTOU' AND strftime('%Y', date) > '1995'
SELECT (SUM(CASE WHEN district.a3 = 'north Bohemia' THEN district.a16 ELSE 0 END) - SUM(CASE WHEN district.a3 = 'east Bohemia' THEN district.a16 ELSE 0 END)) AS CrimeDifference FROM district
SELECT type, COUNT(disp_id) FROM disp WHERE account_id BETWEEN 1 AND 10 GROUP BY type
SELECT T1.frequency, T2.k_symbol FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.account_id = 3 AND T2.amount = 3539
SELECT T1.birth_date FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 130 AND T2.type = 'OWNER'
SELECT COUNT(DISTINCT T1.account_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK PO OBRATU' AND T2.type = 'OWNER'
SELECT T1.amount, T1.payments FROM loan AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 992
SELECT T1.gender, T4.balance FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN trans AS T4 ON T3.account_id = T4.account_id WHERE T1.client_id = 4 AND T4.trans_id = 851 
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9 
SELECT SUM(T1.amount) FROM trans AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.client_id = 617 AND STRFTIME('%Y', T1.date) = '1998'
SELECT client.client_id, client.birth_date FROM client INNER JOIN disp ON disp.client_id = client.client_id INNER JOIN account ON disp.account_id = account.account_id INNER JOIN district ON account.district_id = district.district_id WHERE client.birth_date BETWEEN '1983-01-01' AND '1987-12-31' AND district.a3 = 'east Bohemia'; 
SELECT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = 'F' ORDER BY T3.amount DESC LIMIT 3; 
SELECT COUNT(DISTINCT(D.client_id)) FROM disp AS D JOIN client AS C ON D.client_id = C.client_id JOIN trans AS T ON D.account_id = T.account_id WHERE C.gender = 'M' AND C.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND T.k_symbol = 'SIPO' AND T.amount > 4000
SELECT COUNT(*) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.a2 = 'Beroun' AND STRFTIME('%Y', T1.date) > '1996'
SELECT COUNT(DISTINCT T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T1.gender = 'F' AND T3.type = 'junior'
SELECT CAST(COUNT(CASE WHEN T1.gender = 'F' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN account AS T2 ON T1.client_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.a3 = 'Prague'
SELECT CAST(SUM(CASE WHEN c.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(c.client_id) FROM client AS c INNER JOIN disp AS d ON c.client_id = d.client_id INNER JOIN account AS a ON d.account_id = a.account_id WHERE a.frequency = 'POPLATEK TYDNE'
SELECT COUNT(DISTINCT client.client_id) FROM client JOIN disp ON client.client_id = disp.client_id JOIN account ON disp.account_id = account.account_id WHERE disp.type = 'USER' AND account.frequency = 'POPLATEK TYDNE'
SELECT T1.account_id FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 AND T1.date < '1997-01-01' ORDER BY T2.amount ASC LIMIT 1
SELECT T4.account AS 'account_number' FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN trans AS T4 ON T3.account_id = T4.account_id INNER JOIN district AS T5 ON T1.district_id = T5.district_id WHERE T1.gender = 'F' GROUP BY T1.client_id ORDER BY T1.birth_date DESC, T5.a11 ASC LIMIT 1;
SELECT COUNT(DISTINCT T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE strftime('%Y', T1.birth_date) = '1920' AND T2.a3 = 'east Bohemia'
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration = 24 AND T2.frequency = 'POPLATEK TYDNE' 
SELECT AVG(T1.amount) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE (T1.status = 'C' OR T1.status = 'D') AND T2.frequency = 'POPLATEK PO OBRATU'
SELECT T1.client_id, T1.district_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'OWNER'
SELECT T1.client_id, (CURRENT_DATE - T1.birth_date) AS age FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id INNER JOIN loan AS T4 ON T2.account_id = T4.account_id WHERE T3.type = 'gold' AND T4.status IN ('A', 'B') 
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY COUNT(bond_type) DESC LIMIT 1
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' AND T2.element = 'cl'
SELECT AVG(CASE WHEN atom.element = 'o' THEN 1 ELSE 0 END) AS avg_oxygen_atoms FROM atom INNER JOIN connected ON atom.atom_id = connected.atom_id OR atom.atom_id = connected.atom_id2 INNER JOIN bond ON connected.bond_id = bond.bond_id WHERE bond.bond_type = '-'
SELECT CAST(SUM(CASE WHEN T2.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' 
SELECT COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'na' AND T2.label = '-'
SELECT molecule_id FROM molecule WHERE label = '+' AND molecule_id IN ( SELECT molecule_id FROM bond WHERE bond_type = '#' )
SELECT CAST(SUM(CASE WHEN T1.element = 'C' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = 'double'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '#'
SELECT COUNT(atom_id) FROM atom WHERE element != 'br'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+' AND molecule_id BETWEEN 'TR000' AND 'TR099'
SELECT molecule_id FROM atom WHERE element = 'si'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR004_8_9'
SELECT DISTINCT T2.element FROM bond AS T1 INNER JOIN connected AS T3 ON T1.bond_id = T3.bond_id INNER JOIN atom AS T2 ON T3.atom_id = T2.atom_id WHERE T1.bond_type = '='
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'h' GROUP BY T2.label ORDER BY COUNT(T2.label) DESC LIMIT 1
SELECT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T3.element = 'Te'
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '-'
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.label = '-'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' GROUP BY T1.element ORDER BY COUNT(T1.element) ASC LIMIT 1
SELECT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id=T2.bond_id WHERE (T2.atom_id ='TR004_8' AND T2.atom_id2 = 'TR004_20') OR (T2.atom_id ='TR004_20' AND T2.atom_id2 = 'TR004_8')
SELECT label FROM molecule WHERE molecule_id NOT IN ( SELECT molecule_id FROM atom WHERE element = 'sn')
SELECT COUNT(A.atom_id) FROM atom AS A INNER JOIN connected AS C ON A.atom_id = C.atom_id INNER JOIN bond AS B ON C.bond_id = B.bond_id WHERE (A.element = 'i' OR A.element = 's') AND B.bond_type = '-'
SELECT T2.atom_id, T2.atom_id2 FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = '#'
SELECT DISTINCT A1.atom_id FROM atom AS A1 INNER JOIN connected AS C ON A1.atom_id = C.atom_id INNER JOIN atom AS A2 ON C.atom_id2 = A2.atom_id INNER JOIN molecule AS M ON A2.molecule_id = M.molecule_id WHERE M.molecule_id = 'TR181'
SELECT CAST(SUM(CASE WHEN T2.element != 'f' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT CAST(SUM(CASE WHEN T1.bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.bond_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+'
SELECT element FROM atom WHERE molecule_id = 'TR000' ORDER BY element ASC LIMIT 3
SELECT T2.atom_id, T2.atom_id2 FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.molecule_id = 'TR001' AND T1.bond_id = 'TR001_2_6'
SELECT SUM(CASE WHEN label = '+' THEN 1 ELSE 0 END) - SUM(CASE WHEN label = '-' THEN 1 ELSE 0 END) AS diff FROM molecule
SELECT atom_id, atom_id2 FROM connected WHERE bond_id = 'TR_000_2_5'
SELECT bond_id FROM connected WHERE atom_id2 = 'TR000_2'
SELECT m.label FROM molecule AS m INNER JOIN atom AS a ON m.molecule_id = a.molecule_id INNER JOIN connected AS c ON a.atom_id = c.atom_id INNER JOIN bond AS b ON c.bond_id = b.bond_id WHERE b.bond_type = ' = ' GROUP BY m.molecule_id ORDER BY m.label ASC LIMIT 5
SELECT CAST(SUM(CASE WHEN T1.bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.bond_id) FROM bond AS T1 WHERE T1.molecule_id = 'TR008'
SELECT CAST(SUM(CASE WHEN label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(molecule_id) FROM molecule
SELECT CAST(SUM(CASE WHEN atom.element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(atom.atom_id) FROM atom WHERE atom.molecule_id = 'TR206'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR000'
SELECT m.label, a.element FROM molecule AS m INNER JOIN atom AS a ON m.molecule_id = a.molecule_id WHERE m.molecule_id = 'TR060'
SELECT T2.bond_type, T1.label AS Carcinogenic FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR018' GROUP BY T2.bond_type ORDER BY COUNT(T2.bond_type) DESC LIMIT 1 
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id INNER JOIN atom AS T4 ON T3.atom_id = T4.atom_id INNER JOIN atom AS T5 ON T3.atom_id2 = T5.atom_id WHERE T1.label != 'carcinogenic' AND T2.bond_type = 'single' GROUP BY T1.label HAVING COUNT(T2.bond_type) > 1 ORDER BY T1.label ASC LIMIT 3
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR006' ORDER BY T1.bond_id ASC LIMIT 2
SELECT COUNT(bond_id) FROM connected WHERE (bond_id LIKE 'TR009_%') AND (atom_id = 'TR009_12' OR atom_id2 = 'TR009_12')
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T2.element = 'br'
SELECT T1.bond_type, T2.atom_id, T2.atom_id2 FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_id = 'TR001_6_9'
SELECT T1.molecule_id, CASE WHEN T1.label = '+' THEN 'Yes' ELSE 'No' END AS is_carcinogenic FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_10';
SELECT COUNT(DISTINCT molecule.molecule_id) FROM molecule INNER JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = '#'
SELECT COUNT(bond_id) FROM connected WHERE atom_id LIKE 'TR%_19' OR atom_id2 LIKE 'TR%_19'
SELECT element FROM atom WHERE molecule_id = 'TR004'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '-'
SELECT molecule_id FROM molecule WHERE label = '+' AND molecule_id IN (SELECT molecule_id FROM atom WHERE SUBSTRING(atom_id, 7, 2) >= 21 AND SUBSTRING(atom_id, 7, 2) <= 25)
SELECT T1.bond_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T3.element IN ('P', 'N') GROUP BY T1.bond_id HAVING COUNT(DISTINCT T3.element) = 2
SELECT CASE WHEN T1.label = '+' THEN 'Yes' ELSE 'No' END AS Is_Carcinogenic FROM molecule AS T1 INNER JOIN ( SELECT molecule_id FROM bond WHERE bond_type = ' = ' GROUP BY molecule_id ORDER BY COUNT(*) DESC LIMIT 1 ) AS T2 ON T1.molecule_id = T2.molecule_id
SELECT CAST(COUNT(T2.bond_id) AS REAL) / COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'I'
SELECT T1.bond_type, T1.bond_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE SUBSTR(T2.atom_id, 7, 2) + 0 = 45 OR SUBSTR(T2.atom_id2, 7, 2) + 0 = 45
SELECT element FROM atom WHERE atom_id NOT IN ( SELECT atom_id FROM connected )
SELECT T3.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id OR T2.atom_id2 = T3.atom_id WHERE T1.molecule_id = 'TR447' AND T1.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR144_8_19'
SELECT T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' and T1.bond_type = ' = ' GROUP BY T2.label ORDER BY COUNT(T1.bond_type) DESC LIMIT 1
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM molecule WHERE label = '+') GROUP BY element ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.atom_id2 FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'pb'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '#'
SELECT CAST(COUNT(T2.bond_id) AS FLOAT) * 100 / (SELECT COUNT(*) FROM bond) AS "percentage" FROM bond AS T1 INNER JOIN connected AS T2 ON T2.bond_id = T1.bond_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id GROUP BY T3.element ORDER BY COUNT(T2.bond_id) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.label = '+' THEN 1 ELSE 0 END) AS REAL) / COUNT(T2.bond_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '-'
SELECT COUNT(atom_id) FROM atom WHERE element IN ('c', 'h')
SELECT T2.atom_id2 FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 's'
SELECT DISTINCT T2.bond_type FROM atom AS T1 INNER JOIN connected AS T3 ON T1.atom_id = T3.atom_id INNER JOIN bond AS T2 ON T3.bond_id = T2.bond_id WHERE T1.element = 'sn'
SELECT COUNT(DISTINCT T1.element) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '-'
SELECT COUNT(DISTINCT atom.atom_id) FROM atom JOIN connected ON atom.atom_id = connected.atom_id OR atom.atom_id = connected.atom_id2 JOIN bond ON connected.bond_id = bond.bond_id WHERE bond.bond_type = '#' AND (atom.element = 'p' OR atom.element = 'br')
SELECT T2.bond_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT DISTINCT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-' AND T2.label = '-'
SELECT CAST(SUM(CASE WHEN A.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(A.atom_id) AS "percentage" FROM atom A INNER JOIN connected C ON A.atom_id = C.atom_id INNER JOIN bond B ON C.bond_id = B.bond_id WHERE B.bond_type = '-';
SELECT molecule_id, label FROM molecule WHERE molecule_id IN ('TR000', 'TR001', 'TR002'); 
SELECT molecule_id FROM molecule WHERE label = '-'
SELECT COUNT(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR030' AND label = '+'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id BETWEEN 'TR000' AND 'TR050'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_10_11'
SELECT COUNT(DISTINCT b.bond_id) FROM bond b JOIN connected c ON b.bond_id = c.bond_id JOIN atom a ON c.atom_id = a.atom_id WHERE a.element = 'iodine'
SELECT CASE WHEN COUNT(CASE WHEN T1.label = '+' THEN 1 ELSE NULL END) > COUNT(CASE WHEN T1.label = '-' THEN 1 ELSE NULL END) THEN 'Carcinogenic' ELSE 'Non-Carcinogenic' END AS 'Is_Carcinogenic' FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Ca'
SELECT CASE WHEN COUNT(DISTINCT element) = 2 THEN 'yes' ELSE 'no' END AS yn FROM atom WHERE (element = 'c' OR element = 'cl') AND atom_id IN (SELECT atom_id FROM connected WHERE bond_id = 'TR001_1_8')
SELECT DISTINCT T1.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T2.element = 'C' AND T3.bond_type = '#' AND T1.label = '-' LIMIT 2
SELECT CAST(SUM(CASE WHEN T2.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT T2.element FROM atom AS T2 INNER JOIN molecule AS T1 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = ' = '
SELECT T1.atom_id, T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR005_16_26'
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '-' AND T1.label = '-'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT T1.bond_id, T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = '#'
SELECT T1.element AS Toxicology_Element, COUNT(*) AS Tally FROM molecule AS T2 INNER JOIN atom AS T1 ON T2.molecule_id = T1.molecule_id WHERE T2.label = '+' AND substr(T1.atom_id, 7, 1) = '4' AND T1.element IN ('cl', 'c', 'h', 'o', 's', 'n', 'p', 'na', 'br', 'f', 'i', 'sn', 'pb', 'te', 'ca') GROUP BY T1.element ORDER BY COUNT(*) DESC
SELECT CAST(SUM(CASE WHEN T1.element = 'h' THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.element), T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR006'
SELECT m.label as Molecule_Label FROM molecule AS m INNER JOIN atom AS a ON m.molecule_id = a.molecule_id INNER JOIN bond AS b ON a.molecule_id = b.molecule_id WHERE a.element = 'ca'
SELECT DISTINCT T2.bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'Te'
SELECT atom.element FROM connected INNER JOIN atom ON connected.atom_id = atom.atom_id OR connected.atom_id2 = atom.atom_id WHERE connected.bond_id = 'TR001_10_11'
SELECT CAST(SUM(CASE WHEN T1.bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.label) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id
SELECT CAST(SUM(CASE WHEN bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(bond_id) FROM bond WHERE molecule_id = 'TR047'
SELECT CASE WHEN T1.label = '+' THEN 'Yes' ELSE 'No' END AS result FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_1'
SELECT CASE WHEN label = '+' THEN 'YES' ELSE 'NO' END FROM molecule WHERE molecule_id = 'TR151'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR151' AND T1.element IN ('cl', 'br', 'f', 'i', 'sn', 'pb', 'te')
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+'
SELECT atom_id FROM atom WHERE element = 'c' AND substr(molecule_id, 3, 3) BETWEEN 10 AND 50
SELECT COUNT(atom_id) FROM atom WHERE molecule_id IN ( SELECT molecule_id FROM molecule WHERE label = '+' )
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.bond_type = '='
SELECT COUNT(DISTINCT T2.atom_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'H' AND T1.label = '+'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.bond_id = 'TR00_1_2' AND T3.atom_id = 'TR00_1'
SELECT atom_id FROM atom WHERE element = 'C' AND molecule_id NOT IN ( SELECT molecule_id FROM molecule WHERE label = '-' )
SELECT CAST(SUM(CASE WHEN M.label = '+' AND A.element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(DISTINCT M.molecule_id) FROM molecule AS M INNER JOIN atom AS A ON M.molecule_id = A.molecule_id
SELECT CASE WHEN label = '+' THEN 'YES' ELSE 'NO' END FROM molecule WHERE molecule_id = 'TR124'
SELECT T2.atom_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR186' 
SELECT bond_type FROM bond WHERE bond_id = 'TR007_4_19' 
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_2_4'
SELECT COUNT(T1.bond_id), T2.label FROM bond AS T1 LEFT JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = ' = ' AND T2.molecule_id = 'TR006'
SELECT T1.label AS 'Molecular Label', T2.element AS 'Element' FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT T1.bond_id, T1.molecule_id, T3.atom_id, T3.element, T4.atom_id AS connected_atom_id, T4.element AS connected_element FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id INNER JOIN atom AS T4 ON T2.atom_id2 = T4.atom_id WHERE T1.bond_type = '-'
SELECT T3.label, T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id OR T1.atom_id = T2.atom_id2 INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id INNER JOIN bond AS T4 ON T2.bond_id = T4.bond_id WHERE T4.bond_type = '#' GROUP BY T3.molecule_id
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR000_2_3'
SELECT COUNT(bond_id) FROM bond WHERE bond_id IN ( SELECT bond_id FROM connected WHERE atom_id IN ( SELECT atom_id FROM atom WHERE element = 'cl' ) )
SELECT atom.atom_id, COUNT(DISTINCT bond.bond_type) FROM atom INNER JOIN bond ON atom.molecule_id=bond.molecule_id WHERE atom.molecule_id='TR346' GROUP BY atom.atom_id
SELECT COUNT(DISTINCT T1.molecule_id), COUNT(DISTINCT T2.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '=' AND T2.label = '+'
SELECT COUNT(DISTINCT m.molecule_id) FROM molecule m LEFT JOIN atom a ON m.molecule_id = a.molecule_id LEFT JOIN connected c ON a.atom_id = c.atom_id LEFT JOIN bond b ON c.bond_id = b.bond_id WHERE NOT EXISTS ( SELECT 1 FROM atom a2 WHERE a2.molecule_id = m.molecule_id AND a2.element = 's' ) AND NOT EXISTS ( SELECT 1 FROM connected c2 INNER JOIN bond b2 ON c2.bond_id = b2.bond_id WHERE c2.atom_id = a.atom_id AND b2.bond_type = ' = ' )
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_2_4' AND T1.label = '+'
SELECT COUNT(atom_id) FROM atom WHERE molecule_id = 'TR005'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '-'
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'cl' AND T1.label = '+'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'C' AND T1.label = '-'
SELECT CAST(SUM(CASE WHEN T1.label = '+' AND T2.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT COUNT(DISTINCT T2.element) FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.bond_id = 'TR001_3_4'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 'TR000_1' AND T2.atom_id2 = 'TR000_2'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 'TR000_2' AND T2.atom_id2 = 'TR000_4'
SELECT element FROM atom WHERE atom_id = 'TR000_1'
SELECT CASE WHEN label = '+' THEN 'Yes' ELSE 'No' END FROM molecule WHERE molecule_id = 'TR000'
SELECT CAST(SUM(CASE WHEN bond.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(connected.bond_id) FROM connected INNER JOIN bond ON bond.bond_id = connected.bond_id 
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T2.element = 'n'
SELECT T4.label FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id INNER JOIN molecule AS T4 ON T1.molecule_id = T4.molecule_id WHERE T1.element = 's' AND T3.bond_type = ' = '
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' GROUP BY T1.molecule_id HAVING COUNT(T2.atom_id) > 5
SELECT DISTINCT T2.element FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T3.bond_id = T1.bond_id and (T3.atom_id = T2.atom_id or T3.atom_id2 = T2.atom_id) WHERE T1.bond_type = '=' AND T1.molecule_id = 'TR024'
SELECT molecule.label FROM molecule INNER JOIN atom ON molecule.molecule_id = atom.molecule_id WHERE molecule.label = '+' GROUP BY molecule.molecule_id ORDER BY COUNT(atom.atom_id) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.atom_id = T3.atom_id INNER JOIN bond AS T4 ON T3.bond_id = T4.bond_id WHERE T2.element = 'h' AND T4.bond_type = '#'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+'
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '-' AND T1.molecule_id BETWEEN 'TR004' AND 'TR010'
SELECT COUNT(atom_id) FROM atom WHERE element = 'c' AND molecule_id = 'TR008'
SELECT T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR004_7' AND T1.label = '-'
SELECT COUNT(DISTINCT m.molecule_id) FROM molecule m JOIN atom a ON m.molecule_id = a.molecule_id JOIN connected c ON a.atom_id = c.atom_id OR a.atom_id = c.atom_id2 JOIN bond b ON c.bond_id = b.bond_id WHERE a.element = 'O' AND b.bond_type = '='
SELECT COUNT(DISTINCT T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '#' AND T1.label = '-'
SELECT a.element, b.bond_type FROM atom AS a JOIN connected AS c ON a.atom_id = c.atom_id JOIN bond AS b ON c.bond_id = b.bond_id WHERE a.molecule_id = 'TR016'
SELECT T3.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.bond_type = 'double' AND T3.element = 'carbon' AND T3.molecule_id = 'TR012'
SELECT T2.atom_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T2.element = 'o'
SELECT name FROM cards WHERE cardkingdomfoilid = cardkingdomid AND cardkingdomid IS NOT NULL
SELECT cards.name FROM cards WHERE cards.bordercolor = 'borderless' AND cards.cardkingdomfoilid IS NULL AND cards.cardkingdomid IS NOT NULL
SELECT name FROM cards WHERE faceconvertedmanacost = ( SELECT MAX(faceconvertedmanacost) FROM cards ) 
SELECT name FROM cards WHERE frameversion = '2015' AND edhrecrank < 100
SELECT T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'mythic' AND T2.status = 'Banned' AND T2.format = 'gladiator'
SELECT T1.name, T4.status FROM cards AS T1 INNER JOIN legalities AS T4 ON T1.uuid = T4.uuid WHERE T1.types = 'Artifact' AND T1.side IS NULL AND T4.format = 'vintage'
SELECT T2.id, T2.artist FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE (T2.power = '*' OR T2.power IS NULL) AND T1.format = 'commander' AND T1.status = 'Legal'
SELECT T1.text, T1.hascontentwarning, T2.text AS ruling_text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Stephen Daniele'
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Sublime Epiphany' AND T2.number = '74s'
SELECT T2.name, T2.artist, T2.ispromo FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid GROUP BY T1.uuid ORDER BY COUNT(T1.uuid) DESC LIMIT 1
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Annul' AND T1.number = '29'
SELECT T2.name FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN T1.language = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid
SELECT T2.name, T2.totalSetSize FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T1.language = 'Italian'
SELECT COUNT(DISTINCT types) FROM cards WHERE artist = 'Aaron Boyd'
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT COUNT(id) FROM cards WHERE power = '*'
SELECT promotypes FROM cards WHERE name = 'Duress' 
SELECT bordercolor FROM cards WHERE name = 'Ancestor\'s Chosen' 
SELECT originaltype FROM cards WHERE name = 'Ancestor's Chosen' 
SELECT T4.language FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code INNER JOIN set_translations AS T4 ON T2.code = T4.setcode WHERE T1.name = 'Angel of Mercy' GROUP BY T4.language
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'restricted' AND T1.istextless = 0
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Condemn'
SELECT COUNT(cards.uuid) FROM cards INNER JOIN legalities ON cards.uuid = legalities.uuid WHERE legalities.status = 'Restricted' AND cards.isstarter = 1 
SELECT T2.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Cloudchaser Eagle' 
SELECT type FROM cards WHERE name = 'Benalish Knight'
SELECT T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Benalish Knight'
SELECT DISTINCT T1.artist FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'Phyrexian'
SELECT CAST(SUM(CASE WHEN bordercolor = 'borderless' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT COUNT(DISTINCT T1.uuid) FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = 'German' AND T2.isreprint = 1
SELECT COUNT(DISTINCT T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.bordercolor = 'borderless' AND T2.language = 'Russian'
SELECT CAST(SUM(CASE WHEN f.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM foreign_data AS f INNER JOIN cards AS c ON f.uuid = c.uuid WHERE c.isstoryspotlight = 1
SELECT COUNT(id) FROM cards WHERE toughness = '99'
SELECT name FROM cards WHERE artist = 'Aaron Boyd'
SELECT COUNT(*) FROM cards WHERE bordercolor = 'black' AND availability = 'mtgo'
SELECT id FROM cards WHERE convertedmanacost = 0
SELECT layout FROM cards WHERE keywords LIKE '%Flying%'
SELECT COUNT(*) FROM cards WHERE originaltype = 'Summon - Angel' AND subtypes != 'Angel'
SELECT id FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL 
SELECT id FROM cards WHERE dueldeck = 'a'
SELECT edhrecrank FROM cards WHERE frameversion = '2015'
SELECT cards.artist FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Chinese Simplified'
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.availability = 'paper' AND T2.language = 'Japanese'
SELECT COUNT(T1.uuid) FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.bordercolor = 'white' AND T1.status = 'Banned'
SELECT T1.uuid, T2.language FROM legalities AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'legacy'
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Beacon of Immortality'
SELECT COUNT(T2.uuid) AS Cards, T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameversion = 'future' AND T1.status = 'legal' 
SELECT cards.name, cards.colors FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE sets.code = 'OGW'
SELECT T1.name as CardName, T3.translation as Translation, T3.language as Language FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code LEFT JOIN set_translations T3 ON T3.setcode = T2.code WHERE T1.convertedmanacost = 5 AND T2.code = '10E'
SELECT T1.name, T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originaltype = 'Creature - Elf'
SELECT T1.colors, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.id BETWEEN 1 AND 20 
SELECT cards.name, foreign_data.language FROM cards JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.originaltype = 'Artifact' AND cards.colors = 'B'
SELECT T2.name FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.rarity = 'uncommon' ORDER BY T1.date ASC LIMIT 3; 
SELECT COUNT(*) FROM cards WHERE artist ='John Avon' AND cardkingdomid IS NOT NULL AND cardkingdomfoilid IS NOT NULL AND power IS NULL
SELECT COUNT(id) FROM cards WHERE bordercolor = 'white' AND cardkingdomfoilid = cardKingdomId AND cardKingdomId IS NOT NULL
SELECT COUNT(id) FROM cards WHERE artist LIKE 'UDON' AND availability LIKE 'mtgo' AND hand = -1
SELECT COUNT(id) FROM cards WHERE frameversion = '1993' AND availability = 'paper' AND hascontentwarning = 1
SELECT name, manacost FROM cards WHERE layout = 'normal' AND frameversion = '2003' AND bordercolor = 'black' AND (availability = 'paper' OR availability = 'mtgo') 
SELECT SUM(convertedmanacost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT subtypes, supertypes FROM cards WHERE availability = 'arena'
SELECT setcode FROM set_translations WHERE language = 'Spanish'
SELECT CAST(COUNT(*) AS REAL) / (SELECT COUNT(*) FROM cards WHERE frameeffects = 'legendary') * 100 AS percentage FROM cards WHERE hand = '+3' AND frameeffects = 'legendary' 
SELECT CAST(SUM(CASE WHEN istextless = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(istextless) AS "Percentage", id FROM cards WHERE isstoryspotlight = 1 GROUP BY id 
SELECT CAST(SUM(CASE WHEN T1.language = 'Spanish' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*), T1.name FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid GROUP BY T1.name
SELECT DISTINCT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.basesetsize = 309 
SELECT COUNT(DISTINCT T1.setcode) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T1.language = 'Portuguese (Brasil)' AND T2.block = 'Commander'
SELECT T2.id FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = 'Legal' AND T2.types = 'Creature'
SELECT DISTINCT T1.subtypes, T1.supertypes FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'German' AND T1.subtypes IS NOT NULL AND T1.supertypes IS NOT NULL
SELECT COUNT(*) FROM cards WHERE (power IS NULL OR power = '*') AND id IN (SELECT id FROM rulings WHERE text LIKE '%triggered ability%')
SELECT COUNT(T1.uuid) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid INNER JOIN legalities AS T3 ON T1.uuid = T3.uuid WHERE T2.text = 'This is a triggered mana ability' AND T3.format = 'pre-modern' AND T1.side IS NULL
SELECT id FROM cards WHERE artist = 'Erica Yang' AND availability = 'paper' AND uuid IN ( SELECT uuid FROM legalities WHERE format = 'pauper' )
SELECT artist FROM cards WHERE uuid IN (SELECT uuid FROM foreign_data WHERE text = 'Das perfekte Gegenmittel zu einer dichten Formation')
SELECT T2.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.bordercolor = 'black' AND T1.artist = 'Matthew D. Wilson' AND T1.layout = 'normal' and T1.type = 'Creature' AND T2.language = 'French'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'rare' AND T2.date = '2009-01-10'
SELECT T1.language FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.basesetsize = 180 AND T2.block = 'Ravnica'
SELECT CAST((SELECT COUNT(*) FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'commander' AND T1.status = 'Legal' AND T2.hascontentwarning = 0) AS REAL) * 100 / (SELECT COUNT(*) FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'commander' AND T1.status = 'Legal') AS Percentage
SELECT CAST(SUM(CASE WHEN T1.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.power IS NULL OR T2.power = '*'
SELECT CAST(SUM(CASE WHEN T1.language = 'Japanese' AND T2.type = 'expansion' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.language) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code
SELECT availability FROM cards WHERE artist = 'Daren Bader'
SELECT COUNT(id) FROM cards WHERE bordercolor = 'borderless' AND edhrecrank > 12000 
SELECT COUNT(id) FROM cards WHERE isOversized = 1 AND isReprint = 1 AND isPromo = 1
SELECT name FROM cards WHERE (power IS NULL OR power = '*') AND promotypes = 'arenaleague' ORDER BY name ASC LIMIT 3 
SELECT language FROM foreign_data WHERE multiverseid = 149934 
SELECT cardkingdomfoilid, cardkingdomid FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL ORDER BY cardkingdomfoilid LIMIT 3 
SELECT CAST(SUM(CASE WHEN isTextless = 1 AND layout = 'normal' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(isTextless) FROM cards
SELECT number FROM cards WHERE subtypes LIKE '%Angel%' AND subtypes LIKE '%Wizard%' AND side IS NULL
SELECT name FROM sets WHERE mtgoCode IS NULL OR mtgoCode = '' ORDER BY name ASC LIMIT 3 
SELECT language FROM set_translations WHERE setcode = 'ARC' AND setcode IN ( SELECT code FROM sets WHERE mcmname = 'Archenemy' )
SELECT T1.name, T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.id = 5 
SELECT T1.language, T3.type FROM foreign_data AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.id INNER JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.id = 206
SELECT sets.id, sets.name FROM sets INNER JOIN cards ON sets.code = cards.setcode INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE foreign_data.language = 'Italian' AND sets.block = 'Shadowmoor' ORDER BY sets.name ASC LIMIT 2
SELECT T1.id FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setcode INNER JOIN foreign_data AS T3 ON T2.uuid = T3.uuid WHERE T1.isforeignonly = 1 AND T1.isfoilonly = 1 AND T3.language = 'Japanese'
SELECT T1.setCode FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Russian' ORDER BY T2.baseSetSize DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN foreign_data.language = 'Chinese Simplified' AND cards.isonlineonly = 1 THEN foreign_data.id ELSE NULL END) AS REAL) * 100 / COUNT(cards.isonlineonly) FROM foreign_data INNER JOIN cards ON foreign_data.uuid = cards.uuid 
SELECT COUNT(DISTINCT T1.setcode) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T1.language = 'Japanese' AND (T2.mtgocode IS NULL OR T2.mtgocode = '')
SELECT id FROM cards WHERE bordercolor = 'black'
SELECT id FROM cards WHERE frameeffects = 'extendedart' 
SELECT name FROM cards WHERE bordercolor = 'black' AND isfullart = 1
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.id = 174 
SELECT name FROM sets WHERE code = 'ALL' 
SELECT language FROM foreign_data WHERE name = 'A Pedra Fellwar' 
SELECT setcode FROM sets WHERE releasedate = '2007-07-13'
SELECT basesetsize, code FROM sets WHERE block IN ('Masques', 'Mirage')
SELECT code FROM sets WHERE type = 'expansion'
SELECT T1.name, T1.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'boros'
SELECT T2.language, T2.flavortext, T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'colorpie'
SELECT CAST(SUM(CASE WHEN T1.convertedmanacost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.convertedmanacost) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.name = 'Abyssal Horror'
SELECT code FROM sets WHERE type = 'commander' OR type = 'expansion'
SELECT T1.name, T2.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'abzan'
SELECT foreign_data.language, cards.type FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid WHERE cards.watermark = 'azorius'
SELECT COUNT(uuid) FROM cards WHERE artist = 'Aaron Miller' AND cardkingdomfoilid = cardkingdomid AND cardkingdomid IS NOT NULL
SELECT COUNT(id) FROM cards WHERE availability LIKE '%paper%' AND hand LIKE '+%'
SELECT name FROM cards WHERE istextless = 0
SELECT manacost FROM cards WHERE name = 'Ancestor`s Chosen' 
SELECT COUNT(*) FROM cards WHERE bordercolor = 'white' AND (power = '*' OR power IS NULL)
SELECT name FROM cards WHERE isPromo = 1 AND side IS NOT NULL
SELECT subtypes, supertypes FROM cards WHERE name = 'Molimo, Maro-Sorcerer' 
SELECT purchaseUrls FROM cards WHERE promoTypes = 'bundle'
SELECT COUNT(DISTINCT artist) FROM cards WHERE bordercolor = 'black' AND availability LIKE '%arena,mtgo%'
SELECT name FROM cards WHERE name IN ('Serra Angel', 'Shrine Keeper') ORDER BY convertedmanacost DESC LIMIT 1
SELECT artist FROM cards WHERE flavorname = 'Battra, Dark Destroyer'
SELECT name FROM cards WHERE frameversion = '2003' ORDER BY convertedmanacost DESC LIMIT 3
SELECT T3.translation FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code INNER JOIN set_translations AS T3 ON T2.code = T3.setcode WHERE T1.name = 'Ancestor''s Chosen' AND T3.language = 'Italian'
SELECT COUNT(T3.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code INNER JOIN set_translations AS T3 ON T2.code = T3.setcode WHERE T1.name = 'Angel of Mercy'
SELECT T2.name FROM set_translations AS T1 INNER JOIN cards AS T2 ON T1.setcode = T2.setcode WHERE T1.translation = 'Hauptset Zehnte Edition'
SELECT CASE WHEN EXISTS (SELECT 1 FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Ancestor''s Chosen' AND T2.language = 'Korean') THEN 'Yes' ELSE 'No' END AS HasKoreanVersion
SELECT COUNT(DISTINCT T2.id) FROM set_translations AS T1 INNER JOIN cards AS T2 ON T1.setcode = T2.setcode WHERE T1.translation = 'Hauptset Zehnte Edition' AND T2.artist = 'Adam Rex'
SELECT baseSetSize FROM sets WHERE code = ( SELECT setcode FROM set_translations WHERE translation = 'Hauptset Zehnte Edition' )
SELECT translation FROM set_translations WHERE language = 'Simplified Chinese' AND setcode = ( SELECT code FROM sets WHERE name = 'Eighth Edition' ) 
SELECT T2.mtgocode FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T1.name = 'Angel of Mercy' AND T2.mtgocode IS NOT NULL
SELECT T2.releasedate FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T1.name = 'Ancestor''s Chosen'
SELECT T1.type FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT COUNT(DISTINCT T1.name) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = 'Ice Age' AND T2.language = 'Italian'
SELECT S.isforeignonly FROM sets AS S INNER JOIN cards AS C ON S.code = C.setcode WHERE C.name = 'Adarkar Valkyrie'
SELECT COUNT(DISTINCT T1.code) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = 'Italian' AND T2.translation IS NOT NULL AND T1.basesetsize < 10
SELECT COUNT(id) FROM cards WHERE bordercolor = 'black' AND setcode = ( SELECT code FROM sets WHERE name = 'Coldsnap' )
SELECT name FROM cards WHERE setcode = (SELECT code FROM sets WHERE name = 'Coldsnap') AND convertedmanacost = (SELECT MAX(convertedmanacost) FROM cards WHERE setcode = (SELECT code FROM sets WHERE name = 'Coldsnap'))
SELECT DISTINCT T1.artist FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T1.artist IN ('Jeremy Jarvis', 'Aaron Miller', 'Chippy') AND T2.name = 'Coldsnap'
SELECT T1.number, T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.name = 'Coldsnap' AND T1.number = '4'
SELECT COUNT(*) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.uuid = T2.code WHERE T2.name = 'Coldsnap' AND T1.convertedmanacost > 5 AND (T1.power IS NULL OR T1.power = '*')
SELECT T2.flavortext FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Ancestor''s Chosen' AND T2.language = 'Italian' 
SELECT T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Ancestor''s Chosen' AND T1.flavortext IS NOT NULL
SELECT T1.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = 'German' AND T2.name = 'Ancestor''s Chosen'
SELECT T4.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid INNER JOIN sets AS T3 ON T2.setcode = T3.code INNER JOIN foreign_data AS T4 ON T2.uuid = T4.uuid WHERE T4.language = 'Italian' AND T3.name = 'Coldsnap'
SELECT T1.name FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid INNER JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.name = 'Coldsnap' AND T1.language = 'Italian' ORDER BY T2.convertedmanacost DESC
SELECT T1.date FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT CAST(SUM(CASE WHEN T1.convertedmanacost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.convertedmanacost) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.name = 'Coldsnap'
SELECT CAST(SUM(CASE WHEN T1.cardkingdomfoilid = T1.cardkingdomid AND T1.cardkingdomid IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.name = 'Coldsnap'
SELECT code FROM sets WHERE releasedate = '2017-07-14'
SELECT keyrunecode FROM sets WHERE code = 'PKHC'
SELECT mcmid FROM sets WHERE code = 'SS2'
SELECT mcmName FROM sets WHERE releasedate = '2017-06-09'
SELECT type FROM sets WHERE name LIKE 'From the Vault: Lore' 
SELECT parentcode FROM sets WHERE name = 'Commander 2014 Oversized'
SELECT T1.text, T2.hascontentwarning FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Jim Pavelec'
SELECT sets.releasedate FROM cards INNER JOIN sets ON cards.setcode = sets.code WHERE cards.name = 'Evacuation'
SELECT T1.basesetsize FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.translation = 'Rinascita di Alara'
SELECT T1.type FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.translation = 'Huiti��me ��dition'
SELECT T2.translation FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.setcode = T2.setcode INNER JOIN foreign_data AS T3 ON T1.uuid = T3.uuid WHERE T3.language = 'French' AND T3.name = 'Tendo Ice Bridge'
SELECT COUNT(T2.translation) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = 'Salvat 2011' AND T2.translation IS NOT NULL
SELECT T2.translation FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.setcode = T2.setcode WHERE T1.name = 'Fellwar Stone' AND T2.language = 'Japanese'
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.name = 'Journey into Nyx Hero''s Path' ORDER BY T1.convertedmanacost DESC LIMIT 1
SELECT T1.releasedate FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.translation = 'Ola de fr��o'
SELECT T1.type FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setcode WHERE T2.name = 'Samite Pilgrim'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.name = 'World Championship Decks 2004' AND T1.convertedmanacost = 3
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = 'Mirrodin' AND T2.language = 'Chinese Simplified'
SELECT CAST(SUM(CASE WHEN T3.isNonFoilOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.language) FROM foreign_data AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.id INNER JOIN sets AS T3 ON T3.code = T2.setcode WHERE T1.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN cards.isonlineonly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM cards INNER JOIN foreign_data ON cards.uuid = foreign_data.uuid INNER JOIN set_translations ON cards.setcode = set_translations.setcode WHERE foreign_data.language = 'Portuguese (Brazil)'
SELECT availability FROM cards WHERE artist = 'Aleksi Briclot' AND istextless = 1
SELECT id FROM sets ORDER BY basesetsize DESC LIMIT 1
SELECT artist FROM cards WHERE side IS NULL ORDER BY convertedmanacost DESC LIMIT 1 
SELECT frameeffects FROM cards WHERE cardkingdomfoilid IS NOT NULL AND cardkingdomid IS NOT NULL GROUP BY frameeffects ORDER BY COUNT(*) DESC LIMIT 1 
SELECT COUNT(id) FROM cards WHERE power IS NULL OR power = '*' AND hasFoil = 0 AND dueldeck = 'a' 
SELECT id FROM sets WHERE type = 'commander' ORDER BY totalsetsize DESC LIMIT 1 
SELECT T2.name FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'duel' ORDER BY T2.convertedmanacost DESC LIMIT 10
SELECT T1.originalreleasedate, T3.format FROM cards AS T1 INNER JOIN legalities AS T3 ON T1.uuid = T3.uuid WHERE T1.rarity = 'mythic' AND T3.status = 'legal' ORDER BY T1.originalreleasedate ASC LIMIT 1
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Volkan Baga' AND T2.language = 'French'
SELECT COUNT(DISTINCT T2.id) FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.rarity = 'rare' AND T2.Types = 'Enchantment' AND T2.name = 'Abundance' AND T1.status = 'Legal'
SELECT T1.format, T3.name FROM legalities AS T1 INNER JOIN cards AS T3 ON T1.uuid = T3.uuid WHERE T1.status = 'Banned' GROUP BY T1.format ORDER BY COUNT(T1.status) DESC LIMIT 1
SELECT T1.language FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.name = 'Battlebond'
SELECT T1.artist, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid GROUP BY T1.artist HAVING COUNT(T1.artist) = ( SELECT COUNT(artist) FROM cards GROUP BY artist ORDER BY COUNT(artist) ASC LIMIT 1)
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'legacy' AND T2.hasContentWarning = 1 AND T2.artist = 'D. Alexander Gregory' AND T2.frameVersion = '1997' 
SELECT T1.name, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.edhrecrank = 1 AND T2.status = 'banned'
SELECT CAST(COUNT(setcode) AS REAL) / 4, language FROM sets INNER JOIN set_translations ON sets.code = set_translations.setcode WHERE releasedate BETWEEN '2012-01-01' AND '2015-12-31' GROUP BY language ORDER BY COUNT(setcode) DESC LIMIT 1
SELECT artist FROM cards WHERE bordercolor = 'black' AND availability = 'arena'
SELECT uuid FROM legalities WHERE format = 'oldschool' AND (status = 'banned' OR status = 'restricted')
SELECT COUNT(id) FROM cards WHERE artist = 'Matthew D. Wilson' AND availability = 'paper'
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Kev Walker' ORDER BY T1.date DESC
SELECT T1.name, T3.format FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setcode = T2.code INNER JOIN legalities AS T3 ON T1.uuid = T3.uuid WHERE T2.name = 'Hour of Devastation' AND T3.status = 'Legal'
SELECT T1.name FROM sets AS T1 LEFT JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = 'Korean' AND NOT EXISTS ( SELECT 1 FROM set_translations AS T3 WHERE T3.setcode = T1.code AND T3.language = 'Japanese')
SELECT T1.frameversion, T1.name, T2.status FROM cards AS T1 LEFT JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Allen Williams' AND T2.status = 'banned'
SELECT displayname FROM users WHERE displayname IN ('Harlan', 'Jarrod Dixon') ORDER BY reputation DESC LIMIT 1 
SELECT displayname FROM users WHERE STRFTIME('%Y',creationdate) = '2014'
SELECT COUNT(id) FROM users WHERE lastaccessdate > '2014-09-01 00:00:00' 
SELECT displayname FROM users ORDER BY views DESC LIMIT 1
SELECT COUNT(id) FROM users WHERE upvotes > 100 AND downvotes > 1;
SELECT COUNT(*) FROM users WHERE views > 10 AND strftime('%Y', creationdate) > '2013'
SELECT COUNT(id) FROM posts WHERE owneruserid = ( SELECT id FROM users WHERE displayname = 'csgillespie' )
SELECT title FROM posts WHERE owneruserid = ( SELECT id FROM users WHERE displayname = 'csgillespie' )
SELECT T2.displayname FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T1.title = 'Eliciting priors from experts'
SELECT T1.title FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = 'csgillespie' ORDER BY T1.viewcount DESC LIMIT 1
SELECT users.displayname FROM users INNER JOIN posts ON users.id = posts.owneruserid ORDER BY posts.favoritecount DESC LIMIT 1 
SELECT SUM(T2.CommentCount) FROM Users AS T1 INNER JOIN Posts AS T2 ON T1.id = T2.owneruserid WHERE T1.DisplayName = 'csgillespie'
SELECT T1.answercount FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = 'csgillespie' ORDER BY T1.answercount DESC LIMIT 1
SELECT T2.displayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.lasteditoruserid = T2.id WHERE T1.title = 'Examples for teaching: Correlation does not mean causation'
SELECT COUNT(*) FROM posts WHERE owneruserid in (SELECT id FROM users WHERE displayname = 'csgillespie') AND parentid IS NULL
SELECT DISTINCT T1.displayname FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.closeddate IS NOT NULL
SELECT COUNT(T1.id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.age > 65 AND T1.score >= 20
SELECT U.location FROM users U INNER JOIN posts P ON U.id = P.owneruserid WHERE P.title = 'Eliciting priors from experts'
SELECT T2.body FROM tags AS T1 INNER JOIN posts AS T2 ON T1.excerptpostid = T2.id WHERE T1.tagname = 'bayesian'
SELECT P1.body FROM tags AS T1 INNER JOIN posts AS P1 ON T1.excerptpostid = P1.id ORDER BY T1.count DESC LIMIT 1 
SELECT COUNT(id) FROM badges WHERE userid = ( SELECT id FROM users WHERE displayname = 'csgillespie' )
SELECT T2.name FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.displayname = 'csgillespie'
SELECT COUNT(*) FROM badges WHERE userid IN (SELECT id FROM users WHERE displayname = 'csgillespie') AND STRFTIME('%Y', date) = '2011'
SELECT T1.displayname FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid GROUP BY T1.displayname ORDER BY COUNT(T2.id) DESC LIMIT 1 
SELECT AVG(T2.score) FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.displayname = 'csgillespie'
SELECT CAST(COUNT(T2.id) AS REAL) / COUNT(DISTINCT T1.displayname) FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.views > 200 
SELECT CAST(SUM(CASE WHEN T1.age > 65 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.id) FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.score > 20 
SELECT COUNT(id) FROM votes WHERE userid = 58 AND creationdate = '2010-07-19'
SELECT creationdate FROM votes GROUP BY creationdate ORDER BY COUNT(id) DESC LIMIT 1
SELECT COUNT(id) FROM badges WHERE name = 'Revival'; 
SELECT T2.title FROM comments AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id ORDER BY T1.score DESC LIMIT 1 
SELECT COUNT(comments.id) FROM posts INNER JOIN comments ON posts.id = comments.postid WHERE posts.viewcount = 1910 
SELECT T1.favoritecount FROM posts AS T1 INNER JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.userid = 3025 AND T2.creationdate = '2014-04-23 20:29:39' 
SELECT T1.text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.parentid = 107829 AND T2.commentcount = 1
SELECT CASE WHEN T2.ClosedDate IS NULL THEN 'No' ELSE 'Yes' END AS 'Is Well Finished' FROM Comments AS T1 INNER JOIN Posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = '23853' AND T1.CreationDate = '2013-07-12 09:08:18.0'
SELECT T1.reputation FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.id = 65041 
SELECT COUNT(T2.id) FROM users AS T1 INNER JOIN posts AS T2 ON T2.owneruserid = T1.id WHERE T1.displayname = 'Tiago Pasqualini'
SELECT T1.displayname FROM users AS T1 INNER JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.id = 6347
SELECT COUNT(*) FROM votes WHERE postid IN (SELECT id FROM posts WHERE title LIKE '%data visualization%')
SELECT T2.name FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.displayname = 'DatEpicCoderGuyWhoPrograms'
SELECT (CAST(COUNT(T1.id) AS REAL) / COUNT(T2.id)) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.owneruserid = T2.userid WHERE T1.owneruserid = 24 AND T2.userid = 24
SELECT viewcount FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer' 
SELECT text FROM comments WHERE score = 17;
SELECT DisplayName FROM users WHERE websiteurl = 'http://stackoverflow.com'
SELECT T1.name FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'SilentGhost' 
SELECT T2.displayname FROM comments AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.text = 'thank you user93!'
SELECT T1.text FROM comments AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'A Lion'
SELECT T1.displayname, T1.reputation FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.title = 'Understanding what Dassault iSight is doing?'
SELECT T2.text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.title = 'How does gentle boosting differ from AdaBoost?'
SELECT T2.displayname FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.name = 'Necromancer' LIMIT 10
SELECT T2.displayname FROM posts AS T1 INNER JOIN users AS T2 ON T1.lasteditoruserid = T2.id WHERE T1.title = 'Open source tools for visualizing multi-dimensional data?'
SELECT T1.title FROM posts AS T1 INNER JOIN users AS T2 ON T1.lasteditoruserid = T2.id WHERE T2.displayname = 'Vebjorn Ljosa'
SELECT SUM(T1.score), T2.websiteurl FROM posts AS T1 INNER JOIN users AS T2 ON T1.lasteditoruserid = T2.id WHERE T2.displayname = 'Yevgeny'
SELECT T2.text FROM posthistory AS T1 INNER JOIN comments AS T2 ON T1.userid = T2.userid INNER JOIN posts AS T3 ON T3.id = T2.postid WHERE T3.title = 'Why square the difference instead of taking the absolute value in standard deviation?' AND T1.comment = 'edited'
SELECT SUM(T1.bountyamount) FROM votes AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title LIKE '%data%'
SELECT T3.DisplayName FROM votes AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id INNER JOIN users AS T3 ON T1.userid = T3.id WHERE T1.bountyamount = 50 AND T2.title LIKE '%variance%'
SELECT AVG(p.viewcount), p.title, c.text, p.score FROM posts AS p INNER JOIN tags AS t ON p.id = t.excerptpostid INNER JOIN comments AS c ON p.id = c.postid WHERE t.tagname = 'humor'
SELECT COUNT(*) FROM comments WHERE userid = 13
SELECT id FROM users ORDER BY reputation DESC LIMIT 1
SELECT id FROM users ORDER BY views ASC LIMIT 1 
SELECT COUNT(userid) FROM badges WHERE name = 'Supporter' AND strftime('%Y', date) = '2011'
SELECT UserId FROM badges GROUP BY UserId HAVING COUNT(Name) > 5 
SELECT COUNT(DISTINCT badges.userid) FROM badges INNER JOIN users ON users.id = badges.userid WHERE users.location = 'New York' AND badges.name IN ('Supporter', 'Teacher')
SELECT T1.displayname, T1.reputation FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.id = 1
SELECT T1.userid FROM posthistory AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T2.views >= 1000 GROUP BY T1.postid HAVING COUNT(*) = 1
SELECT T1.name FROM badges as T1 INNER JOIN (SELECT T3.userid from comments as T3 group by T3.userid order by count(T3.id) desc limit 1) AS T2 ON T1.userid = T2.userid
SELECT COUNT(T1.userid) FROM badges AS T1 INNER JOIN users AS T2 ON T2.id = T1.userid WHERE T2.location = 'India' AND T1.name = 'Teacher'
SELECT 100.0 * (SUM(CASE WHEN strftime('%Y', date) = '2010' AND name = 'Student' THEN 1 ELSE 0 END) / (SELECT COUNT(*) FROM badges)) - 100.0 * (SUM(CASE WHEN strftime('%Y', date) = '2011' AND name = 'Student' THEN 1 ELSE 0 END) / (SELECT COUNT(*) FROM badges)) AS percentage_difference FROM badges
SELECT T1.posthistorytypeid, COUNT(DISTINCT T2.userid) FROM posthistory AS T1 INNER JOIN comments AS T2 ON T1.postid = T2.postid WHERE T1.postid = 3720
SELECT T1.id, T1.viewcount FROM posts AS T1 INNER JOIN postlinks AS T2 ON T1.id = T2.relatedpostid WHERE T2.postid = 61217
SELECT T1.score, T2.linktypeid FROM posts AS T1 INNER JOIN postlinks AS T2 ON T1.id = T2.postid WHERE T1.id = 395 
SELECT T1.id AS postID, T2.id AS userID FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T1.score > 60
SELECT SUM(favoritecount) FROM posts WHERE owneruserid = 686 AND YEAR(creationdate) = 2011
SELECT AVG(T1.upvotes), AVG(T1.age) FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid GROUP BY T1.id HAVING COUNT(T2.id) > 10
SELECT COUNT(DISTINCT userid) FROM badges WHERE name = 'Announcer'
SELECT name FROM badges WHERE `date` = '2010-07-19 19:39:08'
SELECT COUNT(*) FROM comments WHERE score > 60;
SELECT text FROM comments WHERE creationdate = '2010-07-19 19:25:47'
SELECT COUNT(id) FROM posts WHERE score = 10
SELECT name FROM badges WHERE userid IN ( SELECT id FROM users WHERE reputation = ( SELECT MAX(reputation) FROM users ) )
SELECT T2.reputation FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.date = '2010-07-19 19:39:08.0'
SELECT T1.name FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'Pierre'
SELECT T2.date FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.location = 'Rochester, NY'
SELECT CAST(COUNT(T2.id) AS REAL) * 100 / COUNT(T1.id) FROM users AS T1 LEFT JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = 'Teacher'
SELECT CAST(SUM(CASE WHEN users.age BETWEEN 13 AND 19 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(users.id) FROM users INNER JOIN badges ON users.id = badges.userid WHERE badges.name = 'Organizer'
SELECT T1.score FROM comments AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.creaiondate = '2010-07-19 19:19:56.0'
SELECT T1.text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.creaiondate = '2010-07-19 19:37:33.0'
SELECT T1.age FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.location = 'Vienna, Austria'
SELECT COUNT(DISTINCT T1.userid) FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.name = 'Supporter' AND T2.age BETWEEN 19 AND 65 
SELECT SUM(T2.views) FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.date = '2010-07-19 19:39:08.0' 
SELECT T2.name FROM badges AS T2 INNER JOIN users AS T1 ON T2.userid = T1.id WHERE T1.reputation = ( SELECT reputation FROM users ORDER BY reputation ASC LIMIT 1 )
SELECT T2.name FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.displayname = "Sharpie"
SELECT COUNT(DISTINCT T1.userid) FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T2.age > 65 AND T1.name = 'Supporter'
SELECT displayname FROM users WHERE id = 30
SELECT COUNT(*) FROM users WHERE location = 'New York'
SELECT COUNT(id) FROM votes WHERE STRFTIME('%Y', creationdate) = '2010'
SELECT COUNT(id) FROM users WHERE age BETWEEN 19 AND 65
SELECT displayname FROM users ORDER BY views DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN STRFTIME('%Y', creationdate) = '2010' THEN 1 ELSE NULL END) AS REAL) / COUNT(CASE WHEN STRFTIME('%Y', creationdate) = '2011' THEN 1 ELSE NULL END) FROM votes
SELECT T1.tagname FROM tags AS T1 INNER JOIN posts AS T2 ON T1.id = T2.id INNER JOIN users AS T3 ON T2.owneruserid = T3.id WHERE T3.displayname = 'John Stauffer'
SELECT COUNT(id) FROM posts WHERE owneruserid = (SELECT id FROM users WHERE displayname = 'Daniel Vassallo') 
SELECT COUNT(T2.votetypeid) FROM users AS T1 INNER JOIN votes AS T2 ON T1.id = T2.userid WHERE T1.displayname = 'Harlan'
SELECT T1.id FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = 'slashnick' ORDER BY T1.answercount DESC LIMIT 1
SELECT T1.ownerdisplayname, T1.title, SUM(T1.viewcount) FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname IN ('Harvey Motulsky', 'Noah Snyder') GROUP BY T1.ownerdisplayname, T1.title ORDER BY SUM(T1.viewcount) DESC LIMIT 1
SELECT COUNT(*) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.id = T2.postid WHERE T1.ownerdisplayname = 'Matt Parker' GROUP BY T2.postid HAVING COUNT(T2.postid) > 4
SELECT COUNT(T2.score) FROM users AS T1 INNER JOIN comments AS T2 ON T1.id = T2.userid WHERE T1.displayname = 'Neil McGuigan' AND T2.score < 60 
SELECT T1.tagname FROM tags AS T1 INNER JOIN posts AS T2 ON T1.id = T2.id LEFT JOIN comments AS T3 ON T2.id = T3.postid INNER JOIN users AS T4 ON T2.owneruserid = T4.id WHERE T4.displayname = 'Mark Meckes' AND T3.id IS NULL
SELECT T1.displayname FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = 'Organizer'
SELECT CAST(SUM(CASE WHEN T1.tagname = 'r' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.id) FROM tags AS T1 INNER JOIN posts AS T2 ON T1.id = T2.id INNER JOIN users AS T3 ON T2.owneruserid = T3.id WHERE T3.displayname = 'Community'
SELECT (SELECT SUM(p.viewcount) FROM posts p INNER JOIN users u ON p.owneruserid = u.id WHERE u.displayname = 'Mornington') - (SELECT SUM(p.viewcount) FROM posts p INNER JOIN users u ON p.owneruserid = u.id WHERE u.displayname = 'Amos') AS views_difference
SELECT COUNT(userid) FROM badges WHERE name = 'Commentator' AND YEAR(date) = 2014
SELECT COUNT(id) FROM posts WHERE creaiondate BETWEEN '2010-07-21 00:00:00' AND '2010-07-21 23:59:59'
SELECT displayname, age FROM users WHERE views = ( SELECT MAX(views) FROM users )
SELECT lasteditdate, lasteditoruserid FROM posts WHERE title = 'Detecting a given face in a database of facial images'
SELECT COUNT(id) FROM comments WHERE userid = 13 AND score < 60
SELECT T2.title, T1.userdisplayname FROM comments AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.score > 60
SELECT T2.name FROM users AS T1 INNER JOIN badges AS T2 ON T1.id = T2.userid WHERE STRFTIME('%Y', T2.date) = '2011' AND T1.location = 'North Pole'
SELECT T1.displayname, T1.websiteurl FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.favoritecount > 150
SELECT COUNT(T2.postid), MAX(T2.creationdate) FROM posts AS T1 INNER JOIN posthistory AS T2 ON T1.id = T2.postid WHERE T1.title = 'What is the best introductory Bayesian statistics textbook?'
SELECT T2.lastaccessdate, T2.location FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.name = 'outliers'
SELECT T2.title FROM posts AS T1 INNER JOIN posts AS T2 ON T1.id = T2.parentid WHERE T1.title = 'How to tell if something happened in a data set which monitors a value over time' 
SELECT T2.id AS Post_Id, T1.name AS Badge_Name FROM badges AS T1 INNER JOIN posts AS T2 ON T1.userid = T2.owneruserid INNER JOIN users AS T3 ON T3.id = T1.userid WHERE T3.displayname = 'Samuel' AND YEAR(T1.date) = 2013 AND YEAR(T2.creaiondate) = 2013
SELECT users.displayname FROM posts INNER JOIN users ON posts.owneruserid = users.id ORDER BY posts.viewcount DESC LIMIT 1 
SELECT T2.displayname, T2.location FROM tags AS T1 INNER JOIN users AS T2 ON T1.excerptpostid = T2.id WHERE T1.tagname = 'hypothesis-testing'
SELECT T2.title, T1.linktypeid FROM postlinks AS T1 INNER JOIN posts AS T2 ON T1.relatedpostid = T2.id WHERE T1.postid = (SELECT id FROM posts WHERE title = 'What are principal component scores?')
SELECT T1.displayname FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.parentid IS NOT NULL ORDER BY T2.score DESC LIMIT 1 
SELECT T2.displayname, T2.websiteurl FROM votes AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.votetypeid = 8 ORDER BY T1.bountyamount DESC LIMIT 1 
SELECT title FROM posts ORDER BY viewcount DESC LIMIT 5
SELECT COUNT(id) FROM tags WHERE count BETWEEN 5000 AND 7000
SELECT owneruserid FROM posts WHERE FavoriteCount = ( SELECT MAX(FavoriteCount) FROM posts ) 
SELECT age FROM users ORDER BY reputation DESC LIMIT 1 
SELECT COUNT(DISTINCT postid) FROM votes INNER JOIN posts ON posts.id = votes.postid WHERE YEAR(posts.creaiondate) = 2011 AND votes.bountyamount = 50
SELECT id FROM users ORDER BY age ASC LIMIT 1 
SELECT T2.score FROM tags AS T1 INNER JOIN posts AS T2 ON T1.excerptpostid = T2.id WHERE T1.count = ( SELECT MAX(count) FROM tags )
SELECT CAST(COUNT(T1.id) AS REAL) / 12 FROM postlinks AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.answercount <= 2 AND STRFTIME('%Y', T1.creationdate) = '2010'
SELECT T1.id FROM posts AS T1 INNER JOIN votes AS T2 ON T1.id = T2.postid WHERE T2.userid = 1465 ORDER BY T1.favoritecount DESC LIMIT 1
SELECT T1.title FROM posts AS T1 INNER JOIN postlinks AS T2 ON T1.id = T2.postid ORDER BY T2.creationdate ASC LIMIT 1
SELECT T1.displayname FROM users AS T1 INNER JOIN badges as T2 ON T1.id = T2.userid GROUP BY T1.displayname ORDER BY COUNT(T2.name) DESC LIMIT 1 
SELECT MIN(T2.creationdate) FROM users AS T1 INNER JOIN votes AS T2 ON T1.id = T2.userid WHERE T1.displayname = 'chl'
SELECT MIN(posts.creaiondate) FROM posts INNER JOIN users ON posts.owneruserid = users.id ORDER BY users.age LIMIT 1
SELECT T2.displayname FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.name = 'Autobiographer' ORDER BY T1.date ASC LIMIT 1 
SELECT COUNT(DISTINCT T1.id) FROM Users AS T1 INNER JOIN Posts AS T2 ON T1.id = T2.owneruserid WHERE T1.location = 'United Kingdom' AND (SELECT SUM(FavoriteCount) FROM Posts WHERE OwnerUserID = T1.id) >= 4 
SELECT AVG(T1.postid) FROM votes AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T2.age = ( SELECT MAX(age) FROM users )
SELECT displayname FROM users ORDER BY reputation DESC LIMIT 1
SELECT COUNT(id) FROM users WHERE reputation > 2000 AND views > 1000;
SELECT displayname FROM users WHERE age BETWEEN 19 AND 65 
SELECT COUNT(T2.id) FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.displayname = 'Jay Stevens' AND YEAR(T2.creationdate) = 2010 
SELECT T2.id, T2.title FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.displayname = 'Harvey Motulsky' ORDER BY T2.viewcount DESC LIMIT 1
SELECT T1.id, T1.title FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id ORDER BY T1.score DESC LIMIT 1
SELECT AVG(score) FROM posts WHERE owneruserid = ( SELECT id FROM users WHERE displayname = 'Stephen Turner') 
SELECT DISTINCT T1.displayname FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.viewcount > 20000 AND strftime('%Y', T2.creaiondate) = '2011'
SELECT T1.id, T2.displayname FROM posts AS T1 INNER JOIN users AS T2 ON T1.owneruserid = T2.id WHERE STRFTIME('%Y', T1.creaiondate) = '2010' ORDER BY T1.favoritecount DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN users.reputation > 1000 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(posts.id) AS percentage FROM posts INNER JOIN users ON posts.owneruserid = users.id WHERE strftime('%Y', posts.creaiondate) = '2011'
SELECT CAST(COUNT(CASE WHEN age BETWEEN 13 AND 19 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(id) FROM users 
SELECT T1.viewcount, T2.displayname FROM posts AS T1 INNER JOIN users AS T2 ON T1.lasteditoruserid = T2.id WHERE T1.title = 'Computer Game Datasets'
SELECT COUNT(*) FROM posts WHERE viewcount > (SELECT AVG(viewcount) FROM posts)
SELECT COUNT(id) FROM comments WHERE postid = ( SELECT id FROM posts ORDER BY score DESC LIMIT 1 )
SELECT COUNT(id) as NumberOfPosts FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT users.displayname, users.location FROM users INNER JOIN posts ON users.id = posts.lasteditoruserid WHERE posts.id = 183 ORDER BY posts.lasteditdate DESC LIMIT 1 
SELECT T1.name FROM badges AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'Emmett' ORDER BY T1.date DESC LIMIT 1
SELECT COUNT(id) FROM users WHERE age BETWEEN 19 AND 65 AND upvotes > 5000
SELECT strftime('%J', badges.date) - strftime('%J', users.creationdate) AS days_diff FROM badges INNER JOIN users ON badges.userid = users.id WHERE users.displayname = 'Zolomon' 
SELECT (SELECT COUNT(*) FROM posts WHERE owneruserid = (SELECT id FROM users ORDER BY creationdate DESC LIMIT 1)) AS NumberOfPosts, (SELECT COUNT(*) FROM comments WHERE userid = (SELECT id FROM users ORDER BY creationdate DESC LIMIT 1)) AS NumberOfComments
SELECT T1.text, T3.displayname FROM comments AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id INNER JOIN users AS T3 ON T1.userid = T3.id WHERE T2.title = 'Analysing wind data with R' ORDER BY T1.creationdate DESC LIMIT 1
SELECT COUNT(DISTINCT userid) FROM badges WHERE name = 'Citizen Patrol'
SELECT COUNT(T1.id) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T2.tagname = 'careers'
SELECT reputation, views FROM users WHERE displayname = 'Jarrod Dixon' 
SELECT (SELECT COUNT(*) FROM comments WHERE postid = (SELECT id FROM posts WHERE title = 'Clustering 1D data')) AS comment_count, (SELECT COUNT(*) FROM posts WHERE parentid = (SELECT id FROM posts WHERE title = 'Clustering 1D data')) AS answer_count
SELECT creationdate FROM users WHERE displayname = 'IrishStat'
SELECT COUNT(postid) FROM votes WHERE bountyamount >= 30
SELECT CAST(SUM(CASE WHEN T2.score >= 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.id) FROM users AS T1 INNER JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.id = (SELECT id FROM users ORDER BY reputation DESC LIMIT 1) 
SELECT COUNT(ID) FROM posts WHERE score < 20
SELECT COUNT(Id) FROM tags WHERE Id < 15 AND Count <= 20
SELECT excerptpostid, wikipostid FROM tags WHERE tagname = 'sample' 
SELECT T2.reputation, T2.upvotes FROM comments AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.text = 'fine, you win :)' 
SELECT T1.text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = 'Linear regression in R'
SELECT T2.text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.viewcount BETWEEN 100 AND 150 ORDER BY T2.score DESC LIMIT 1
SELECT T1.creationdate, T1.age FROM users AS T1 INNER JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.text LIKE '%http://%'
SELECT COUNT(DISTINCT T1.postid) FROM comments AS T1 INNER JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.score = 0 AND T2.viewcount < 5 
SELECT COUNT(T2.score) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.commentcount = 1 AND T2.score = 0
SELECT COUNT(DISTINCT T2.id) FROM comments AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score = 0 AND T2.age = 40
SELECT T1.id AS post_id, T3.text AS comment_text FROM posts AS T1 INNER JOIN comments AS T3 ON T1.id = T3.postid WHERE T1.title = 'Group differences on a five point Likert item'
SELECT T2.upvotes FROM comments AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.text = "R is also lazy evaluated."
SELECT T1.text FROM comments AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'Harvey Motulsky'
SELECT T2.displayname FROM comments AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score BETWEEN 1 AND 5 AND T2.downvotes = 0
SELECT CAST(SUM(CASE WHEN T2.upvotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.upvotes) FROM comments AS T1 INNER JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score BETWEEN 5 AND 10 
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = '3-D Man'
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength'
SELECT COUNT(DISTINCT T2.hero_id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = 'Super Strength' AND T3.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id GROUP BY T1.full_name HAVING COUNT(T2.power_id) > 15
SELECT COUNT(superhero.id) FROM superhero JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Blue'
SELECT T1.colour FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T2.superhero_name = 'Apocalypse'
SELECT COUNT(T1.hero_id) FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id INNER JOIN colour AS T4 ON T3.eye_colour_id = T4.id WHERE T2.power_name = 'Agility' AND T4.colour = 'Blue'
SELECT superhero.superhero_name FROM superhero JOIN colour AS eye_colour ON superhero.eye_colour_id = eye_colour.id JOIN colour AS hair_colour ON superhero.hair_colour_id = hair_colour.id WHERE eye_colour.colour = 'Blue' AND hair_colour.colour = 'Blond'
SELECT COUNT(DISTINCT T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' ORDER BY T1.height_cm DESC LIMIT 1
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Sauron'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T3.publisher_name = 'Marvel Comics' AND T2.colour = 'Blue'
SELECT AVG(superhero.height_cm) FROM superhero INNER JOIN publisher ON superhero.publisher_id = publisher.id WHERE publisher.publisher_name = 'Marvel Comics'
SELECT CAST(COUNT(CASE WHEN T3.power_name = 'Super Strength' THEN T1.id ELSE NULL END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id INNER JOIN publisher AS T4 ON T1.publisher_id = T4.id WHERE T4.publisher_name = 'Marvel Comics'
SELECT COUNT(DISTINCT T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics'
SELECT T2.publisher_name FROM publisher AS T2 INNER JOIN superhero AS T1 ON T2.id = T1.publisher_id INNER JOIN hero_attribute AS T3 ON T1.id = T3.hero_id INNER JOIN attribute AS T4 ON T3.attribute_id = T4.id WHERE T4.attribute_name = 'Speed' ORDER BY T3.attribute_value ASC LIMIT 1
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T2.colour = 'Gold' AND T3.publisher_name = 'Marvel Comics'
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Blue Beetle II'
SELECT COUNT(T1.superhero_name) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Blond' 
SELECT T3.superhero_name FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.attribute_name = 'Intelligence' ORDER BY T2.attribute_value ASC LIMIT 1 
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'Copycat'
SELECT COUNT(DISTINCT T1.hero_id) FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'Durability' AND T1.attribute_value < 50 
SELECT T3.superhero_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = 'Death Touch'
SELECT COUNT(DISTINCT h.id) FROM superhero AS h JOIN gender AS g ON h.gender_id = g.id JOIN hero_attribute AS a ON h.id = a.hero_id JOIN attribute AS attr ON a.attribute_id = attr.id WHERE g.gender = 'Female' AND attr.attribute_name = 'Strength' AND a.attribute_value = 100
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id GROUP BY T1.superhero_name ORDER BY COUNT(T2.power_id) DESC LIMIT 1
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Vampire'
SELECT CAST(COUNT(CASE WHEN T1.alignment = 'Bad' THEN T2.id ELSE NULL END) AS REAL) * 100 / COUNT(T2.id), COUNT(CASE WHEN T1.alignment = 'Bad' AND T3.publisher_name = 'Marvel Comics' THEN T2.id END) AS "number" FROM alignment AS T1 INNER JOIN superhero AS T2 ON T2.alignment_id = T1.id INNER JOIN publisher AS T3 ON T3.id = T2.publisher_id
SELECT (SELECT COUNT(*) FROM superhero WHERE publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')) - (SELECT COUNT(*) FROM superhero WHERE publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'DC Comics')) AS Difference FROM superhero
SELECT id FROM publisher WHERE publisher_name = 'Star Trek'
SELECT AVG(attribute_value) FROM hero_attribute;
SELECT COUNT(id) FROM superhero WHERE full_name IS NULL 
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.id = 75 
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.superhero_name = 'Deathlok'
SELECT AVG(weight_kg) FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Female'
SELECT power_name FROM superpower AS sp INNER JOIN hero_power AS hp ON sp.id = hp.power_id INNER JOIN superhero AS sh ON hp.hero_id = sh.id INNER JOIN gender AS g ON sh.gender_id = g.id WHERE g.gender = 'Male' LIMIT 5
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien' 
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 AND eye_colour_id = 1
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 56
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Demi-God' LIMIT 5 
SELECT COUNT(id) FROM superhero WHERE alignment_id = ( SELECT id FROM alignment WHERE alignment = 'Bad' )
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 169 
SELECT T1.colour FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.hair_colour_id INNER JOIN race AS T3 ON T2.race_id = T3.id WHERE T2.height_cm = 185 AND T3.race = 'Human'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id ORDER BY T1.weight_kg DESC LIMIT 1 
SELECT CAST(COUNT(CASE WHEN T2.publisher_name = 'Marvel Comics' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T2.publisher_name) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.height_cm BETWEEN 150 AND 180
SELECT DISTINCT superhero.full_name FROM superhero INNER JOIN gender ON superhero.gender_id = gender.id WHERE gender.gender = 'Male' AND superhero.weight_kg > ( SELECT AVG(weight_kg) * 0.79 FROM superhero )
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id GROUP BY T2.power_name ORDER BY COUNT(T1.hero_id) DESC LIMIT 1
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T1.superhero_name = 'Abomination'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 1
SELECT COUNT(DISTINCT T2.hero_id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T1.power_name = 'Stealth'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN T1.skin_colour_id = T1.id AND T2.colour = 'None' THEN T1.id ELSE NULL END) AS REAL) / COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id
SELECT COUNT(DISTINCT T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics'
SELECT T2.superhero_name FROM hero_attribute AS T1 INNER JOIN superhero AS T2 ON T1.hero_id = T2.id INNER JOIN attribute AS T3 ON T1.attribute_id = T3.id INNER JOIN publisher AS T4 ON T2.publisher_id = T4.id WHERE T3.attribute_name = 'Durability' AND T4.publisher_name = 'Dark Horse Comics' ORDER BY T1.attribute_value DESC LIMIT 1
SELECT colour.colour FROM colour INNER JOIN superhero ON colour.id = superhero.eye_colour_id WHERE superhero.full_name = 'Abraham Sapien'
SELECT T3.superhero_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T2.power_name = 'Flight'
SELECT T3.colour AS eyes, T4.colour AS hair, T5.colour AS skin FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN colour AS T3 ON T1.eye_colour_id = T3.id INNER JOIN colour AS T4 ON T1.hair_colour_id = T4.id INNER JOIN colour AS T5 ON T1.skin_colour_id = T5.id INNER JOIN publisher AS T6 ON T1.publisher_id = T6.id WHERE T2.gender = 'Female' AND T6.publisher_name = 'Dark Horse Comics'
SELECT T1.superhero_name, T4.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T4 ON T1.publisher_id = T4.id WHERE T1.hair_colour_id = T1.skin_colour_id AND T1.hair_colour_id = T1.eye_colour_id
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'A-Bomb'
SELECT CAST(SUM(CASE WHEN c1.colour = 'Blue' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(g1.gender) FROM superhero AS s INNER JOIN colour AS c1 ON s.skin_colour_id = c1.id INNER JOIN gender AS g1 ON s.gender_id = g1.id WHERE g1.gender = 'Female'
SELECT T1.superhero_name, T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.full_name = 'Charles Chandler'
SELECT T1.gender FROM gender AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.gender_id WHERE T2.superhero_name = 'Agent 13' 
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Adaptation'
SELECT COUNT(power_id) FROM hero_power WHERE hero_id = ( SELECT id FROM superhero WHERE superhero_name = 'Amazo' )
SELECT T3.power_name FROM hero_power as T1 INNER JOIN superhero AS T2 ON T1.hero_id = T2.id INNER JOIN superpower AS T3 ON T1.power_id = T3.id WHERE T2.full_name = 'Hunter Zolomon'
SELECT superhero.height_cm FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE colour.colour = 'Amber'
SELECT superhero.superhero_name FROM superhero INNER JOIN colour AS T1 ON superhero.eye_colour_id = T1.id INNER JOIN colour AS T2 ON superhero.hair_colour_id = T2.id WHERE T1.colour = 'Black' AND T2.colour = 'Black'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id INNER JOIN colour AS T3 ON T1.skin_colour_id = T3.id WHERE T3.colour = 'Gold'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Vampire'
SELECT superhero.superhero_name FROM superhero INNER JOIN alignment ON superhero.alignment_id = alignment.id WHERE alignment.alignment = 'Neutral'
SELECT COUNT(T1.hero_id) FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'Strength' AND T1.attribute_value = ( SELECT MAX(attribute_value) FROM hero_attribute WHERE attribute_id = T2.id ) 
SELECT T2.race, T3.alignment FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T1.superhero_name = 'Cameron Hicks'
SELECT CAST( COUNT(CASE WHEN G.gender = 'Female' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(S.id) FROM superhero AS S INNER JOIN publisher AS P ON S.publisher_id = P.id INNER JOIN gender AS G ON S.gender_id = G.id WHERE P.publisher_name = 'Marvel Comics'
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien';
SELECT (SELECT weight_kg FROM superhero WHERE full_name = 'Emil Blonsky') - (SELECT weight_kg FROM superhero WHERE full_name = 'Charles Chandler') AS weight_difference FROM superhero
SELECT AVG(height_cm) FROM superhero; 
SELECT T2.power_name FROM superpower AS T2 INNER JOIN hero_power AS T3 ON T2.id = T3.power_id INNER JOIN superhero AS T1 ON T3.hero_id = T1.id WHERE T1.superhero_name = 'Abomination'
SELECT COUNT(*) FROM superhero JOIN race ON superhero.race_id = race.id JOIN gender ON superhero.gender_id = gender.id WHERE race.race = 'god/eternal' AND gender.gender = 'Male'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Speed' ORDER BY T2.attribute_value DESC LIMIT 1 
SELECT COUNT(*) FROM superhero WHERE alignment_id = 3
SELECT T2.attribute_name, T1.attribute_value FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = '3-D Man'
SELECT superhero_name FROM superhero WHERE eye_colour_id = 7 AND hair_colour_id = 9
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name IN ('Hawkman', 'Karate Kid', 'Speedy')
SELECT COUNT(id) FROM superhero WHERE publisher_id = 1
SELECT CAST(SUM(CASE WHEN eye_colour_id = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(superhero_name) FROM superhero 
SELECT CAST(SUM(CASE WHEN gender_id = 1 THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN gender_id = 2 THEN 1 ELSE 0 END) FROM superhero
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT id FROM superpower WHERE power_name = 'Cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294 
SELECT full_name FROM superhero WHERE weight_kg = 0 OR weight_kg IS NULL
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.full_name = 'Karen Beecher-Duncan'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.full_name = 'Helen Parr'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 108 AND T1.height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38 
SELECT T1.race FROM race AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.race_id INNER JOIN hero_attribute AS T3 ON T2.id = T3.hero_id WHERE T3.attribute_value = ( SELECT MAX(attribute_value) FROM hero_attribute )
SELECT T1.alignment, T4.power_name FROM alignment AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.alignment_id INNER JOIN hero_power AS T3 ON T2.id = T3.hero_id INNER JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T2.superhero_name = 'Atom IV'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN colour as T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue' LIMIT 5 
SELECT AVG(T2.attribute_value) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.alignment_id = 3
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.skin_colour_id = colour.id INNER JOIN hero_attribute ON superhero.id = hero_attribute.hero_id WHERE hero_attribute.attribute_value = 100
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T2.alignment = 'Good' AND T3.gender = 'Female'
SELECT DISTINCT T2.superhero_name FROM hero_attribute AS T1 INNER JOIN superhero AS T2 ON T1.hero_id = T2.id WHERE T1.attribute_value BETWEEN 75 AND 80
SELECT race.race FROM race INNER JOIN superhero ON race.id = superhero.race_id INNER JOIN colour ON superhero.hair_colour_id = colour.id INNER JOIN gender ON superhero.gender_id = gender.id WHERE colour.colour = 'blue' AND gender.gender = 'male' 
SELECT CAST(SUM(CASE WHEN T1.gender_id = 2 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Bad'
SELECT SUM(CASE WHEN T1.eye_colour_id = (SELECT id FROM colour WHERE colour = 'Blue') THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.eye_colour_id = (SELECT id FROM colour WHERE colour IS null) THEN 1 ELSE 0 END) AS Diff FROM superhero AS T1 WHERE T1.weight_kg = 0 OR T1.weight_kg IS NULL
SELECT T1.attribute_value FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T2.attribute_name = 'Strength' AND T3.superhero_name = 'Hulk'
SELECT T2.power_name FROM superpower AS T2 INNER JOIN hero_power AS T1 ON T2.id = T1.power_id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = 'Ajax'
SELECT COUNT(*) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T2.colour = 'Green' AND T3.alignment = 'Bad'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T2.gender = 'Female' AND T3.publisher_name = 'Marvel Comics'
SELECT T2.superhero_name FROM hero_power AS T1 INNER JOIN superhero AS T2 ON T1.hero_id = T2.id INNER JOIN superpower AS T3 ON T1.power_id = T3.id WHERE T3.power_name = 'Wind Control' ORDER BY T2.superhero_name ASC
SELECT T3.gender FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T4 ON T2.hero_id = T4.id INNER JOIN gender AS T3 ON T4.gender_id = T3.id WHERE T1.power_name = 'Phoenix Force'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics' ORDER BY T1.weight_kg DESC LIMIT 1
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T2.race <> 'Human' AND T3.publisher_name = 'Dark Horse Comics'
SELECT COUNT(DISTINCT T1.hero_id) FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'Speed' AND T1.attribute_value = 100 
SELECT (SELECT COUNT(*) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'DC Comics')) - (SELECT COUNT(*) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')) AS difference
SELECT T2.attribute_name FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = 'Black Panther' ORDER BY T1.attribute_value LIMIT 1 
SELECT T1.colour FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.superhero_name = 'Abomination'
SELECT full_name FROM superhero ORDER BY height_cm DESC LIMIT 1 
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT CAST(SUM(CASE WHEN T3.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T3.gender) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T2.publisher_name = 'George Lucas'
SELECT CAST(SUM(CASE WHEN T2.alignment = 'Good' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T3.publisher_name = 'Marvel Comics'
SELECT COUNT(id) FROM superhero WHERE full_name LIKE 'John%'
SELECT hero_id FROM hero_attribute ORDER BY attribute_value ASC LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT DISTINCT T1.full_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.weight_kg < 100 AND T2.colour = 'Brown'
SELECT T1.attribute_value FROM hero_attribute AS T1 INNER JOIN superhero AS T2 ON T1.hero_id = T2.id WHERE T2.superhero_name = 'Aquababy'
SELECT T1.weight_kg, T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.id = 40 
SELECT AVG(height_cm) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Neutral'
SELECT hero_id FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'Intelligence'
SELECT colour.colour FROM superhero INNER JOIN colour ON superhero.eye_colour_id = colour.id WHERE superhero.superhero_name = 'Blackwulf';
SELECT DISTINCT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id INNER JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.height_cm > ( SELECT AVG(height_cm) * 0.8 FROM superhero )
SELECT T1.driverRef FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.q1 IS NOT NULL AND T2.raceId = 18 ORDER BY T2.q1 DESC LIMIT 5
SELECT D.surname FROM drivers AS D INNER JOIN qualifying AS Q ON D.driverid = Q.driverid WHERE Q.raceid = 19 ORDER BY Q.q2 ASC LIMIT 1
SELECT T2.year FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.location = 'Shanghai' 
SELECT url FROM races WHERE circuitid = ( SELECT circuitid FROM circuits WHERE name = 'Circuit de Barcelona-Catalunya' )
SELECT T2.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = 'Germany'
SELECT T2.name, T2.location, T2.country FROM constructors AS T1 INNER JOIN circuits AS T2 ON T1.constructorid = T2.circuitid WHERE T1.name = 'Renault' 
SELECT COUNT(T1.raceid) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2010 AND T2.location NOT IN ('Asia', 'Europe') 
SELECT DISTINCT T2.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = 'Spain'
SELECT T1.lat, T1.lng FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = 'Australian Grand Prix'
SELECT T1.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = 'Sepang International Circuit'
SELECT T1.time FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = 'Sepang International Circuit'
SELECT c.lng, c.lat FROM circuits c JOIN races r ON c.circuitid = r.circuitid WHERE r.name = 'Abu Dhabi Grand Prix'
SELECT T2.country FROM constructorresults AS T1 INNER JOIN constructors AS T3 ON T1.constructorid = T3.constructorid INNER JOIN circuits AS T2 ON T2.circuitid = T3.constructorid WHERE T1.points = 1 AND T1.raceid = 24
SELECT q1 FROM qualifying WHERE driverid = ( SELECT driverid FROM drivers WHERE forename = 'Bruno' AND surname = 'Senna' ) AND raceid = 354 
SELECT T1.nationality FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.q2 = '0:01:40' AND T2.raceid = 355
SELECT number FROM drivers WHERE driverid = ( SELECT driverid FROM qualifying WHERE q3 = '0:01:54' AND raceid = 903 )
SELECT COUNT(T2.driverid) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.name = 'Bahrain Grand Prix' AND T1.year = 2007 AND T2.time IS NULL
SELECT T1.url FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901 
SELECT COUNT(DISTINCT T2.driverid) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.date = '2015-11-29' AND T2.time IS NOT NULL
SELECT T1.dob, T1.surname, T1.forename FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 592 AND T2.time IS NOT NULL ORDER BY T1.dob ASC LIMIT 1 
SELECT T1.url FROM drivers AS T1 INNER JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.time='0:01:27' AND T2.raceid=161
SELECT T2.nationality FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.raceid = 933 ORDER BY T1.fastestlapspeed DESC LIMIT 1
SELECT T2.lat, T2.lng FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = 'Malaysian Grand Prix'
SELECT T2.url FROM constructorresults AS T1 INNER JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T1.raceid = 9 ORDER BY T1.points DESC LIMIT 1
SELECT q1 FROM qualifying WHERE raceid = 345 AND driverid = (SELECT driverid FROM drivers WHERE forename = 'Lucas' AND surname = 'di Grassi')
SELECT T1.nationality FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.q2 = '0:01:15' AND T2.raceid = 347 
SELECT T1.code FROM drivers as T1 INNER JOIN qualifying as T2 ON T1.driverid = T2.driverid WHERE T2.q3 = '0:01:33' AND T2.raceid = 45
SELECT T2.time FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.forename = 'Bruce' AND T1.surname = 'McLaren' AND T2.raceid = 743 
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid INNER JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.year = 2006 AND T3.name = 'San Marino Grand Prix' AND T1.position = 2
SELECT T2.url FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceid = 901 
SELECT COUNT(T2.driverid) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid INNER JOIN status AS T3 ON T2.statusid = T3.statusid WHERE T1.date = '2015-11-29' AND T3.status = 'Finished'
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.raceid = 872 AND T1.time IS NOT NULL ORDER BY T2.dob DESC LIMIT 1 
SELECT T2.forename, T2.surname FROM laptimes AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.raceid = 348 ORDER BY T1.time LIMIT 1
SELECT T1.nationality FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.fastestlapspeed = ( SELECT MAX(fastestlapspeed) FROM results WHERE raceid = 348 )
SELECT (CAST(T1.fastestlapspeed AS REAL) - CAST(T2.fastestlapspeed AS REAL)) / CAST(T1.fastestlapspeed AS REAL) * 100 FROM results AS T1 INNER JOIN drivers ON T1.driverid = drivers.driverid INNER JOIN results AS T2 ON T1.driverid = T2.driverid WHERE drivers.driverref = 'resta' AND T1.raceid = 853 AND T2.raceid = 854
SELECT CAST(COUNT(CASE WHEN T2.time IS NOT NULL THEN 1 END) AS REAL) * 100 / COUNT(T2.driverid) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.date = '1983-07-16' 
SELECT MIN(year) FROM races WHERE name = 'Singapore Grand Prix'
SELECT COUNT(raceid), name FROM races WHERE year = 2005 ORDER BY name DESC 
SELECT T2.name FROM races AS T1 INNER JOIN races as T2 ON T1.raceid = T2.raceid WHERE strftime('%Y', T1.date) = strftime('%Y', (SELECT MIN(date) FROM races)) AND strftime('%m', T1.date) = strftime('%m', (SELECT MIN(date) FROM races))
SELECT name, date FROM races WHERE year = 1999 ORDER BY round DESC LIMIT 1;
SELECT year FROM races GROUP BY year ORDER BY COUNT(round) DESC LIMIT 1
SELECT name FROM races WHERE year = 2017 AND circuitid NOT IN ( SELECT circuitid FROM races WHERE year = 2000 )
SELECT T1.country, T1.name, T1.location FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = 'European Grand Prix' ORDER BY T2.year ASC LIMIT 1 
SELECT MAX(year) FROM races WHERE name = 'British Grand Prix' AND circuitid IN (SELECT circuitid FROM circuits WHERE name = 'Brands Hatch')
SELECT COUNT(DISTINCT T1.year) FROM races AS T1 INNER JOIN circuits as T2 ON T1.circuitid = T2.circuitid WHERE T1.name = 'British Grand Prix' AND T2.name = 'Silverstone Circuit'
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN driverstandings ON drivers.driverid = driverstandings.driverid INNER JOIN races ON driverstandings.raceid = races.raceid WHERE races.year = 2010 AND races.name = 'Singapore Grand Prix' ORDER BY driverstandings.position
SELECT d.forename, d.surname, max(ds.points) AS 'MaxPoints' FROM drivers d JOIN driverstandings ds ON d.driverid = ds.driverid GROUP BY d.driverid ORDER BY MaxPoints DESC LIMIT 1;
SELECT drivers.forename, drivers.surname, results.points FROM drivers INNER JOIN results ON results.driverid = drivers.driverid INNER JOIN races ON races.raceid = results.raceid WHERE races.name = "Chinese Grand Prix" AND races.year = 2017 ORDER BY results.points DESC LIMIT 3
SELECT T1.driverid, T2.raceid, MIN(T1.time) AS BestLapTime FROM laptimes AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid GROUP BY T1.driverid, T2.raceid ORDER BY BestLapTime ASC LIMIT 1;
SELECT AVG(T2.time) FROM drivers AS T1 INNER JOIN laptimes AS T2 ON T1.driverid = T2.driverid INNER JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T1.surname = 'Vettel' AND T3.name = 'Chinese Grand Prix' AND T3.year = 2009
SELECT CAST(SUM(CASE WHEN position > 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM results AS r JOIN races AS ra ON r.raceid = ra.raceid JOIN drivers AS d ON r.driverid = d.driverid WHERE d.surname = 'Hamilton' AND ra.year >= 2010
SELECT T1.surname, T1.forename, T1.nationality, AVG(T2.points) FROM drivers AS T1 INNER JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY COUNT(T2.wins) DESC LIMIT 1 
SELECT forename, surname, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', dob) as Age FROM drivers WHERE nationality = 'Japanese' ORDER BY dob DESC LIMIT 1
SELECT c.name, COUNT(r.raceid) AS num_races FROM circuits AS c INNER JOIN races AS r ON c.circuitid = r.circuitid WHERE r.year BETWEEN 1990 AND 2000 GROUP BY c.circuitid HAVING num_races = 4
SELECT T2.name AS circuit_name, T2.location AS circuit_location, T1.name AS race_name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2006 AND T2.country = 'USA'
SELECT r.name AS race_name, c.name AS circuit_name, c.location AS circuit_location FROM races r INNER JOIN circuits c ON r.circuitid = c.circuitid WHERE strftime('%Y', r.date) = '2005' AND strftime('%m', r.date) = '09';
SELECT T1.name FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = 'Alex' AND T3.surname = 'Yoong' AND T2.position < 10 
SELECT COUNT(driverstandings.wins) FROM driverstandings INNER JOIN drivers ON driverstandings.driverid = drivers.driverid INNER JOIN races ON driverstandings.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE drivers.surname = 'Schumacher' AND drivers.forename = 'Michael' AND circuits.name = 'Sepang International Circuit' AND driverstandings.wins > 0;
SELECT races.name, races.year FROM results INNER JOIN races ON results.raceid = races.raceid INNER JOIN drivers ON results.driverid = drivers.driverid WHERE drivers.surname = 'Schumacher' AND drivers.forename = 'Michael' ORDER BY results.fastestlaptime LIMIT 1
SELECT AVG(T2.points) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid INNER JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T1.surname = 'Irvine' AND T1.forename = 'Eddie' AND T3.year = 2000
SELECT races.name, results.points FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE drivers.surname = 'Hamilton' ORDER BY races.year LIMIT 1;
SELECT r.name AS race_name, c.country AS hosting_country FROM races r JOIN circuits c ON r.circuitid = c.circuitid WHERE r.year = 2017 ORDER BY r.date;
SELECT r.name, r.year, c.location FROM races r JOIN circuits c ON r.circuitid = c.circuitid WHERE r.raceid = ( SELECT rr.raceid FROM results rr GROUP BY rr.raceid ORDER BY SUM(rr.laps) DESC LIMIT 1)
SELECT CAST(COUNT(CASE WHEN T1.country = 'Germany' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T2.name) FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = 'European Grand Prix'
SELECT lat, lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT name FROM circuits WHERE name IN ('Silverstone Circuit', 'Hockenheimring', 'Hungaroring') ORDER BY lat DESC LIMIT 1
SELECT circuitref FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT COUNT(driverid) FROM drivers WHERE code IS NULL
SELECT T1.nationality FROM drivers AS T1 ORDER BY T1.dob LIMIT 1 
SELECT surname FROM drivers WHERE nationality = 'Italian'
SELECT url FROM drivers WHERE forename = 'Anthony' AND surname = 'Davidson'
SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton'
SELECT circuits.name FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE races.year = 2009 AND races.name = 'Spanish Grand Prix' 
SELECT DISTINCT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = 'Silverstone Circuit' 
SELECT races.url, races.raceid, races.year, races.name, races.date, races.round, races.time FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Silverstone Circuit'
SELECT races.time FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.location = 'Abu Dhabi' AND races.year = 2010;
SELECT COUNT(raceid) FROM races INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.country = 'Italy'
SELECT date FROM races WHERE circuitid = ( SELECT circuitid FROM circuits WHERE name = 'Barcelona-Catalunya' )
SELECT T1.url FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = 'Spanish Grand Prix' AND T2.year = 2009
SELECT MIN(T1.fastestlaptime) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.driverref = 'hamilton'
SELECT D.forename, D.surname FROM drivers AS D INNER JOIN results AS R ON D.driverid = R.driverid ORDER BY R.fastestlapspeed DESC LIMIT 1 
SELECT T3.driverref FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 2008 AND T1.name = 'Australian Grand Prix' AND T2.rank = 1
SELECT T1.name FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.surname = 'Hamilton' AND T3.forename = 'Lewis'
SELECT T2.name FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.surname = 'Hamilton' ORDER BY T1.rank ASC LIMIT 1 
SELECT MAX(T1.fastestlapspeed) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = 'Spanish Grand Prix'
SELECT DISTINCT T1.year FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.surname = 'Hamilton' AND T3.forename = 'Lewis'
SELECT T2.positionOrder FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid INNER JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T1.surname = 'Hamilton' AND T1.forename = 'Lewis' AND T3.name = 'Australian Grand Prix' AND T3.year = 2008
SELECT D.surname, D.forename FROM drivers AS D INNER JOIN results AS R ON D.driverid = R.driverid INNER JOIN races AS RA ON RA.raceid = R.raceid WHERE RA.name = 'Australian Grand Prix' AND RA.year = 2008 AND R.grid = 4
SELECT COUNT(T1.driverid) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = 'Australian Grand Prix' AND T1.time IS NOT NULL
SELECT MIN(T1.time) FROM laptimes AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid INNER JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T2.surname = 'Hamilton' AND T2.forename = 'Lewis' AND T3.name = 'Australian Grand Prix' AND T3.year = 2008
SELECT T2.time FROM results AS T2 INNER JOIN races AS T1 ON T2.raceid = T1.raceid WHERE T1.year = 2008 AND T1.name = 'Australian Grand Prix' AND T2.position = 2 
SELECT T3.forename, T3.surname, T3.url FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = 'Australian Grand Prix' AND T1.year = 2008 AND T2.time LIKE '%:%:%.%'
SELECT COUNT(DISTINCT T1.driverid) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid INNER JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T1.nationality = 'American' AND T3.name = 'Australian Grand Prix' AND T3.year = 2008 
SELECT COUNT(DISTINCT T1.driverid) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.year = 2008 AND T2.name = 'Australian Grand Prix' AND T1.time IS NOT NULL AND EXISTS (SELECT 1 FROM results AS R WHERE R.driverid = T1.driverid AND R.time IS NOT NULL)
SELECT SUM(points) FROM results WHERE driverid=(SELECT driverid FROM drivers WHERE forename='Lewis' AND surname='Hamilton')
SELECT AVG(STRFTIME('%M', T1.fastestlaptime) * 60 + STRFTIME('%S', T1.fastestlaptime)) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.driverref = 'lewis_hamilton'
SELECT CAST(SUM(CASE WHEN time IS NOT NULL THEN 1.0 ELSE 0 END) AS REAL) * 100 / COUNT(raceid) FROM results WHERE raceid = (SELECT raceid from races WHERE name = 'Australian Grand Prix' AND year = 2008)
SELECT (CAST((MAX(T1.milliseconds) - MIN(T1.milliseconds)) AS REAL) / MAX(T1.milliseconds)) * 100 AS percentage FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN driverstandings AS T3 ON T1.driverid = T3.driverid AND T2.raceid = T3.raceid WHERE T2.year = 2008 AND T2.name = 'Australian Grand Prix' AND T1.time IS NOT NULL AND T3.position = 1
SELECT COUNT(circuitid) FROM circuits WHERE country = 'Australia' AND location = 'Melbourne'
SELECT lat, lng FROM circuits WHERE country = 'USA'
SELECT COUNT(driverid) FROM drivers WHERE nationality = 'British' AND STRFTIME('%Y', dob) > '1980' 
SELECT AVG(points) FROM constructorresults WHERE constructorid IN ( SELECT constructorid FROM constructors WHERE nationality = 'British' )
SELECT T1.name FROM constructors AS T1 INNER JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 INNER JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 291 AND T2.points = 0
SELECT COUNT(T1.constructorid) FROM constructors AS T1 INNER JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.points = 0 AND T1.nationality = 'Japanese' GROUP BY T1.constructorid HAVING COUNT(T2.raceid) = 2
SELECT name FROM constructors WHERE constructorid IN ( SELECT constructorid FROM results WHERE rank = 1 )
SELECT COUNT(DISTINCT c.constructorid) FROM constructors AS c INNER JOIN results AS r ON c.constructorid = r.constructorid WHERE c.nationality = 'French' AND r.laps > 50
SELECT CAST(COUNT(CASE WHEN not R.time is NULL THEN 1 ELSE null END) AS REAL) * 100 / COUNT(R.driverid) FROM (races AS C JOIN results AS R ON C.raceid = R.raceid) JOIN drivers AS D ON D.driverid = R.driverid WHERE D.nationality = 'Japanese' AND C.year BETWEEN 2007 AND 2009
SELECT T4.year, AVG(T1.milliseconds) / 1000 FROM results AS T1 INNER JOIN status AS T2 ON T1.statusid = T2.statusid INNER JOIN driverstandings AS T3 ON T1.driverid = T3.driverid AND T1.raceid = T3.raceid INNER JOIN races AS T4 ON T1.raceid = T4.raceid WHERE T2.status = 'Finished' AND T3.position = 1 AND T1.time IS NOT NULL GROUP BY T4.year
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid WHERE STRFTIME('%Y', T1.dob) > '1975' AND T2.rank = 2
SELECT COUNT(DISTINCT T1.driverid) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = 'Italian' AND T2.time IS NULL
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid ORDER BY T2.fastestlaptime ASC LIMIT 1
SELECT T1.lap, T4.forename, T4.surname FROM laptimes AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid AND T1.raceid = T2.raceid INNER JOIN driverstandings AS T3 ON T2.driverid = T3.driverid AND T2.raceid = T3.raceid INNER JOIN drivers AS T4 ON T3.driverid = T4.driverid INNER JOIN seasons AS T5 ON T5.year = 2009 WHERE T3.position = 1 ORDER BY T2.fastestlaptime ASC LIMIT 1
SELECT AVG(results.fastestlapspeed) FROM results JOIN races ON races.raceid = results.raceid WHERE races.name = 'Spanish Grand Prix' AND races.year = 2009
SELECT T2.name, T2.year FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.milliseconds IS NOT NULL ORDER BY T1.milliseconds ASC LIMIT 1 
SELECT CAST(COUNT(CASE WHEN drivers.dob < '1985-01-01' AND results.laps > 50 THEN 1 END) AS REAL) * 100 / COUNT(drivers.driverid) FROM drivers INNER JOIN results ON drivers.driverid = results.driverid INNER JOIN races ON results.raceid = races.raceid WHERE races.year BETWEEN 2000 AND 2005;
SELECT COUNT(DISTINCT T1.driverid) FROM drivers AS T1 INNER JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = 'French' AND T2.milliseconds < 120000
SELECT code FROM drivers WHERE nationality = 'America'
SELECT raceid FROM races WHERE year = 2009
SELECT COUNT(driverid) FROM results WHERE raceid = 18
SELECT code FROM drivers WHERE nationality = 'Dutch' ORDER BY dob DESC LIMIT 3
SELECT driverref FROM drivers WHERE forename = 'Robert' AND surname = 'Kubica'
SELECT COUNT(driverid) FROM drivers WHERE strftime('%Y', dob) = '1980' AND nationality = 'Australian'
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE drivers.nationality = 'German' AND STRFTIME('%Y', drivers.dob) BETWEEN '1980' AND '1990' ORDER BY laptimes.time LIMIT 3
SELECT driverref FROM drivers WHERE nationality = 'German' ORDER BY dob ASC LIMIT 1;
SELECT drivers.driverid, drivers.code FROM drivers INNER JOIN results ON drivers.driverid = results.driverid WHERE STRFTIME('%Y', drivers.dob) = '1971' AND results.fastestlaptime IS NOT NULL ORDER BY results.fastestlaptime ASC
SELECT drivers.forename, drivers.surname FROM drivers INNER JOIN laptimes ON drivers.driverid = laptimes.driverid WHERE STRFTIME('%Y', drivers.dob) < '1982' AND drivers.nationality = "Spanish" ORDER BY laptimes.time DESC LIMIT 10
SELECT T2.year FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.fastestlaptime IS NOT NULL ORDER BY T1.fastestlaptime ASC LIMIT 1
SELECT T1.year FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year INNER JOIN laptimes AS T3 ON T2.raceid = T3.raceid ORDER BY T3.time ASC LIMIT 1
SELECT driverid FROM laptimes WHERE lap = 1 ORDER BY time ASC LIMIT 5;
SELECT COUNT(*) FROM results WHERE statusid = 2 AND time IS NOT NULL AND raceid BETWEEN 50 AND 100
SELECT location, lat, lng, COUNT(circuitid) FROM circuits WHERE country = 'Austria' GROUP BY location, lat, lng
SELECT raceid FROM results WHERE time IS NOT NULL GROUP BY raceid ORDER BY COUNT(*) DESC LIMIT 1; 
SELECT T1.driverref, T1.nationality, T1.dob FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.q2 IS NOT NULL AND T2.raceid = 23 
SELECT races.year, races.date, races.time, races.name FROM drivers JOIN qualifying ON drivers.driverid = qualifying.driverid JOIN races ON qualifying.raceid = races.raceid WHERE drivers.dob = ( SELECT MAX(dob) FROM drivers ) ORDER BY races.date ASC LIMIT 1
SELECT COUNT(DISTINCT T1.driverid) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = 'American' AND T2.statusid = 2
SELECT T1.name, T1.url FROM constructors AS T1 INNER JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = 'Italian' ORDER BY T2.points DESC LIMIT 1
SELECT T1.url FROM constructors AS T1 INNER JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid GROUP BY T1.url ORDER BY SUM(T2.wins) DESC LIMIT 1
SELECT T3.forename, T3.surname FROM laptimes AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.name = 'French Grand Prix' AND T1.lap = 3 ORDER BY T1.time DESC LIMIT 1 
SELECT T2.name, T1.milliseconds FROM laptimes AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.lap = 1 ORDER BY T1.milliseconds ASC LIMIT 1 
SELECT AVG(T1.fastestlaptime) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid= T2.raceid INNER JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.year = 2006 AND T2.name = 'United States Grand Prix' AND T1.rank < 11
SELECT drivers.driverid, drivers.surname, drivers.forename, AVG(pitstops.milliseconds) AS 'Average_Pit_Stop_Duration' FROM drivers JOIN pitstops ON drivers.driverid = pitstops.driverid WHERE drivers.nationality = 'German' AND drivers.dob BETWEEN '1980-01-01' AND '1985-12-31' GROUP BY drivers.driverid ORDER BY Average_Pit_Stop_Duration ASC LIMIT 5
SELECT T3.forename, T3.surname, T1.time FROM results AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.name = 'Canadian Grand Prix' AND T2.year = 2008 AND T1.rank = 1 
SELECT T1.constructorref, T1.url FROM constructors AS T1 INNER JOIN results AS T2 ON T1.constructorid = T2.constructorid INNER JOIN races as T3 ON T2.raceid = T3.raceid WHERE T3.name = 'Singapore Grand Prix' AND T3.year=2009 ORDER BY T2.time ASC LIMIT 1
SELECT forename, surname, dob FROM drivers WHERE STRFTIME('%Y', dob) BETWEEN '1981' AND '1991' AND nationality = 'Austrian'
SELECT forename || ' ' || surname AS full_name, url, dob FROM drivers WHERE nationality = 'German' AND STRFTIME('%Y', dob) BETWEEN '1971' AND '1985' ORDER BY dob DESC;
SELECT location, country, lat, lng FROM circuits WHERE name = 'Hungaroring'
SELECT MAX(T2.points), T3.name, T3.nationality FROM races AS T1 INNER JOIN constructorresults AS T2 ON T1.raceid = T2.raceid INNER JOIN constructors AS T3 ON T3.constructorid = T2.constructorid WHERE T1.name = 'Monaco Grand Prix' AND T1.year BETWEEN 1980 AND 2010 ORDER BY T2.points DESC LIMIT 1
SELECT AVG(T3.points) FROM drivers AS T1 INNER JOIN results AS T3 ON T1.driverid = T3.driverid INNER JOIN races AS T2 ON T3.raceid = T2.raceid WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton' AND T2.name = 'Turkish Grand Prix' 
SELECT CAST(COUNT(raceid) AS REAL) / 10 FROM races WHERE date BETWEEN '2000-01-01' AND '2010-12-31' 
SELECT nationality FROM drivers GROUP BY nationality ORDER BY COUNT(driverid) DESC LIMIT 1
SELECT wins FROM driverstandings WHERE points = (SELECT points FROM results WHERE rank = 91)
SELECT T1.name FROM races AS T1 INNER JOIN results AS T2 ON T1.raceid = T2.raceid ORDER BY T2.fastestlaptime ASC LIMIT 1
SELECT location, country FROM circuits WHERE circuitid = ( SELECT circuitid FROM races ORDER BY date DESC LIMIT 1 )
SELECT T3.forename, T3.surname FROM qualifying AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T1.driverid = T3.driverid INNER JOIN circuits AS T4 ON T2.circuitid = T4.circuitid WHERE T4.name = 'Marina Bay Street Circuit' AND T2.year = 2008 AND T1.position = 1 AND T2.round = 3 ORDER BY T1.q3 ASC LIMIT 1
SELECT T1.forename || ' ' || T1.surname AS FullName, T1.nationality, T3.name FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverid = T2.driverid INNER JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T1.dob = ( SELECT MAX(dob) FROM drivers ) ORDER BY T3.date ASC LIMIT 1
SELECT COUNT(results.statusid), drivers.driverid, drivers.surname FROM results INNER JOIN drivers ON results.driverid = drivers.driverid INNER JOIN races ON results.raceid = races.raceid INNER JOIN status ON results.statusid = status.statusid WHERE status.status = 'Accident' AND races.name = 'Canadian Grand Prix' GROUP BY drivers.driverid ORDER BY COUNT(results.statusid) DESC LIMIT 1;
SELECT T1.forename, T1.surname, SUM(T2.wins) FROM drivers AS T1 INNER JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid, T1.forename, T1.surname ORDER BY T1.dob ASC LIMIT 1
SELECT MAX(duration) FROM pitstops 
SELECT MIN(time) FROM laptimes 
SELECT MAX(duration) FROM pitstops WHERE driverid = ( SELECT driverid FROM drivers WHERE driverref = 'lewis' )
SELECT T1.lap FROM pitstops AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid INNER JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton' AND T3.name = 'Australian Grand Prix' AND T3.year = 2011
SELECT T3.surname, T3.forename, T1.duration FROM pitstops AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.name = 'Australian Grand Prix' AND T2.year = 2011
SELECT MIN(T1.time) FROM laptimes AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.surname = 'Hamilton' AND T2.forename = 'Lewis'
SELECT T2.forename, T2.surname FROM laptimes AS T1 INNER JOIN drivers AS T2 ON T1.driverid = T2.driverid ORDER BY T1.time ASC LIMIT 1
SELECT C.name, C.location, C.country, R.fastestlap FROM drivers D INNER JOIN results R ON D.driverid = R.driverid INNER JOIN races RA ON R.raceid = RA.raceid INNER JOIN circuits C ON RA.circuitid = C.circuitid WHERE D.driverref = 'lewis' AND R.fastestlap IS NOT NULL ORDER BY R.fastestlaptime ASC LIMIT 1; 
SELECT MIN(T1.time) FROM laptimes AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.name = 'Austrian Grand Prix'
SELECT T1.name AS 'Circuit Name', MIN(T3.time) AS 'Lap Record' FROM circuits T1 INNER JOIN races T2 ON T1.circuitid = T2.circuitid INNER JOIN laptimes T3 ON T2.raceid = T3.raceid WHERE T1.country = 'Italy' GROUP BY T1.name
SELECT races.name FROM laptimes INNER JOIN races ON laptimes.raceid = races.raceid INNER JOIN circuits ON races.circuitid = circuits.circuitid WHERE circuits.name = 'Austrian Grand Prix Circuit' ORDER BY laptimes.time ASC LIMIT 1
SELECT P.duration FROM laptimes L INNER JOIN races R on L.raceid = R.raceid INNER JOIN pitstops P on L.driverid = P.driverid AND L.raceid = P.raceid INNER JOIN circuits C on R.circuitid = C.circuitid WHERE C.name = 'Austrian Grand Prix Circuit' ORDER BY L.time ASC LIMIT 1
SELECT C1.lat, C1.lng FROM circuits AS C1 INNER JOIN races AS R1 ON R1.circuitid = C1.circuitid INNER JOIN results AS R2 ON R2.raceid = R1.raceid WHERE R2.fastestlaptime = '1:29.488'
SELECT AVG(milliseconds) FROM pitstops WHERE driverid = ( SELECT driverid FROM drivers WHERE surname = 'Hamilton' AND forename = 'Lewis' )
SELECT AVG(T1.milliseconds) FROM laptimes AS T1 INNER JOIN races AS T2 ON T1.raceid = T2.raceid INNER JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = 'Italy'
SELECT player_api_id FROM player_attributes ORDER BY overall_rating DESC LIMIT 1
SELECT player_name, height FROM player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM player_attributes ORDER BY potential ASC LIMIT 1;
SELECT COUNT(player_api_id) FROM player_attributes WHERE overall_rating BETWEEN 60 AND 65 AND defensive_work_rate = 'low'
SELECT player_api_id FROM player_attributes ORDER BY crossing DESC LIMIT 5
SELECT T2.name FROM match AS T1 INNER JOIN league AS T2 ON T1.league_id = T2.id WHERE T1.season = '2015/2016' GROUP BY T2.name ORDER BY SUM(T1.home_team_goal + T1.away_team_goal) DESC LIMIT 1
SELECT T2.team_long_name FROM match AS T1 INNER JOIN team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.season = '2015/2016' AND T1.home_team_goal < T1.away_team_goal GROUP BY T2.team_long_name ORDER BY COUNT(*) ASC LIMIT 1 
SELECT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.penalties DESC LIMIT 10
SELECT T1.team_long_name FROM team AS T1 INNER JOIN match AS T2 ON T1.team_api_id = T2.away_team_api_id INNER JOIN league AS T3 ON T2.league_id = T3.id INNER JOIN country AS T4 ON T3.country_id = T4.id WHERE T3.name = 'Scotland Premier League' AND T2.season = '2009/2010' AND T2.away_team_goal > T2.home_team_goal GROUP BY T1.team_long_name ORDER BY COUNT(T2.away_team_goal) DESC LIMIT 1
SELECT T1.team_long_name, T2.buildupplayspeed FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY T2.buildupplayspeed DESC LIMIT 4 
SELECT T2.name FROM match AS T1 INNER JOIN league AS T2 ON T1.league_id = T2.id WHERE T1.season = '2015/2016' AND T1.home_team_goal = T1.away_team_goal GROUP BY T1.league_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.birthday) AS age, T1.player_name, T2.sprint_speed FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND STRFTIME('%Y', T2.date) BETWEEN 2013 AND 2015 ORDER BY age DESC;
SELECT L.name, COUNT(M.league_id) as Total_Matches FROM league AS L INNER JOIN match AS M ON L.id = M.league_id GROUP BY M.league_id ORDER BY COUNT(M.league_id) DESC LIMIT 1
SELECT AVG(height) FROM player WHERE birthday BETWEEN '1990-01-01 00:00:00' AND '1995-12-31 23:59:59'
SELECT player_api_id FROM player_attributes WHERE substr(date,1,4) = '2010' GROUP BY player_api_id HAVING overall_rating > (SELECT AVG(overall_rating) FROM player_attributes WHERE substr(date,1,4) = '2010') ORDER BY overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM team_attributes WHERE buildupplayspeed BETWEEN 51 AND 59
SELECT T1.team_long_name FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplaypassing > (SELECT AVG(buildupplaypassing) FROM team_attributes WHERE buildupplaypassing IS NOT NULL AND strftime('%Y', date) = '2012') AND strftime('%Y', T2.date) = '2012'
SELECT CAST(SUM(CASE WHEN preferred_foot = 'left' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(player_fifa_api_id) FROM player_attributes WHERE player_fifa_api_id IN (SELECT player_fifa_api_id FROM player WHERE SUBSTR(birthday, 1, 4) BETWEEN '1987' AND '1992')
SELECT league.name FROM league JOIN match ON match.league_id = league.id GROUP BY league.name ORDER BY SUM(match.home_team_goal + match.away_team_goal) ASC LIMIT 5
SELECT AVG(T2.long_shots) FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Ahmed Samir Farag'
SELECT player.player_name, AVG(player_attributes.heading_accuracy) FROM player INNER JOIN player_attributes ON player.player_fifa_api_id = player_attributes.player_fifa_api_id WHERE player.height > 180 GROUP BY player.player_name ORDER BY AVG(player_attributes.heading_accuracy) DESC LIMIT 10;
SELECT T2.team_long_name, T1.chancecreationpassing FROM team_attributes AS T1 INNER JOIN team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.date >= '2014-01-01 00:00:00' AND T1.date <= '2014-12-31 23:59:59' AND T1.buildupplaydribblingclass = 'Normal' AND T1.chancecreationpassing < (SELECT AVG(chancecreationpassing) FROM team_attributes WHERE date >='2014-01-01 00:00:00' AND date <='2014-12-31 23:59:59' AND buildupplaydribblingclass = 'Normal') ORDER BY T1.chancecreationpassing DESC
SELECT L.name FROM league L INNER JOIN match M ON L.id = M.league_id WHERE M.season = "2009/2010" GROUP BY L.id HAVING AVG(home_team_goal) > AVG(away_team_goal)
SELECT team_short_name FROM team WHERE team_long_name = 'Queens Park Rangers' 
SELECT player_name FROM player WHERE SUBSTR(birthday,1,4) = '1970' AND SUBSTR(birthday,6,2) = '10';
SELECT attacking_work_rate FROM player_attributes WHERE player_api_id = (SELECT player_api_id FROM player WHERE player_name = 'Franco Zennaro') 
SELECT buildupplaypositioningclass FROM team_attributes WHERE team_fifa_api_id = ( SELECT team_fifa_api_id FROM team WHERE team_long_name = 'ADO Den Haag' )
SELECT heading_accuracy FROM player_attributes WHERE date = '2014-09-18 00:00:00' AND player_api_id IN ( SELECT player_api_id FROM player WHERE player_name = 'Francois Affolter' )
SELECT overall_rating FROM player_attributes WHERE player_api_id = (SELECT player_api_id FROM player WHERE player_name = 'Gabriel Tamas') AND strftime('%Y', date) = '2011'
SELECT COUNT(match.id) FROM match INNER JOIN league ON match.league_id = league.id INNER JOIN country ON league.country_id = country.id WHERE match.season = '2015/2016' AND league.name = 'Scotland Premier League' AND country.name = 'Scotland'
SELECT T2.preferred_foot FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday DESC LIMIT 1
SELECT player_name FROM player WHERE player_api_id IN ( SELECT player_api_id FROM player_attributes WHERE potential = ( SELECT MAX(potential) FROM player_attributes ) ) 
SELECT COUNT(T2.id) FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'left'
SELECT T1.team_short_name FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chancecreationpassingclass = 'Risky'
SELECT defensive_work_rate FROM player_attributes WHERE player_api_id = ( SELECT player_api_id FROM player WHERE player_name = 'David Wilson' )
SELECT T2.birthday FROM player_attributes AS T1 INNER JOIN player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.overall_rating DESC LIMIT 1
SELECT name FROM league WHERE country_id = ( SELECT id FROM country WHERE name = 'Netherlands' )
SELECT AVG(home_team_goal) FROM match AS m INNER JOIN country AS c ON m.country_id = c.id WHERE c.name = 'Poland' AND m.season = '2010/2011'
SELECT T1.player_name, AVG(T2.finishing) as avg_finishing FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_name HAVING T1.height IN (SELECT MAX(height) FROM player UNION SELECT MIN(height) FROM player) ORDER BY avg_finishing DESC LIMIT 1
SELECT player_name FROM player WHERE height > 180
SELECT COUNT(id) FROM player WHERE STRFTIME('%Y', birthday) > '1990'
SELECT COUNT(player_name) FROM player WHERE player_name LIKE 'Adam%' AND weight > 170 
SELECT DISTINCT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE strftime('%Y', T2.date) BETWEEN '2008' AND '2010' AND T2.overall_rating > 80 
SELECT potential FROM player_attributes WHERE player_api_id = ( SELECT player_api_id FROM player WHERE player_name = 'Aaron Doran' )
SELECT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'left'
SELECT T1.team_long_name FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeedclass = 'Fast'
SELECT T2.buildupplaypassingclass FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_short_name = 'CLB'
SELECT T1.team_short_name FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplaypassing > 70
SELECT AVG(T1.overall_rating) FROM player_attributes AS T1 INNER JOIN player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.height > 170 AND strftime('%Y', T1.date) BETWEEN '2010' AND '2015'
SELECT player_name FROM player ORDER BY height ASC LIMIT 1 
SELECT T2.name AS country_name FROM league AS T1 INNER JOIN country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Italy Serie A'
SELECT T1.team_short_name FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeed = 31 AND T2.buildupplaydribbling = 53 AND T2.buildupplaypassing = 32
SELECT AVG(overall_rating) FROM player_attributes WHERE player_api_id = (SELECT player_api_id FROM player WHERE player_name = "Aaron Doran")
SELECT COUNT(match.id) FROM match INNER JOIN league ON match.league_id = league.id INNER JOIN country ON league.country_id = country.id WHERE country.name = 'Germany' AND league.name = 'Germany 1. Bundesliga' AND STRFTIME('%Y-%m', match.date) BETWEEN '2008-08' AND '2008-10';
SELECT team.team_short_name FROM match INNER JOIN team ON match.home_team_api_id = team.team_api_id WHERE match.home_team_goal = 10
SELECT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.potential = 61 ORDER BY T2.balance DESC LIMIT 1
SELECT CAST(SUM(IIF(T1.player_name = 'Abdou Diallo', T2.ball_control, 0)) AS REAL) / COUNT(IIF(T1.player_name = 'Abdou Diallo', 1, NULL)) - CAST(SUM(IIF(T1.player_name = 'Aaron Appindangoye', T2.ball_control, 0)) AS REAL) / COUNT(IIF(T1.player_name = 'Aaron Appindangoye', 1, NULL)) FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id
SELECT team_long_name FROM team WHERE team_short_name = 'GEN'
SELECT player_name FROM player WHERE player_name IN ('Aaron Lennon', 'Abdelaziz Barrada') ORDER BY birthday ASC LIMIT 1
SELECT player_name FROM player ORDER BY height DESC LIMIT 1 
SELECT COUNT(player_api_id) FROM player_attributes WHERE preferred_foot = 'left' AND attacking_work_rate = 'low'
SELECT T2.name FROM league AS T1 INNER JOIN country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Belgium Jupiler League'
SELECT T1.name FROM league AS T1 INNER JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany'
SELECT player_name FROM player WHERE player_api_id IN ( SELECT player_api_id FROM player_attributes WHERE overall_rating = ( SELECT MAX(overall_rating) FROM player_attributes ) )
SELECT COUNT(DISTINCT T1.player_api_id) FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE strftime('%Y', T1.birthday) < '1986' AND T2.defensive_work_rate = 'high'
SELECT player_name, MAX(crossing) as Max_Crossing FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player_name IN ('Alexis', 'Ariel Borysiuk', 'Arouna Kone') GROUP BY player_name ORDER BY Max_Crossing DESC LIMIT 1
SELECT heading_accuracy FROM player_attributes WHERE player_api_id = ( SELECT player_api_id FROM player WHERE player_name = 'Ariel Borysiuk' )
SELECT COUNT(DISTINCT player.player_api_id) FROM player INNER JOIN player_attributes ON player.player_api_id = player_attributes.player_api_id WHERE player.height > 180 AND player_attributes.volleys > 70;
SELECT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70 
SELECT COUNT(*) FROM match AS T1 INNER JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Belgium' AND T1.season = '2008/2009'
SELECT T2.long_passing FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday LIMIT 1 
SELECT COUNT(match.id) FROM match INNER JOIN league ON match.league_id = league.id WHERE league.name = 'Belgium Jupiler League' AND STRFTIME('%Y', match.date) = '2009' AND STRFTIME('%m', match.date) = '04'
SELECT T2.name FROM match AS T1 INNER JOIN league AS T2 ON T1.league_id = T2.id WHERE T1.season = '2008/2009' GROUP BY T2.name ORDER BY COUNT(T1.league_id) DESC LIMIT 1
SELECT AVG(T1.overall_rating) FROM player_attributes AS T1 INNER JOIN player AS T2 ON T1.player_api_id = T2.player_api_id WHERE strftime('%Y', T2.birthday) < '1986'
SELECT CAST((SELECT overall_rating FROM player_attributes WHERE player_api_id = (SELECT player_api_id FROM player WHERE player_name = 'Ariel Borysiuk')) - (SELECT overall_rating FROM player_attributes WHERE player_api_id = (SELECT player_api_id FROM player WHERE player_name = 'Paulin Puel')) AS REAL) * 100 / (SELECT overall_rating FROM player_attributes WHERE player_api_id = (SELECT player_api_id FROM player WHERE player_name = 'Paulin Puel')) AS percentage_difference 
SELECT AVG(T2.buildupplayspeed) FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Heart of Midlothian'
SELECT AVG(T2.overall_rating) FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Pietro Marino'
SELECT SUM(T1.crossing) FROM player_attributes AS T1 INNER JOIN player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Aaron Lennox'
SELECT T1.chancecreationpassingclass, MAX(T1.chancecreationpassing) AS highest_chance_creation_passing FROM team_attributes AS T1 INNER JOIN team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = 'Ajax' GROUP BY T1.chancecreationpassingclass ORDER BY MAX(T1.chancecreationpassing) DESC LIMIT 1
SELECT preferred_foot FROM player_attributes WHERE player_api_id = ( SELECT player_api_id FROM player WHERE player_name = 'Abdou Diallo' ) 
SELECT MAX(T1.overall_rating) FROM player_attributes AS T1 INNER JOIN player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Dorlan Pabon'
SELECT AVG(match.away_team_goal) FROM match INNER JOIN team ON match.away_team_api_id = team.team_api_id INNER JOIN country ON match.country_id = country.id WHERE team.team_long_name = 'Parma' AND country.name = 'Italy'
SELECT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 77 AND T2.date = '2016-06-23' ORDER BY T1.birthday ASC LIMIT 1 
SELECT T2.overall_rating FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Aaron Mooy' AND T2.date = '2016-02-04 00:00:00'
SELECT T2.potential FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Francesco Parravicini' AND T2.date = '2010-08-30 00:00:00'
SELECT T1.attacking_work_rate FROM player_attributes AS T1 INNER JOIN player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francesco Migliore' AND T1.date = '2015-05-01 00:00:00'
SELECT defensive_work_rate FROM player_attributes WHERE date = '2013-02-22 00:00:00' AND player_api_id = ( SELECT player_api_id FROM player WHERE player_name = 'Kevin Berigaud' )
SELECT date FROM player_attributes WHERE player_api_id = ( SELECT player_api_id FROM player WHERE player_name = 'Kevin Constant' ) AND crossing = ( SELECT MAX(crossing) FROM player_attributes WHERE player_api_id = ( SELECT player_api_id FROM player WHERE player_name = 'Kevin Constant' ) ) ORDER BY date ASC LIMIT 1
SELECT T2.buildupplayspeedclass FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Willem II' AND T2.date = '2011-02-22 00:00:00'
SELECT T1.buildupplaydribblingclass FROM team_attributes AS T1 INNER JOIN team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = 'LEI' AND T1.date = '2015-09-10 00:00:00'
SELECT T1.buildupplaypassingclass FROM team_attributes AS T1 INNER JOIN team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = 'FC Lorient' AND T1.date = '2010-02-22'
SELECT T2.chancecreationpassingclass FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'PEC Zwolle' AND T2.date = '2013-09-20 00:00:00'
SELECT T1.chancecreationcrossingclass FROM team_attributes AS T1 INNER JOIN team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = 'Hull City' AND T1.date = '2010-02-22 00:00:00'
SELECT T2.defenceaggressionclass FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Hannover 96' AND T2.date = '2015-09-10 00:00:00'
SELECT AVG(T2.overall_rating) FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Marko Arnautovic' AND T2.date BETWEEN '2007-02-22 00:00:00' AND '2016-04-21 00:00:00'
SELECT (CAST(T1.overall_rating AS REAL) - T2.overall_rating) * 100 / T2.overall_rating AS Percentage FROM player_attributes AS T1 INNER JOIN player AS T3 ON T1.player_api_id = T3.player_api_id AND T1.player_fifa_api_id = T3.player_fifa_api_id INNER JOIN player_attributes AS T2 INNER JOIN player AS T4 ON T2.player_api_id = T4.player_api_id AND T2.player_fifa_api_id = T4.player_fifa_api_id WHERE T3.player_name = 'Landon Donovan' AND T4.player_name = 'Jordan Bowery' AND T1.date = '2013-07-12' AND T2.date = '2013-07-12'
SELECT player_name FROM player ORDER BY height DESC LIMIT 5
SELECT player_api_id FROM player ORDER BY weight DESC LIMIT 10
SELECT player_name FROM player WHERE STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', birthday) >= 35
SELECT SUM(home_team_goal) FROM player AS T1 INNER JOIN match AS T2 ON T1.player_api_id = T2.home_player_1 WHERE T1.player_name = 'Aaron Lennon'
SELECT SUM(away_team_goal) FROM match WHERE away_player_1 IN ( SELECT player_api_id FROM player WHERE player_name IN ('Daan Smith', 'Filipe Ferreira') );
SELECT SUM(T1.home_team_goal) FROM match AS T1 INNER JOIN player AS T2 ON T1.home_player_1 = T2.player_api_id OR T1.home_player_11 = T2.player_api_id WHERE (STRFTIME('%Y', 'now') - STRFTIME('%Y', T2.birthday)) <= 30
SELECT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 10
SELECT player_name FROM player WHERE player_api_id = ( SELECT player_api_id FROM player_attributes ORDER BY potential DESC LIMIT 1 )
SELECT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = 'high'
SELECT T1.player_name FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = 1 ORDER BY T1.birthday LIMIT 1
SELECT DISTINCT T1.player_name FROM player AS T1 INNER JOIN match AS T2 ON T1.player_api_id = T2.home_player_1 OR T1.player_api_id = T2.home_player_2 OR T1.player_api_id = T2.home_player_3 OR T1.player_api_id = T2.home_player_4 OR T1.player_api_id = T2.home_player_5 OR T1.player_api_id = T2.home_player_10 OR T1.player_api_id = T2.home_player_11 OR T1.player_api_id = T2.away_player_9 INNER JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.name = "Belgium"
SELECT T3.name, T2.player_name FROM player_attributes AS T1 INNER JOIN player AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN country AS T3 ON T2.id = T3.id WHERE T1.vision > 89; 
SELECT T2.name FROM player AS T1 INNER JOIN country AS T2 ON T1.id = T2.id GROUP BY T2.name ORDER BY AVG(T1.weight) DESC LIMIT 1
SELECT T1.team_long_name FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeedclass = 'Slow'
SELECT T1.team_short_name FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chancecreationpassingclass = 'Safe'
SELECT AVG(T1.height) FROM player AS T1 INNER JOIN league AS T2 ON T1.id = T2.country_id INNER JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Italy'
SELECT player_name FROM player WHERE height > 180 ORDER BY player_name ASC LIMIT 3
SELECT COUNT(player_name) FROM player WHERE player_name LIKE 'Aaron%' AND birthday > '1990'
SELECT ( SELECT jumping FROM player_attributes WHERE player_api_id = 6 ) - ( SELECT jumping FROM player_attributes WHERE player_api_id = 23 ) AS difference;
SELECT player_api_id FROM player_attributes WHERE preferred_foot = 'right' ORDER BY potential ASC LIMIT 3
SELECT COUNT(player_api_id) FROM player_attributes WHERE crossing = (SELECT MAX(crossing) FROM player_attributes) AND preferred_foot = 'left'
SELECT CAST(SUM(CASE WHEN stamina > 80 AND strength > 80 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(player_api_id) FROM player_attributes
SELECT c.name FROM league l INNER JOIN country c ON l.country_id = c.id WHERE l.name = 'Poland Ekstraklasa'
SELECT home_team_goal, away_team_goal FROM match WHERE date LIKE '2008-09-24%' AND league_id = ( SELECT id FROM league WHERE name = 'Belgian Jupiler League' )
SELECT sprint_speed, agility, acceleration FROM player_attributes WHERE player_api_id = ( SELECT player_api_id FROM player WHERE player_name = 'Alexis Blin' )
SELECT T2.buildupplayspeedclass FROM team AS T1 INNER JOIN team_attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'KSV Cercle Brugge'
SELECT COUNT(id) FROM match WHERE league_id = ( SELECT id FROM league WHERE name = 'Italian Serie A' ) AND season = '2015/2016'
SELECT MAX(home_team_goal) FROM match JOIN league ON match.league_id = league.id WHERE league.name ='Netherlands Eredivisie'
SELECT T2.finishing, T2.curve FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 1 
SELECT T2.name FROM `match` AS T1 INNER JOIN league AS T2 ON T1.league_id = T2.id WHERE T1.season = '2015/2016' GROUP BY T2.name ORDER BY COUNT(T1.id) DESC LIMIT 1
SELECT T1.team_long_name FROM team AS T1 INNER JOIN match AS T2 ON T1.team_api_id = T2.away_team_api_id ORDER BY T2.away_team_goal DESC LIMIT 1
SELECT player_name FROM player WHERE player_api_id = ( SELECT player_api_id FROM player_attributes ORDER BY overall_rating DESC LIMIT 1 )
SELECT CAST(COUNT(CASE WHEN T1.height < 180 AND T2.strength > 70 THEN 1 END) AS REAL) * 100 / COUNT(T2.id) FROM player AS T1 INNER JOIN player_attributes AS T2 ON T1.player_api_id = T2.player_api_id
SELECT SUM(CASE WHEN sex = 'M' AND admission = '+' THEN 1 ELSE 0 END) AS InPatient_Male, SUM(CASE WHEN sex = 'M' AND admission = '-' THEN 1 ELSE 0 END) AS OutPatient_Male FROM patient; 
SELECT CAST(SUM(CASE WHEN SUBSTR(birthday, 1, 4) > '1930' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM patient WHERE sex = 'F'
SELECT (COUNT(DISTINCT CASE WHEN admission = '+' THEN id END) * 100.0 / COUNT(DISTINCT id)) AS 'Percentage' FROM patient WHERE strftime('%Y', birthday) BETWEEN '1930' AND '1940'
SELECT CAST(SUM(CASE WHEN Admission = '+' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN Admission = '-' THEN 1 ELSE 0 END) AS ratio FROM patient WHERE diagnosis = 'SLE'
SELECT T1.diagnosis, T2.date FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id = '30609'
SELECT T1.sex, T1.birthday, T2.`examination date`, T2.symptoms FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = '163109'
SELECT T1.id, T1.sex, T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.LDH > 500
SELECT T1.id, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.birthday) AS age FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T2.rvvt = '+' 
SELECT T1.id, T1.sex, T1.diagnosis FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 2
SELECT patient.id, patient.birthday FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE YEAR(patient.birthday) = 1937 AND laboratory.t-cho >= 250
SELECT T1.id, T1.sex, T1.diagnosis FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alb < 3.5
SELECT CAST(SUM(CASE WHEN T1.sex = 'F' AND (T2.tp < 6.0 OR T2.tp > 8.5) THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id 
SELECT AVG(examination.`acl igg`) FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.admission = '+' AND (strftime('%Y', 'now') - strftime('%Y', patient.birthday)) >= 50
SELECT COUNT(T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND STRFTIME('%Y', T1.description) = '1997' AND T1.admission = '-'
SELECT MIN(STRFTIME('%Y', `first date`) - STRFTIME('%Y', birthday)) AS 'Age at Arrival' FROM patient
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE strftime('%Y', T2.`examination date`) = '1997' AND T1.sex = 'F' AND T2.thrombosis = 1
SELECT MAX(STRFTIME('%Y', patient.birthday)) - MIN(STRFTIME('%Y', patient.birthday)) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg >= 200
SELECT T2.symptoms, T2.diagnosis FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id ORDER BY T1.birthday DESC LIMIT 1
SELECT CAST(COUNT(DISTINCT T1.id) AS REAL) / 12 FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.date BETWEEN '1998-01-01' AND '1998-12-31'
SELECT `first date` - birthday AS age, laboratory.date FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.diagnosis = 'SJS' ORDER BY patient.birthday ASC LIMIT 1
SELECT CAST(SUM(CASE WHEN p.sex = 'M' AND l.ua <= 8.0 THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN p.sex = 'F' AND l.ua <= 6.5 THEN 1 ELSE 0 END) FROM patient p INNER JOIN laboratory l ON p.id = l.id
SELECT COUNT(DISTINCT T1.id) FROM patient T1 LEFT JOIN examination T2 ON T1.id = T2.id WHERE T2.`examination date` IS NULL OR strftime('%Y', T2.`examination date`) - strftime('%Y', T1.`first date`) >= 1
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE strftime('%Y', T2.`examination date`) BETWEEN '1990' AND '1993' AND (strftime('%Y', T2.`examination date`) - strftime('%Y', T1.birthday)) < 18
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.`t-bil` > 2.0
SELECT T2.Diagnosis FROM examination AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE T1.`examination date` BETWEEN '1985-01-01' AND '1995-12-31' GROUP BY T2.Diagnosis ORDER BY COUNT(T2.Diagnosis) DESC LIMIT 1
SELECT AVG(strftime('%Y', '1991') - strftime('%Y', birthday)) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE date BETWEEN '1991-10-01' AND '1991-10-31')
SELECT examination.`examination date` - patient.birthday AS Age, examination.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id INNER JOIN examination ON patient.id = examination.id ORDER BY laboratory.hgb DESC LIMIT 1 
SELECT ana FROM examination WHERE id = 3605340 AND `examination date` = '1996-12-02'
SELECT CASE WHEN "t-cho" < 250 THEN 'Normal' ELSE 'High' END FROM laboratory WHERE id = 2927464 AND date = '1995-9-4'
SELECT sex FROM patient WHERE diagnosis = 'AORTITIS' ORDER BY description LIMIT 1
SELECT T2.`acl igm` FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' AND T1.description = '1994-02-19' AND T2.`examination date` = '1993-11-12'
SELECT T1.sex FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.gpt = 9 AND T2.date = '1992-06-12'
SELECT '1991' - STRFTIME('%Y', T2.birthday) FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ua = 8.4 AND STRFTIME('%Y-%m-%d', T1.date) = '1991-10-21'
SELECT COUNT(*) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.`first date` = '1991-06-13' AND T1.diagnosis = 'SJS' AND strftime('%Y', T2.date) = '1995';
SELECT T1.diagnosis FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T2.`examination date` = '1997-01-27' AND T1.`first date` = ( SELECT MIN(`first date`) FROM patient WHERE diagnosis = 'SLE' AND id = T1.id )
SELECT T2.symptoms FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T1.birthday = '1959-03-01' AND T2.`examination date` = '1993-09-27'
SELECT CAST((SUM(CASE WHEN strftime('%Y-%m', T2.date) = '1981-11' THEN T2.`T-Cho` ELSE 0 END) - SUM(CASE WHEN strftime('%Y-%m', T2.date) = '1981-12' THEN T2.`T-Cho` ELSE 0 END)) AS FLOAT) * 100 / SUM(CASE WHEN strftime('%Y-%m', T2.date) = '1981-11' THEN T2.`T-Cho` ELSE 0 END) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = '1959-02-18'
SELECT DISTINCT T1.id FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'Behcet' AND date(T2.`examination date`) BETWEEN '1997-01-01' AND '1997-12-31'
SELECT DISTINCT T1.id FROM examination AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.`examination date` BETWEEN '1987-07-06' AND '1996-01-31' AND T2.gpt > 30 AND T2.alb < 4 
SELECT id FROM patient WHERE sex = 'F' AND STRFTIME('%Y', birthday) = '1964' AND admission = '+'
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 2 AND T2.`ana pattern` = 'S' AND T2.`acl igm` > ( SELECT AVG(`acl igm`) * 1.2 FROM examination )
SELECT CAST(SUM(CASE WHEN T1.ua <= 6.5 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE T1.`u-pro` > 0 AND T1.`u-pro` < 30
SELECT CAST(SUM(CASE WHEN diagnosis = 'BEHCET' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) AS percentage FROM patient WHERE sex = 'M' AND STRFTIME('%Y', `first date`) = '1981' 
SELECT DISTINCT T1.id FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE strftime('%Y-%m', T2.date) = '1991-10' AND T2.`t-bil` < 2.0 AND T1.admission = '-'
SELECT COUNT(T1.SEX) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T2.`ana pattern` != 'P' AND T1.SEX = 'F' AND DATE(T1.birthday) BETWEEN '1980-01-01' AND '1989-12-31'
SELECT T1.sex FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.diagnosis = 'PSS' AND T3.crp = '2+' AND T3.cre = 1 AND T3.ldh = 123
SELECT AVG(T2.alb) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T2.plt > 400 AND T1.diagnosis = 'SLE'
SELECT T2.symptoms FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' GROUP BY T2.symptoms ORDER BY COUNT(T2.symptoms) DESC LIMIT 1
SELECT description, diagnosis FROM patient WHERE id = 48473
SELECT COUNT(DISTINCT patient.id) FROM patient WHERE patient.sex = 'F' AND patient.diagnosis = 'APS'
SELECT COUNT(DISTINCT T1.id) FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE STRFTIME('%Y', T1.date) = '1997' AND (T1.tp < 6 OR T1.tp > 8.5)
SELECT CAST(SUM(CASE WHEN T1.diagnosis LIKE '%SLE%' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T2.symptoms LIKE '%thrombocytopenia%' THEN 1 ELSE 0 END) AS percentage FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id
SELECT CAST(SUM(CASE WHEN sex = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM patient WHERE strftime('%Y', birthday) = '1980' AND diagnosis = 'RA'
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T2.`examination date` BETWEEN '1995' AND '1997' AND T1.diagnosis = 'BEHCET' AND T1.sex = 'M' AND T1.admission = '-'
SELECT COUNT(T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T2.wbc < 3.5
SELECT (`examination date` - `first date`) AS days FROM patient INNER JOIN examination ON patient.id = examination.id WHERE patient.id = 821298
SELECT CASE WHEN T1.sex = 'M' AND T2.ua > 8.0 THEN 'Yes' WHEN T1.sex = 'F' AND T2.ua > 6.5 THEN 'Yes' ELSE 'No' END AS 'Uric Acid Within Normal Range' FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id = 57266
SELECT date FROM laboratory WHERE id = 48473 AND got >= 60 
SELECT DISTINCT T1.id, T1.sex, T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE strftime('%Y', T2.date) = '1994' AND T2.got < 60;
SELECT DISTINCT T1.id FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.gpt >= 60
SELECT T1.diagnosis FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.gpt > 60 ORDER BY T1.birthday ASC
SELECT AVG(ldh) FROM laboratory WHERE ldh < 500
SELECT P.id, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', P.birthday) AS age FROM patient AS P INNER JOIN laboratory AS L ON P.id = L.id WHERE L.ldh BETWEEN 600 AND 800
SELECT T1.admission FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp < 300
SELECT T1.id, CASE WHEN T2.alp < 300 THEN 'Yes' ELSE 'No' END AS ALP_Normal_Range FROM patient AS T1 LEFT JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = '1982-04-01'
SELECT DISTINCT T1.id, T1.sex, T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.tp < 6.0
SELECT T1.id, T1.TP - 8.5 AS tp_deviation FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = 'F' AND T1.TP > 8.5
SELECT T1.id, T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND (T2.alb <= 3.5 OR T2.alb >= 5.5) ORDER BY T1.birthday DESC
SELECT T1.id, CASE WHEN T2.alb BETWEEN 3.5 AND 5.5 THEN 'Normal' ELSE 'Abnormal' END AS Albumin_Status FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE strftime('%Y', T1.birthday) = '1982'
SELECT (COUNT(T2.ua) * 100) / COUNT(T1.id) AS 'Percentage' FROM patient AS T1 INNER JOIN laboratory AS T2 ON T2.id = T1.id WHERE T1.sex = 'F' AND ((T1.sex = 'M' AND T2.ua > 8) OR (T1.sex = 'F' AND T2.ua > 6.5))
SELECT AVG(T1.ua) FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE (T1.ua < 8.0 AND T2.sex = 'M') OR (T1.ua < 6.5 AND T2.sex = 'F') GROUP BY T1.id ORDER BY T1.date DESC LIMIT 1
SELECT T1.id, T1.sex, T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.un = 29
SELECT T1.id, T1.sex, T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'RA' AND T2.UN < 30
SELECT COUNT(T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.cre >= 1.5
SELECT CASE WHEN SUM(CASE WHEN T2.sex = 'M' THEN 1 ELSE 0 END) > SUM(CASE WHEN T2.sex = 'F' THEN 1 ELSE 0 END) THEN 'True' ELSE 'False' END AS Result FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE T1.cre >= 1.5
SELECT T1.id, T1.sex, T1.birthday, T2.`t-bil` FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T2.`t-bil` DESC LIMIT 1
SELECT T1.sex, COUNT(T2.`t-bil`) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.`t-bil` >= 2.0 GROUP BY T1.sex
SELECT T1.id, T2.`t-cho` FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T1.birthday ASC, T2.`t-cho` DESC LIMIT 1
SELECT CAST(SUM(strftime('%Y', date('now')) - strftime('%Y', patient.birthday)) AS REAL) / COUNT(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.sex = 'M' AND laboratory.`T-CHO` >= 250
SELECT patient.id, patient.diagnosis FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg > 300
SELECT COUNT(patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.tg >= 200 AND (STRFTIME('%Y', CURRENT_TIMESTAMP)- STRFTIME('%Y', patient.birthday)) > 50
SELECT DISTINCT T1.id FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.cpk < 250 AND T1.admission = '-'
SELECT COUNT(T2.id) FROM laboratory AS T2 INNER JOIN patient AS T1 ON T1.id = T2.id WHERE T1.sex = 'M' AND strftime('%Y', T1.birthday) BETWEEN '1936' AND '1956' AND T2.cpk >= 250
SELECT T1.id, T1.sex, strftime('%Y', 'now') - strftime('%Y', T1.birthday) AS age FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu >= 180 AND T2.`t-cho` < 250
SELECT T1.id, T2.glu FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu < 180 AND strftime('%Y', T1.`first date`) = '1991'
SELECT P.id, P.sex, P.birthday FROM patient AS P INNER JOIN laboratory AS L ON P.id = L.id WHERE L.wbc <= 3.5 OR L.wbc >= 9.0 ORDER BY P.sex, P.birthday ASC 
SELECT T1.diagnosis, T1.id, strftime('%Y', 'now') - strftime('%Y', T1.birthday) AS age FROM patient as T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.rbc < 3.5 
SELECT CASE WHEN p.admission = '+' THEN 'Yes' ELSE 'No' END AS 'Admitted to Hospital', p.id, p.sex, p.birthday FROM patient p JOIN laboratory l ON p.id = l.id WHERE p.sex = 'F' AND (strftime('%Y', 'now') - strftime('%Y', p.birthday)) >= 50 AND (l.rbc <= 3.5 OR l.rbc >= 6.0)
SELECT T1.id, T1.sex FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.admission = '-' AND T2.hgb < 10 
SELECT T1.id, T1.sex FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' AND T2.hgb BETWEEN 10 AND 17 ORDER BY T1.birthday LIMIT 1
SELECT T1.id, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.birthday) AS age FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.hct >= 52 GROUP BY T1.id HAVING COUNT(T2.id) >= 2 
SELECT AVG(hct) FROM laboratory WHERE date LIKE '1991%' AND hct < 29
SELECT (SUM(CASE WHEN PLT < 100 THEN 1 ELSE 0 END)) AS TotalLowerThanNormal, (SUM(CASE WHEN PLT > 400 THEN 1 ELSE 0 END)) AS TotalHigherThanNormal, (SUM(CASE WHEN PLT < 100 THEN 1 ELSE 0 END) - SUM(CASE WHEN PLT > 400 THEN 1 ELSE 0 END)) AS Difference FROM Laboratory WHERE PLT < 100 OR PLT > 400
SELECT T1.id, T1.birthday, T1.diagnosis, T1.description, T1.admission, T1.sex, T1.`first date`, T2.plt, T2.date FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE strftime('%Y', T2.date) = '1984' AND (STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.birthday)) < 50 AND T2.plt BETWEEN 100 AND 400
SELECT CAST(SUM(CASE WHEN T1.sex = 'F' AND T2.pt >= 14 THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T2.pt >= 14 THEN 1 ELSE 0 END) AS percentage FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE (strftime('%Y', 'now') - strftime('%Y', T1.birthday)) > 55
SELECT T1.id, T1.`first date`, T1.admission, T1.description, T1.diagnosis, T1.sex, T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE STRFTIME('%Y', T1.`first date`) > '1992' AND T2.pt < 14 
SELECT COUNT(e.id) FROM examination e join laboratory l on e.id = l.id WHERE e.`examination date` > '1997-01-01' AND l.aptt < 45
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id INNER JOIN examination AS T3 ON T1.id = T3.id WHERE T2.aptt > 45 AND T3.thrombosis = 3
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND (T2.wbc BETWEEN 3.5 AND 9.0) AND (T2.fg <= 150 OR T2.fg >= 450)
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > '1980-01-01' AND (T2.fg < 150 OR T2.fg > 450)
SELECT DISTINCT T1.diagnosis FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.`u-pro` >= 30
SELECT P.id FROM patient AS P JOIN examination AS E ON P.id = E.id JOIN laboratory AS L ON P.id = L.id WHERE L.`u-pro` >= 0 AND L.`u-pro` <= 30 AND P.diagnosis = "SLE"
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.igg < 900 AND T2.symptoms = 'Abortion'
SELECT COUNT(DISTINCT T2.id) FROM laboratory AS T1 INNER JOIN examination AS T2 ON T1.ID = T2.ID WHERE T1.igg BETWEEN 900 AND 2000 AND T2.symptoms IS NOT NULL 
SELECT T1.diagnosis FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.iga BETWEEN 80 AND 500 ORDER BY T2.iga DESC LIMIT 1
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.iga BETWEEN 80 AND 500 AND strftime('%Y', T1.`first date`) >= '1990'
SELECT T2.diagnosis FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE T1.igm NOT BETWEEN 40 AND 400 GROUP BY T2.diagnosis ORDER BY COUNT(T2.diagnosis) DESC LIMIT 1 
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE (T2.crp LIKE '+' OR T2.crp LIKE '-' OR T2.crp < 1.0) AND T1.description IS NULL
SELECT COUNT(DISTINCT P.id) FROM patient AS P INNER JOIN laboratory AS L ON P.id = L.id WHERE L.crp NOT IN ('+-', '-') AND L.crp >= 1.0 AND (YEAR(CURDATE()) - YEAR(P.birthday)) < 18
SELECT COUNT(DISTINCT T1.id) FROM patient as T1 INNER JOIN laboratory as T2 ON T1.id = T2.id INNER JOIN examination as T3 on T1.id = T3.id WHERE T2.ra IN('-', '+-') AND T3.kct = '+'
SELECT diagnosis FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE strftime('%Y', T1.birthday) > '1995' AND T2.ra IN('-', '+-')
SELECT T2.id FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.rf < 20 AND STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.birthday) > 60
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id INNER JOIN examination AS T3 ON T1.id = T3.id WHERE T3.thrombosis = 0 AND T2.RF < 20
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id INNER JOIN examination AS T3 ON T1.id = T3.id WHERE T2.c3 > 35 AND T3.`ana pattern` = 'P'
SELECT T1.id FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id INNER JOIN examination AS T3 ON T2.id = T3.id WHERE NOT (T2.hct BETWEEN 29 AND 52) ORDER BY T3.`acl iga` DESC LIMIT 1
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.thrombosis = 1 AND T3.c4 > 10
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.rnp IN ('-', '+-') AND T1.admission = '+';
SELECT T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.rnp NOT IN('-', '+-') ORDER BY T1.birthday DESC LIMIT 1
SELECT COUNT(DISTINCT patient.id) FROM patient INNER JOIN examination ON patient.id = examination.id INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.sm IN ('-', '+-') AND examination.thrombosis = 1;
SELECT T2.id FROM laboratory AS T1 INNER JOIN patient AS T2 ON T1.id = T2.id WHERE T1.sm NOT IN('-', '+-') ORDER BY T2.birthday DESC LIMIT 3
SELECT T1.id FROM examination AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.`examination date` >= '1997-01-01' AND T2.sc170 IN('-', '+-')
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T1.sex = 'M' AND T2.symptoms = 'vertigo' AND T3.sc170 IN('-', '+-')
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ssa IN ('-', '+-') AND strftime('%Y', T1.`first date`) < '1990'
SELECT laboratory.id FROM laboratory INNER JOIN patient ON laboratory.id = patient.id WHERE ssa NOT IN('-', '+-') ORDER BY patient.`first date` ASC LIMIT 1
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.ssb IN ('negative', '0') AND T2.diagnosis = 'SLE'
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.ssb IN('-', '+-') AND T2.symptoms IS NOT NULL
SELECT COUNT(T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.centromea IN('-', '+-') AND T2.ssb IN('-', '+-')
SELECT T1.diagnosis FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.dna >= 8
SELECT COUNT(DISTINCT T1.id) FROM laboratory AS T1 LEFT JOIN patient AS T2 ON T1.id = T2.id WHERE T1.dna < 8 AND T2.description IS NULL
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.`dna-ii` >= 8 AND T1.admission = '+'
SELECT CAST(SUM(CASE WHEN T1.diagnosis = 'SLE' AND T2.got >= 60 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.got >= 60 
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.got < 60 
SELECT MAX(birthday) FROM patient WHERE id IN ( SELECT id FROM laboratory WHERE got >= 60 )
SELECT T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.gpt < 60 ORDER BY T2.gpt DESC LIMIT 3
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.gpt < 60 AND T1.sex = 'M'
SELECT "first date" FROM patient WHERE id = ( SELECT id FROM laboratory WHERE ldh < 500 ORDER BY ldh DESC LIMIT 1 ) ORDER BY "first date" ASC LIMIT 1
SELECT MAX(T1.`first date`) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ldh >= 500 
SELECT COUNT(T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp >= 300 AND T1.admission = '+'
SELECT COUNT(DISTINCT patient.id) FROM patient LEFT JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '-' AND laboratory.alp < 300
SELECT T1.diagnosis FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.tp < 6.0 
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SJS' AND T2.tp > 6.0 AND T2.tp < 8.5
SELECT `examination date` FROM examination WHERE id = ( SELECT id FROM laboratory WHERE alb BETWEEN 3.5 AND 5.5 ORDER BY alb DESC LIMIT 1 ) LIMIT 1
SELECT COUNT(T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.alb > 3.5 AND T2.alb < 5.5 AND T2.tp >= 6.0 AND T2.tp <= 8.5
SELECT T2.`acl iga`, T2.`acl igg`, T2.`acl igm` FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T1.sex = 'F' AND T3.ua = ( SELECT MAX(UA) FROM laboratory WHERE UA > 6.50 )
SELECT MAX(T2.ana) FROM laboratory AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T1.cre < 1.5
SELECT T1.id FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id INNER JOIN examination AS T3 ON T1.id = T3.id WHERE T2.cre < 1.5 ORDER BY T3.`acl iga` DESC LIMIT 1
SELECT COUNT(T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id INNER JOIN examination AS T3 ON T1.id = T3.id WHERE T2.`t-bil` >= 2.0 AND T3.`ana pattern` LIKE '%P%'
SELECT E.ana FROM examination AS E INNER JOIN laboratory AS L ON E.id = L.id WHERE L.`t-bil` = ( SELECT MAX(`t-bil`) FROM laboratory WHERE `t-bil` < 2.0 ) LIMIT 1
SELECT COUNT(DISTINCT T1.id) FROM laboratory AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id WHERE T1.t-cho >= 250 AND T2.kct = 'negative'
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.`ana pattern` = 'P' AND T3.`t-cho` < 250
SELECT COUNT(DISTINCT P.id) FROM patient AS P INNER JOIN laboratory AS L ON P.id = L.id INNER JOIN examination AS E ON E.id = P.id WHERE L.tg < 200 AND E.symptoms IS NOT NULL
SELECT T1.diagnosis FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.tg < 200 ORDER BY T2.tg DESC LIMIT 1
SELECT DISTINCT T1.id FROM patient AS T1 INNER JOIN examination AS T2 ON T1.id = T2.id INNER JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.thrombosis = 0 AND T3.cpk < 250
SELECT COUNT(DISTINCT T1.id) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.id = T2.id INNER JOIN Examination AS T3 ON T1.id = T3.id WHERE T2.cpk < 250 AND (T3.kct = '+' OR T3.rvvt = '+' OR T3.lac = '+')
SELECT T1.birthday FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu > 180 ORDER BY T1.birthday ASC LIMIT 1
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id INNER JOIN examination AS T3 ON T1.id = T3.id WHERE T2.glu < 180 AND T3.thrombosis = 0
SELECT COUNT(DISTINCT patient.id) FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE patient.admission = '+' AND laboratory.wbc BETWEEN 3.5 AND 9.0 
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' AND T2.wbc BETWEEN 3.5 AND 9.0 
SELECT DISTINCT T1.id FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE ((T2.rbc <= 3.5 OR T2.rbc >= 6.0) AND T1.admission = '-')
SELECT COUNT(DISTINCT T1.id) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id INNER JOIN examination AS T3 ON T2.id = T3.id WHERE T2.plt > 100 AND T2.plt < 400 AND T3.symptoms IS NOT NULL
SELECT patient.id, laboratory.plt FROM patient INNER JOIN laboratory ON patient.id = laboratory.id WHERE laboratory.plt BETWEEN 100 AND 400 AND patient.diagnosis = 'MCTD'
SELECT AVG(T2.pt) FROM patient AS T1 INNER JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.pt < 14
SELECT COUNT(*) FROM patient AS P1 INNER JOIN examination AS E1 ON P1.id = E1.id INNER JOIN laboratory AS L1 ON P1.id = L1.id WHERE E1.thrombosis IN (2,1) AND L1.pt < 14
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Angela' AND T1.last_name = 'Sanders'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.college = "College of Engineering" 
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.department = 'Art and Design Department'
SELECT COUNT(*) FROM attendance WHERE link_to_event IN ( SELECT event_id FROM event WHERE event_name = "Women's Soccer" )
SELECT T1.phone FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer" AND T1.t_shirt_size = "Medium"
SELECT link_to_event FROM attendance GROUP BY link_to_event ORDER BY COUNT(*) DESC LIMIT 1 
SELECT T1.college FROM major AS T1 INNER JOIN member AS T2 ON T1.`major_id` = T2.`link_to_major` WHERE T2.position = 'Vice President'
SELECT T2.event_name FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean'
SELECT COUNT(*) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T3.member_id = T2.link_to_member WHERE T3.first_name = 'Sacha' AND T3.last_name = 'Harrison' AND STRFTIME('%Y', T1.event_date) = '2019'
SELECT COUNT(*) FROM ( SELECT T1.event_id FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.type = 'Meeting' GROUP BY T1.event_id HAVING COUNT(T2.link_to_member) > 10 ) AS T3
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_id HAVING COUNT(T2.link_to_member) > 20 
SELECT CAST(COUNT(T1.event_id) AS REAL) / COUNT(DISTINCT T1.event_name) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.type = 'Meeting' AND strftime('%Y', T1.event_date) = '2020'
SELECT expense_description FROM expense WHERE cost = ( SELECT MAX(cost) FROM expense )
SELECT COUNT(member_id) FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Environmental Engineering'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Laugh Out Loud'
SELECT last_name FROM member WHERE link_to_major IN ( SELECT major_id FROM major WHERE major_name = 'Law and Constitutional Studies' )
SELECT county FROM zip_code WHERE zip_code = ( SELECT zip FROM member WHERE first_name = 'Sherri' AND last_name = 'Ramsey' ) 
SELECT T1.college FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = 'Tyler' AND T2.last_name = 'Hewitt'
SELECT SUM(T2.amount) FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.position = 'Vice President'
SELECT B.spent FROM budget AS B INNER JOIN event AS E ON B.link_to_event = E.event_id WHERE B.category = 'Food' AND E.event_name = 'September Meeting'
SELECT T2.city, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'President' 
SELECT M.first_name, M.last_name FROM member AS M INNER JOIN zip_code AS Z ON M.zip = Z.zip_code WHERE Z.state = 'Illinois'
SELECT T2.spent FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Advertisement' AND T1.event_name = 'September Meeting'
SELECT T1.department FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.last_name IN ('Pierce','Guidi')
SELECT SUM(T2.amount) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Speaker'
SELECT T2.approved FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Meeting' AND T1.event_date = '2019-10-08'
SELECT AVG(cost) FROM expense INNER JOIN member ON expense.link_to_member = member.member_id WHERE first_name = 'Elijah' AND last_name = 'Allen' AND (STRFTIME('%m', expense_date) = '09' OR STRFTIME('%m', expense_date) = '10')
SELECT (SELECT SUM(spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id AND STRFTIME('%Y', T2.event_date) = '2019') - (SELECT SUM(spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id AND STRFTIME('%Y', T2.event_date) = '2020') AS difference
SELECT location FROM event WHERE event_name = 'Spring Budget Review'
SELECT cost FROM expense WHERE expense_description = 'Posters' AND expense_date = '2019-09-04'
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1 
SELECT notes FROM income WHERE source = 'Fundraising' AND date_received = '2019-09-14'
SELECT COUNT(major_id) FROM major WHERE college = 'College of Humanities and Social Sciences' 
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Adela' AND T1.last_name = "O'Gallagher"
SELECT COUNT(*) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'November Meeting' AND T2.remaining < 0;
SELECT SUM(amount) FROM budget WHERE link_to_event IN ( SELECT event_id FROM event WHERE event_name = 'September Speaker' )
SELECT T2.status FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_budget = T2.event_id WHERE T1.expense_description = 'Post Cards, Posters' AND T1.expense_date = '2019-08-20'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Brent' AND T1.last_name = 'Thomason'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Human Development and Family Studies' AND T1.t_shirt_size = 'Large'
SELECT T2.type FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Christof' AND T1.last_name = 'Nielson'
SELECT major.major_name FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'Vice President' 
SELECT T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison' 
SELECT major.department FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE member.position = 'President'
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Connor' AND T1.last_name = 'Hilton' AND T2.source = 'Dues'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.source = 'Dues' ORDER BY T2.date_received ASC LIMIT 1 
SELECT CAST(SUM(CASE WHEN T1.category = 'Advertisement' AND T2.event_name = 'Yearly Kickoff' THEN T1.amount ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.category = 'Advertisement' AND T2.event_name = 'October Meeting' THEN T1.amount ELSE 0 END) AS TIMES FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT CAST(SUM(CASE WHEN T1.category = 'Parking' THEN T1.amount ELSE 0 END) AS REAL) * 100 / SUM(T1.amount) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'November Speaker'
SELECT SUM(cost) FROM expense WHERE expense_description = 'Pizza'
SELECT COUNT(DISTINCT city) FROM zip_code WHERE county = 'Orange County' AND state = 'Virginia'
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT T2.city, T2.county, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Amy' AND T1.last_name = 'Firth'
SELECT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget ORDER BY T1.remaining ASC LIMIT 1 
SELECT T2.first_name, T2.last_name FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'October Meeting'
SELECT T.college FROM ( SELECT T2.college, COUNT(T1.member_id) AS num FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id GROUP BY T2.college ) AS T ORDER BY T.num DESC LIMIT 1
SELECT T1.major_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1 
SELECT T1.expense_description FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'Vice President' 
SELECT COUNT(T2.link_to_member) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Women's Soccer'
SELECT T1.date_received FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Casey' AND T2.last_name = 'Mason'
SELECT COUNT(DISTINCT member.member_id) FROM member INNER JOIN zip_code ON member.zip = zip_code.zip_code WHERE zip_code.state = 'Maryland'
SELECT COUNT(link_to_event) FROM attendance WHERE link_to_member = ( SELECT member_id FROM member WHERE phone = '954-555-6240' )
SELECT T2.first_name, T2.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'School of Applied Sciences, Technology and Education'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.status = 'Closed' ORDER BY T1.spent / T1.amount DESC LIMIT 1 
SELECT COUNT(member_id) FROM member WHERE position = 'President'
SELECT MAX(spent) AS highest_spent FROM budget
SELECT COUNT(event_id) FROM event WHERE STRFTIME('%Y', event_date) = '2020' AND type = 'Meeting'
SELECT SUM(spent) FROM budget WHERE category = 'Food'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.link_to_member HAVING COUNT(T2.link_to_event) > 7
SELECT T4.first_name, T4.last_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T4 ON T2.link_to_member = T4.member_id INNER JOIN major AS T3 ON T4.link_to_major = T3.major_id WHERE T1.event_name = 'Community Theater' AND T3.major_name = 'Interior Design'
SELECT T2.first_name, T2.last_name FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.city = 'Georgetown' AND T1.state = 'South Carolina' 
SELECT SUM(T1.amount) FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Grant' AND T2.last_name = 'Gilmour'
SELECT T2.first_name, T2.last_name FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.amount > 40
SELECT SUM(cost) FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Yearly Kickoff'
SELECT M.first_name, M.last_name FROM member AS M INNER JOIN expense AS E ON M.member_id = E.link_to_member INNER JOIN budget as B ON E.link_to_budget = B.budget_id INNER JOIN event as Ev ON B.link_to_event = Ev.event_id WHERE Ev.event_name = 'Yearly Kickoff'
SELECT member.first_name, member.last_name, income.source FROM income INNER JOIN member ON income.link_to_member = member.member_id ORDER BY income.amount DESC LIMIT 1
SELECT T2.event_name FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_budget = T2.event_id ORDER BY T1.cost ASC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.event_name = 'Yearly Kickoff' THEN T1.cost ELSE 0 END) AS REAL) * 100 / SUM(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_budget = T2.event_id
SELECT CAST(SUM(CASE WHEN major_name = 'Finance' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN major_name = 'Physics' THEN 1 ELSE 0 END) FROM major 
SELECT source FROM income WHERE STRFTIME('%Y-%m', date_received) = '2019-09' GROUP BY source ORDER BY SUM(amount) DESC LIMIT 1
SELECT first_name, last_name, email FROM member WHERE position = 'Secretary'
SELECT COUNT(*) FROM member AS m INNER JOIN major AS mj ON m.link_to_major = mj.major_id WHERE mj.major_name = 'Physics Teaching'
SELECT COUNT(distinct T2.link_to_member) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Community Theater' AND STRFTIME('%Y', T1.event_date) = '2019'
SELECT T1.first_name, T1.last_name, T3.major_name, count(T4.event_id) as number_of_events FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN major AS T3 ON T1.link_to_major = T3.major_id INNER JOIN event AS T4 ON T2.link_to_event = T4.event_id WHERE T1.first_name = 'Luisa' AND T1.last_name = 'Guidi' 
SELECT AVG(spent) FROM budget WHERE category = 'Food' AND event_status = 'Closed'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Advertisement' ORDER BY T1.spent DESC LIMIT 1;
SELECT CASE WHEN EXISTS ( SELECT 1 FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T2.first_name = 'Maya' AND T2.last_name = 'Mclean' AND T3.event_name = 'Women's Soccer' ) THEN 'Yes' ELSE 'No' END AS AttendStatus
SELECT CAST(SUM(CASE WHEN type = 'Community Service' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) AS percentage FROM event WHERE STRFTIME('%Y', event_date) = '2019'
SELECT E.cost FROM expense AS E INNER JOIN budget AS B ON E.link_to_budget = B.budget_id INNER JOIN event AS EV ON B.link_to_event = EV.event_id WHERE E.expense_description = 'Posters' AND EV.event_name = 'September Speaker';
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY COUNT(t_shirt_size) DESC LIMIT 1 
SELECT event.event_name FROM event JOIN budget ON event.event_id = budget.link_to_event WHERE event.status = 'Closed' AND budget.remaining < 0 ORDER BY budget.remaining ASC LIMIT 1;
SELECT T1.type, SUM(T2.cost) FROM event AS T1 INNER JOIN budget AS T3 ON T1.event_id = T3.link_to_event INNER JOIN expense AS T2 ON T2.link_to_budget = T3.budget_id WHERE T1.event_name = 'October Meeting' AND T2.approved = 'TRUE' GROUP BY T1.type 
SELECT T2.category, T2.amount FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'April Speaker' ORDER BY T2.amount ASC
SELECT budget_id FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT budget_id FROM budget WHERE category = 'Advertisement' ORDER BY amount DESC LIMIT 3 
SELECT SUM(cost) FROM expense WHERE expense_description = 'Parking'
SELECT SUM(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT T1.first_name, T1.last_name, SUM(T2.cost) FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.member_id = 'rec4BLdZHS2Blfp4v' GROUP BY T1.first_name, T1.last_name
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T1.expense_description FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = 'X-Large'
SELECT T2.zip FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.cost < 50
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Phillip' AND T1.last_name = 'Cullen'
SELECT T1.position FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Business'
SELECT COUNT(*) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Business' AND T1.t_shirt_size = 'Medium'
SELECT DISTINCT T1.type FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT DISTINCT type FROM event WHERE location = 'MU 215'
SELECT category FROM event JOIN budget ON event.event_id = budget.link_to_event WHERE event_date = '2020-03-24T12:00:00'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Vice President'
SELECT CAST(SUM(CASE WHEN T2.major_name = 'Mathematics' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Member'
SELECT category FROM event JOIN budget ON event.event_id = budget.link_to_event WHERE location = 'MU 215'
SELECT COUNT(DISTINCT income_id) FROM income WHERE amount = 50 
SELECT COUNT(member_id) FROM member WHERE position = 'Member' AND t_shirt_size = 'X-Large'
SELECT COUNT(major_name) FROM major WHERE college = 'College of Agriculture and Applied Sciences' AND department = 'School of Applied Sciences, Technology and Education'
SELECT m.last_name, mj.department, mj.college FROM member AS m INNER JOIN major AS mj ON m.link_to_major = mj.major_id WHERE mj.major_name = 'Environmental Engineering'
SELECT T2.category FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.location = 'MU 215' AND T1.type = 'Guest Speaker' AND T2.spent = 0 
SELECT T4.city, T4.state FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major INNER JOIN zip_code AS T4 ON T2.zip = T4.zip_code WHERE T1.department = 'Electrical and Computer Engineering Department' AND T2.position = 'Member'
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.type = 'Social' AND T3.position = 'Vice President' AND T1.location = '900 E. Washington St.'
SELECT T2.last_name, T2.position FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_description = 'Pizza' AND T1.expense_date = '2019-09-10'
SELECT T2.last_name FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T2.position = 'Member' AND T3.event_name = "Women's Soccer"
SELECT CAST(SUM(CASE WHEN I.amount = 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM member AS M INNER JOIN income AS I ON M.member_id = I.link_to_member WHERE M.t_shirt_size = 'Medium' AND M.position = 'Member'
SELECT DISTINCT county FROM zip_code WHERE type = 'PO Box'
SELECT zip_code FROM zip_code WHERE type = 'PO Box' AND county = 'San Juan Municipio' AND state = 'Puerto Rico'
SELECT event_name FROM event WHERE type = 'Game' AND status = 'Closed' AND event_date BETWEEN '2019-03-15' AND '2020-03-20'
SELECT T2.link_to_event FROM expense AS T1 INNER JOIN attendance AS T2 ON T1.link_to_member = T2.link_to_member WHERE T1.cost > 50
SELECT T1.link_to_member, T2.link_to_event FROM expense AS T1 INNER JOIN attendance AS T2 ON T1.link_to_member = T2.link_to_member WHERE T1.approved = 'true' AND T1.expense_date BETWEEN '2019-01-10' AND '2019-11-19'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Katy' AND T1.link_to_major = 'rec1N0upiVLy5esTO'
SELECT member.phone FROM member INNER JOIN major ON member.link_to_major = major.major_id WHERE major.major_name = 'Business' AND major.college = 'College of Agriculture and Applied Sciences' 
SELECT T2.email FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_date BETWEEN '2019-09-10' and '2019-11-19' and T1.cost > 20
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'education' AND T2.college = 'College of Education & Human Services' AND T1.position = 'Member'
SELECT CAST(SUM(CASE WHEN remaining < 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM budget INNER JOIN event ON budget.link_to_event = event.event_id
SELECT event_id, location, status FROM event WHERE event_date BETWEEN '2019-11-01' and '2020-03-31'
SELECT expense_description FROM expense GROUP BY expense_description HAVING AVG(cost) > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'X-Large'
SELECT CAST(SUM(CASE WHEN type = 'PO Box' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(zip_code) FROM zip_code
SELECT T1.event_name, T1.location FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 0
SELECT T2.event_name, T2.event_date FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_budget = T2.event_id WHERE T1.expense_description = 'Pizza' AND T1.cost > 50 AND T1.cost < 100
SELECT T1.first_name, T1.last_name, T3.major_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member INNER JOIN major AS T3 ON T1.link_to_major = T3.major_id WHERE T2.cost > 100
SELECT T3.city, T3.county FROM event AS T1 INNER JOIN income AS T2 ON T1.event_id = T2.link_to_member INNER JOIN zip_code AS T3 ON T1.location = T3.zip_code GROUP BY T1.event_id HAVING COUNT(T2.income_id) > 40
SELECT M.first_name, M.last_name, SUM(E.cost) AS Total_expense FROM member AS M JOIN expense AS E ON M.member_id = E.link_to_member JOIN attendance AS A ON M.member_id = A.link_to_member GROUP BY M.member_id HAVING COUNT(DISTINCT A.link_to_event) > 1 ORDER BY Total_expense DESC LIMIT 1;
SELECT AVG(T2.cost) FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.position != 'Member'
SELECT DISTINCT E.event_name FROM event E INNER JOIN budget B ON E.event_id = B.link_to_event INNER JOIN expense EX ON B.budget_id = EX.link_to_budget WHERE B.category = 'Parking' AND EX.cost < (SELECT AVG(cost) FROM expense WHERE link_to_budget IN (SELECT budget_id FROM budget WHERE category = 'Parking'))
SELECT CAST(SUM(T2.cost) AS REAL) * 100 / COUNT(T1.event_id) FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_budget WHERE T1.type = 'Game'
SELECT T2.budget_id FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Water, chips, cookies' ORDER BY T1.cost DESC LIMIT 1
SELECT M.first_name, M.last_name FROM member AS M INNER JOIN expense AS E ON M.member_id = E.link_to_member GROUP BY M.first_name, M.last_name ORDER BY SUM(E.cost) DESC LIMIT 5
SELECT T1.first_name, T1.last_name, T1.phone FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost > ( SELECT AVG(cost) FROM expense ) 
SELECT (SELECT COUNT(T1.member_id) FROM member as T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Maine') * 100.0 / COUNT(T1.member_id) - (SELECT COUNT(T1.member_id) FROM member as T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Vermont') * 100.0 / COUNT(T1.member_id) FROM member AS T1
SELECT T1.major_name, T1.department FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = 'Garrett' AND T2.last_name = 'Gerke'
SELECT T2.first_name, T2.last_name, T1.cost FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_description = 'Water, Veggie tray, supplies'
SELECT last_name, phone FROM member WHERE link_to_major IN ( SELECT major_id FROM major WHERE major_name = 'Elementary Education' )
SELECT T1.category, T1.amount FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Food'
SELECT M.first_name, M.last_name, I.amount FROM member AS M INNER JOIN income AS I ON M.member_id = I.link_to_member WHERE I.date_received = '2019-09-09'
SELECT T1.category FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT T1.first_name, T1.last_name, T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Secretary'
SELECT T2.event_name, SUM(T1.spent) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Speaker Gifts' GROUP BY T2.event_name 
SELECT T1.city FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = 'Garrett' AND T2.last_name = 'Girke'
SELECT T1.first_name, T1.last_name, T1.position FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Lincolnton' AND T2.state = 'North Carolina' AND T2.zip_code = 28092
SELECT COUNT(DISTINCT gasstationid) FROM gasstations WHERE country = 'CZE' AND segment = 'Premium'
SELECT CAST(SUM(IIF(currency = 'EUR', 1, 0)) AS REAL) / CAST(SUM(IIF(currency = 'CZK', 1, 0)) AS REAL) FROM customers
SELECT customers.customerid FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE yearmonth.date BETWEEN '201201' AND '201212' AND customers.segment = 'LAM' ORDER BY yearmonth.consumption ASC LIMIT 1
SELECT AVG(consumption) / 12 AS 'Average Monthly Consumption' FROM yearmonth WHERE customerid IN ( SELECT customerid FROM customers WHERE segment = 'SME' ) AND date BETWEEN '201301' AND '201312'
SELECT T1.customerid, SUM(T2.consumption) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE STRFTIME('%Y', T2.date) = '2011' AND T1.currency = 'CZK' GROUP BY T1.customerid ORDER BY SUM(T2.consumption) DESC LIMIT 1 
SELECT COUNT(DISTINCT T1.customerid) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.segment = 'KAM' AND T2.consumption < 30000 AND T2.date BETWEEN '201201' AND '201212'
SELECT (SELECT SUM(consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date BETWEEN '201201' AND '201212' AND T2.currency = 'CZK') - (SELECT SUM(consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date BETWEEN '201201' AND '201212' AND T2.currency = 'EUR') AS ConsumptionDifference
SELECT STRFTIME('%Y', T3.date) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.customerid = T2.customerid INNER JOIN transactions_1k AS T3 ON T2.customerid = T3.customerid WHERE T1.currency = 'EUR' GROUP BY STRFTIME('%Y', T3.date) ORDER BY SUM(T2.consumption) DESC LIMIT 1
SELECT segment FROM customers JOIN yearmonth ON customers.customerid = yearmonth.customerid GROUP BY segment ORDER BY SUM(consumption) ASC LIMIT 1 
SELECT SUBSTR(date, 1, 4) as year FROM yearmonth INNER JOIN customers ON yearmonth.customerid = customers.customerid WHERE currency = 'CZK' GROUP BY year ORDER BY SUM(consumption) DESC LIMIT 1
SELECT SUBSTR(yearmonth.date, 6, 2) as month, SUM(yearmonth.consumption) as total_consumption FROM yearmonth INNER JOIN customers ON yearmonth.customerid = customers.customerid WHERE customers.segment = 'SME' AND SUBSTR(yearmonth.date, 1, 4) = '2013' GROUP BY month ORDER BY total_consumption DESC LIMIT 1
SELECT (SME_avg.consumption - LAM_avg.consumption) as SME_LAM_diff, (LAM_avg.consumption - KAM_avg.consumption) as LAM_KAM_diff, (KAM_avg.consumption - SME_avg.consumption) as KAM_SME_diff FROM (SELECT AVG(yearmonth.consumption) as consumption FROM yearmonth INNER JOIN customers ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'CZK' AND customers.segment = 'SME' AND substr(yearmonth.date,1,4) = '2013' ORDER BY yearmonth.consumption ASC LIMIT 1) as SME_avg, (SELECT AVG(yearmonth.consumption) as consumption FROM yearmonth INNER JOIN customers ON customers.customerid = yearmonth.customerid WHERE customers.currency = 'CZK' AND customers.segment = 'LAM' AND substr(yearmonth.date,1,4) = '2013
SELECT T1.segment, 100.0 * (SUM(CASE WHEN SUBSTR(T2.date, 1, 4) = '2013' THEN T2.consumption ELSE 0 END) - SUM(CASE WHEN SUBSTR(T2.date, 1, 4) = '2012' THEN T2.consumption ELSE 0 END)) / SUM(CASE WHEN SUBSTR(T2.date, 1, 4) = '2013' THEN T2.consumption ELSE 0 END) as consumption_increase FROM customers as T1 INNER JOIN yearmonth as T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'EUR' AND T1.segment IN ('SME', 'LAM', 'KAM') AND SUBSTR(T2.date, 1, 4) BETWEEN '2012' AND '2013' GROUP BY T1.segment ORDER BY consumption_increase DESC, consumption_increase ASC LIMIT 3
SELECT SUM(consumption) FROM yearmonth WHERE customerid = 6 AND SUBSTR(date, 1, 6) BETWEEN '201308' AND '201311'
SELECT (SELECT COUNT(gasstationid) FROM gasstations WHERE country = 'Czech Republic' AND segment = 'Discount') - (SELECT COUNT(gasstationid) FROM gasstations WHERE country = 'Slovakia' AND segment = 'Discount') AS More_Discount_GasStations
SELECT (SELECT consumption FROM yearmonth WHERE customerid = 7 AND date = '201304') - (SELECT consumption FROM yearmonth WHERE customerid = 5 AND date = '201304') AS Difference
SELECT (SELECT COUNT(customerid) FROM customers WHERE currency = 'Czech koruna' AND segment = 'SME') - (SELECT COUNT(customerid) FROM customers WHERE currency = 'Euro' AND segment = 'SME') AS amount_of_more_SMEs
SELECT T2.customerid, T2.currency FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.segment= 'LAM' AND T2.currency= 'Euro' AND T1.date= '201310' ORDER BY T1.consumption DESC LIMIT 1
SELECT T2.customerid, MAX(T1.consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.segment = 'KAM' GROUP BY T2.customerid ORDER BY MAX(T1.consumption) DESC LIMIT 1 
SELECT SUM(consumption) FROM customers INNER JOIN yearmonth ON customers.customerid = yearmonth.customerid WHERE segment = 'KAM' AND date = '201305'; 
SELECT CAST(SUM(CASE WHEN y.consumption > 46.73 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(y.consumption) AS percentage FROM yearmonth AS y INNER JOIN customers AS c ON y.customerid = c.customerid WHERE c.segment = 'LAM'
SELECT country, COUNT(gasstationid) FROM gasstations WHERE segment = 'Value for money' GROUP BY country ORDER BY COUNT(gasstationid) DESC 
SELECT CAST(SUM(CASE WHEN currency = 'Euro' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(customerid) FROM customers WHERE segment = 'KAM'
SELECT CAST(SUM(CASE WHEN consumption > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(customerid) FROM yearmonth WHERE date = '201202' 
SELECT CAST(SUM(CASE WHEN segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM gasstations WHERE country = 'Slovakia'
SELECT customerid FROM yearmonth WHERE date = '201309' ORDER BY consumption DESC LIMIT 1 
SELECT T2.segment FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = '201309' GROUP BY T2.segment ORDER BY SUM(T1.consumption) ASC LIMIT 1
SELECT T1.customerid FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.segment = 'SME' AND T1.date = '201206' ORDER BY T1.consumption ASC LIMIT 1
SELECT MAX(consumption) FROM yearmonth WHERE SUBSTR(date, 1, 4) = '2012'
SELECT MAX(T2.consumption/12) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'euro'
SELECT description FROM products WHERE productid IN (SELECT productid FROM transactions_1k WHERE SUBSTR(`date`, 1, 6) = '201309')
SELECT DISTINCT T2.country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE SUBSTR(T1.date, 1, 6) = '201306';
SELECT DISTINCT T1.chainid FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid INNER JOIN customers AS T3 ON T2.customerid = T3.customerid WHERE T3.currency = 'Euro'
SELECT DISTINCT T1.description FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.productid = T2.productid INNER JOIN customers AS T3 ON T2.customerid = T3.customerid WHERE T3.currency = 'euro'
SELECT AVG(price) FROM transactions_1k WHERE STRFTIME('%Y-%m', date) = '2012-01'
SELECT COUNT(T1.customerid) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'euro' AND T2.consumption > 1000 
SELECT DISTINCT P.description FROM products P JOIN transactions_1k T ON P.productid = T.productid JOIN gasstations G ON T.gasstationid = G.gasstationid WHERE G.country = 'CZE'
SELECT DISTINCT T2.time FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.chainid = 11
SELECT COUNT(T1.transactionid) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.country = 'CZE' AND T1.price > 1000
SELECT COUNT(T1.transactionid) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.country = 'CZE' AND T1.date > '2012-01-01' 
SELECT AVG(T1.price*T1.amount) as avg_total_price FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.country = 'CZE'
SELECT AVG(T2.price) FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'Euro'
SELECT customerid FROM transactions_1k WHERE date = '2012-08-25' GROUP BY customerid ORDER BY SUM(amount) DESC LIMIT 1 
SELECT T2.country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.date = '2012-08-25' ORDER BY T1.time ASC LIMIT 1
SELECT T1.currency FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T2.date = '2012-08-24' AND T2.time = '16:25:00' 
SELECT T2.segment FROM transactions_1k AS T1 INNER JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = '2012-08-23' AND T1.time = '21:20:00'
SELECT COUNT(T2.transactionid) FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'EUR' AND T2.date = '2012-08-26' AND T2.time < '13:00:00'
SELECT T1.segment FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT T2.country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.date = '2012-08-24' AND T1.time = '12:42:00' 
SELECT T1.productid FROM transactions_1k AS T1 WHERE T1.date = '2012-08-23' AND T1.time = '21:20:00' 
SELECT T1.date, SUM(T1.consumption) FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.date LIKE '2012-01%' AND T2.amount = 124.05 AND T2.date = '2012-08-24' GROUP BY T1.date
SELECT COUNT(transactionid) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.date = '2012-08-26' AND T1.time BETWEEN '08:00:00' AND '09:00:00' AND T2.country = 'CZE';
SELECT T1.currency FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE '201306%' AND T2.consumption = 214582.17
SELECT T2.country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.cardid = 667467
SELECT T2.country FROM transactions_1k AS T1 INNER JOIN customers AS T3 ON T1.customerid = T3.customerid INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.date = '2012-08-24' AND T1.amount = 548.4 LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.customerid) FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T2.date = '2012-08-25'
SELECT 100.0 * (SUM(CASE WHEN strftime('%Y', T2.`date`) = '2012' THEN T2.consumption ELSE 0 END) - SUM(CASE WHEN strftime('%Y', T2.`date`) = '2013' THEN T2.consumption ELSE 0 END)) / SUM(CASE WHEN strftime('%Y', T2.`date`) = '2012' THEN T2.consumption ELSE 0 END) FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE strftime('%Y-%m-%d', T1.`date`) = '2012-08-25' AND T1.amount = 634.8
SELECT T2.gasstationid FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid GROUP BY T2.gasstationid ORDER BY SUM(T1.amount*T1.price) DESC LIMIT 1 
SELECT CAST(SUM(CASE WHEN segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM gasstations WHERE country = 'SVK'
SELECT SUM(amount) FROM transactions_1k WHERE customerid = 38508 AND date LIKE '201201%' 
SELECT p.description FROM products p JOIN transactions_1k t ON p.productid = t.productid GROUP BY p.productid ORDER BY SUM(t.amount) DESC LIMIT 5;
SELECT T1.customerid, AVG(T2.price / T2.amount) as average_price, T1.currency FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid GROUP BY T1.customerid ORDER BY SUM(T2.price) DESC LIMIT 1
SELECT T1.country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid INNER JOIN products AS T3 ON T2.productid = T3.productid WHERE T3.productid = 2 ORDER BY T2.price DESC LIMIT 1
SELECT T3.customerid, T3.date, T3.consumption FROM transactions_1k AS T1 INNER JOIN products AS T2 ON T1.productid = T2.productid INNER JOIN yearmonth AS T3 ON T3.customerid = T1.customerid WHERE T2.productid = 5 AND T1.price/T1.amount > 29 AND SUBSTR(T3.date, 0, 7) = '201208'
